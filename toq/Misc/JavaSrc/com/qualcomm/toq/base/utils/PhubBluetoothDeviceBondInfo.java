// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.service.PHubBaseService;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.earpiece.utils.BTProfilesUtil;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.PHubService;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.base.utils:
//            Utils, ToqData, Log, Constants, 
//            ProjectConfig

public class PhubBluetoothDeviceBondInfo
{

    private static final String TAG = "PhubBluetoothDeviceBondInfo";
    private static PhubBluetoothDeviceBondInfo mInstance = null;

    private PhubBluetoothDeviceBondInfo()
    {
    }

    public static PhubBluetoothDeviceBondInfo getInstance()
    {
        if (mInstance == null)
            mInstance = new PhubBluetoothDeviceBondInfo();
        return mInstance;
    }

    public void disassociateEarPieces(String s, String s1, int i)
    {
label0:
        {
            Utils.updateStatus("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("New supported ear piece found in the paired list. So disassociating with the current cache headset if any. endPointType: ").append(i).append(",").append(s).append(",").append(s1).toString(), 1, 1, (byte)3);
            ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
            if ((i & 1) == 1 && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address"))
                if (connectionfactory != null && connectionfactory.getConnManager() != null)
                {
                    connectionfactory.getConnManager().disassociatePhoneEPLeft();
                } else
                {
                    android.content.SharedPreferences.Editor editor1 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                    editor1.remove("associated_ep_l_device_name");
                    editor1.remove("associated_ep_l_device_address");
                    editor1.commit();
                }
            if ((i & 2) == 2 && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address"))
            {
                if (connectionfactory == null || connectionfactory.getConnManager() == null)
                    break label0;
                connectionfactory.getConnManager().disassociatePhoneEPRight();
            }
            return;
        }
        android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
        editor.remove("associated_ep_r_device_name");
        editor.remove("associated_ep_r_device_address");
        editor.commit();
    }

    public String getAssociatedEPLDeviceAddress()
    {
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        String s = null;
        if (sharedpreferences != null)
        {
            boolean flag = ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address");
            s = null;
            if (flag)
                s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", null);
        }
        return s;
    }

    public String getAssociatedEPLDeviceName()
    {
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        String s = null;
        if (sharedpreferences != null)
        {
            boolean flag = ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_name");
            s = null;
            if (flag)
                s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_name", null);
        }
        return s;
    }

    public String getAssociatedEPRDeviceAddress()
    {
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        String s = null;
        if (sharedpreferences != null)
        {
            boolean flag = ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address");
            s = null;
            if (flag)
                s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", null);
        }
        return s;
    }

    public String getAssociatedEPRDeviceName()
    {
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        String s = null;
        if (sharedpreferences != null)
        {
            boolean flag = ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_name");
            s = null;
            if (flag)
                s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_name", null);
        }
        return s;
    }

    public String getAssociatedWDDeviceAddress()
    {
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        String s = null;
        if (sharedpreferences != null)
        {
            boolean flag = ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address");
            s = null;
            if (flag)
                s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null);
        }
        return s;
    }

    public String getAssociatedWDDeviceName()
    {
        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
        String s = null;
        if (sharedpreferences != null)
        {
            boolean flag = ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_name");
            s = null;
            if (flag)
                s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_name", null);
        }
        return s;
    }

    public int getDeviceState(int i)
    {
        switch (i)
        {
        case 2: // '\002'
            return getEPRState();

        case 1: // '\001'
            return getEPLState();

        case 0: // '\0'
            return getWDState();
        }
        return -1;
    }

    public List getEPConnectedProfiles(int i)
    {
        ArrayList arraylist = new ArrayList();
        String s;
        String s1;
        if (i == 1)
        {
            s1 = getAssociatedEPLDeviceName();
            s = getAssociatedEPLDeviceAddress();
        } else
        {
            s = null;
            s1 = null;
            if (i == 2)
            {
                s1 = getAssociatedEPRDeviceName();
                s = getAssociatedEPRDeviceAddress();
            }
        }
        if (s1 != null && s != null && BTProfilesUtil.getInstance(ToqApplication.getAppContext()).isA2DPConnected(s1, s))
            arraylist.add("A2DP");
        if (BTProfilesUtil.getInstance(ToqApplication.getAppContext()).isHeadsetProfileConnected(s1, s))
            arraylist.add("HFP");
        return arraylist;
    }

    public int getEPLState()
    {
        if (getAssociatedEPLDeviceAddress() != null && getAssociatedEPLDeviceName() != null)
        {
            EPConnectionHandlerImpl epconnectionhandlerimpl = EPConnectionHandlerImpl.getConnectionHandler();
            IEndPoint iendpoint = ConnectionFactory.getConnectionFactory().getEndPoint(1);
            if (epconnectionhandlerimpl != null && iendpoint != null)
            {
                return epconnectionhandlerimpl.getState(iendpoint.getType());
            } else
            {
                Log.i("PhubBluetoothDeviceBondInfo", "Either of connectionHandler or EPLEndPoint is null");
                return -1;
            }
        } else
        {
            Log.i("PhubBluetoothDeviceBondInfo", "Either of EPL device name or device address is null");
            return -1;
        }
    }

    public int getEPRState()
    {
        if (getAssociatedEPRDeviceAddress() != null && getAssociatedEPRDeviceName() != null)
        {
            EPConnectionHandlerImpl epconnectionhandlerimpl = EPConnectionHandlerImpl.getConnectionHandler();
            IEndPoint iendpoint = ConnectionFactory.getConnectionFactory().getEndPoint(2);
            if (epconnectionhandlerimpl != null && iendpoint != null)
            {
                return epconnectionhandlerimpl.getState(iendpoint.getType());
            } else
            {
                Log.i("PhubBluetoothDeviceBondInfo", "Either of connectionHandler or EPREndPoint is null");
                return -1;
            }
        } else
        {
            Log.i("PhubBluetoothDeviceBondInfo", "Either of EPR device name or device address is null");
            return -1;
        }
    }

    public int getWDState()
    {
        if (getAssociatedWDDeviceName() != null && getAssociatedWDDeviceAddress() != null)
        {
            ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
            IEndPoint iendpoint = ConnectionFactory.getConnectionFactory().getEndPoint(0);
            if (toqconnectionhandlerimpl != null && iendpoint != null)
            {
                return toqconnectionhandlerimpl.getState(iendpoint.getType());
            } else
            {
                Log.i("PhubBluetoothDeviceBondInfo", "Either of connectionHandler or WdEndPoint is null");
                return -1;
            }
        } else
        {
            Log.i("PhubBluetoothDeviceBondInfo", "Either of WD device name or device address is null");
            return -1;
        }
    }

    public boolean isEPDeviceConnectedAnyProfile(String s)
    {
label0:
        {
            String s1 = getAssociatedEPLDeviceName();
            String s2 = getAssociatedEPRDeviceName();
            if (s1 != null && s1.equals(s))
            {
                if (getEPConnectedProfiles(1).size() <= 0)
                    return false;
            } else
            {
                if (s2 == null || !s2.equals(s))
                    break label0;
                if (getEPConnectedProfiles(2).size() <= 0)
                    return false;
            }
            return true;
        }
        return false;
    }

    public boolean isEPEndPointType(int i)
    {
        return i == 1 || i == 2;
    }

    public boolean isEPModelSupported(String s, int i)
    {
label0:
        switch (i)
        {
        default:
            break;

        case 2: // '\002'
            String as1[] = Constants.PRODUCT_MODEL_EPR;
            int l = as1.length;
            for (int i1 = 0; i1 < l; i1++)
            {
                String s2 = as1[i1];
                if (s.trim().equalsIgnoreCase(s2))
                    return true;
            }

            break;

        case 1: // '\001'
            String as[] = Constants.PRODUCT_MODEL_EPL;
            int j = as.length;
            int k = 0;
            do
            {
                if (k >= j)
                    break label0;
                String s1 = as[k];
                if (s.trim().equalsIgnoreCase(s1))
                    return true;
                k++;
            } while (true);
        }
        return false;
    }

    public boolean isEPNameSupported(String s, int i)
    {
label0:
        switch (i)
        {
        default:
            break;

        case 2: // '\002'
            String as1[] = Constants.PERSONALHUB_RIGHT_EAR_PIECE;
            int l = as1.length;
            for (int i1 = 0; i1 < l; i1++)
                if (s.equalsIgnoreCase(as1[i1]))
                    return true;

            break;

        case 1: // '\001'
            String as[] = Constants.PERSONALHUB_LEFT_EAR_PIECE;
            int j = as.length;
            int k = 0;
            do
            {
                if (k >= j)
                    break label0;
                if (s.equalsIgnoreCase(as[k]))
                    return true;
                k++;
            } while (true);
        }
        return false;
    }

    public boolean isLeftEPBonded()
    {
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        if (bluetoothadapter != null && bluetoothadapter.isEnabled())
        {
            Set set = bluetoothadapter.getBondedDevices();
            if (set != null)
            {
                String s = "";
                String s1 = "";
                String s2 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", "");
                int i = 0;
                int j = 0;
                Iterator iterator = set.iterator();
                do
                {
                    if (!iterator.hasNext())
                        break;
                    BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
                    if (bluetoothdevice != null)
                    {
                        if (s2 != null && bluetoothdevice.getAddress() != null && bluetoothdevice.getAddress().equals(s2))
                        {
                            Log.i("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("Cached Left EP found in paired list with name  : ").append(bluetoothdevice.getName()).toString());
                            return true;
                        }
                        if (bluetoothdevice.getName() != null)
                            if (getInstance().isEPNameSupported(bluetoothdevice.getName(), 1))
                            {
                                if (++i > 1)
                                {
                                    Log.i("PhubBluetoothDeviceBondInfo", "More than one supported EPL device found in paired list. So returning true.");
                                    return true;
                                }
                                if (s.isEmpty())
                                {
                                    Log.i("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("First Left EP found in paired list. Bonded Device Name  : ").append(bluetoothdevice.getName()).toString());
                                    s = bluetoothdevice.getName();
                                    s1 = bluetoothdevice.getAddress();
                                }
                            } else
                            if (getInstance().isEPNameSupported(bluetoothdevice.getName(), 2))
                                j++;
                    }
                } while (true);
                if (j > 1)
                {
                    StringBuilder stringbuilder = (new StringBuilder()).append("More than one supported EPR device found in paired list. So returning ");
                    boolean flag;
                    if (i == 1)
                        flag = true;
                    else
                        flag = false;
                    Log.i("PhubBluetoothDeviceBondInfo", stringbuilder.append(flag).append(" in isLeftEPBonded.").toString());
                    return i == 1;
                }
                if (true && s != null && s1 != null && !s.isEmpty() && !s1.isEmpty())
                {
                    disassociateEarPieces("from isLeftEPBonded", "from isLeftEPBonded", 1);
                    if (ToqData.getInstance().getAssociatedDevicePrefs() != null)
                    {
                        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address") && ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", null) == null)
                        {
                            android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                            editor.putString("associated_ep_l_device_name", s);
                            editor.putString("associated_ep_l_device_address", s1);
                            editor.commit();
                            Log.i("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("New Left EP cached in local data. Trying to associate with ").append(s).append(", if service is running: ").append(PHubBaseService.isPHubBaseServiceRunning).toString());
                            if (PHubBaseService.isPHubBaseServiceRunning)
                            {
                                BTConnectionManager btconnectionmanager = BTConnectionManager.getConnectionManager(ToqApplication.getAppContext());
                                if (btconnectionmanager != null)
                                    btconnectionmanager.associatePhoneEPLeft();
                            }
                        }
                        return true;
                    } else
                    {
                        Log.i("PhubBluetoothDeviceBondInfo", "Associated Device Preference is Null for left EP");
                        return false;
                    }
                }
            }
        } else
        if (getAssociatedEPLDeviceName() != null && getAssociatedEPLDeviceAddress() != null)
            return true;
        return false;
    }

    public boolean isMoreThanOneEarPiecesHeadsetPaired()
    {
        boolean flag1;
label0:
        {
            byte byte0 = 2;
            BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
            int i = 0;
            int j = 0;
            if (bluetoothadapter != null)
            {
                boolean flag2 = bluetoothadapter.isEnabled();
                i = 0;
                j = 0;
                if (flag2)
                {
                    Log.i("PhubBluetoothDeviceBondInfo", "BT is enabled");
                    Set set = bluetoothadapter.getBondedDevices();
                    i = 0;
                    j = 0;
                    if (set != null)
                    {
                        Iterator iterator = set.iterator();
                        BluetoothDevice bluetoothdevice;
                        do
                        {
                            if (!iterator.hasNext())
                                break;
                            bluetoothdevice = (BluetoothDevice)iterator.next();
                        } while (bluetoothdevice == null || bluetoothdevice.getName() == null || (isEPNameSupported(bluetoothdevice.getName(), 1) ? ++i <= 1 : !isEPNameSupported(bluetoothdevice.getName(), byte0) || ++j <= 1));
                    }
                }
            }
            if (i <= 1)
            {
                flag1 = false;
                if (j <= 1)
                    break label0;
            }
            Intent intent = new Intent(Constants.ACTION_EP_MORE_HEADSETS_FOUND_UPDATE);
            boolean flag;
            if (i > 1)
                flag = true;
            else
                flag = false;
            if (j <= 1)
                byte0 = 0;
            intent.putExtra("endpointtype", byte0 | flag);
            ToqApplication.getAppContext().sendBroadcast(intent);
            flag1 = true;
        }
        return flag1;
    }

    public boolean isOtherEPBonded(int i)
    {
        if (i == 1)
            return getInstance().isRightEPBonded();
        else
            return getInstance().isLeftEPBonded();
    }

    public boolean isRightEPBonded()
    {
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        if (bluetoothadapter != null && bluetoothadapter.isEnabled())
        {
            Set set = bluetoothadapter.getBondedDevices();
            if (set != null)
            {
                String s = "";
                String s1 = "";
                String s2 = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", "");
                int i = 0;
                int j = 0;
                Iterator iterator = set.iterator();
                do
                {
                    if (!iterator.hasNext())
                        break;
                    BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
                    if (bluetoothdevice != null)
                    {
                        if (s2 != null && bluetoothdevice.getAddress() != null && bluetoothdevice.getAddress().equals(s2))
                        {
                            Log.i("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("Cached Right EP found in paired list with name  : ").append(bluetoothdevice.getName()).toString());
                            return true;
                        }
                        if (bluetoothdevice.getName() != null)
                            if (getInstance().isEPNameSupported(bluetoothdevice.getName(), 2))
                            {
                                if (++j > 1)
                                {
                                    Log.i("PhubBluetoothDeviceBondInfo", "More than one supported EPR device found in paired list. So returning true.");
                                    return true;
                                }
                                if (s.isEmpty())
                                {
                                    Log.i("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("First Right EP found in paired list. Bonded Device Name  : ").append(bluetoothdevice.getName()).toString());
                                    s = bluetoothdevice.getName();
                                    s1 = bluetoothdevice.getAddress();
                                }
                            } else
                            if (getInstance().isEPNameSupported(bluetoothdevice.getName(), 1))
                                i++;
                    }
                } while (true);
                if (i > 1)
                {
                    StringBuilder stringbuilder = (new StringBuilder()).append("More than one supported EPL device found in paired list. So returning ");
                    boolean flag;
                    if (i == 1)
                        flag = true;
                    else
                        flag = false;
                    Log.i("PhubBluetoothDeviceBondInfo", stringbuilder.append(flag).append(" in isLeftEPBonded.").toString());
                    return j == 1;
                }
                if (true && s != null && s1 != null && !s.isEmpty() && !s1.isEmpty())
                {
                    disassociateEarPieces("from isRightEPBonded", "from isRightEPBonded", 2);
                    if (ToqData.getInstance().getAssociatedDevicePrefs() != null)
                    {
                        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address") && ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", null) == null)
                        {
                            android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                            editor.putString("associated_ep_r_device_name", s);
                            editor.putString("associated_ep_r_device_address", s1);
                            editor.commit();
                            Log.i("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("New Right EP cached in local data. Trying to associate with ").append(s).append(", if service is running: ").append(PHubBaseService.isPHubBaseServiceRunning).toString());
                            if (PHubBaseService.isPHubBaseServiceRunning)
                            {
                                BTConnectionManager btconnectionmanager = BTConnectionManager.getConnectionManager(ToqApplication.getAppContext());
                                if (btconnectionmanager != null)
                                    btconnectionmanager.associatePhoneEPRight();
                            }
                        }
                        return true;
                    } else
                    {
                        Log.i("PhubBluetoothDeviceBondInfo", "Associated Device Preference is Null for Right EP");
                        return false;
                    }
                }
            }
        } else
        if (getAssociatedEPRDeviceName() != null && getAssociatedEPRDeviceAddress() != null)
            return true;
        return false;
    }

    public boolean isWDBonded()
    {
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        if (bluetoothadapter != null && bluetoothadapter.isEnabled())
        {
            Log.i("PhubBluetoothDeviceBondInfo", "Inside isWDBonded()");
            Set set = bluetoothadapter.getBondedDevices();
            ArrayList arraylist = new ArrayList();
            Iterator iterator = set.iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
                if (getInstance().isWDNameSupported(bluetoothdevice.getName(), 0))
                    arraylist.add(bluetoothdevice);
            } while (true);
            if (arraylist != null && !arraylist.isEmpty())
                if (ToqData.getInstance().getAssociatedDevicePrefs() != null)
                {
                    if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") && ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null) == null)
                    {
                        Log.d("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("BT Preference is empty.Updating the preference with WD data : BT Address : ").append(((BluetoothDevice)arraylist.get(0)).getAddress()).toString());
                        Log.printUsageLog("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("BT Preference is empty.Updating the preference with WD data : BT Address : ").append(((BluetoothDevice)arraylist.get(0)).getAddress()).toString());
                        android.content.SharedPreferences.Editor editor2 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                        editor2.putString("associated_wd_device_name", ((BluetoothDevice)arraylist.get(0)).getName());
                        editor2.putString("associated_wd_device_address", ((BluetoothDevice)arraylist.get(0)).getAddress());
                        editor2.commit();
                        return true;
                    }
                    for (int i = 0; i < arraylist.size(); i++)
                        if (getAssociatedWDDeviceAddress() != null && ((BluetoothDevice)arraylist.get(i)).getAddress().equalsIgnoreCase(getAssociatedWDDeviceAddress()))
                        {
                            Log.d("PhubBluetoothDeviceBondInfo", (new StringBuilder()).append("BT Preference is non empty and the same is present in paired list : BT Address :").append(getAssociatedWDDeviceAddress()).toString());
                            return true;
                        }

                    if (!PHubService.isPHubServiceRunning)
                    {
                        Log.d("PhubBluetoothDeviceBondInfo", "BT Preference is non empty.But the address in the preference is not in the paired list.Overwriting the old data with new address");
                        Log.printUsageLog("PhubBluetoothDeviceBondInfo", "BT Preference is non empty.But the address in the preference is not in the paired list.Overwriting the old data with new address");
                        android.content.SharedPreferences.Editor editor1 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                        editor1.putString("associated_wd_device_name", ((BluetoothDevice)arraylist.get(0)).getName());
                        editor1.putString("associated_wd_device_address", ((BluetoothDevice)arraylist.get(0)).getAddress());
                        editor1.commit();
                    }
                    return true;
                } else
                {
                    Log.i("PhubBluetoothDeviceBondInfo", "Associated Device Preference is Null for WD");
                    return false;
                }
            Log.d("PhubBluetoothDeviceBondInfo", "Paired list is empty");
            if (!PHubService.isPHubServiceRunning)
            {
                Log.d("PhubBluetoothDeviceBondInfo", "Removing the prefernce as no device is paired");
                android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                editor.remove("associated_wd_device_name");
                editor.remove("associated_wd_device_address");
                editor.commit();
                return false;
            }
        } else
        if (getAssociatedWDDeviceName() != null && getAssociatedWDDeviceAddress() != null)
            return true;
        return false;
    }

    public boolean isWDNameSupported(String s, int i)
    {
        if (s != null)
            switch (i)
            {
            case 0: // '\0'
                String as[] = ProjectConfig.getProjectConfig().getWristDisplayDeviceName();
                int j = as.length;
                for (int k = 0; k < j; k++)
                {
                    String s1 = as[k];
                    if (s1 != null && s.equalsIgnoreCase(s1))
                        return true;
                }

                break;
            }
        return false;
    }

}

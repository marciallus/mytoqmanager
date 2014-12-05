// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.controller;

import android.content.*;
import android.content.res.AssetManager;
import android.os.Environment;
import android.text.TextUtils;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.earpiece.utils.*;
import java.io.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.JSONObject;

public class EPVersionController extends DefaultController
{

    private static final String TAG = "EPVersionController";
    public static final String appName = "VERSION_CONTROLLER";
    private static EPVersionController mInstance = null;

    private EPVersionController()
    {
    }

    private InputStream getCustomBuildInputStream(String s)
        throws FileNotFoundException
    {
        File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/TFTP/").append("custom/").append(s).toString());
        boolean flag = file.exists();
        FileInputStream fileinputstream = null;
        if (flag)
        {
            int i = file.length() != 0L;
            fileinputstream = null;
            if (i > 0)
                fileinputstream = new FileInputStream(file);
        }
        return fileinputstream;
    }

    public static EPVersionController getEPVersionController()
    {
        if (mInstance == null)
            mInstance = new EPVersionController();
        return mInstance;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        j;
        JVM INSTR tableswitch 0 0: default 20
    //                   0 21;
           goto _L1 _L2
_L1:
        return;
_L2:
        SharedPreferences sharedpreferences;
        String s;
        String s1;
        String s2;
        String s3;
        String s5;
        boolean flag;
        String s6;
        String s7;
        String s8;
        String s10;
        int j2;
        String s20;
        InputStream inputstream;
        InputStream inputstream1;
        ZipInputStream zipinputstream;
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        Log.printUsageLog("VersionController", (new StringBuilder()).append("Received VersionInd from ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).toString());
        if (obj == null)
        {
            Log.e("EPVersionController", "VersionInd payload is null");
            return;
        }
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        sharedpreferences = null;
        if (connectionfactory != null)
        {
            Context context = ConnectionFactory.getConnectionFactory().getContext();
            sharedpreferences = null;
            if (context != null)
                sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("watch_details_pref", 0);
        }
        Log.d("EPVersionController", (new StringBuilder()).append("Received VersionInd: ").append(obj.toString()).toString());
        Utils.printAlohaVersionIndicationPayload(obj);
        s = null;
        s1 = null;
        s2 = "";
        s3 = "";
        JSONObject jsonobject;
        String s4;
        boolean flag1;
        String s9;
        String s11;
        android.content.SharedPreferences.Editor editor;
        AssetManager assetmanager;
        String as[];
        int i2;
        ZipEntry zipentry;
        InputStreamReader inputstreamreader;
        String s21;
        String s22;
        try
        {
            jsonobject = new JSONObject(obj.toString());
            s4 = jsonobject.getString("AlohaVersion");
            s5 = jsonobject.getString("SoftwareRelease");
            flag = PhubBluetoothDeviceBondInfo.getInstance().isEPEndPointType(l);
            flag1 = jsonobject.isNull("SoftwareRevision");
        }
        catch (Exception exception)
        {
            Log.e("EPVersionController", (new StringBuilder()).append("Exception in VersionInd: ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
        s6 = null;
        if (flag1) goto _L4; else goto _L3
_L3:
        s6 = jsonobject.getString("SoftwareRevision");
_L4:
        s7 = jsonobject.getString("ProductModel");
        s8 = jsonobject.getString("HardwareRevision");
        s9 = "";
        s10 = "";
        if (!s4.equalsIgnoreCase("1.0") && !s4.equalsIgnoreCase("1.1")) goto _L6; else goto _L5
_L5:
        Log.d("EPVersionController", "Aloha Version = 1.0 or 1.1");
        s11 = jsonobject.getString("ProductName");
_L36:
        if (sharedpreferences == null) goto _L8; else goto _L7
_L7:
        editor = sharedpreferences.edit();
        editor.remove((new StringBuilder()).append("device_name").append(l).toString());
        editor.remove((new StringBuilder()).append("hardware_revision").append(l).toString());
        editor.remove((new StringBuilder()).append("model_number").append(l).toString());
        editor.remove((new StringBuilder()).append("software_revision").append(l).toString());
        editor.remove((new StringBuilder()).append("software_release").append(l).toString());
        editor.remove((new StringBuilder()).append("serial_number").append(l).toString());
        editor.remove((new StringBuilder()).append("build_target").append(l).toString());
        editor.commit();
        editor.putString((new StringBuilder()).append("device_name").append(l).toString(), s7);
        editor.putString((new StringBuilder()).append("hardware_revision").append(l).toString(), s8);
        editor.putString((new StringBuilder()).append("model_number").append(l).toString(), s11);
        editor.putString((new StringBuilder()).append("software_revision").append(l).toString(), s6);
        editor.putString((new StringBuilder()).append("software_release").append(l).toString(), s5);
        editor.putString((new StringBuilder()).append("serial_number").append(l).toString(), s9);
        editor.putString((new StringBuilder()).append("build_target").append(l).toString(), s10);
        editor.commit();
_L8:
        if (!flag) goto _L10; else goto _L9
_L9:
        if (s7 == null) goto _L12; else goto _L11
_L11:
        if (!PhubBluetoothDeviceBondInfo.getInstance().isEPModelSupported(s7, l)) goto _L12; else goto _L13
_L13:
        ConnectionFactory.getConnectionFactory();
        if (s10 == null) goto _L15; else goto _L14
_L14:
        if (TextUtils.isEmpty(s10) || !s10.equalsIgnoreCase("ep_p2")) goto _L15; else goto _L16
_L16:
        Log.d("EPVersionController", "Choosing zip file based on EP build target P2");
        s2 = "ep_p2.zip";
_L10:
        Log.d("EPVersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" Info file name in Assets folder: ").append(s2).toString());
        assetmanager = ConnectionFactory.getConnectionFactory().getContext().getAssets();
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getContext() == null) goto _L1; else goto _L17
_L17:
        Log.d("EPVersionController", (new StringBuilder()).append("VersionInd from ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("VersionInd from ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).toString());
        as = assetmanager.list("");
        i2 = as.length;
        j2 = 0;
_L74:
        if (j2 >= i2) goto _L19; else goto _L18
_L18:
        s20 = as[j2];
        Log.d("EPVersionController", (new StringBuilder()).append("Asset file: ").append(s20).toString());
        if (!s20.equalsIgnoreCase(s2)) goto _L21; else goto _L20
_L20:
        inputstream = assetmanager.open(s20);
        if (!ConnectionFactory.getConnectionFactory().getCustomsBuildFlag()) goto _L23; else goto _L22
_L22:
        inputstream1 = null;
        if (!flag)
            break MISSING_BLOCK_LABEL_3660;
        inputstream1 = getCustomBuildInputStream(s2);
        if (inputstream1 == null) goto _L25; else goto _L24
_L24:
        Utils.updateStatus("EPVersionController", "EPMessage:Custom build is used for version check", l, 1, (byte)7);
        break MISSING_BLOCK_LABEL_3660;
_L23:
        if (inputstream != null) goto _L27; else goto _L26
_L26:
        Log.e("EPVersionController", "Asset inputstream is null");
_L27:
        zipinputstream = new ZipInputStream(inputstream);
        if (zipinputstream != null)
            break MISSING_BLOCK_LABEL_1054;
        Log.e("EPVersionController", "Asset zipInputstream is null");
_L31:
        zipentry = zipinputstream.getNextEntry();
        if (zipentry == null) goto _L29; else goto _L28
_L28:
        if (!zipentry.getName().contains("ep.info")) goto _L31; else goto _L30
_L30:
        stringbuilder = new StringBuilder();
        inputstreamreader = new InputStreamReader(zipinputstream);
        bufferedreader = new BufferedReader(inputstreamreader);
        s21 = bufferedreader.readLine();
_L33:
        if (s21 == null)
            break; /* Loop/switch isn't completed */
        stringbuilder.append(s21);
        s22 = bufferedreader.readLine();
        s21 = s22;
        if (true) goto _L33; else goto _L32
_L6:
        if (!s4.equalsIgnoreCase("1.2")) goto _L35; else goto _L34
_L34:
        Log.d("EPVersionController", "Aloha Version = 1.2");
        s11 = jsonobject.getString("ProductId");
        s9 = jsonobject.getString("CCA_Id");
          goto _L36
_L35:
        s11 = jsonobject.getString("ProductId");
        s9 = jsonobject.getString("CCA_Id");
        s10 = jsonobject.getString("BuildTarget");
        Log.d("EPVersionController", (new StringBuilder()).append("Aloha Version >= 1.3 ccaId = ").append(s9).toString());
          goto _L36
_L15:
        if (!s8.equalsIgnoreCase("P2") && !s8.equalsIgnoreCase("MP")) goto _L38; else goto _L37
_L37:
        Log.d("EPVersionController", "Choosing zip file based on EP Hardware revision");
        s2 = "ep_p2.zip";
          goto _L10
_L38:
        if (EPConnectionHandlerImpl.getConnectionHandler() != null)
            EPConnectionHandlerImpl.getConnectionHandler().setEndPointForceUpgradeRequestFlag(l, false);
        Log.d("EPVersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" Hardware model not found for fetching file from assets: ").append(s8).toString());
          goto _L10
_L12:
        Log.d("EPVersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" Product model not found for fetching file from assets: ").append(s7).toString());
          goto _L10
_L25:
        Utils.updateStatus("EPVersionController", "EPMessage:Custom build is not available. Taking from Assets.", l, 1, (byte)7);
        break MISSING_BLOCK_LABEL_3660;
        Exception exception3;
        exception3;
        exception3.printStackTrace();
        Log.e("EPVersionController", (new StringBuilder()).append("Failed to copy asset file: ").append(s20).append(" details: ").append(exception3.toString()).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("Failed to copy asset file: ").append(s20).append(" details: ").append(exception3.toString()).toString());
        return;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        Log.e("EPVersionController", (new StringBuilder()).append("Failed to get asset file list: ").append(exception1.toString()).toString());
_L19:
        Intent intent;
        intent = new Intent();
        intent.setAction(Constants.ACTION_VERSION_INFO);
        intent.putExtra("endpointtype", l);
        ConnectionFactory.getConnectionFactory().setEndPointFirmwareVersion(l, s);
        ConnectionFactory.getConnectionFactory().setEndPointFirmwareDate(l, s3);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeFileName(l, s2);
        Log.d("EPVersionController", (new StringBuilder()).append("SEL hwRevision = ").append(s8).append(", buildTarget ").append(s10).append(", softwareRevision = ").append(s6).append(",softwareRelease =  ").append(s5).toString());
        if (!flag) goto _L40; else goto _L39
_L39:
        if (HeadsetUtils.isEPBuildVariantSupported(s8)) goto _L42; else goto _L41
_L41:
        if (s10 == null) goto _L40; else goto _L43
_L43:
        if (!HeadsetUtils.isEPBuildVariantSupported(s10)) goto _L40; else goto _L42
_L42:
        if (s6 == null) goto _L45; else goto _L44
_L44:
        if (s6.isEmpty()) goto _L46; else goto _L45
_L45:
        if (Integer.parseInt(s6) == 0) goto _L46; else goto _L47
_L47:
        if (s5 == null) goto _L49; else goto _L48
_L48:
        if (s5.isEmpty()) goto _L46; else goto _L49
_L49:
        if (!EPConnectionHandlerImpl.getConnectionHandler().getEndPointForceUpgradeRequestFlag(l)) goto _L40; else goto _L46
_L46:
        Utils.updateStatus("EPVersionController", (new StringBuilder()).append("EPMessage:Require Force upgradation to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).toString(), l, 1, (byte)7);
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Software Release type differs between App and ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(", Force upgrading ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware due to it is out of box.").toString());
        ConnectionFactory.getConnectionFactory().setEndPointVersionState(l, 1);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
_L79:
        intent.putExtra("_inbuilt_version", s);
        intent.putExtra("_sent_version", s6);
        if (!flag) goto _L51; else goto _L50
_L50:
        byte byte0;
        boolean flag2;
        String s13;
        String s15;
        String s17;
        String s19;
        Exception exception2;
        ConnectionFactory connectionfactory1;
        boolean flag3;
        ConnectionFactory connectionfactory2;
        int i1;
        ConnectionFactory connectionfactory3;
        int j1;
        ConnectionFactory connectionfactory4;
        int k1;
        ConnectionFactory connectionfactory5;
        int l1;
        JSONObject jsonobject1;
        if (l == 1)
            byte0 = 2;
        else
            byte0 = 1;
        if (l != 1) goto _L53; else goto _L52
_L52:
        flag2 = PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
_L83:
        if (!flag2) goto _L55; else goto _L54
_L54:
        String s12 = (new StringBuilder()).append("hardware_revision").append(byte0).toString();
        s13 = sharedpreferences.getString(s12, "");
        String s14 = (new StringBuilder()).append("build_target").append(byte0).toString();
        s15 = sharedpreferences.getString(s14, null);
        if (s13 == null) goto _L55; else goto _L56
_L56:
        if (HeadsetUtils.isEPBuildVariantSupported(s13)) goto _L58; else goto _L57
_L57:
        if (s15 == null) goto _L55; else goto _L59
_L59:
        if (!HeadsetUtils.isEPBuildVariantSupported(s15)) goto _L55; else goto _L58
_L58:
        String s16 = (new StringBuilder()).append("software_revision").append(byte0).toString();
        s17 = sharedpreferences.getString(s16, "");
        String s18 = (new StringBuilder()).append("software_release").append(byte0).toString();
        s19 = sharedpreferences.getString(s18, "");
        connectionfactory1 = ConnectionFactory.getConnectionFactory();
        Log.d("EPVersionController", (new StringBuilder()).append("Other EP bonded.\nOtherEPRelease: ").append(s19).append("   currentEPRelease: ").append(s5).append("   ZipEPRelease: ").append(s1).append("\nOtherEPRevision: ").append(s17).append("   currentEPRevision: ").append(s6).append("   ZipEPRevision: ").append(s).toString());
        if (s19.isEmpty() || s17.isEmpty()) goto _L61; else goto _L60
_L60:
        if (s6.isEmpty() || Integer.parseInt(s17) != Integer.parseInt(s6) || s5.isEmpty() || !s19.equals(s5))
        {
            if (connectionfactory1.getEndPointUpgradeState(l))
            {
                connectionfactory1.setEndPointVersionState(l, 2);
                Utils.updateStatus("EPVersionController", "EPMessage:Mismatched with other EP revision. Force upgrade", l, 1, (byte)7);
            }
            if ((Integer.parseInt(s17) != Integer.parseInt(s) || !s19.equals(s1)) && connectionfactory1.getEndPointVersionState(byte0) != 2)
            {
                if (HeadsetAction.getInstance().getCurrentAction() == 0 && EPConnectionHandlerImpl.getConnectionHandler().getEndpointMode(byte0).equals("Operational") && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte0) == 3)
                {
                    connectionfactory1.setEndPointVersionState(byte0, 2);
                    sendAlohaWaitUpdateMessage(k, byte0);
                }
                Utils.updateStatus("EPVersionController", "EPMessage:Other EP is not having assets revision. Force upgrade", l, 1, (byte)7);
            }
        }
_L55:
        if (s8 == null) goto _L63; else goto _L62
_L62:
        if (HeadsetUtils.isEPBuildVariantSupported(s8)) goto _L64; else goto _L63
_L63:
        if (s10 == null) goto _L66; else goto _L65
_L65:
        if (!HeadsetUtils.isEPBuildVariantSupported(s10)) goto _L66; else goto _L64
_L64:
        if (!ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(l)) goto _L68; else goto _L67
_L67:
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(l).toString(), Constants.EP_STATUS_UPDATE_REQUIRED);
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_subtext").append(l).toString(), "");
_L84:
        ConnectionFactory.getConnectionFactory().setEndPointVersionState(l, 1);
        sendAlohaContinueMessage(k, l);
        Utils.updateStatus("EPVersionController", "EPMessage:Sent Continue Message", l, 1, (byte)7);
_L51:
        ConnectionFactory.getConnectionFactory().getContext().sendBroadcast(intent);
        Log.d("EPVersionController", "ACTION_VERSION_INFO broadcast sent");
        return;
_L32:
        bufferedreader.close();
        String s23 = stringbuilder.toString();
        jsonobject1 = new JSONObject(s23);
        s = jsonobject1.getString("Software");
        s1 = s;
        int k2 = s.lastIndexOf("_");
        s1 = s1.substring(0, k2);
        if (!flag) goto _L70; else goto _L69
_L69:
        if (s1.indexOf("release") > -1)
        {
            int i3 = 1 + s1.indexOf("_");
            int j3 = s.lastIndexOf("_");
            s1 = s1.substring(i3, j3);
        }
_L70:
        s3 = jsonobject1.getString("Date");
        Log.i("EPVersionController", (new StringBuilder()).append("App Firmware software Release = ").append(s1).toString());
        Log.i("EPVersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" Firmware software Release = ").append(s5).toString());
        int l2 = 1 + s.lastIndexOf("_");
        s = s.substring(l2);
        Log.d("EPVersionController", (new StringBuilder()).append("App Firmware Version of ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" in APK = ").append(s).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("App Firmware Version of ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" in APK = ").append(s).toString());
        Log.i("EPVersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" current Firmware version = ").append(s6).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" current Firmware version = ").append(s6).toString());
_L29:
        if (inputstream == null) goto _L72; else goto _L71
_L71:
        inputstream.close();
_L72:
        if (zipinputstream == null) goto _L21; else goto _L73
_L73:
        zipinputstream.close();
_L21:
        j2++;
          goto _L74
_L40:
        if (s5 == null || s1 == null)
            break MISSING_BLOCK_LABEL_3372;
        if (!s5.equalsIgnoreCase(s1))
            break MISSING_BLOCK_LABEL_3372;
        if (s6 == null || s == null) goto _L76; else goto _L75
_L75:
        if (Integer.parseInt(s) != Integer.parseInt(s6)) goto _L78; else goto _L77
_L77:
        intent.putExtra("version_mode", 1);
        intent.putExtra("version_message", (new StringBuilder()).append("Android App and ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" have same version = ").append(s).append(". Communication will continue to work").toString());
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, false);
        ConnectionFactory.getConnectionFactory().setEndPointVersionState(l, 1);
          goto _L79
_L78:
        if (Integer.parseInt(s) <= Integer.parseInt(s6)) goto _L81; else goto _L80
_L80:
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Android App version: ").append(s).append(" is higher than the ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" version = ").append(s6).append(". Please upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware").toString());
        connectionfactory5 = ConnectionFactory.getConnectionFactory();
        if (flag)
            l1 = 1;
        else
            l1 = 2;
        connectionfactory5.setEndPointVersionState(l, l1);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L79
_L81:
        if (Integer.parseInt(s) >= Integer.parseInt(s6)) goto _L79; else goto _L82
_L82:
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Android App version = ").append(s).append(" is lower than the ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" version = ").append(s6).append(". Please upgrade Android App to match the ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" version, else upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware to communicate").toString());
        connectionfactory4 = ConnectionFactory.getConnectionFactory();
        if (flag)
            k1 = 1;
        else
            k1 = 2;
        connectionfactory4.setEndPointVersionState(l, k1);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L79
_L76:
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Unable to fetch Version Info, Please upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware").toString());
        connectionfactory3 = ConnectionFactory.getConnectionFactory();
        if (flag)
            j1 = 1;
        else
            j1 = 2;
        connectionfactory3.setEndPointVersionState(l, j1);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L79
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Software Release type differs between App and ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(", Please upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware").toString());
        connectionfactory2 = ConnectionFactory.getConnectionFactory();
        if (flag)
            i1 = 1;
        else
            i1 = 2;
        connectionfactory2.setEndPointVersionState(l, i1);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L79
_L53:
        flag3 = PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
        flag2 = flag3;
          goto _L83
_L61:
        Utils.updateStatus("EPVersionController", "EPMessage:Othere EP data is not available for force upgrade. Just continue", l, 1, (byte)7);
          goto _L55
        exception2;
        exception2.printStackTrace();
          goto _L55
_L68:
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(l).toString(), Constants.EP_STATUS_OK);
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_subtext").append(l).toString(), "");
          goto _L84
_L66:
        if (!ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(l)) goto _L84; else goto _L85
_L85:
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(l).toString(), Constants.EP_STATUS_UNABLE_TO_SUPPORT);
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_subtext").append(l).toString(), Constants.EP_SUBSTATUS_UNABLE_TO_SUPPORT);
          goto _L84
        inputstream = inputstream1;
          goto _L23
    }

    public void sendAlohaContinueMessage(int i, int j)
    {
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append('{');
            stringbuilder.append("\"PhoneType\"");
            stringbuilder.append(":");
            stringbuilder.append("\"Android\"");
            stringbuilder.append(',');
            stringbuilder.append("\"SoftwareRelease\"");
            stringbuilder.append(":");
            stringbuilder.append("\"");
            stringbuilder.append(android.os.Build.VERSION.RELEASE);
            stringbuilder.append("\"");
            stringbuilder.append('}');
            Log.printUsageLog("VersionController", "Sending VersionContinueInd to WD");
            sendControllerMessageData(j, 0, 0, stringbuilder.toString(), 1, i);
            Log.d("EPVersionController", (new StringBuilder()).append("sent VersionContinueInd Indication: ").append(stringbuilder.toString()).append(" for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            Log.printUsageLog("VersionController", (new StringBuilder()).append("sent VersionContinueInd Indication: ").append(stringbuilder.toString()).append(" for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            return;
        }
        catch (Exception exception)
        {
            Log.e("EPVersionController", (new StringBuilder()).append("Exception in sendAlohaContinueMessage(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void sendAlohaWaitUpdateMessage(int i, int j)
    {
        try
        {
            android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("app_pref", 0).edit();
            editor.putBoolean("firmwareUpgrade", true);
            editor.commit();
            Log.d("EPVersionController", (new StringBuilder()).append("Sending VersionWaitUpdateInd to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            Log.printUsageLog("VersionController", (new StringBuilder()).append("Sending VersionWaitUpdateInd to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            sendControllerMessageData(j, 0, 0, "{ }", 2, i);
            Log.d("EPVersionController", (new StringBuilder()).append("sent VersionWaitUpdateInd Indication: ").append("{ }".toString()).append(" for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            return;
        }
        catch (Exception exception)
        {
            Log.e("EPVersionController", (new StringBuilder()).append("Exception in sendAlohaWaitUpdateMessage(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
label0:
        {
label1:
            {
                if (!EPConnectionHandlerImpl.getConnectionHandler().getEPDependendentOnPrimaryFlag(i))
                    break label0;
                ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
                if (connectionfactory != null)
                {
                    com.qualcomm.toq.base.endpoint.IEndPoint iendpoint = connectionfactory.getEndPoint(i);
                    if (EPConnectionHandlerImpl.getConnectionHandler().getContext() != null && (iendpoint != null || EPConnectionHandlerImpl.getConnectionHandler().getEPDependendentOnPrimaryFlag(i)))
                    {
                        if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(i) == 3)
                            break label1;
                        Log.d("EPVersionController", "Secondary ear piece is not in CONNECTED state. Just neglect the message.");
                    }
                }
                return;
            }
            Log.d("EPVersionController", "Secondary ear piece is in CONNECTED state with primary.");
            if (i == 1)
                i = 2;
            else
                i = 1;
            k = 22;
        }
        super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

}

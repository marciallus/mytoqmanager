// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.ui.activity;

import android.app.*;
import android.bluetooth.BluetoothAdapter;
import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.ui.adapter.FileTransferStatusAdapter;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.earpiece.utils.EarpiecePreference;
import com.qualcomm.toq.smartwatch.logger.*;
import java.util.ArrayList;
import org.apache.log4j.Logger;

public class DeviceStatusActivity extends Activity
{

    private static final int PROGRESS_DIALOG = 1;
    protected static final String TAG = "DeviceStatusActivity";
    private static int disconnectTimerCount = 0;
    private static Handler mFileHandler = null;
    private AlertDialog alert;
    BroadcastReceiver btReceiver;
    private Button clearListButton;
    private int endPointType;
    private TextView mBambooBuildNo;
    private TextView mBambooVersionNo;
    private android.view.View.OnClickListener mClearListListener;
    private TextView mDeviceAddr;
    private TextView mDeviceName;
    private TextView mDeviceStatus;
    private TextView mEPProfilesList;
    private AlertDialog mFileDetailsLogDialog;
    private android.app.AlertDialog.Builder mFileDetailsLogDialogBuilder;
    private ListView mFileStatusListView;
    private FileTransferStatusLogger mFileTransferStatusLogger;
    private FileTransferStatusAdapter mFileTransferStatusLoggerAdapter;
    private GenericToqLoggerImpl mGenericToqLoggerImpl;
    private Handler mHandler;
    private MenuItem mLogItem;
    private TextView mPBEStatusTextView;
    private TextView mToqFirmwareVersion;
    ImageView overFlowMenu;
    android.view.View.OnClickListener overFlowMenuClickListener;
    private ProgressDialog progressDialog;
    BroadcastReceiver receiver;
    private String sDeviceAddr;
    private String sDeviceBattery;
    private String sDeviceName;
    private String sDeviceStatus;
    boolean serviceConnected;
    private ToggleButton useP1SoftwareToggleButton;
    private ToggleButton useP2SoftwareToggleButton;
    private ToggleButton useSDCardEPFirmwareForTransferToggleButton;

    public DeviceStatusActivity()
    {
        useSDCardEPFirmwareForTransferToggleButton = null;
        useP1SoftwareToggleButton = null;
        useP2SoftwareToggleButton = null;
        clearListButton = null;
        progressDialog = null;
        serviceConnected = false;
        mHandler = new Handler();
        mClearListListener = null;
        alert = null;
        mFileStatusListView = null;
        mFileDetailsLogDialog = null;
        mFileDetailsLogDialogBuilder = null;
        btReceiver = new BroadcastReceiver() {

            final DeviceStatusActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                if (Constants.ACTION_BLUETOOTH_NOT_SUPPORTED.equals(s))
                {
                    Log.d("DeviceStatusActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                    Toast.makeText(context, "Bluetooth is not available", 0).show();
                    finish();
                } else
                if (Constants.ACTION_BLUETOOTH_NOT_ENABLED.equals(s))
                {
                    Log.d("DeviceStatusActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                    return;
                }
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
        receiver = new BroadcastReceiver() {

            final DeviceStatusActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                int i = intent.getIntExtra("endpointtype", -1);
                if (i == -1 || endPointType == i)
                    if (Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
                    {
                        SharedPreferences sharedpreferences = ToqData.getInstance().getAssociatedDevicePrefs();
                        if ((i != 1 || sharedpreferences.contains("associated_ep_l_device_address")) && (i != 2 || sharedpreferences.contains("associated_ep_r_device_address")))
                        {
                            String s2 = intent.getStringExtra("endpointname");
                            String s3 = intent.getStringExtra("endpointaddress");
                            int j = intent.getIntExtra("state", 0);
                            if (alert != null)
                            {
                                if (alert.isShowing())
                                    alert.dismiss();
                                alert = null;
                            }
                            mDeviceName.setText((new StringBuilder()).append("Name: ").append(s2).toString());
                            mDeviceAddr.setText((new StringBuilder()).append("Address: ").append(s3).toString());
                            if (j == 3)
                            {
                                mDeviceStatus.setText("Status: Connected");
                                if (progressDialog != null && progressDialog.isShowing())
                                    progressDialog.dismiss();
                                if (mFileTransferStatusLogger != null)
                                    mFileTransferStatusLogger.clearHeaderList();
                            } else
                            if (j != 4 && j != 0)
                            {
                                if (j != 1);
                            } else
                            if (BluetoothAdapter.getDefaultAdapter().isEnabled())
                            {
                                int i = 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
        overFlowMenuClickListener = new android.view.View.OnClickListener() {

            final DeviceStatusActivity this$0;

            public void onClick(View view)
            {
                PopupMenu popupmenu = new PopupMenu(getBaseContext(), view);
                popupmenu.getMenuInflater().inflate(0x7f0c0001, popupmenu.getMenu());
                mLogItem = popupmenu.getMenu().findItem(0x7f090271);
                setLogMenu();
                if (ToqApplication.getDeviceType() == 1)
                    popupmenu.getMenu().findItem(0x7f090273).setVisible(false);
                popupmenu.show();
                popupmenu.setOnMenuItemClickListener(new android.widget.PopupMenu.OnMenuItemClickListener() {

                    final _cls7 this$1;

                    public boolean onMenuItemClick(MenuItem menuitem)
                    {
                        boolean flag = true;
                        switch (menuitem.getItemId())
                        {
                        case 2131296882: 
                            ToqLogger toqlogger = ToqLoggerFactory.getInstance().getLoggerInstance("generic_log");
                            if (toqlogger != null)
                            {
                                toqlogger.sendLogs();
                                return flag;
                            }
                            break;

                        case 2131296881: 
                            if (!mGenericToqLoggerImpl.isGenericToqLoggerEnabled())
                            {
                                Log.d("DeviceStatusActivity", "Removing the generic log appender from log 4j in order to start logging");
                                ToqLoggerFactory toqloggerfactory = ToqLoggerFactory.getInstance();
                                if (toqloggerfactory != null)
                                    toqloggerfactory.configureLogger("generic_log");
                                mGenericToqLoggerImpl.setGenericToqLoggerEnabled(flag);
                                return flag;
                            } else
                            {
                                Log.d("DeviceStatusActivity", "Removing the generic log appender from log 4j in order to stop logging");
                                Logger.getRootLogger().removeAppender("genericlog_appender");
                                mGenericToqLoggerImpl.setGenericToqLoggerEnabled(false);
                                return flag;
                            }

                        default:
                            flag = false;
                            break;
                        }
                        return flag;
                    }

            
            {
                this$1 = _cls7.this;
                super();
            }
                }
);
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
    }

    private int getConnectionState()
    {
        int i = PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(endPointType);
        if (i == 2 || i == 1)
            i = 4;
        setConnectionState(i);
        return i;
    }

    private String getConnectionStateString(int i)
    {
        if (i == 3)
            return getString(0x7f0a0008);
        if (i == 4)
            return getString(0x7f0a0009);
        String s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_name", null);
        if (endPointType == 2)
            s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_name", null);
        if (s != null && !s.equals(""))
            return getString(0x7f0a0009);
        else
            return "NA";
    }

    private ImageView getOverFlowMenu()
    {
        if (overFlowMenu == null)
            overFlowMenu = (ImageView)findViewById(0x7f090112);
        return overFlowMenu;
    }

    private void initializeClearListListener()
    {
        mClearListListener = new android.view.View.OnClickListener() {

            final DeviceStatusActivity this$0;

            public void onClick(View view)
            {
                if (mFileTransferStatusLogger != null)
                    mFileTransferStatusLogger.clearHeaderList();
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
    }

    private void initializeListItemListener()
    {
        mFileStatusListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final DeviceStatusActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Log.i("DeviceStatusActivity", (new StringBuilder()).append("Item at position ").append(i).append(" clicked").toString());
                if (i < mFileTransferStatusLogger.getHeadingDetails().size())
                {
                    mFileDetailsLogDialogBuilder.setMessage((CharSequence)mFileTransferStatusLogger.getHeadingDetails().get(i));
                    mFileDetailsLogDialogBuilder.setNeutralButton("Ok", new android.content.DialogInterface.OnClickListener() {

                        final _cls1 this$1;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            if (mFileDetailsLogDialog != null && mFileDetailsLogDialog.isShowing())
                                mFileDetailsLogDialog.dismiss();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    }
);
                    mFileDetailsLogDialog = mFileDetailsLogDialogBuilder.create();
                    mFileDetailsLogDialog.show();
                }
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
);
    }

    private void setConnectionState(int i)
    {
        getConnectionStateString(i);
        sDeviceStatus = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString((new StringBuilder()).append("current_status_text").append(endPointType).toString(), "NA");
        mDeviceStatus.setText((new StringBuilder()).append("Status: ").append(sDeviceStatus).toString());
    }

    public void onBackPressed()
    {
        Log.d("DeviceStatusActivity", "onBackPressed() called");
        onBackPressed();
        try
        {
            Log.d("DeviceStatusActivity", "UnRegistering Receiver");
            unregisterReceiver(btReceiver);
            unregisterReceiver(receiver);
            return;
        }
        catch (Exception exception)
        {
            Log.e("DeviceStatusActivity", (new StringBuilder()).append("Exception occured during unRegistering receiver in device status screen ").append(exception).toString());
        }
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        setContentView(0x7f030020);
        ToqLoggerFactory toqloggerfactory = ToqLoggerFactory.getInstance();
        if (toqloggerfactory != null)
            mGenericToqLoggerImpl = (GenericToqLoggerImpl)toqloggerfactory.getLoggerInstance("generic_log");
        ((TextView)findViewById(0x7f090111)).setText(getString(0x7f0a001b));
        endPointType = getIntent().getIntExtra("endpointtype", 0);
        clearListButton = (Button)findViewById(0x7f090126);
        useSDCardEPFirmwareForTransferToggleButton = (ToggleButton)findViewById(0x7f090122);
        useP1SoftwareToggleButton = (ToggleButton)findViewById(0x7f09012a);
        useP2SoftwareToggleButton = (ToggleButton)findViewById(0x7f09012b);
        mEPProfilesList = (TextView)findViewById(0x7f090128);
        mPBEStatusTextView = (TextView)findViewById(0x7f090129);
        if (endPointType == 1)
        {
            sDeviceName = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_name", null);
            sDeviceAddr = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", null);
        } else
        if (endPointType == 2)
        {
            sDeviceName = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_name", null);
            sDeviceAddr = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", null);
        }
        useSDCardEPFirmwareForTransferToggleButton.setChecked(ConnectionFactory.getConnectionFactory().getCustomsBuildFlag());
        if ("".equalsIgnoreCase("P1"))
        {
            useP1SoftwareToggleButton.setChecked(true);
            useP2SoftwareToggleButton.setChecked(false);
        } else
        if ("".equalsIgnoreCase("P2") || "".equalsIgnoreCase("MP"))
        {
            useP1SoftwareToggleButton.setChecked(false);
            useP2SoftwareToggleButton.setChecked(true);
        } else
        {
            useP1SoftwareToggleButton.setChecked(false);
            useP2SoftwareToggleButton.setChecked(false);
        }
        try
        {
            if (sDeviceName == null)
                sDeviceName = "NA";
            if (sDeviceAddr == null)
                sDeviceAddr = "NA";
            if (sDeviceBattery == null)
                sDeviceBattery = "NA";
        }
        catch (Exception exception) { }
        mDeviceName = (TextView)findViewById(0x7f090114);
        mDeviceName.setText((new StringBuilder()).append("Name: ").append(sDeviceName).toString());
        mDeviceAddr = (TextView)findViewById(0x7f090115);
        mDeviceAddr.setText((new StringBuilder()).append("Address: ").append(sDeviceAddr).toString());
        mDeviceStatus = (TextView)findViewById(0x7f090118);
        mDeviceStatus.setText((new StringBuilder()).append("Status: ").append(sDeviceStatus).toString());
        mToqFirmwareVersion = (TextView)findViewById(0x7f09011c);
        mToqFirmwareVersion.setText((new StringBuilder()).append("Firmware Version: ").append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(endPointType)).toString());
        mFileStatusListView = (ListView)findViewById(0x7f090127);
        mFileDetailsLogDialogBuilder = new Builder(this);
        mFileTransferStatusLoggerAdapter = new FileTransferStatusAdapter(ToqApplication.getAppContext(), 0x7f030039);
        if (mFileHandler == null)
            mFileHandler = new Handler(getMainLooper());
        mFileTransferStatusLogger = FileTransferStatusLogger.getInstance(endPointType);
        mFileTransferStatusLogger.setFileTransferAdapter(mFileTransferStatusLoggerAdapter, mFileHandler);
        mFileTransferStatusLoggerAdapter.setList(mFileTransferStatusLogger.getHeading());
        mFileStatusListView.setAdapter(mFileTransferStatusLoggerAdapter);
        initializeListItemListener();
        initializeClearListListener();
        try
        {
            PackageInfo packageinfo = getPackageManager().getPackageInfo(getPackageName(), 0);
            mBambooVersionNo = (TextView)findViewById(0x7f090119);
            mBambooBuildNo = (TextView)findViewById(0x7f09011a);
            mBambooVersionNo.setText((new StringBuilder()).append("Build Version: ").append(packageinfo.versionName).toString());
            mBambooBuildNo.setText((new StringBuilder()).append("Bamboo Build No: ").append(ProjectConfig.getProjectConfig().getBambooBuildNumber()).toString());
        }
        catch (Exception exception1) { }
        setConnectionState(0);
        getOverFlowMenu().setOnClickListener(overFlowMenuClickListener);
    }

    protected Dialog onCreateDialog(int i)
    {
        switch (i)
        {
        case 1: // '\001'
            progressDialog = new ProgressDialog(this);
            progressDialog.setMessage("Please Wait...");
            progressDialog.setCancelable(false);
            progressDialog.setProgressStyle(0);
            return progressDialog;
        }
        return null;
    }

    protected void onDestroy()
    {
        Log.d("DeviceStatusActivity", "onDestroy");
        onDestroy();
        try
        {
            Log.d("DeviceStatusActivity", "UnRegistering Receiver");
            unregisterReceiver(btReceiver);
            unregisterReceiver(receiver);
            if (alert != null)
            {
                if (alert.isShowing())
                    alert.cancel();
                alert = null;
            }
            if (mFileHandler != null)
            {
                mFileHandler.removeCallbacksAndMessages(null);
                mFileHandler = null;
            }
            if (mFileTransferStatusLogger != null)
            {
                mFileTransferStatusLogger.removeAdapter();
                mFileTransferStatusLogger = null;
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onPause()
    {
        Log.d("DeviceStatusActivity", "onPause() called");
        onPause();
    }

    protected void onResume()
    {
        Log.d("DeviceStatusActivity", "onResume");
        onResume();
        if (progressDialog != null && progressDialog.isShowing())
            showDialog(1);
        Log.d("DeviceStatusActivity", (new StringBuilder()).append("onResume isGenericToqLoggerEnabled:: ").append(mGenericToqLoggerImpl.isGenericToqLoggerEnabled()).toString());
        getConnectionState();
        clearListButton.setOnClickListener(mClearListListener);
        TextView textview = mEPProfilesList;
        String s = ToqApplication.getAppContext().getResources().getString(0x7f0a01b8);
        Object aobj[] = new Object[1];
        aobj[0] = PhubBluetoothDeviceBondInfo.getInstance().getEPConnectedProfiles(endPointType).toString();
        textview.setText(String.format(s, aobj));
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        if (connectionfactory != null)
        {
            TextView textview1 = mToqFirmwareVersion;
            String s1 = ToqApplication.getAppContext().getResources().getString(0x7f0a01b9);
            Object aobj1[] = new Object[1];
            aobj1[0] = connectionfactory.getEndPointFirmwareVersion(endPointType);
            textview1.setText(String.format(s1, aobj1));
            TextView textview2 = mPBEStatusTextView;
            String s2 = ToqApplication.getAppContext().getResources().getString(0x7f0a01bb);
            Object aobj2[] = new Object[1];
            aobj2[0] = EPConnectionHandlerImpl.getConnectionHandler().getBassBoostMode(endPointType);
            textview2.setText(String.format(s2, aobj2));
        }
    }

    protected void onStart()
    {
        onStart();
        Log.printUsageLog("DeviceStatusActivity", "DeviceStatusActivity is started");
        Log.d("DeviceStatusActivity", "onStart");
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
        intentfilter.addAction(Constants.ACTION_CONNECTION_STOPPED);
        intentfilter.addAction(Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED);
        intentfilter.addAction(Constants.ACTION_SERVICE_STOPPED);
        intentfilter.addAction(Constants.ACTION_VERSION_INFO);
        intentfilter.addAction(Constants.ACTION_FIRMWARE_TRANSFER);
        intentfilter.addAction(Constants.ACTION_EAR_PIECE_PROFILE_UPDATE);
        registerReceiver(receiver, intentfilter);
        Log.d("DeviceStatusActivity", "Registering Receiver");
        IntentFilter intentfilter1 = new IntentFilter(Constants.ACTION_BLUETOOTH_NOT_ENABLED);
        registerReceiver(btReceiver, intentfilter1);
    }

    protected void onStop()
    {
        Log.d("DeviceStatusActivity", "onStop() called");
        onStop();
        Log.printUsageLog("DeviceStatusActivity", "DeviceStatusActivity is stopped");
        if (alert != null)
        {
            if (alert.isShowing())
                alert.cancel();
            alert = null;
        }
    }

    public void onToggleClicked(View view)
    {
        boolean flag = ((ToggleButton)view).isChecked();
        switch (view.getId())
        {
        case 2131296546: 
            ConnectionFactory.getConnectionFactory().setCustomsBuildFlag(flag);
            return;
        }
    }

    public void setLogMenu()
    {
        if (mLogItem != null && mGenericToqLoggerImpl != null)
        {
            if (!mGenericToqLoggerImpl.isGenericToqLoggerEnabled())
            {
                mLogItem.setTitle(0x7f0a003f);
                mLogItem.setIcon(0x1080024);
                return;
            } else
            {
                mLogItem.setTitle(0x7f0a0040);
                mLogItem.setIcon(0x1080023);
                return;
            }
        } else
        {
            return;
        }
    }

    public void showToastMessage(final String message)
    {
        mHandler.post(new Runnable() {

            final DeviceStatusActivity this$0;
            final String val$message;

            public void run()
            {
                Toast.makeText(DeviceStatusActivity.this, message, 1).show();
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                message = s;
                super();
            }
        }
);
    }

    public void showToastMessage(final String message, final Context context)
    {
        mHandler.post(new Runnable() {

            final DeviceStatusActivity this$0;
            final Context val$context;
            final String val$message;

            public void run()
            {
                Toast.makeText(context, message, 1).show();
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                context = context1;
                message = s;
                super();
            }
        }
);
    }







/*
    static MenuItem access$1202(DeviceStatusActivity devicestatusactivity, MenuItem menuitem)
    {
        devicestatusactivity.mLogItem = menuitem;
        return menuitem;
    }

*/




/*
    static AlertDialog access$202(DeviceStatusActivity devicestatusactivity, AlertDialog alertdialog)
    {
        devicestatusactivity.mFileDetailsLogDialog = alertdialog;
        return alertdialog;
    }

*/








/*
    static AlertDialog access$802(DeviceStatusActivity devicestatusactivity, AlertDialog alertdialog)
    {
        devicestatusactivity.alert = alertdialog;
        return alertdialog;
    }

*/



/*
    static int access$902(int i)
    {
        disconnectTimerCount = i;
        return i;
    }

*/


/*
    static int access$908()
    {
        int i = disconnectTimerCount;
        disconnectTimerCount = i + 1;
        return i;
    }

*/

    // Unreferenced inner class com/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4$1

/* anonymous class */
    class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        final _cls4 this$1;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.dismiss();
        }

            
            {
                this$1 = _cls4.this;
                super();
            }
    }

}

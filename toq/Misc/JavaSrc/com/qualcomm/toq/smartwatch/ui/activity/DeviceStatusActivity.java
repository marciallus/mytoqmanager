// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.*;
import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.bluetooth.receiver.HandleMessageService;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.tftp.FTPBaseMessage;
import com.qualcomm.toq.base.ui.adapter.FileTransferStatusAdapter;
import com.qualcomm.toq.base.ui.customview.PhubEditTextView;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.connectionmanager.tcp.TCPConnectionManager;
import com.qualcomm.toq.smartwatch.controller.FMSController;
import com.qualcomm.toq.smartwatch.controller.FirmwareUpdateController;
import com.qualcomm.toq.smartwatch.database.ActivityPointsDatabaseAdapter;
import com.qualcomm.toq.smartwatch.database.FMSDatabaseAdapter;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.logger.*;
import com.qualcomm.toq.smartwatch.service.PHubService;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.log4j.Logger;

// Referenced classes of package com.qualcomm.toq.smartwatch.ui.activity:
//            FTPFileBrowserActivity, ImageSharingActivity

public class DeviceStatusActivity extends Activity
{

    private static final Executor EX = Executors.newCachedThreadPool();
    private static final int PROGRESS_DIALOG = 1;
    protected static final String TAG = "DeviceStatusActivity";
    private static int disconnectTimerCount = -1;
    private static Handler mFileHandler = null;
    private AlertDialog alert;
    BroadcastReceiver btReceiver;
    private Button clearListButton;
    private ToggleButton compatibility_toogle_button;
    private boolean enaleCustomFW;
    private int endPointType;
    private Button forceUpgradeButton;
    private TextView mBambooBuildNo;
    private TextView mBambooVersionNo;
    private android.view.View.OnClickListener mClearListListener;
    private TextView mDeviceAddr;
    private TextView mDeviceName;
    private TextView mDeviceStatus;
    private Button mFTPFileBrowserButton;
    private android.view.View.OnClickListener mFTPFileBrowserOnClickListener;
    private AlertDialog mFileDetailsLogDialog;
    private android.app.AlertDialog.Builder mFileDetailsLogDialogBuilder;
    private ListView mFileStatusListView;
    private FileTransferStatusLogger mFileTransferStatusLogger;
    private FileTransferStatusAdapter mFileTransferStatusLoggerAdapter;
    private ProgressDialog mFirmwareTransferProgressSpinner;
    private android.view.View.OnClickListener mForceUpgradeClickListener;
    private GenericToqLoggerImpl mGenericToqLoggerImpl;
    private Handler mHandler;
    private MenuItem mLogItem;
    private android.view.View.OnClickListener mResetClickListener;
    private TextView mToqFirmwareVersion;
    ImageView overFlowMenu;
    android.view.View.OnClickListener overFlowMenuClickListener;
    private ProgressDialog progressDialog;
    BroadcastReceiver receiver;
    private Button resetConnectionButton;
    private String sDeviceAddr;
    private String sDeviceBattery;
    private String sDeviceName;
    private String sDeviceStatus;
    boolean serviceConnected;
    private ToggleButton tftp_toogle_button;

    public DeviceStatusActivity()
    {
        resetConnectionButton = null;
        forceUpgradeButton = null;
        mFTPFileBrowserButton = null;
        clearListButton = null;
        progressDialog = null;
        serviceConnected = false;
        mHandler = new Handler();
        mResetClickListener = null;
        mForceUpgradeClickListener = null;
        mFTPFileBrowserOnClickListener = null;
        mClearListListener = null;
        mFirmwareTransferProgressSpinner = null;
        alert = null;
        mFileStatusListView = null;
        mFileDetailsLogDialog = null;
        mFileDetailsLogDialogBuilder = null;
        compatibility_toogle_button = null;
        tftp_toogle_button = null;
        endPointType = 0;
        btReceiver = new BroadcastReceiver() {

            final DeviceStatusActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                if (Constants.ACTION_BLUETOOTH_NOT_SUPPORTED.equals(s))
                {
                    Log.d("DeviceStatusActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                    Toast.makeText(context, ToqApplication.getAppContext().getResources().getString(0x7f0a0110), 0).show();
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
                if (Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED.equals(s))
                {
                    if (mFirmwareTransferProgressSpinner != null)
                        mFirmwareTransferProgressSpinner = null;
                    if (alert != null)
                    {
                        if (alert.isShowing())
                            alert.cancel();
                        alert = null;
                    }
                    if (progressDialog != null && progressDialog.isShowing())
                        progressDialog.dismiss();
                    mDeviceName.setText("Name: NA");
                    mDeviceAddr.setText("Address: NA");
                    mDeviceStatus.setText("Status: NA");
                    resetConnectionButton.setVisibility(8);
                    mFTPFileBrowserButton.setVisibility(8);
                } else
                if (Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
                {
                    if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
                    {
                        mDeviceName.setText("Name: NA");
                        mDeviceAddr.setText("Address: NA");
                        mDeviceStatus.setText("Status: NA");
                        if (progressDialog != null && progressDialog.isShowing())
                            progressDialog.dismiss();
                        resetConnectionButton.setVisibility(8);
                        mFTPFileBrowserButton.setVisibility(8);
                        return;
                    }
                    String s2 = intent.getStringExtra("endpointname");
                    String s3 = intent.getStringExtra("endpointaddress");
                    int j = intent.getIntExtra("state", 0);
                    if (i != 1 && i != 2)
                    {
                        if (mFirmwareTransferProgressSpinner != null)
                            mFirmwareTransferProgressSpinner = null;
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.cancel();
                            alert = null;
                        }
                        mDeviceName.setText((new StringBuilder()).append("Name: ").append(s2).toString());
                        mDeviceAddr.setText((new StringBuilder()).append("Address: ").append(s3).toString());
                        if (j == 3)
                        {
                            mDeviceStatus.setText("Status: Connected");
                            resetConnectionButton.setVisibility(0);
                            mFTPFileBrowserButton.setVisibility(0);
                            if (progressDialog != null && progressDialog.isShowing())
                                progressDialog.dismiss();
                            if (mFileTransferStatusLogger != null)
                            {
                                mFileTransferStatusLogger.clearHeaderList();
                                return;
                            }
                        } else
                        if (j == 4 || j == 0)
                        {
                            int i = TextView;
                            mDeviceStatus.setText((new StringBuilder()).append("Status: ").append(getString(0x7f0a0009)).toString());
                            resetConnectionButton.setVisibility(8);
                            mFTPFileBrowserButton.setVisibility(8);
                            if (DeviceStatusActivity.disconnectTimerCount > 3)
                            {
                                if (progressDialog != null && progressDialog.isShowing())
                                {
                                    progressDialog.dismiss();
                                    Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0111), 1).show();
                                    resetConnectionButton.setVisibility(0);
                                }
                                DeviceStatusActivity.disconnectTimerCount = -1;
                                return;
                            }
                        }
                    }
                } else
                if (s.equals(Constants.ACTION_CONNECTION_STOPPED))
                {
                    if (progressDialog != null && progressDialog.isShowing())
                        progressDialog.dismiss();
                    if (mFirmwareTransferProgressSpinner != null)
                        mFirmwareTransferProgressSpinner = null;
                    if (alert != null)
                    {
                        if (alert.isShowing())
                            alert.cancel();
                        alert = null;
                        return;
                    }
                } else
                {
                    if (s.equals(Constants.ACTION_SERVICE_STOPPED))
                    {
                        if (mFirmwareTransferProgressSpinner != null)
                            mFirmwareTransferProgressSpinner = null;
                        if (progressDialog != null && progressDialog.isShowing())
                            progressDialog.dismiss();
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.cancel();
                            alert = null;
                        }
                        serviceConnected = false;
                        return;
                    }
                    if (Constants.ACTION_VERSION_INFO.equals(s))
                    {
                        String s1 = intent.getStringExtra("version_message");
                        if (mToqFirmwareVersion != null)
                            mToqFirmwareVersion.setText((new StringBuilder()).append("Firmware Version: ").append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(0)).toString());
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.cancel();
                            alert = null;
                        }
                        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(DeviceStatusActivity.this);
                        builder.setTitle("VERSION DETAILS:");
                        builder.setMessage(s1);
                        builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                            final _cls14 this$1;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                            }

            
            {
                this$1 = _cls14.this;
                super();
            }
                        }
);
                        alert = builder.create();
                        alert.show();
                        return;
                    }
                }
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
        enaleCustomFW = false;
        overFlowMenuClickListener = new android.view.View.OnClickListener() {

            final DeviceStatusActivity this$0;

            public void onClick(View view)
            {
                PopupMenu popupmenu = new PopupMenu(getBaseContext(), view);
                popupmenu.getMenuInflater().inflate(0x7f0c0001, popupmenu.getMenu());
                mLogItem = popupmenu.getMenu().findItem(0x7f090271);
                setLogMenu();
                enaleCustomFW = ConnectionFactory.getConnectionFactory().getCustomsBuildFlag();
                MenuItem menuitem = popupmenu.getMenu().findItem(0x7f090277);
                String s;
                if (enaleCustomFW)
                    s = "Enable Custom FW: ON";
                else
                    s = "Enable Custom FW: OFF";
                menuitem.setTitle(s);
                popupmenu.show();
                popupmenu.setOnMenuItemClickListener(new android.widget.PopupMenu.OnMenuItemClickListener() {

                    final _cls17 this$1;

                    public boolean onMenuItemClick(MenuItem menuitem)
                    {
                        boolean flag = true;
                        switch (menuitem.getItemId())
                        {
                        case 2131296887: 
                            DeviceStatusActivity devicestatusactivity = _fld0;
                            boolean flag1 = enaleCustomFW;
                            boolean flag2 = false;
                            if (!flag1)
                                flag2 = flag;
                            devicestatusactivity.enaleCustomFW = flag2;
                            ConnectionFactory.getConnectionFactory().setCustomsBuildFlag(enaleCustomFW);
                            String s;
                            if (enaleCustomFW)
                                s = "Enable Custom FW: ON";
                            else
                                s = "Enable Custom FW: OFF";
                            menuitem.setTitle(s);
                            return flag;

                        case 2131296886: 
                            showTFTPDialog();
                            return flag;

                        case 2131296885: 
                            printActivityContentDBLogs();
                            return flag;

                        case 2131296884: 
                            Log.d("DeviceStatusActivity", "Starting ImageSharingActivity Activity");
                            Intent intent = new Intent(_fld0, com/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity);
                            startActivity(intent);
                            return flag;

                        case 2131296883: 
                            findWristDisplay();
                            return flag;

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
                this$1 = _cls17.this;
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

    private void findWristDisplay()
    {
        int i;
        ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null)
            break MISSING_BLOCK_LABEL_165;
        i = toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType());
        Log.v("DeviceStatusActivity", (new StringBuilder()).append("State:::inside findWD").append(i).toString());
        if (i != 3)
            break MISSING_BLOCK_LABEL_145;
        PHubService phubservice;
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) != 1)
            break MISSING_BLOCK_LABEL_125;
        phubservice = PHubService.getPHubService();
        if (phubservice == null)
            break MISSING_BLOCK_LABEL_103;
        phubservice.findWDRequest();
_L1:
        Log.printUsageLog("DeviceStatusActivity", "Find WD request initiated");
        return;
        try
        {
            Toast.makeText(ToqApplication.getAppContext(), "Service is stopped.", 0).show();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
          goto _L1
        showToastMessage(ToqApplication.getAppContext().getResources().getString(0x7f0a0112), ToqApplication.getAppContext());
        return;
        showToastMessage(ToqApplication.getAppContext().getResources().getString(0x7f0a0113), ToqApplication.getAppContext());
        return;
        showToastMessage(ToqApplication.getAppContext().getResources().getString(0x7f0a0113), ToqApplication.getAppContext());
        return;
    }

    private int getConnectionState()
    {
        IEndPoint iendpoint = ConnectionFactory.getConnectionFactory().getEndPoint(0);
        int i = 0;
        if (iendpoint != null)
        {
            i = ToqConnectionHandlerImpl.getConnectionHandler().getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType());
            if (i == 2 || i == 1)
                i = 4;
            setConnectionState(i);
        }
        return i;
    }

    private String getConnectionStateString(int i)
    {
        if (i == 3)
            return getString(0x7f0a0008);
        if (i == 4)
            return getString(0x7f0a0009);
        String s = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_name", null);
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

                        final _cls6 this$1;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            if (mFileDetailsLogDialog != null && mFileDetailsLogDialog.isShowing())
                                mFileDetailsLogDialog.dismiss();
                        }

            
            {
                this$1 = _cls6.this;
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

    private void initializeListener()
    {
        mResetClickListener = new android.view.View.OnClickListener() {

            final DeviceStatusActivity this$0;

            public void onClick(View view)
            {
                resetConnection();
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
        mForceUpgradeClickListener = new android.view.View.OnClickListener() {

            final DeviceStatusActivity this$0;

            public void onClick(View view)
            {
                if (alert != null)
                {
                    if (alert.isShowing())
                        alert.dismiss();
                    alert = null;
                }
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(DeviceStatusActivity.this);
                builder.setTitle("Force Push Firmware Upgrade");
                builder.setMessage("Do you really want to force push the firmware upgrade to Toq ?");
                builder.setCancelable(false);
                builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                    final _cls11 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                        if (FMSController.getFmsController() != null && FMSController.getFmsController().getFmsDatabaseAdapter() != null)
                        {
                            if (FMSController.getFmsController().getFmsDatabaseAdapter().isFMSEntryAvailable("/firmware/1234.zip"))
                            {
                                if (FMSController.getFmsController().getFmsDatabaseAdapter().getFMSState("/firmware/1234.zip") != 4)
                                {
                                    Log.printUsageLog("", "Force Pushing the Firmware to WD");
                                    FMSController.getFmsController().getFmsDatabaseAdapter().updateFMSState("/firmware/1234.zip", 3, System.currentTimeMillis());
                                    if (alert != null)
                                    {
                                        if (alert.isShowing())
                                            alert.dismiss();
                                        alert = null;
                                    }
                                    android.app.AlertDialog.Builder builder3 = new android.app.AlertDialog.Builder(_fld0);
                                    builder3.setTitle("Force Push Firmware Upgrade");
                                    builder3.setMessage("Firmware upgrade initiated with Toq");
                                    builder3.setCancelable(false);
                                    builder3.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                                        final _cls1 this$2;

                                        public void onClick(DialogInterface dialoginterface, int i)
                                        {
                                            dialoginterface.dismiss();
                                        }

            
            {
                this$2 = _cls1.this;
                super();
            }
                                    }
);
                                    alert = builder3.create();
                                    alert.show();
                                    return;
                                }
                                if (alert != null)
                                {
                                    if (alert.isShowing())
                                        alert.dismiss();
                                    alert = null;
                                }
                                android.app.AlertDialog.Builder builder2 = new android.app.AlertDialog.Builder(_fld0);
                                builder2.setTitle("Force Push Firmware Upgrade");
                                builder2.setMessage("Can't push the firmware upgrade as currently firmware upgrade is being pushed to Toq!");
                                builder2.setCancelable(false);
                                builder2.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                                    final _cls1 this$2;

                                    public void onClick(DialogInterface dialoginterface, int i)
                                    {
                                        dialoginterface.dismiss();
                                    }

            
            {
                this$2 = _cls1.this;
                super();
            }
                                }
);
                                alert = builder2.create();
                                alert.show();
                                return;
                            }
                            Log.e("DeviceStatusActivity", "FMS has no entry for firmware file");
                            if (ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(0).equalsIgnoreCase("a3.zip"))
                            {
                                boolean flag2 = FirmwareUpdateController.getFirmwareUpdateController(ConnectionFactory.getConnectionFactory().getContext()).pushFirmwareUpdateToWD("a3.zip");
                                Log.d("DeviceStatusActivity", (new StringBuilder()).append("A3 Firmware push result: ").append(flag2).toString());
                            } else
                            if (ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(0).equalsIgnoreCase("p0_kairos.zip"))
                            {
                                boolean flag1 = FirmwareUpdateController.getFirmwareUpdateController(ConnectionFactory.getConnectionFactory().getContext()).pushFirmwareUpdateToWD("p0_kairos.zip");
                                Log.d("DeviceStatusActivity", (new StringBuilder()).append("FFA Firmware push result: ").append(flag1).toString());
                            } else
                            if (ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(0).equalsIgnoreCase("p1.zip"))
                            {
                                boolean flag = FirmwareUpdateController.getFirmwareUpdateController(ConnectionFactory.getConnectionFactory().getContext()).pushFirmwareUpdateToWD("p1.zip");
                                Log.d("DeviceStatusActivity", (new StringBuilder()).append("FFA Firmware push result: ").append(flag).toString());
                            }
                            if (alert != null)
                            {
                                if (alert.isShowing())
                                    alert.dismiss();
                                alert = null;
                            }
                            android.app.AlertDialog.Builder builder1 = new android.app.AlertDialog.Builder(_fld0);
                            builder1.setTitle("Force Push Firmware Upgrade");
                            builder1.setMessage("Firmware upgrade initiated with Toq");
                            builder1.setCancelable(false);
                            builder1.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                                final _cls1 this$2;

                                public void onClick(DialogInterface dialoginterface, int i)
                                {
                                    dialoginterface.dismiss();
                                }

            
            {
                this$2 = _cls1.this;
                super();
            }
                            }
);
                            alert = builder1.create();
                            alert.show();
                            return;
                        }
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.dismiss();
                            alert = null;
                        }
                        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(_fld0);
                        builder.setTitle("Force Push Firmware Upgrade");
                        builder.setMessage("Make sure Phone and Toq are in connected state to force upgrade the firmware");
                        builder.setCancelable(false);
                        builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                            final _cls1 this$2;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                            }

            
            {
                this$2 = _cls1.this;
                super();
            }
                        }
);
                        alert = builder.create();
                        alert.show();
                    }

            
            {
                this$1 = _cls11.this;
                super();
            }
                }
);
                builder.setNegativeButton("CANCEL", new android.content.DialogInterface.OnClickListener() {

                    final _cls11 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                    }

            
            {
                this$1 = _cls11.this;
                super();
            }
                }
);
                alert = builder.create();
                alert.show();
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
        mFTPFileBrowserOnClickListener = new android.view.View.OnClickListener() {

            final DeviceStatusActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(DeviceStatusActivity.this, com/qualcomm/toq/smartwatch/ui/activity/FTPFileBrowserActivity);
                startActivity(intent);
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
;
    }

    private void printActivityContentDBLogs()
    {
        showDialog(1);
        (new Thread() {

            final DeviceStatusActivity this$0;

            public void run()
            {
                ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext()).printDBValues();
                runOnUiThread(new Runnable() {

                    final _cls18 this$1;

                    public void run()
                    {
                        if (progressDialog != null && progressDialog.isShowing())
                            progressDialog.dismiss();
                    }

            
            {
                this$1 = _cls18.this;
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
).start();
    }

    private void resetConnection()
    {
        boolean flag;
        Exception exception1;
        PHubService phubservice;
        try
        {
            flag = ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("DeviceStatusActivity", (new StringBuilder()).append("Exception in resetConnection(): ").append(exception.toString()).toString());
            return;
        }
        if (!flag)
            break MISSING_BLOCK_LABEL_220;
        Log.d("DeviceStatusActivity", (new StringBuilder()).append("Connection State = ").append(mDeviceStatus.getText()).toString());
        Log.d("DeviceStatusActivity", (new StringBuilder()).append("Device Address = ").append(mDeviceAddr.getText()).toString());
        if (mDeviceStatus.getText().toString().compareTo("Status: Connected") != 0)
            break MISSING_BLOCK_LABEL_212;
        disconnectTimerCount = 0;
        showDialog(1);
        resetConnectionButton.setVisibility(8);
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getContext() == null)
            break MISSING_BLOCK_LABEL_220;
        phubservice = PHubService.getPHubService();
        if (phubservice == null)
            break MISSING_BLOCK_LABEL_149;
        phubservice.resetConnectionWD();
        return;
        Toast.makeText(ToqApplication.getAppContext(), "Service is stopped.", 0).show();
        return;
        exception1;
        Log.e("DeviceStatusActivity", exception1.toString());
        exception1.printStackTrace();
        return;
        Log.d("DeviceStatusActivity", "Device not connected to WD, Reset Connection will not work now");
    }

    private void setConnectionState(int i)
    {
        sDeviceStatus = getConnectionStateString(i);
        mDeviceStatus.setText((new StringBuilder()).append("Status: ").append(sDeviceStatus).toString());
        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
        {
            resetConnectionButton.setVisibility(8);
            mFTPFileBrowserButton.setVisibility(8);
        } else
        if (i == 3)
        {
            resetConnectionButton.setVisibility(0);
            mFTPFileBrowserButton.setVisibility(0);
        } else
        {
            resetConnectionButton.setVisibility(8);
            mFTPFileBrowserButton.setVisibility(8);
        }
        if (mToqFirmwareVersion != null)
            mToqFirmwareVersion.setText((new StringBuilder()).append("Firmware Version: ").append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(0)).toString());
    }

    private void showTFTPDialog()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle("Set TFTP Block Size");
        builder.setMessage("Enter Block Size in bytes:");
        final EditText input = new EditText(this);
        builder.setView(input);
        input.setText((new StringBuilder()).append("").append(FTPBaseMessage.BLOCK_SIZE).toString());
        builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

            final DeviceStatusActivity this$0;
            final EditText val$input;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                String s = input.getText().toString();
                Log.d("DeviceStatusActivity", (new StringBuilder()).append("Block Size : ").append(s).toString());
                if (!TextUtils.isEmpty(s) && TextUtils.isDigitsOnly(s))
                    FTPBaseMessage.BLOCK_SIZE = Integer.parseInt(s);
                resetConnection();
                dialoginterface.dismiss();
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                input = edittext;
                super();
            }
        }
);
        builder.setNegativeButton("Cancel", new android.content.DialogInterface.OnClickListener() {

            final DeviceStatusActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
            }

            
            {
                this$0 = DeviceStatusActivity.this;
                super();
            }
        }
);
        builder.show();
    }

    public void onBackPressed()
    {
        Log.d("DeviceStatusActivity", "onBackPressed() called");
        super.onBackPressed();
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
        super.onCreate(bundle);
        setContentView(0x7f03001f);
        ToqLoggerFactory toqloggerfactory = ToqLoggerFactory.getInstance();
        if (toqloggerfactory != null)
            mGenericToqLoggerImpl = (GenericToqLoggerImpl)toqloggerfactory.getLoggerInstance("generic_log");
        resetConnectionButton = (Button)findViewById(0x7f09011d);
        forceUpgradeButton = (Button)findViewById(0x7f090121);
        mFTPFileBrowserButton = (Button)findViewById(0x7f090123);
        compatibility_toogle_button = (ToggleButton)findViewById(0x7f090120);
        tftp_toogle_button = (ToggleButton)findViewById(0x7f090124);
        clearListButton = (Button)findViewById(0x7f090126);
        sDeviceName = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_name", null);
        sDeviceAddr = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null);
        sDeviceBattery = "NA";
        try
        {
            if (sDeviceName == null)
                sDeviceName = "NA";
            if (sDeviceAddr == null)
                sDeviceAddr = "NA";
            if (sDeviceBattery == null)
                sDeviceAddr = "NA";
        }
        catch (Exception exception) { }
        mDeviceName = (TextView)findViewById(0x7f090114);
        mDeviceName.setText((new StringBuilder()).append("Name: ").append(sDeviceName).toString());
        mDeviceAddr = (TextView)findViewById(0x7f090115);
        mDeviceAddr.setText((new StringBuilder()).append("Address: ").append(sDeviceAddr).toString());
        mDeviceStatus = (TextView)findViewById(0x7f090118);
        mDeviceStatus.setText((new StringBuilder()).append("Status: ").append(sDeviceStatus).toString());
        mToqFirmwareVersion = (TextView)findViewById(0x7f09011c);
        mToqFirmwareVersion.setText((new StringBuilder()).append("Firmware Version: ").append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(0)).toString());
        mFileStatusListView = (ListView)findViewById(0x7f090127);
        mFileDetailsLogDialogBuilder = new android.app.AlertDialog.Builder(this);
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
        initializeListener();
        compatibility_toogle_button.setChecked(ToqConnectionHandlerImpl.getConnectionHandler().getEndPointCheckCompatibilityMode(0));
        tftp_toogle_button.setChecked(ToqConnectionHandlerImpl.getConnectionHandler().getEndPointEnableTFTPMode(0));
        getOverFlowMenu().setOnClickListener(overFlowMenuClickListener);
        if (ProjectConfig.getProjectConfig().getConnectionType().equals("TCP"))
        {
            if (compatibility_toogle_button != null)
                compatibility_toogle_button.setVisibility(8);
            mDeviceName.setVisibility(8);
            mDeviceAddr.setVisibility(8);
            mToqFirmwareVersion.setVisibility(8);
            final PhubEditTextView mTCPAddressEditText = (PhubEditTextView)findViewById(0x7f090116);
            final PhubEditTextView mTCPPortEditText = (PhubEditTextView)findViewById(0x7f090117);
            mTCPAddressEditText.setText(Constants.PHUB_TCP_INTERFACE);
            mTCPPortEditText.setText((new StringBuilder()).append("").append(Constants.PHUB_TCP_PORT).toString());
            mTCPAddressEditText.setVisibility(0);
            mTCPPortEditText.setVisibility(0);
            mTCPAddressEditText.setOnKeyListener(new android.view.View.OnKeyListener() {

                final DeviceStatusActivity this$0;
                final PhubEditTextView val$mTCPAddressEditText;

                public boolean onKey(View view, int i, KeyEvent keyevent)
                {
label0:
                    {
label1:
                        {
                            int j = keyevent.getAction();
                            boolean flag = false;
                            if (j == 0)
                            {
                                flag = false;
                                if (i == 66)
                                {
                                    String s = mTCPAddressEditText.getText().toString();
                                    if (s == null || TextUtils.isEmpty(s))
                                        break label0;
                                    if (!Patterns.IP_ADDRESS.matcher(s).matches())
                                        break label1;
                                    TCPConnectionManager.getConnectionManager(ToqApplication.getAppContext()).stopConnection(Constants.PHUB_TCP_INTERFACE);
                                    Constants.PHUB_TCP_INTERFACE = s;
                                    showToastMessage((new StringBuilder()).append("valid TCP/IP Address ").append(s).toString());
                                    android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                    editor.putString("phub_tcp_address", Constants.PHUB_TCP_INTERFACE);
                                    editor.commit();
                                    TCPConnectionManager.getConnectionManager(ToqApplication.getAppContext()).associatePhoneWD();
                                    flag = true;
                                }
                            }
                            return flag;
                        }
                        showToastMessage("ERROR - Invalid TCP/IP Address ");
                        mTCPAddressEditText.setText("");
                        return false;
                    }
                    mTCPAddressEditText.setText("");
                    showToastMessage("ERROR - Invalid TCP/IP Address ");
                    return false;
                }

            
            {
                this$0 = DeviceStatusActivity.this;
                mTCPAddressEditText = phubedittextview;
                super();
            }
            }
);
            mTCPPortEditText.setOnKeyListener(new android.view.View.OnKeyListener() {

                final DeviceStatusActivity this$0;
                final PhubEditTextView val$mTCPPortEditText;

                public boolean onKey(View view, int i, KeyEvent keyevent)
                {
label0:
                    {
                        int j = keyevent.getAction();
                        boolean flag = false;
                        if (j == 0)
                        {
                            flag = false;
                            if (i == 66)
                            {
                                String s = mTCPPortEditText.getText().toString();
                                if (s == null || TextUtils.isEmpty(s) || !TextUtils.isDigitsOnly(s))
                                    break label0;
                                Constants.PHUB_TCP_PORT = Integer.parseInt(s);
                                showToastMessage("Valid TCP/IP Port Number ");
                                android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                editor.putInt("phub_tcp_port", Constants.PHUB_TCP_PORT);
                                editor.commit();
                                flag = true;
                            }
                        }
                        return flag;
                    }
                    mTCPPortEditText.setText("");
                    showToastMessage("ERROR - Invalid TCP/IP Port number ");
                    return false;
                }

            
            {
                this$0 = DeviceStatusActivity.this;
                mTCPPortEditText = phubedittextview;
                super();
            }
            }
);
        }
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
        super.onDestroy();
        try
        {
            Log.d("DeviceStatusActivity", "UnRegistering Receiver");
            unregisterReceiver(btReceiver);
            unregisterReceiver(receiver);
            if (mFirmwareTransferProgressSpinner != null)
            {
                if (mFirmwareTransferProgressSpinner.isShowing())
                    mFirmwareTransferProgressSpinner.cancel();
                mFirmwareTransferProgressSpinner = null;
            }
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
        super.onPause();
    }

    protected void onResume()
    {
        Log.d("DeviceStatusActivity", "onResume");
        super.onResume();
        if (progressDialog != null && progressDialog.isShowing())
            showDialog(1);
        Log.d("DeviceStatusActivity", (new StringBuilder()).append("onResume isGenericToqLoggerEnabled:: ").append(mGenericToqLoggerImpl.isGenericToqLoggerEnabled()).toString());
        mFTPFileBrowserButton.setOnClickListener(mFTPFileBrowserOnClickListener);
        getConnectionState();
        resetConnectionButton.setOnClickListener(mResetClickListener);
        forceUpgradeButton.setOnClickListener(mForceUpgradeClickListener);
        if (compatibility_toogle_button == null)
            compatibility_toogle_button = (ToggleButton)findViewById(0x7f090120);
        compatibility_toogle_button.setChecked(ToqConnectionHandlerImpl.getConnectionHandler().getEndPointCheckCompatibilityMode(0));
        if (tftp_toogle_button == null)
            tftp_toogle_button = (ToggleButton)findViewById(0x7f090124);
        tftp_toogle_button.setChecked(ToqConnectionHandlerImpl.getConnectionHandler().getEndPointEnableTFTPMode(0));
        clearListButton.setOnClickListener(mClearListListener);
        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
        {
            resetConnectionButton.setVisibility(8);
            mFTPFileBrowserButton.setVisibility(8);
        } else
        if (mDeviceStatus.getText().toString().compareTo("Status: Connected") == 0)
        {
            resetConnectionButton.setVisibility(0);
            mFTPFileBrowserButton.setVisibility(0);
        } else
        if (HandleMessageService.COUNT_WD_CONNECT_ATTEMPT <= 2);
        mToqFirmwareVersion.setText((new StringBuilder()).append("Firmware Version: ").append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(0)).toString());
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("DeviceStatusActivity", "DeviceStatusActivity is started");
        Log.d("DeviceStatusActivity", "onStart");
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
        intentfilter.addAction(Constants.ACTION_CONNECTION_STOPPED);
        intentfilter.addAction(Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED);
        intentfilter.addAction(Constants.ACTION_SERVICE_STOPPED);
        intentfilter.addAction(Constants.ACTION_VERSION_INFO);
        intentfilter.addAction(Constants.ACTION_FIRMWARE_TRANSFER);
        registerReceiver(receiver, intentfilter);
        Log.d("DeviceStatusActivity", "Registering Receiver");
        IntentFilter intentfilter1 = new IntentFilter(Constants.ACTION_BLUETOOTH_NOT_ENABLED);
        registerReceiver(btReceiver, intentfilter1);
    }

    protected void onStop()
    {
        Log.d("DeviceStatusActivity", "onStop() called");
        super.onStop();
        Log.printUsageLog("DeviceStatusActivity", "DeviceStatusActivity is stopped");
        if (mFirmwareTransferProgressSpinner != null)
        {
            if (mFirmwareTransferProgressSpinner.isShowing())
                mFirmwareTransferProgressSpinner.cancel();
            mFirmwareTransferProgressSpinner = null;
        }
        if (alert != null)
        {
            if (alert.isShowing())
                alert.cancel();
            alert = null;
        }
    }

    public void onToggleClicked(final View view)
    {
        if (view == compatibility_toogle_button)
        {
            final boolean on = ((ToggleButton)view).isChecked();
            if (alert != null)
            {
                if (alert.isShowing())
                    alert.dismiss();
                alert = null;
            }
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
            builder.setTitle("Check Compatibility");
            builder.setMessage("This a Developer option, to change modes. Are you sure you want to change the compatibility mode ?");
            builder.setCancelable(false);
            builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                final DeviceStatusActivity this$0;
                final boolean val$on;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                    if (on)
                    {
                        if (ToqConnectionHandlerImpl.getConnectionHandler() != null)
                        {
                            ToqConnectionHandlerImpl.getConnectionHandler().setEndPointCheckCompatibilityMode(0, true);
                            resetConnection();
                        }
                    } else
                    if (ToqConnectionHandlerImpl.getConnectionHandler() != null)
                    {
                        ToqConnectionHandlerImpl.getConnectionHandler().setEndPointCheckCompatibilityMode(0, false);
                        try
                        {
                            if (FMSController.getFmsController() != null && FMSController.getFmsController().getFmsDatabaseAdapter() != null && FMSController.getFmsController().getFmsDatabaseAdapter().isFMSEntryAvailable("/firmware/1234.zip") && FMSController.getFmsController().getFmsDatabaseAdapter().getFMSState("/firmware/1234.zip") != 6)
                                FMSController.getFmsController().getFmsDatabaseAdapter().deleteFMSEntry("/firmware/1234.zip");
                        }
                        catch (Exception exception)
                        {
                            exception.printStackTrace();
                        }
                        resetConnection();
                        return;
                    }
                }

            
            {
                this$0 = DeviceStatusActivity.this;
                on = flag;
                super();
            }
            }
);
            builder.setNegativeButton("Cancel", new android.content.DialogInterface.OnClickListener() {

                final DeviceStatusActivity this$0;
                final boolean val$on;
                final View val$view;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                    if (on)
                    {
                        ((ToggleButton)view).setChecked(false);
                        return;
                    } else
                    {
                        ((ToggleButton)view).setChecked(true);
                        return;
                    }
                }

            
            {
                this$0 = DeviceStatusActivity.this;
                on = flag;
                view = view1;
                super();
            }
            }
);
            builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

                final DeviceStatusActivity this$0;
                final boolean val$on;
                final View val$view;

                public void onCancel(DialogInterface dialoginterface)
                {
                    if (on)
                    {
                        ((ToggleButton)view).setChecked(false);
                        return;
                    } else
                    {
                        ((ToggleButton)view).setChecked(true);
                        return;
                    }
                }

            
            {
                this$0 = DeviceStatusActivity.this;
                on = flag;
                view = view1;
                super();
            }
            }
);
            alert = builder.create();
            alert.show();
        } else
        if (view == tftp_toogle_button)
            if (((ToggleButton)view).isChecked())
            {
                if (ToqConnectionHandlerImpl.getConnectionHandler() != null)
                {
                    ToqConnectionHandlerImpl.getConnectionHandler().setEndPointEnableTFTPMode(0, true);
                    resetConnection();
                    return;
                }
            } else
            if (ToqConnectionHandlerImpl.getConnectionHandler() != null)
            {
                ToqConnectionHandlerImpl.getConnectionHandler().setEndPointEnableTFTPMode(0, false);
                resetConnection();
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
    static int access$1202(int i)
    {
        disconnectTimerCount = i;
        return i;
    }

*/


/*
    static int access$1208()
    {
        int i = disconnectTimerCount;
        disconnectTimerCount = i + 1;
        return i;
    }

*/



/*
    static MenuItem access$1402(DeviceStatusActivity devicestatusactivity, MenuItem menuitem)
    {
        devicestatusactivity.mLogItem = menuitem;
        return menuitem;
    }

*/



/*
    static boolean access$1502(DeviceStatusActivity devicestatusactivity, boolean flag)
    {
        devicestatusactivity.enaleCustomFW = flag;
        return flag;
    }

*/








/*
    static AlertDialog access$302(DeviceStatusActivity devicestatusactivity, AlertDialog alertdialog)
    {
        devicestatusactivity.mFileDetailsLogDialog = alertdialog;
        return alertdialog;
    }

*/



/*
    static AlertDialog access$402(DeviceStatusActivity devicestatusactivity, AlertDialog alertdialog)
    {
        devicestatusactivity.alert = alertdialog;
        return alertdialog;
    }

*/



/*
    static ProgressDialog access$502(DeviceStatusActivity devicestatusactivity, ProgressDialog progressdialog)
    {
        devicestatusactivity.mFirmwareTransferProgressSpinner = progressdialog;
        return progressdialog;
    }

*/




}

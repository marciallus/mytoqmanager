// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.activity;

import android.app.*;
import android.bluetooth.BluetoothAdapter;
import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.*;
import android.view.animation.ScaleAnimation;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.ui.adapter.FileTransferStatusAdapter;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.PHubService;

// Referenced classes of package com.qualcomm.toq.base.ui.activity:
//            WhatsNewActivity, OpenSourceLicensesWebView

public class AboutScreenActivity extends Activity
{
    class MyWebViewClient extends WebViewClient
    {

        final AboutScreenActivity this$0;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            if (progressDialog != null && progressDialog.isShowing())
                progressDialog.dismiss();
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            super.shouldOverrideUrlLoading(webview, s);
            try
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                startActivity(intent);
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                Utils.showBrowserNotInstalledToast();
                activitynotfoundexception.printStackTrace();
            }
            return true;
        }

        MyWebViewClient()
        {
            this$0 = AboutScreenActivity.this;
            super();
        }
    }


    private static final long ANIMATION_DURATION = 500L;
    private static final int PROGRESS_DIALOG = 1;
    private static final String TAG = "AboutScreenActivity";
    private static int disconnectTimerCount = -1;
    private static Handler mFileHandler = null;
    android.view.View.OnClickListener aboutScreenListeners;
    private AlertDialog alert;
    private ListView mAboutScreenLogsListView;
    private View mAbtScrSoftVersionDivider;
    private LinearLayout mAbtScreenBackImgLayout;
    private TextView mFileTransferButtonText;
    private LinearLayout mFileTransferLayout;
    private ImageView mFileTransferLayoutCancelImage;
    private FileTransferStatusLogger mFileTransferStatusLogger;
    private FileTransferStatusAdapter mFileTransferStatusLoggerAdapter;
    private Handler mHandler;
    private TextView mLicenseAgreementText;
    private TextView mOpenSourceLicenseText;
    private TextView mResetConnButtonText;
    private LinearLayout mResetConnectionLinearLayout;
    private Resources mResources;
    private TextView mSoftwareVersionText;
    private TextView mWhatsNewInReleaseText;
    private ProgressDialog progressDialog;
    BroadcastReceiver receiver;

    public AboutScreenActivity()
    {
        mHandler = new Handler();
        progressDialog = null;
        mResources = null;
        mFileTransferButtonText = null;
        mResetConnButtonText = null;
        receiver = new BroadcastReceiver() {

            final AboutScreenActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                if (Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED.equals(s))
                {
                    Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                    if (progressDialog != null && progressDialog.isShowing())
                        progressDialog.dismiss();
                    if (alert != null)
                    {
                        if (alert.isShowing())
                            alert.dismiss();
                        alert = null;
                    }
                    updateLayoutsForUnpairedState();
                } else
                {
                    if (Constants.ACTION_WD_DEVICE_DISASSOCIATED.equals(s))
                    {
                        Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                        if (progressDialog != null && progressDialog.isShowing())
                            progressDialog.dismiss();
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.dismiss();
                            alert = null;
                        }
                        updateLayoutsForUnpairedState();
                        return;
                    }
                    if (Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
                    {
                        Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
                        {
                            if (progressDialog != null && progressDialog.isShowing())
                                progressDialog.dismiss();
                            updateLayoutsForUnpairedState();
                            return;
                        }
                        updateLayoutsForPairedState();
                        int i = intent.getIntExtra("state", 0);
                        int j = intent.getIntExtra("endpointtype", 0);
                        if (j != 1 && j != 2)
                        {
                            if (alert != null)
                            {
                                if (alert.isShowing())
                                    alert.dismiss();
                                alert = null;
                            }
                            if (i == 3)
                            {
                                Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).append("State Connected").toString());
                                getResetConnButtonText().setAlpha(1.0F);
                                if (progressDialog != null && progressDialog.isShowing())
                                {
                                    progressDialog.dismiss();
                                    return;
                                }
                            } else
                            if (i == 4 || i == 0)
                            {
                                int i = d;
                                Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).append("State Disconnected").toString());
                                getResetConnButtonText().setAlpha(0.4F);
                                if (AboutScreenActivity.disconnectTimerCount > 3)
                                {
                                    if (progressDialog != null && progressDialog.isShowing())
                                    {
                                        progressDialog.dismiss();
                                        Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0111), 1).show();
                                        mResetConnectionLinearLayout.setVisibility(0);
                                    }
                                    AboutScreenActivity.disconnectTimerCount = -1;
                                    return;
                                }
                            }
                        }
                    } else
                    if (s.equals(Constants.ACTION_CONNECTION_STOPPED))
                    {
                        Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                        getResetConnButtonText().setAlpha(0.4F);
                        if (progressDialog != null && progressDialog.isShowing())
                            progressDialog.dismiss();
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.dismiss();
                            alert = null;
                            return;
                        }
                    } else
                    if (s.equals(Constants.ACTION_SERVICE_STOPPED))
                    {
                        Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                        getResetConnButtonText().setAlpha(0.4F);
                        if (progressDialog != null && progressDialog.isShowing())
                            progressDialog.dismiss();
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.dismiss();
                            alert = null;
                            return;
                        }
                    } else
                    if (Constants.ACTION_VERSION_INFO.equals(s))
                    {
                        Log.d("AboutScreenActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                        String s1 = intent.getStringExtra("version_message");
                        if (alert != null)
                        {
                            if (alert.isShowing())
                                alert.dismiss();
                            alert = null;
                        }
                        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(AboutScreenActivity.this);
                        builder.setTitle(mResources.getString(0x7f0a015a));
                        builder.setMessage(s1);
                        builder.setPositiveButton(mResources.getString(0x7f0a015b), new android.content.DialogInterface.OnClickListener() {

                            final _cls1 this$1;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                            }

            
            {
                this$1 = _cls1.this;
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
                this$0 = AboutScreenActivity.this;
                super();
            }
        }
;
        aboutScreenListeners = new android.view.View.OnClickListener() {

            final AboutScreenActivity this$0;

            public void onClick(View view)
            {
label0:
                {
label1:
                    {
                        switch (view.getId())
                        {
                        case 2131296260: 
                        case 2131296261: 
                        case 2131296262: 
                        case 2131296263: 
                        case 2131296264: 
                        case 2131296268: 
                        case 2131296270: 
                        case 2131296272: 
                        case 2131296273: 
                        default:
                            break;

                        case 2131296259: 
                            break label0;

                        case 2131296267: 
                            showLicenseAgreement();
                            return;

                        case 2131296269: 
                            break label1;

                        case 2131296265: 
                            Intent intent1 = new Intent(getApplicationContext(), com/qualcomm/toq/base/ui/activity/WhatsNewActivity);
                            startActivity(intent1);
                            return;

                        case 2131296266: 
                            Intent intent = new Intent(getApplicationContext(), com/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView);
                            startActivity(intent);
                            return;

                        case 2131296274: 
                            if (!mFileTransferLayout.isEnabled())
                                mFileTransferLayout.setEnabled(true);
                            if (mFileTransferLayoutCancelImage != null && mAboutScreenLogsListView != null)
                            {
                                mAboutScreenLogsListView.setVisibility(8);
                                mFileTransferLayoutCancelImage.setVisibility(4);
                                setAnimationForListView();
                                return;
                            }
                            break;

                        case 2131296271: 
                            if (mFileTransferStatusLoggerAdapter != null && mFileTransferStatusLoggerAdapter.getCount() != 0)
                            {
                                getFileTransferButtonText().setAlpha(1.0F);
                                if (mFileTransferLayout.isEnabled())
                                    mFileTransferLayout.setEnabled(false);
                                if (mAboutScreenLogsListView != null && mFileTransferLayoutCancelImage != null)
                                {
                                    mAboutScreenLogsListView.setVisibility(0);
                                    mFileTransferLayoutCancelImage.setVisibility(0);
                                    setAnimationForListView();
                                    return;
                                }
                            }
                            break;
                        }
                        return;
                    }
                    resetConnection();
                    return;
                }
                finish();
            }

            
            {
                this$0 = AboutScreenActivity.this;
                super();
            }
        }
;
    }

    private TextView getFileTransferButtonText()
    {
        if (mFileTransferButtonText == null)
            mFileTransferButtonText = (TextView)findViewById(0x7f090011);
        return mFileTransferButtonText;
    }

    private TextView getResetConnButtonText()
    {
        if (mResetConnButtonText == null)
            mResetConnButtonText = (TextView)findViewById(0x7f09000e);
        return mResetConnButtonText;
    }

    private void initialise()
    {
        if (mResources == null)
            mResources = ToqApplication.getAppContext().getResources();
        mAbtScreenBackImgLayout = (LinearLayout)findViewById(0x7f090003);
        mWhatsNewInReleaseText = (TextView)findViewById(0x7f090009);
        mWhatsNewInReleaseText.setText(Html.fromHtml(mResources.getString(0x7f0a0158)));
        if (ToqApplication.getDeviceType() == 1)
            mWhatsNewInReleaseText.setVisibility(8);
        else
            mWhatsNewInReleaseText.setVisibility(0);
        mOpenSourceLicenseText = (TextView)findViewById(0x7f09000a);
        mOpenSourceLicenseText.setText(Html.fromHtml(mResources.getString(0x7f0a001d)));
        mLicenseAgreementText = (TextView)findViewById(0x7f09000b);
        mLicenseAgreementText.setText(Html.fromHtml(mResources.getString(0x7f0a0157)));
        mSoftwareVersionText = (TextView)findViewById(0x7f090008);
        mResetConnectionLinearLayout = (LinearLayout)findViewById(0x7f09000d);
        mFileTransferLayout = (LinearLayout)findViewById(0x7f09000f);
        mFileTransferLayoutCancelImage = (ImageView)findViewById(0x7f090012);
        mAboutScreenLogsListView = (ListView)findViewById(0x7f090013);
        mAbtScrSoftVersionDivider = findViewById(0x7f09000c);
    }

    private void initializeListener()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
        intentfilter.addAction(Constants.ACTION_CONNECTION_STOPPED);
        intentfilter.addAction(Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED);
        intentfilter.addAction(Constants.ACTION_VERSION_INFO);
        intentfilter.addAction(Constants.ACTION_FIRMWARE_TRANSFER);
        intentfilter.addAction(Constants.ACTION_WD_DEVICE_DISASSOCIATED);
        registerReceiver(receiver, intentfilter);
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
            Log.e("AboutScreenActivity", (new StringBuilder()).append("Exception in resetConnection(): ").append(exception.toString()).toString());
            return;
        }
        if (!flag)
            break MISSING_BLOCK_LABEL_193;
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getContext() == null || ConnectionFactory.getConnectionFactory().getEndPoint(0) == null)
            break MISSING_BLOCK_LABEL_169;
        if (ToqConnectionHandlerImpl.getConnectionHandler().getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) != 3)
            break MISSING_BLOCK_LABEL_103;
        disconnectTimerCount = 0;
        showDialog(1);
        getResetConnButtonText().setAlpha(0.4F);
        phubservice = PHubService.getPHubService();
        if (phubservice == null)
            break MISSING_BLOCK_LABEL_193;
        phubservice.resetConnectionWD();
        return;
        showToastMessage(ToqApplication.getAppContext().getResources().getString(0x7f0a00f9));
        return;
        exception1;
        Log.e("AboutScreenActivity", exception1.toString());
        exception1.printStackTrace();
        return;
        Log.d("AboutScreenActivity", "Device not connected to WD, Reset Connection will not work now");
        showToastMessage(ToqApplication.getAppContext().getResources().getString(0x7f0a00f9));
    }

    private void setAnimationForListView()
    {
        ScaleAnimation scaleanimation;
        if (mAboutScreenLogsListView.getVisibility() == 0)
        {
            scaleanimation = new ScaleAnimation(1.0F, 1.0F, 0.0F, 1.0F);
            scaleanimation.setFillAfter(true);
        } else
        {
            scaleanimation = new ScaleAnimation(1.0F, 1.0F, 1.0F, 0.0F);
            scaleanimation.setFillAfter(true);
        }
        scaleanimation.setDuration(500L);
        mAboutScreenLogsListView.startAnimation(scaleanimation);
    }

    private void setListenerForViews()
    {
        mAbtScreenBackImgLayout.setOnClickListener(aboutScreenListeners);
        mFileTransferLayoutCancelImage.setOnClickListener(aboutScreenListeners);
        mFileTransferLayout.setOnClickListener(aboutScreenListeners);
        mResetConnectionLinearLayout.setOnClickListener(aboutScreenListeners);
        mOpenSourceLicenseText.setOnClickListener(aboutScreenListeners);
        mLicenseAgreementText.setOnClickListener(aboutScreenListeners);
        mWhatsNewInReleaseText.setOnClickListener(aboutScreenListeners);
    }

    private void setSoftwareVersionText()
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = getPackageManager().getPackageInfo(getPackageName(), 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
            return;
        }
        if (packageinfo == null)
            break MISSING_BLOCK_LABEL_35;
        if (mSoftwareVersionText != null)
            mSoftwareVersionText.setText(packageinfo.versionName);
    }

    private void setTransferLogsListAdapter()
    {
        mFileTransferStatusLoggerAdapter = new FileTransferStatusAdapter(ToqApplication.getAppContext(), 0x7f030039);
        mFileTransferStatusLogger = FileTransferStatusLogger.getInstance(0);
        if (mFileHandler == null)
            mFileHandler = new Handler(getMainLooper());
        mFileTransferStatusLogger.setFileTransferAdapter(mFileTransferStatusLoggerAdapter, mFileHandler);
        mFileTransferStatusLoggerAdapter.setList(mFileTransferStatusLogger.getHeading());
        mAboutScreenLogsListView.setAdapter(mFileTransferStatusLoggerAdapter);
    }

    private void showLicenseAgreement()
    {
        final Dialog licAgrDialog = new Dialog(this, 0x1030006);
        if (licAgrDialog != null)
        {
            licAgrDialog.setContentView(getLayoutInflater().inflate(0x7f030037, null));
            LinearLayout linearlayout = (LinearLayout)licAgrDialog.findViewById(0x7f0901f5);
            if (linearlayout != null)
                linearlayout.setOnClickListener(new android.view.View.OnClickListener() {

                    final AboutScreenActivity this$0;
                    final Dialog val$licAgrDialog;

                    public void onClick(View view)
                    {
                        licAgrDialog.dismiss();
                    }

            
            {
                this$0 = AboutScreenActivity.this;
                licAgrDialog = dialog;
                super();
            }
                }
);
            WebView webview = (WebView)licAgrDialog.findViewById(0x7f0901f8);
            if (webview != null)
            {
                webview.setWebViewClient(new MyWebViewClient());
                webview.loadUrl(ToqApplication.getAppContext().getResources().getString(0x7f0a0022));
            }
            licAgrDialog.show();
            showDialog(1);
            if (progressDialog != null)
                progressDialog.setMessage(mResources.getString(0x7f0a015c));
        }
    }

    private void unbindDrawables(View view)
    {
label0:
        {
            if (view.getBackground() != null)
                view.getBackground().setCallback(null);
            if (view instanceof ViewGroup)
            {
                for (int i = 0; i < ((ViewGroup)view).getChildCount(); i++)
                    unbindDrawables(((ViewGroup)view).getChildAt(i));

                if (!(view instanceof AdapterView))
                    break label0;
                ((AdapterView)view).removeAllViewsInLayout();
            }
            return;
        }
        ((ViewGroup)view).removeAllViews();
    }

    private void updateLayoutsForPairedState()
    {
        if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
        {
            updateLayoutsForUnpairedState();
        } else
        {
            if (mResetConnectionLinearLayout != null)
                mResetConnectionLinearLayout.setVisibility(0);
            if (mFileTransferLayout != null)
                mFileTransferLayout.setVisibility(0);
            if (mAbtScrSoftVersionDivider != null)
            {
                mAbtScrSoftVersionDivider.setVisibility(0);
                return;
            }
        }
    }

    private void updateLayoutsForUnpairedState()
    {
        if (mResetConnectionLinearLayout != null)
            mResetConnectionLinearLayout.setVisibility(8);
        if (mFileTransferLayout != null)
        {
            if (!mFileTransferLayout.isEnabled())
                mFileTransferLayout.setEnabled(true);
            if (mFileTransferLayoutCancelImage != null)
            {
                mFileTransferLayout.setVisibility(8);
                mFileTransferLayoutCancelImage.setVisibility(4);
            }
        }
        if (mAboutScreenLogsListView != null && mFileTransferLayoutCancelImage != null)
        {
            mAboutScreenLogsListView.clearAnimation();
            mAboutScreenLogsListView.setVisibility(8);
        }
        if (mAbtScrSoftVersionDivider != null)
            mAbtScrSoftVersionDivider.setVisibility(8);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        initialise();
        setListenerForViews();
        setSoftwareVersionText();
        setTransferLogsListAdapter();
    }

    protected Dialog onCreateDialog(int i)
    {
        switch (i)
        {
        case 1: // '\001'
            progressDialog = new ProgressDialog(this);
            progressDialog.setMessage(mResources.getString(0x7f0a0159));
            progressDialog.setCancelable(false);
            progressDialog.setProgressStyle(0);
            return progressDialog;
        }
        return null;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unregisterReceiver(receiver);
        unbindDrawables(findViewById(0x7f090001));
        mAbtScreenBackImgLayout = null;
        mOpenSourceLicenseText = null;
        mLicenseAgreementText = null;
        mWhatsNewInReleaseText = null;
        mAbtScrSoftVersionDivider = null;
        mSoftwareVersionText = null;
        mResetConnectionLinearLayout = null;
        mHandler = null;
        progressDialog = null;
        alert = null;
        mFileTransferLayout = null;
        mFileTransferLayoutCancelImage = null;
        mAboutScreenLogsListView = null;
        mResources = null;
        mFileTransferButtonText = null;
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
        if (mFileTransferStatusLoggerAdapter != null)
            mFileTransferStatusLoggerAdapter = null;
        System.gc();
    }

    protected void onResume()
    {
        super.onResume();
        if (mFileTransferStatusLoggerAdapter != null && mFileTransferStatusLoggerAdapter.getCount() != 0)
            getFileTransferButtonText().setAlpha(1.0F);
        else
            getFileTransferButtonText().setAlpha(0.4F);
        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") || ToqApplication.getDeviceType() == 1)
        {
            updateLayoutsForUnpairedState();
            return;
        }
        BluetoothAdapter bluetoothadapter;
        try
        {
            updateLayoutsForPairedState();
            bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        }
        catch (Exception exception)
        {
            Log.e("AboutScreenActivity", exception.toString());
            exception.printStackTrace();
            return;
        }
        if (bluetoothadapter == null)
            break MISSING_BLOCK_LABEL_174;
        if (!bluetoothadapter.isEnabled() || ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getContext() == null || ConnectionFactory.getConnectionFactory().getEndPoint(0) == null)
            break MISSING_BLOCK_LABEL_174;
        if (ToqConnectionHandlerImpl.getConnectionHandler().getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) == 3)
        {
            getResetConnButtonText().setAlpha(1.0F);
            return;
        }
        getResetConnButtonText().setAlpha(0.4F);
        return;
        getResetConnButtonText().setAlpha(0.4F);
        return;
    }

    protected void onStart()
    {
        super.onStart();
        initializeListener();
        Log.printUsageLog("AboutScreenActivity", "AboutScreenActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("AboutScreenActivity", "AboutScreenActivity is stopped");
    }

    public void showToastMessage(final String message)
    {
        mHandler.post(new Runnable() {

            final AboutScreenActivity this$0;
            final String val$message;

            public void run()
            {
                Toast.makeText(AboutScreenActivity.this, message, 0).show();
            }

            
            {
                this$0 = AboutScreenActivity.this;
                message = s;
                super();
            }
        }
);
    }






/*
    static AlertDialog access$102(AboutScreenActivity aboutscreenactivity, AlertDialog alertdialog)
    {
        aboutscreenactivity.alert = alertdialog;
        return alertdialog;
    }

*/











/*
    static int access$502(int i)
    {
        disconnectTimerCount = i;
        return i;
    }

*/


/*
    static int access$508()
    {
        int i = disconnectTimerCount;
        disconnectTimerCount = i + 1;
        return i;
    }

*/




}

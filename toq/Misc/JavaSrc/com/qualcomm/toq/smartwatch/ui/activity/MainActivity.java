// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.receiver.HandleMessageService;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.handler.IConnectionHandler;
import com.qualcomm.toq.base.ui.activity.AboutScreenActivity;
import com.qualcomm.toq.base.ui.activity.HelpScreenActivity;
import com.qualcomm.toq.base.ui.activity.WhatsNewActivity;
import com.qualcomm.toq.base.ui.adapter.WDEPDetailsListAdapter;
import com.qualcomm.toq.base.ui.customview.PhubTextView;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PhubBluetoothDeviceBondInfo;
import com.qualcomm.toq.base.utils.PopUpWindowUtils;
import com.qualcomm.toq.base.utils.ProjectConfig;
import com.qualcomm.toq.base.utils.ToqData;
import com.qualcomm.toq.base.utils.Utils;
import com.qualcomm.toq.smartwatch.activitytracker.Day;
import com.qualcomm.toq.smartwatch.controller.ActivityMonitoringController;
import com.qualcomm.toq.smartwatch.controller.FMSController;
import com.qualcomm.toq.smartwatch.database.FMSDatabaseAdapter;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.PHubService;
import com.qualcomm.toq.smartwatch.service.listener.CustomPhoneStateListener;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.BarChartBuilder;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import com.qualcomm.toq.smartwatch.utils.ProgressGraphChartBuilder;
import com.qualcomm.toq.smartwatch.utils.ToqLruMemoryCache;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormatSymbols;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Properties;
import java.util.Set;
import org.achartengine.GraphicalView;

// Referenced classes of package com.qualcomm.toq.smartwatch.ui.activity:
//            ActivityDashboardScreenActivity, PreferencesListActivity, DeviceStatusActivity

public class MainActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{
    class MyWebViewClient extends WebViewClient
    {

        final MainActivity this$0;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            if (mEulaLoadingProgressDialog != null && mEulaLoadingProgressDialog.isShowing())
                mEulaLoadingProgressDialog.dismiss();
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
                Log.e("MainActivity", "Activity Not Found Exception:No Web Browser detected that can open the url");
                Utils.showBrowserNotInstalledToast();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return true;
        }

        MyWebViewClient()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    class UIReciever extends BroadcastReceiver
    {

        final MainActivity this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s = intent.getAction();
            int i = intent.getIntExtra("endpointtype", 0);
            if (i != 0)
                Log.i("MainActivity", (new StringBuilder()).append("EPL/EPR broadcasted this action. No need to handle in WD MainAcvitiy. Action:").append(s).toString());
            else
            if (Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
            {
                Log.d("MainActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                String s3 = intent.getStringExtra("endpointname");
                String s4 = intent.getStringExtra("endpointaddress");
                int l = intent.getIntExtra("state", 0);
                if (i == 0)
                {
                    updateWDConnectionState(l, s3, s4);
                    return;
                }
            } else
            {
                if (Constants.ACTION_WD_DEVICE_DISASSOCIATED.equals(s))
                {
                    updateWDConnectionState(0, "", "");
                    return;
                }
                if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(s))
                {
                    Log.d("MainActivity", (new StringBuilder()).append("onReceive: ").append(s).toString());
                    if (intent.getExtras().getInt("android.bluetooth.adapter.extra.STATE") == 10)
                    {
                        mBTOffLayout.setVisibility(0);
                        if (mUnpairLinearLayout.getVisibility() == 0)
                        {
                            mPairingButton.setVisibility(8);
                            return;
                        }
                    } else
                    {
                        mBTOffLayout.setVisibility(8);
                        if (mUnpairLinearLayout.getVisibility() == 0)
                        {
                            mPairingButton.setVisibility(0);
                            return;
                        }
                    }
                } else
                {
                    if (Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED.equals(s))
                    {
                        updateWDConnectionState(0, null, null);
                        return;
                    }
                    if (Constants.ACTION_VERSION_INFO.equals(s))
                    {
                        Log.d("MainActivity", "ACTION_VERSION_INFO Broadcast received");
                        updateWDFirmware();
                        return;
                    }
                    if (Constants.ACTION_FIRMWARE_TRANSFER.equals(s))
                    {
                        Log.i("MainActivity", "ACTION_FIRMWARE_TRANSFER Broadcast Received");
                        String s1 = intent.getStringExtra("file_name");
                        String s2 = intent.getStringExtra("firmware_status");
                        if (mWDFirmwareProgressBar != null && mWDFirmwareProgressTextview != null && mWDSoftwareAvailableText != null && s1.contains("1234") && s2.equalsIgnoreCase("failed"))
                        {
                            if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(0))
                            {
                                ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
                                if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
                                    if (toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) == 3)
                                    {
                                        updateFirmwareUILayout("Software Update Available");
                                        return;
                                    } else
                                    {
                                        updateFirmwareUILayout("firmware_layout_gone");
                                        return;
                                    }
                            }
                        } else
                        if (s2.equalsIgnoreCase("success"))
                        {
                            updateFirmwareUILayout("Transfer complete");
                            return;
                        }
                    } else
                    if (Constants.ACTION_FIRMWARE_TRANSFER_PROGRESS.equals(s))
                    {
                        Log.i("MainActivity", "ACTION_FIRMWARE_TRANSFER_PROGRESS Broadcast Received");
                        int j = intent.getIntExtra("file_length", -1);
                        int k = intent.getIntExtra("sent_file_bytes", -1);
                        if (j != -1 && j != 0 && k != -1 && mWDFirmwareProgressBar != null && mWDFirmwareProgressTextview != null && mWDSoftwareAvailableText != null)
                        {
                            updateFirmwareUILayout("Transferring update...");
                            mWDFirmwareProgressBar.setProgress((k * 100) / j);
                            mWDFirmwareProgressTextview.setText((new StringBuilder()).append((k * 100) / j).append("%").toString());
                            Log.i("MainActivity", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[i]).append(" Firmware percentage: ").append((k * 100) / j).toString());
                            if (k == j)
                            {
                                updateFirmwareUILayout("Transfer complete");
                                return;
                            }
                        }
                    } else
                    if (Constants.ACTION_ACTIVITY_MONITORING_UPDATE.equals(s))
                    {
                        Log.d("MainActivity", "Activity Monitoring Update Called");
                        if (activityMonitoringPrefs != null && activityMonitoringPrefs.getBoolean("activity_monitoring_settings_toggle_key", false))
                        {
                            addGraphsForActivityMonitorCard();
                            return;
                        }
                    } else
                    if ("android.location.PROVIDERS_CHANGED".equals(s))
                    {
                        Log.d("MainActivity", " Location providers changed called ");
                        showLocationWarningCard();
                        return;
                    }
                }
            }
        }

        UIReciever()
        {
            this$0 = MainActivity.this;
            super();
        }
    }


    private static final String TAG = "MainActivity";
    private final long ANIMATION_CONSTANT_DELAY = 100L;
    private final long ANIMATION_MULTIPLIER_DELAY = 400L;
    private final long BLUR_ANIMATION_DELAY = 1000L;
    private final int EULA_PROGRESS_DIALOG = 1;
    private final String FIRMWARE_LAYOUT_GONE = "firmware_layout_gone";
    private final String FIRMWARE_TRANSFERRING_COMPLETE = "Transfer complete";
    private final String FIRMWARE_TRANSFERRING_UPDATE = "Transferring update...";
    private final String FIRMWARE_UPDATE_AVAILABLE = "Software Update Available";
    private final int INVALID_STATE = -1;
    private final String KEY_EULA_VERSION = "EULA_VERSION";
    private String WATCH_CONNECTION_STATUS_TEXT;
    private SharedPreferences activityMonitoringPrefs;
    private android.content.DialogInterface.OnKeyListener eulaDialogKeyListener;
    private boolean isEulaActed;
    private FrameLayout mActivityMonitorCardLayout;
    private Animation mAnimationBlur;
    private BluetoothAdapter mBTAdapter;
    private Button mBTButton;
    private LinearLayout mBTOffLayout;
    private LinearLayout mBottomPreferenceLayout;
    private String mConnectString;
    private int mConnectedColor;
    private String mConnectedText;
    private String mConnectingString;
    private int mDisconnectedColor;
    private String mDisconnectedText;
    private DisplayMetrics mDisplayMetrics;
    private FrameLayout mEPScreenLauncherCardLayout;
    private Button mEulaAgreeButton;
    private Button mEulaCancelButton;
    private Dialog mEulaDialog;
    private ProgressDialog mEulaLoadingProgressDialog;
    private Button mHeadsetWelcomCardHideButton;
    private RelativeLayout mHeadsetWelcomeCardLayout;
    private Button mHideButton;
    private Dialog mHideHeadsetDialog;
    private boolean mIsLeftEPBonded;
    private boolean mIsRightEPBonded;
    private boolean mIsWDBonded;
    private LocationManager mLocationManager;
    private Button mLocationServiceTurnOnButton;
    private RelativeLayout mLocationServicesDisabledLayout;
    private ToqLruMemoryCache mLruCache;
    private RelativeLayout mMoreToqPairedWarningLayout;
    private Button mOpenBTSettingsButton;
    private Button mPairingButton;
    private PopupWindow mPopUpWindow;
    private LinearLayout mQuickTourLayout;
    private Resources mResources;
    private Integer mResourcesId[];
    private Button mSetupHeadsetsButton;
    private Spannable mSpannableText;
    private Integer mStatusIcons[];
    private Button mTakeTourButton;
    private BroadcastReceiver mUIReceiver;
    private Handler mUiAnimationHandler;
    private TextView mUnpairFirstTipText;
    private LinearLayout mUnpairLinearLayout;
    private ImageView mWDDeviceIcon;
    private View mWDDivider;
    private Dialog mWDEPCardDetailsDialog;
    private Button mWDEPDetailsAgreeButton;
    private ListView mWDEPDetailsDialogListView;
    private ListAdapter mWDEPDetailsListAdapter;
    private ProgressBar mWDFirmwareProgressBar;
    private LinearLayout mWDFirmwareProgressLayout;
    private TextView mWDFirmwareProgressTextview;
    private TextView mWDIconText;
    private RelativeLayout mWDInflatorLayout;
    private ImageView mWDInfoIcon;
    private ImageView mWDPrimarySecondaryIcon;
    private TextView mWDSoftwareAvailableText;
    private RelativeLayout mWDSoftwareUpdate;
    private TextView mWDSoftwareUpdateCompleteText;
    private TextView mWDSoftwareUpdateSecondaryText;
    private TextView mWDSoftwareUpdateText;
    private ImageView mWDStatusIcon;
    private TextView mWDStatusIconText;
    private ImageView mWDType;
    private TextView mWDVersionAndDateText;
    private Button mWatchConnectButton;
    private android.view.View.OnClickListener mWatchConnectTextClickListener;
    private TextView mWatchConnectingText;
    private ArrayList mWatchDetailsListContents;
    private ArrayList mWatchDetailsListTitles;
    private RelativeLayout mWatchDisconnectLayout;
    private FrameLayout mWdCardLayout;
    private LinearLayout mWdIconLayout;
    private WebView mWebView;
    private FrameLayout mWebViewContainer;
    private ImageView mWhatsNewCardCancelImage;
    private RelativeLayout mWhatsNewCardLayout;
    private android.view.View.OnClickListener mainScreenButtonsListener;
    LinearLayout overFlowMenu;
    android.view.View.OnClickListener overFlowMenuClickListener;
    private AlertDialog phubAppAvailableAlertDialog;
    private String phubPkg;
    private android.view.View.OnClickListener preferencesBarListener;
    private android.view.View.OnClickListener takeTheTourDialogListener;
    private android.view.View.OnClickListener wdInfoIconClickListener;

    public MainActivity()
    {
        mEulaLoadingProgressDialog = null;
        mWDFirmwareProgressBar = null;
        mWDFirmwareProgressTextview = null;
        isEulaActed = false;
        mUiAnimationHandler = new Handler();
        mWatchDisconnectLayout = null;
        mWatchConnectButton = null;
        mWatchConnectingText = null;
        WATCH_CONNECTION_STATUS_TEXT = null;
        mConnectString = null;
        mConnectingString = null;
        mIsWDBonded = false;
        mIsLeftEPBonded = false;
        mIsRightEPBonded = false;
        mDisconnectedText = null;
        mConnectedText = null;
        mWebView = null;
        mWebViewContainer = null;
        mResources = null;
        mLruCache = new ToqLruMemoryCache(0x200000);
        activityMonitoringPrefs = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        mHideHeadsetDialog = null;
        mainScreenButtonsListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
label0:
                {
label1:
                    {
label2:
                        {
label3:
                            {
label4:
                                {
                                    switch (view.getId())
                                    {
                                    default:
                                        break;

                                    case 2131296449: 
                                        break label4;

                                    case 2131296450: 
                                        break label0;

                                    case 2131296452: 
                                        break label1;

                                    case 2131296455: 
                                        break label3;

                                    case 2131296461: 
                                        break label2;

                                    case 2131296479: 
                                        Intent intent5 = new Intent(MainActivity.this, com/qualcomm/toq/earpiece/ui/activity/MainActivity);
                                        startActivity(intent5);
                                        return;

                                    case 2131296480: 
                                        ((TextView)getHideHeadsetCardDialog().findViewById(0x7f090102)).setText(ToqApplication.getAppContext().getResources().getString(0x7f0a013d));
                                        ((TextView)getHideHeadsetCardDialog().findViewById(0x7f090108)).setText(ToqApplication.getAppContext().getResources().getString(0x7f0a013e));
                                        getHideHeadsetCardDialog().findViewById(0x7f090104).setVisibility(8);
                                        Button button = (Button)getHideHeadsetCardDialog().findViewById(0x7f09010a);
                                        button.setBackgroundResource(0x7f02009d);
                                        button.setOnClickListener(new android.view.View.OnClickListener() {

                                            final _cls4 this$1;

                                            public void onClick(View view)
                                            {
                                                if (getHideHeadsetCardDialog().isShowing())
                                                    getHideHeadsetCardDialog().dismiss();
                                            }

            
            {
                this$1 = _cls4.this;
                super();
            }
                                        }
);
                                        Button button1 = (Button)getHideHeadsetCardDialog().findViewById(0x7f09010b);
                                        button1.setBackgroundResource(0x7f02009d);
                                        button1.setText("OK");
                                        button1.setOnClickListener(new android.view.View.OnClickListener() {

                                            final _cls4 this$1;

                                            public void onClick(View view)
                                            {
                                                if (getHideHeadsetCardDialog().isShowing())
                                                    getHideHeadsetCardDialog().dismiss();
                                                getHeadsetWelcomeCard().startAnimation(mAnimationBlur);
                                                mUiAnimationHandler.postDelayed(new Runnable() {

                                                    final _cls4 this$2;

                                                    public void run()
                                                    {
                                                        getHeadsetWelcomeCard().setVisibility(8);
                                                        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("take_tour_prefs", 0);
                                                        if (sharedpreferences != null)
                                                        {
                                                            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                                                            editor.putBoolean("headset_welcome_card_hidden", true);
                                                            editor.commit();
                                                        }
                                                    }

            
            {
                this$2 = _cls4.this;
                super();
            }
                                                }
, 1000L);
                                            }

            
            {
                this$1 = _cls4.this;
                super();
            }
                                        }
);
                                        getHideHeadsetCardDialog().show();
                                        return;

                                    case 2131296473: 
                                        initializeCardDetailsDialog();
                                        if (mWDEPDetailsDialogListView != null)
                                        {
                                            setWatchDetailsListContent(0);
                                            mWDEPDetailsListAdapter = new WDEPDetailsListAdapter(ToqApplication.getAppContext(), mWatchDetailsListTitles, mWatchDetailsListContents);
                                            mWDEPDetailsDialogListView.setAdapter(mWDEPDetailsListAdapter);
                                        }
                                        mWDEPCardDetailsDialog.show();
                                        return;

                                    case 2131296472: 
                                        Intent intent4 = new Intent("android.settings.BLUETOOTH_SETTINGS");
                                        intent4.setFlags(0x40000000);
                                        intent4.setFlags(0x10000000);
                                        ToqApplication.getAppContext().startActivity(intent4);
                                        return;

                                    case 2131296467: 
                                        Intent intent3 = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
                                        intent3.setFlags(0x40000000);
                                        intent3.setFlags(0x10000000);
                                        ToqApplication.getAppContext().startActivity(intent3);
                                        return;

                                    case 2131296872: 
                                        mWDEPCardDetailsDialog.dismiss();
                                        return;

                                    case 2131296661: 
                                        if (!isEulaActed)
                                        {
                                            isEulaActed = true;
                                            Log.d("MainActivity", "Decline  is clicked");
                                            dismissActivity();
                                            if (mEulaDialog != null)
                                                mEulaDialog.dismiss();
                                            if (mEulaCancelButton != null)
                                                mEulaCancelButton.setEnabled(false);
                                            if (mEulaCancelButton != null)
                                            {
                                                mEulaCancelButton.setClickable(false);
                                                return;
                                            }
                                        }
                                        break;

                                    case 2131296662: 
                                        if (!isEulaActed)
                                        {
                                            isEulaActed = true;
                                            Log.d("MainActivity", "Accept is clicked");
                                            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("eula_dialog_check_prefs", 0);
                                            String s = getEulaVersion();
                                            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                                            editor.putBoolean("eula_accepted", true);
                                            editor.putString("eula_version", s);
                                            editor.commit();
                                            if (mEulaDialog != null)
                                                mEulaDialog.dismiss();
                                            if (mEulaCancelButton != null)
                                                mEulaCancelButton.setEnabled(false);
                                            if (mEulaCancelButton != null)
                                                mEulaCancelButton.setClickable(false);
                                            startBackgroundService();
                                            return;
                                        }
                                        break;
                                    }
                                    return;
                                }
                                mQuickTourLayout.startAnimation(mAnimationBlur);
                                mUiAnimationHandler.postDelayed(new Runnable() {

                                    final _cls4 this$1;

                                    public void run()
                                    {
                                        if (mQuickTourLayout != null)
                                            mQuickTourLayout.setVisibility(8);
                                        android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("take_tour_prefs", 0).edit();
                                        editor.putBoolean("take_tour_hidden", true);
                                        editor.commit();
                                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                                }
, 1000L);
                                return;
                            }
                            Intent intent2 = new Intent("android.settings.BLUETOOTH_SETTINGS");
                            intent2.setFlags(0x40000000);
                            intent2.setFlags(0x10000000);
                            ToqApplication.getAppContext().startActivity(intent2);
                            return;
                        }
                        Intent intent1 = new Intent("android.settings.BLUETOOTH_SETTINGS");
                        intent1.setFlags(0x40000000);
                        intent1.setFlags(0x10000000);
                        ToqApplication.getAppContext().startActivity(intent1);
                        return;
                    }
                    getWhatsNewCardLayout().startAnimation(mAnimationBlur);
                    mUiAnimationHandler.postDelayed(new Runnable() {

                        final _cls4 this$1;

                        public void run()
                        {
                            getWhatsNewCardLayout().setVisibility(8);
                            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("take_tour_prefs", 0);
                            if (sharedpreferences != null)
                            {
                                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                                editor.putBoolean("whats_new_card_hidden_1_6", true);
                                editor.commit();
                            }
                        }

            
            {
                this$1 = _cls4.this;
                super();
            }
                    }
, 1000L);
                    return;
                }
                Intent intent = new Intent(getApplicationContext(), com/qualcomm/toq/base/ui/activity/WhatsNewActivity);
                startActivity(intent);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
;
        takeTheTourDialogListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                showToqVideo();
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
;
        preferencesBarListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                if (view != null && view.isEnabled())
                    view.setEnabled(false);
                Intent intent = new Intent(MainActivity.this, com/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity);
                startActivity(intent);
                overridePendingTransition(0x7f040003, 0x7f040001);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
;
        eulaDialogKeyListener = new android.content.DialogInterface.OnKeyListener() {

            final MainActivity this$0;

            public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
            {
                if (i == 4 && keyevent.getAction() == 1 && !keyevent.isCanceled())
                {
                    dismissActivity();
                    mEulaDialog.dismiss();
                    if (mEulaLoadingProgressDialog != null && mEulaLoadingProgressDialog.isShowing())
                        mEulaLoadingProgressDialog.dismiss();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
;
        wdInfoIconClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
                {
                    mWDInfoIcon.setImageResource(0x7f0200e6);
                    Intent intent = new Intent(MainActivity.this, com/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity);
                    startActivity(intent);
                }
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
;
        mWatchConnectTextClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                if (!WATCH_CONNECTION_STATUS_TEXT.equalsIgnoreCase(mConnectingString))
                    connectToWatch();
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
;
        overFlowMenuClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow != null && mPopUpWindow.isShowing())
                {
                    mPopUpWindow.dismiss();
                    return;
                }
                String as[];
                if (isHeadsetWelcomeCardHidden() && !PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded() && !PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
                    as = getResources().getStringArray(0x7f060003);
                else
                    as = getResources().getStringArray(0x7f060004);
                mPopUpWindow = (new PopUpWindowUtils(MainActivity.this)).getPopUpWindow(as, MainActivity.this);
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
;
        phubPkg = "com.qualcomm.phub";
        phubAppAvailableAlertDialog = null;
    }

    private void addGraphsForActivityMonitorCard()
    {
        Day day = new Day();
        TextView textview = (TextView)findViewById(0x7f0900e2);
        Calendar calendar = Calendar.getInstance(mResources.getConfiguration().locale);
        textview.setText((new StringBuilder()).append(mResources.getString(0x7f0a0025)).append(" - ").append((new DateFormatSymbols(mResources.getConfiguration().locale)).getMonths()[calendar.get(2)]).append(" ").append(calendar.get(5)).toString());
        getActivityMonitorLayout().setVisibility(0);
        FrameLayout framelayout;
        ProgressGraphChartBuilder progressgraphchartbuilder;
        TextView textview1;
        PhubTextView phubtextview;
        GraphicalView graphicalview;
        String s;
        String s1;
        View view;
        LinearLayout linearlayout;
        double d;
        BarChartBuilder barchartbuilder;
        GraphicalView graphicalview1;
        if (activityMonitoringPrefs != null)
            try
            {
                day = (Day)ObjectSerializer.deserialize(activityMonitoringPrefs.getString("activity_monitoring_new_key_value", ObjectSerializer.serialize(new Day())));
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        framelayout = (FrameLayout)findViewById(0x7f0900e3);
        progressgraphchartbuilder = new ProgressGraphChartBuilder(this, day);
        textview1 = (TextView)findViewById(0x7f0900e4);
        phubtextview = new PhubTextView(this);
        phubtextview.setTextSize(21F);
        phubtextview.setTextColor(getResources().getColor(0x7f070018));
        phubtextview.setGravity(17);
        if (ToqData.getInstance().getRegularTypeFace() != null)
            phubtextview.setTypeface(ToqData.getInstance().getRegularTypeFace());
        graphicalview = progressgraphchartbuilder.getProgressGraphChart(-1, 0xff000000);
        if (framelayout.getChildCount() != 0)
            framelayout.removeAllViews();
        if (graphicalview != null)
        {
            android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)graphicalview.getLayoutParams();
            if (layoutparams != null)
            {
                layoutparams.gravity = 3;
                graphicalview.setLayoutParams(layoutparams);
            }
            framelayout.addView(graphicalview, -2, -1);
        }
        s = NumberFormat.getNumberInstance(Locale.US).format((int)progressgraphchartbuilder.getActivityPointsSumTotal());
        textview1.setText(s);
        s1 = String.valueOf((int)progressgraphchartbuilder.getPercentage());
        phubtextview.setText((new StringBuilder()).append(s1).append("%").toString());
        framelayout.addView(phubtextview);
        view = new View(this);
        framelayout.addView(view);
        Log.d("MainActivity", (new StringBuilder()).append(" The size is ").append(String.valueOf(progressgraphchartbuilder.getActivityPointsSumTotal()).length()).append(" Total points text").append(s.length()).toString());
        linearlayout = (LinearLayout)findViewById(0x7f0900e5);
        d = AndroidUtils.getAndroidUtils().getMaxActivityPointForDay(day);
        barchartbuilder = new BarChartBuilder(this, day, "day_bar_chart");
        barchartbuilder.setMaxActivityPoint(d);
        if (linearlayout.getChildCount() != 0)
            linearlayout.removeAllViews();
        graphicalview1 = barchartbuilder.getBarChart(-1, false);
        if (graphicalview1 != null)
            linearlayout.addView(graphicalview1, -2, -2);
    }

    private void checkPhubAppStatus()
    {
        if (isPhubAppInstalled())
            showUninstallDialog();
    }

    private void connectToWatch()
    {
        Log.d("MainActivity", "inside connectToWatch()");
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
        {
            Log.d("MainActivity", "inside connectToWatch() KEY_ASSOCIATED_WD_DEVICE_ADDRESS");
            if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
            {
                BTConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).connect(ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null));
                HandleMessageService.COUNT_WD_CONNECT_ATTEMPT = 0;
                updateWDConnectionState(2, ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_name", null), ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null));
            }
        }
    }

    private void dismissActivity()
    {
        finish();
    }

    private void displayEulaDialog()
    {
        mEulaDialog.setContentView(getLayoutInflater().inflate(0x7f030029, null));
        mWebViewContainer = (FrameLayout)mEulaDialog.findViewById(0x7f090193);
        mWebView = new WebView(getApplicationContext());
        if (mWebView != null && mWebViewContainer != null)
        {
            mWebView.setWebViewClient(new MyWebViewClient());
            mWebView.loadUrl(getResources().getString(0x7f0a0022));
            mWebView.setVerticalScrollBarEnabled(true);
            mWebView.setScrollBarStyle(0x2000000);
            mWebView.setLayerType(1, null);
            mWebViewContainer.addView(mWebView);
        }
        mEulaDialog.show();
        showDialog(1);
        mEulaDialog.setOnKeyListener(eulaDialogKeyListener);
    }

    private String formatSoftwareVersionDate(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (s != null)
        {
            String as[] = s.split(":")[0].split("-");
            if (stringbuilder != null)
                try
                {
                    stringbuilder.append((new StringBuilder()).append((new DateFormatSymbols(mResources.getConfiguration().locale)).getShortMonths()[-1 + Integer.parseInt(as[1])]).append(" ").append(as[2]).append(", ").append(as[0]).toString());
                }
                catch (NumberFormatException numberformatexception)
                {
                    numberformatexception.printStackTrace();
                }
                catch (IndexOutOfBoundsException indexoutofboundsexception)
                {
                    indexoutofboundsexception.printStackTrace();
                }
        }
        return stringbuilder.toString();
    }

    private FrameLayout getActivityMonitorLayout()
    {
        if (mActivityMonitorCardLayout == null)
            mActivityMonitorCardLayout = (FrameLayout)findViewById(0x7f0900e1);
        return mActivityMonitorCardLayout;
    }

    private FrameLayout getEPScreenLauncherCard()
    {
        if (mEPScreenLauncherCardLayout == null)
            mEPScreenLauncherCardLayout = (FrameLayout)findViewById(0x7f0900db);
        return mEPScreenLauncherCardLayout;
    }

    private String getEulaVersion()
    {
        String s;
        AssetManager assetmanager;
        boolean flag;
        s = null;
        assetmanager = getAssets();
        flag = false;
        String as[];
        int i;
        as = assetmanager.list("");
        i = as.length;
        int j = 0;
_L2:
        flag = false;
        s = null;
        if (j >= i)
            break MISSING_BLOCK_LABEL_99;
        String s1;
        s1 = as[j];
        if (!s1.equalsIgnoreCase("eula.properties"))
            break MISSING_BLOCK_LABEL_113;
        flag = true;
        try
        {
            InputStream inputstream = assetmanager.open(s1);
            Properties properties = new Properties();
            properties.load(inputstream);
            s = properties.getProperty("EULA_VERSION");
            inputstream.close();
            properties.clear();
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Failed to retreive eula version ").append(exception).toString());
        }
        if (!flag)
            Log.e("MainActivity", "Eula Properties file does not exists");
        return s;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String getFirmwareStateText(String s)
    {
        String s1 = new String();
        if (s.equals("Software Update Available"))
        {
            s1 = mResources.getString(0x7f0a014e);
        } else
        {
            if (s.equals("Transferring update..."))
                return mResources.getString(0x7f0a014d);
            if (s.equals("Transfer complete"))
                return mResources.getString(0x7f0a014c);
        }
        return s1;
    }

    private RelativeLayout getHeadsetWelcomeCard()
    {
        if (mHeadsetWelcomeCardLayout == null)
            mHeadsetWelcomeCardLayout = (RelativeLayout)findViewById(0x7f0900dd);
        return mHeadsetWelcomeCardLayout;
    }

    private Dialog getHideHeadsetCardDialog()
    {
        if (mHideHeadsetDialog == null)
        {
            mHideHeadsetDialog = new Dialog(this);
            mHideHeadsetDialog.getWindow().requestFeature(1);
            LayoutInflater layoutinflater = LayoutInflater.from(ToqApplication.getAppContext());
            mHideHeadsetDialog.setContentView(layoutinflater.inflate(0x7f03001c, null));
            mHideHeadsetDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            mHideHeadsetDialog.setCancelable(false);
        }
        return mHideHeadsetDialog;
    }

    private LinearLayout getOverFlowMenu()
    {
        if (overFlowMenu == null)
            overFlowMenu = (LinearLayout)findViewById(0x7f0900bb);
        return overFlowMenu;
    }

    private String getPhubAppVerionName()
    {
        Context context;
        try
        {
            context = ToqApplication.getAppContext();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return "None";
        }
        if (context != null)
        {
            String s;
            try
            {
                s = ToqApplication.getAppContext().getPackageManager().getPackageInfo(phubPkg, 0).versionName;
            }
            catch (Exception exception1)
            {
                return "None";
            }
            return s;
        } else
        {
            return "None";
        }
    }

    private RelativeLayout getWhatsNewCardLayout()
    {
        if (mWhatsNewCardLayout == null)
            mWhatsNewCardLayout = (RelativeLayout)findViewById(0x7f0900c2);
        return mWhatsNewCardLayout;
    }

    private void initialiseWDCardUI()
    {
        mWDInflatorLayout = (RelativeLayout)getLayoutInflater().inflate(0x7f030035, null);
        mWDDeviceIcon = (ImageView)mWDInflatorLayout.findViewById(0x7f0901d8);
        mWDStatusIcon = (ImageView)mWDInflatorLayout.findViewById(0x7f0901dc);
        mWDInfoIcon = (ImageView)mWDInflatorLayout.findViewById(0x7f0901de);
        if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            mWDInfoIcon.setVisibility(8);
        else
            mWDInfoIcon.setVisibility(0);
        mWDPrimarySecondaryIcon = (ImageView)mWDInflatorLayout.findViewById(0x7f0901d9);
        mWDType = (ImageView)mWDInflatorLayout.findViewById(0x7f0901da);
        mWDIconText = (TextView)mWDInflatorLayout.findViewById(0x7f09014a);
        mWDStatusIconText = (TextView)mWDInflatorLayout.findViewById(0x7f0901dd);
        mWDSoftwareUpdate = (RelativeLayout)mWDInflatorLayout.findViewById(0x7f0901e0);
        mWDSoftwareUpdateText = (TextView)mWDInflatorLayout.findViewById(0x7f0901e2);
        mWDVersionAndDateText = (TextView)mWDInflatorLayout.findViewById(0x7f0901e3);
        mWDSoftwareAvailableText = (TextView)mWDInflatorLayout.findViewById(0x7f0901e4);
        mWDFirmwareProgressBar = (ProgressBar)mWDInflatorLayout.findViewById(0x7f0901e8);
        mWDFirmwareProgressTextview = (TextView)mWDInflatorLayout.findViewById(0x7f0901e9);
        mWDFirmwareProgressLayout = (LinearLayout)mWDInflatorLayout.findViewById(0x7f0901e7);
        mWDDivider = mWDInflatorLayout.findViewById(0x7f0901e1);
        mWDSoftwareUpdateCompleteText = (TextView)mWDInflatorLayout.findViewById(0x7f0901e5);
        mWDSoftwareUpdateSecondaryText = (TextView)mWDInflatorLayout.findViewById(0x7f0901e6);
        mWatchDisconnectLayout = (RelativeLayout)mWDInflatorLayout.findViewById(0x7f0901eb);
        mWatchConnectButton = (Button)mWDInflatorLayout.findViewById(0x7f0901ed);
        mWatchConnectingText = (TextView)mWDInflatorLayout.findViewById(0x7f0901ec);
        mWatchConnectButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
        if (WATCH_CONNECTION_STATUS_TEXT == null)
            WATCH_CONNECTION_STATUS_TEXT = mConnectString;
        mWatchConnectButton.setOnClickListener(mWatchConnectTextClickListener);
        updateWatchDisconnectedUI(Boolean.valueOf(false), WATCH_CONNECTION_STATUS_TEXT);
    }

    private void initializeCardDetailsDialog()
    {
        if (mWDEPCardDetailsDialog != null)
        {
            mWDEPCardDetailsDialog.setContentView(getLayoutInflater().inflate(0x7f03004d, null));
            mWDEPCardDetailsDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            mWDEPDetailsAgreeButton = (Button)mWDEPCardDetailsDialog.findViewById(0x7f090268);
            mWDEPDetailsAgreeButton.setOnClickListener(mainScreenButtonsListener);
            mWDEPDetailsDialogListView = (ListView)mWDEPCardDetailsDialog.findViewById(0x7f090267);
        }
    }

    private void initializeUI()
    {
        mConnectString = mResources.getString(0x7f0a0126);
        mConnectingString = mResources.getString(0x7f0a0127);
        mEulaLoadingProgressDialog = new ProgressDialog(this);
        mDisplayMetrics = new DisplayMetrics();
        mEulaDialog = new Dialog(this, 0x1030006);
        mWDEPCardDetailsDialog = new Dialog(this);
        mWDEPCardDetailsDialog.getWindow().requestFeature(1);
        mAnimationBlur = AnimationUtils.loadAnimation(ToqApplication.getAppContext(), 0x7f040000);
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(0x7f0900da);
        mResourcesId = ainteger;
        Integer ainteger1[] = new Integer[2];
        ainteger1[0] = Integer.valueOf(0x7f020121);
        ainteger1[1] = Integer.valueOf(0x7f020122);
        mStatusIcons = ainteger1;
        mUnpairLinearLayout = (LinearLayout)findViewById(0x7f0900c8);
        mWdIconLayout = (LinearLayout)findViewById(0x7f0900da);
        mWdCardLayout = (FrameLayout)findViewById(0x7f0900d9);
        getWhatsNewCardLayout().setOnClickListener(mainScreenButtonsListener);
        mWhatsNewCardCancelImage = (ImageView)findViewById(0x7f0900c4);
        mWhatsNewCardCancelImage.setOnClickListener(mainScreenButtonsListener);
        mLocationServicesDisabledLayout = (RelativeLayout)findViewById(0x7f0900ce);
        mMoreToqPairedWarningLayout = (RelativeLayout)findViewById(0x7f0900d4);
        mOpenBTSettingsButton = (Button)findViewById(0x7f0900d8);
        mOpenBTSettingsButton.setOnClickListener(mainScreenButtonsListener);
        mSetupHeadsetsButton = (Button)findViewById(0x7f0900df);
        mSetupHeadsetsButton.setOnClickListener(mainScreenButtonsListener);
        mHeadsetWelcomCardHideButton = (Button)findViewById(0x7f0900e0);
        mHeadsetWelcomCardHideButton.setOnClickListener(mainScreenButtonsListener);
        mBottomPreferenceLayout = (LinearLayout)findViewById(0x7f0900e6);
        getActivityMonitorLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(MainActivity.this, com/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity);
                startActivity(intent);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
);
        getEPScreenLauncherCard().setOnClickListener(new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(MainActivity.this, com/qualcomm/toq/earpiece/ui/activity/MainActivity);
                startActivity(intent);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
);
        mQuickTourLayout = (LinearLayout)findViewById(0x7f0900bd);
        mQuickTourLayout.setBackgroundDrawable(mLruCache.getDrawableFromMemCache("tour_photo"));
        mBTOffLayout = (LinearLayout)findViewById(0x7f0900c5);
        mTakeTourButton = (Button)findViewById(0x7f0900c0);
        mHideButton = (Button)findViewById(0x7f0900c1);
        mBTButton = (Button)findViewById(0x7f0900c7);
        mPairingButton = (Button)findViewById(0x7f0900cd);
        mLocationServiceTurnOnButton = (Button)findViewById(0x7f0900d3);
        mLocationServiceTurnOnButton.setOnClickListener(mainScreenButtonsListener);
        mUnpairFirstTipText = (TextView)findViewById(0x7f0900cb);
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        mConnectedColor = getResources().getColor(0x7f07000a);
        mDisconnectedColor = getResources().getColor(0x7f07000b);
        mConnectedText = getResources().getString(0x7f0a0017);
        mDisconnectedText = getResources().getString(0x7f0a0018);
    }

    private boolean isAtleastOnePhubDevicePaired()
    {
        mIsWDBonded = PhubBluetoothDeviceBondInfo.getInstance().isWDBonded();
        mIsLeftEPBonded = PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
        mIsRightEPBonded = PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
        Log.e("MainActivity", (new StringBuilder()).append("WD state ").append(mIsWDBonded).append(" Left EP state ").append(mIsLeftEPBonded).append(" Right EP state ").append(mIsRightEPBonded).toString());
        return mIsWDBonded || mIsLeftEPBonded || mIsRightEPBonded;
    }

    private boolean isEulaAgreementAccepted()
    {
label0:
        {
label1:
            {
                SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("eula_dialog_check_prefs", 0);
                boolean flag = false;
                if (sharedpreferences != null)
                {
                    boolean flag1 = sharedpreferences.contains("eula_accepted");
                    flag = false;
                    if (flag1)
                    {
                        boolean flag2 = sharedpreferences.getBoolean("eula_accepted", false);
                        flag = false;
                        if (flag2)
                        {
                            if (!sharedpreferences.contains("eula_version"))
                                break label0;
                            String s = getEulaVersion();
                            String s1 = sharedpreferences.getString("eula_version", null);
                            if (s1 == null || s == null || !s1.equals(s))
                                break label1;
                            Log.d("MainActivity", "Eula Version match");
                            flag = true;
                        }
                    }
                }
                return flag;
            }
            Log.d("MainActivity", "Eula Version does not match");
            return false;
        }
        Log.d("MainActivity", "Eula Version do not present in Shared Preference");
        return false;
    }

    private boolean isHeadsetWelcomeCardHidden()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("take_tour_prefs", 0);
        boolean flag = false;
        if (sharedpreferences != null)
            flag = sharedpreferences.getBoolean("headset_welcome_card_hidden", false);
        return flag;
    }

    private boolean isLocalWeatherEnabled()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        boolean flag = false;
        if (sharedpreferences != null)
            flag = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", true);
        return flag;
    }

    private boolean isMoreThanOneToqPaired()
    {
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        int i = 0;
        if (bluetoothadapter != null)
        {
            boolean flag = bluetoothadapter.isEnabled();
            i = 0;
            if (flag)
            {
                Log.i("MainActivity", "BT is enabled");
                Set set = bluetoothadapter.getBondedDevices();
                i = 0;
                if (set != null)
                {
                    Iterator iterator = set.iterator();
                    do
                    {
                        if (!iterator.hasNext())
                            break;
                        BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
                        if (bluetoothdevice != null && bluetoothdevice.getName() != null && PhubBluetoothDeviceBondInfo.getInstance().isWDNameSupported(bluetoothdevice.getName(), 0))
                            i++;
                    } while (true);
                }
            }
        }
        return i > 1;
    }

    private boolean isPhubAppInstalled()
    {
        PackageManager packagemanager = ToqApplication.getAppContext().getPackageManager();
        PackageInfo packageinfo;
        try
        {
            packageinfo = packagemanager.getPackageInfo(phubPkg, 1);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return packageinfo != null;
    }

    private boolean isTakeTourHidden()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("take_tour_prefs", 0);
        boolean flag = false;
        if (sharedpreferences != null)
        {
            boolean flag1 = sharedpreferences.contains("take_tour_hidden");
            flag = false;
            if (flag1)
            {
                boolean flag2 = sharedpreferences.getBoolean("take_tour_hidden", false);
                flag = false;
                if (flag2)
                    flag = true;
            }
        }
        return flag;
    }

    private boolean isWhatsNewCardHidden()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("take_tour_prefs", 0);
        boolean flag = false;
        if (sharedpreferences != null)
        {
            boolean flag1 = sharedpreferences.getBoolean("whats_new_card_hidden_1_6", false);
            flag = false;
            if (flag1)
                flag = true;
        }
        return flag;
    }

    private void loadDrawables()
    {
        mLruCache.addDrawableToMemoryCache("tour_photo");
        mLruCache.addDrawableToMemoryCache("watch_photo");
        mLruCache.addDrawableToMemoryCache("info_icon");
    }

    private void loadImageIcons(int i, String s, int j, int k, TextView textview, ImageView imageview)
    {
        imageview.setImageResource(j);
        textview.setTextColor(k);
        textview.setText(s);
        switch (i)
        {
        case 2131296474: 
            mWDDeviceIcon.setImageDrawable(mLruCache.getDrawableFromMemCache("watch_photo"));
            mWDPrimarySecondaryIcon.setVisibility(4);
            mWDType.setVisibility(4);
            mWDInfoIcon.setImageDrawable(mLruCache.getDrawableFromMemCache("info_icon"));
            mWDIconText.setText(mResources.getString(0x7f0a012b));
            mWdIconLayout.addView(mWDInflatorLayout);
            return;
        }
    }

    private void loadUI()
    {
        if (mResources != null)
        {
            ((TextView)findViewById(0x7f0900ba)).setText(mResources.getString(0x7f0a001a));
            ((TextView)findViewById(0x7f0900be)).setText(mResources.getString(0x7f0a013f));
            ((TextView)findViewById(0x7f0900bf)).setText(mResources.getString(0x7f0a0140));
            ((Button)findViewById(0x7f0900c0)).setText(mResources.getString(0x7f0a0141));
            ((Button)findViewById(0x7f0900c1)).setText(mResources.getString(0x7f0a0142));
            ((TextView)findViewById(0x7f0900c3)).setText(mResources.getString(0x7f0a013a));
            ((TextView)findViewById(0x7f0900c6)).setText(mResources.getString(0x7f0a0143));
            ((Button)findViewById(0x7f0900c7)).setText(mResources.getString(0x7f0a0144));
            ((TextView)findViewById(0x7f0900c9)).setText(mResources.getString(0x7f0a01c1));
            ((TextView)findViewById(0x7f0900ca)).setText(mResources.getString(0x7f0a01c2));
            ((TextView)findViewById(0x7f0900cb)).setText(mResources.getString(0x7f0a01c3));
            ((TextView)findViewById(0x7f0900cc)).setText(mResources.getString(0x7f0a01c5));
            ((Button)findViewById(0x7f0900cd)).setText(mResources.getString(0x7f0a0145));
            ((TextView)findViewById(0x7f0900d0)).setText(mResources.getString(0x7f0a0146));
            ((TextView)findViewById(0x7f0900d1)).setText(mResources.getString(0x7f0a0147));
            ((Button)findViewById(0x7f0900d3)).setText(mResources.getString(0x7f0a0148));
            ((TextView)findViewById(0x7f0900d6)).setText(mResources.getString(0x7f0a0137));
            ((TextView)findViewById(0x7f0900d7)).setText(mResources.getString(0x7f0a0138));
            ((Button)findViewById(0x7f0900d8)).setText(mResources.getString(0x7f0a0139));
            ((TextView)findViewById(0x7f0900e8)).setText(mResources.getString(0x7f0a0149));
            mConnectString = mResources.getString(0x7f0a0126);
            mConnectingString = mResources.getString(0x7f0a0127);
            mConnectedText = getResources().getString(0x7f0a0017);
            mDisconnectedText = getResources().getString(0x7f0a0018);
            if (mWDSoftwareUpdateCompleteText != null)
                mWDSoftwareUpdateCompleteText.setText(mResources.getString(0x7f0a002b));
            if (mWDSoftwareUpdateSecondaryText != null)
                mWDSoftwareUpdateSecondaryText.setText(mResources.getString(0x7f0a002d));
            if (mWDIconText != null)
                mWDIconText.setText(mResources.getString(0x7f0a012b));
            if (mWatchConnectingText != null)
                mWatchConnectingText.setText(mResources.getString(0x7f0a002e));
            if (mWatchConnectButton != null)
                mWatchConnectButton.setText(mResources.getString(0x7f0a002f));
            if (mWDSoftwareAvailableText != null)
                mWDSoftwareAvailableText.setText(mResources.getString(0x7f0a002c));
        }
    }

    private void printProjectInfo(ProjectConfig projectconfig)
    {
        Log.e("MainActivity", (new StringBuilder()).append("Bamboo Build Number = ").append(projectconfig.getBambooBuildNumber()).toString());
        Log.e("manufacturer: ", Build.MANUFACTURER);
        Log.e("Board: ", Build.BOARD);
        Log.e("BRAND: ", Build.BRAND);
        Log.e("DEVICE: ", Build.DEVICE);
        Log.e("DISPLAY: ", Build.DISPLAY);
        Log.e("FINGERPRINT: ", Build.FINGERPRINT);
        Log.e("HARDWARE: ", Build.HARDWARE);
        Log.e("HOST: ", Build.HOST);
        Log.e("ID: ", Build.ID);
        Log.e("MODEL: ", Build.MODEL);
        Log.e("PRODUCT: ", Build.PRODUCT);
        Log.e("USER: ", Build.USER);
    }

    private void registerUIReceiver()
    {
        IntentFilter intentfilter;
        try
        {
            mUIReceiver = new UIReciever();
            intentfilter = new IntentFilter();
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Exception in registerUIReceiver(): ").append(exception.toString()).toString());
            return;
        }
        if (intentfilter == null)
            break MISSING_BLOCK_LABEL_101;
        intentfilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
        intentfilter.addAction(Constants.ACTION_WD_DEVICE_DISASSOCIATED);
        intentfilter.addAction(Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED);
        intentfilter.addAction(Constants.ACTION_EAR_PIECE_DISCONNECTED);
        intentfilter.addAction(Constants.ACTION_EAR_PIECE_CONNECTED);
        intentfilter.addAction(Constants.ACTION_VERSION_INFO);
        intentfilter.addAction(Constants.ACTION_FIRMWARE_TRANSFER);
        intentfilter.addAction(Constants.ACTION_FIRMWARE_TRANSFER_PROGRESS);
        intentfilter.addAction(Constants.ACTION_ACTIVITY_MONITORING_UPDATE);
        intentfilter.addAction("android.location.PROVIDERS_CHANGED");
        registerReceiver(mUIReceiver, intentfilter);
        return;
    }

    private void setAnimationForCards()
    {
        long l1;
label0:
        {
            long l = 0L;
            boolean flag = isMoreThanOneToqPaired();
            if (PhubBluetoothDeviceBondInfo.getInstance().isWDBonded())
            {
                if (!isTakeTourHidden())
                {
                    setAnimationForLayout(mQuickTourLayout, 100L + 400L * l);
                    l++;
                }
                if (!isWhatsNewCardHidden())
                {
                    setAnimationForLayout(getWhatsNewCardLayout(), 100L + 400L * l);
                    l++;
                }
                if (!mBTAdapter.isEnabled())
                {
                    setAnimationForLayout(mBTOffLayout, 100L + 400L * l);
                    l++;
                }
                if (mLocationManager != null && isLocalWeatherEnabled() && !mLocationManager.isProviderEnabled("network"))
                {
                    setAnimationForLayout(mLocationServicesDisabledLayout, 100L + 400L * l);
                    l++;
                }
                if (flag)
                {
                    setAnimationForLayout(mMoreToqPairedWarningLayout, 100L + 400L * l);
                    l++;
                }
                setAnimationForLayout(mWdCardLayout, 100L + 400L * l);
                long l2 = l + 1L;
                if (!PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded() && !PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
                {
                    if (!isHeadsetWelcomeCardHidden())
                    {
                        setAnimationForLayout(getHeadsetWelcomeCard(), 100L + 400L * l2);
                        l2++;
                    }
                } else
                {
                    setAnimationForLayout(getEPScreenLauncherCard(), 100L + 400L * l2);
                    l2++;
                }
                if (activityMonitoringPrefs != null && activityMonitoringPrefs.getBoolean("activity_monitoring_settings_toggle_key", false))
                    setAnimationForLayout(getActivityMonitorLayout(), 100L + 400L * l2);
            } else
            {
                if (!mBTAdapter.isEnabled())
                {
                    setAnimationForLayout(mBTOffLayout, 100L + 400L * l);
                    l++;
                }
                setAnimationForLayout(mUnpairLinearLayout, 100L + 400L * l);
                l1 = l + 1L;
                if (PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded() || PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
                    break label0;
                if (!isHeadsetWelcomeCardHidden())
                {
                    setAnimationForLayout(getHeadsetWelcomeCard(), 100L + 400L * l1);
                    return;
                }
            }
            return;
        }
        setAnimationForLayout(getEPScreenLauncherCard(), 100L + 400L * l1);
    }

    private void setAnimationForLayout(View view, long l)
    {
        Animation animation = AnimationUtils.loadAnimation(ToqApplication.getAppContext(), 0x7f040002);
        animation.setStartOffset(l);
        view.startAnimation(animation);
    }

    private void setSpanTextColor(TextView textview, String s, int i)
    {
        String s1 = textview.getText().toString();
        if (s1 != null)
        {
            int j = s1.indexOf(s);
            int k = j + s.length();
            if (j >= 0 && k < textview.getText().length())
            {
                mSpannableText = new SpannableString(textview.getText());
                mSpannableText.setSpan(new ForegroundColorSpan(i), j, k, 33);
                textview.setText(mSpannableText);
            }
        }
    }

    private void setTypeFaceForButtonsText()
    {
        if (ToqData.getInstance().getRegularTypeFace() != null)
        {
            mTakeTourButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            mHideButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            mPairingButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            mBTButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            mLocationServiceTurnOnButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            mWDSoftwareAvailableText.setTypeface(ToqData.getInstance().getRegularTypeFace());
        }
    }

    private void setWatchDetailsListContent(int i)
    {
        String s = mResources.getString(0x7f0a014b);
        mWatchDetailsListTitles = new ArrayList();
        mWatchDetailsListContents = new ArrayList();
        mWatchDetailsListContents.clear();
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        SharedPreferences sharedpreferences = null;
        if (connectionfactory != null)
        {
            Context context = ConnectionFactory.getConnectionFactory().getContext();
            sharedpreferences = null;
            if (context != null)
                sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("watch_details_pref", 0);
        }
        String s1 = null;
        String s2 = null;
        String s3 = null;
        String s4 = null;
        String s5 = null;
        if (sharedpreferences != null)
        {
            s1 = sharedpreferences.getString((new StringBuilder()).append("device_name").append(i).toString(), s);
            s3 = sharedpreferences.getString((new StringBuilder()).append("serial_number").append(i).toString(), s);
            s4 = sharedpreferences.getString((new StringBuilder()).append("software_release").append(i).toString(), s);
            s5 = sharedpreferences.getString((new StringBuilder()).append("software_revision").append(i).toString(), s);
            s2 = sharedpreferences.getString((new StringBuilder()).append("hardware_revision").append(i).toString(), s);
        }
        mWatchDetailsListTitles.add(mResources.getString(0x7f0a014f));
        mWatchDetailsListContents.add(s1);
        mWatchDetailsListTitles.add(mResources.getString(0x7f0a0150));
        mWatchDetailsListContents.add((new StringBuilder()).append(s4).append(" (").append(s5).append(")").toString());
        mWatchDetailsListTitles.add(mResources.getString(0x7f0a0151));
        mWatchDetailsListContents.add(s2);
        mWatchDetailsListTitles.add(mResources.getString(0x7f0a0152));
        mWatchDetailsListContents.add(s3);
    }

    private void showLocationWarningCard()
    {
        PhubBluetoothDeviceBondInfo phubbluetoothdevicebondinfo = PhubBluetoothDeviceBondInfo.getInstance();
        boolean flag;
        if (phubbluetoothdevicebondinfo.getAssociatedWDDeviceAddress() != null && phubbluetoothdevicebondinfo.getAssociatedWDDeviceName() != null)
            flag = true;
        else
            flag = false;
        if (mLocationManager != null && !mLocationManager.isProviderEnabled("network") && isLocalWeatherEnabled() && flag)
        {
            if (mLocationServicesDisabledLayout != null && mLocationServicesDisabledLayout.getVisibility() == 8)
                mLocationServicesDisabledLayout.setVisibility(0);
        } else
        if (mLocationServicesDisabledLayout != null)
        {
            mLocationServicesDisabledLayout.setVisibility(8);
            return;
        }
    }

    private void showToqVideo()
    {
        boolean flag;
        if (!Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
            break MISSING_BLOCK_LABEL_104;
        flag = "https://www.youtube.com/watch?v=Xc-qMtz8Qqw".contains("www.youtube.com");
        if (flag)
        {
            try
            {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:Xc-qMtz8Qqw")));
                return;
            }
            catch (Exception exception1) { }
            try
            {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.youtube.com/watch?v=Xc-qMtz8Qqw")));
                return;
            }
            catch (Exception exception)
            {
                Log.e("MainActivity", "No supported browsers that can open the video link");
                Utils.showBrowserNotInstalledToast();
                exception.printStackTrace();
                return;
            }
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.youtube.com/watch?v=Xc-qMtz8Qqw")));
        return;
        Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010d), 0).show();
        return;
    }

    private void showUninstallDialog()
    {
        if (phubAppAvailableAlertDialog != null)
        {
            if (phubAppAvailableAlertDialog.isShowing())
                phubAppAvailableAlertDialog.dismiss();
            phubAppAvailableAlertDialog = null;
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle("App Conflict:");
        builder.setMessage((new StringBuilder()).append("There is an older version of Qualcomm Toq installed on your phone.\n\nClick OK to uninstall the older version ").append(getPhubAppVerionName()).toString());
        builder.setCancelable(false);
        builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

            final MainActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE", Uri.parse("package:com.qualcomm.phub"));
                startActivity(intent);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
);
        phubAppAvailableAlertDialog = builder.create();
        phubAppAvailableAlertDialog.show();
    }

    private void showWelcomeScreen()
    {
        mUnpairLinearLayout.setVisibility(0);
        mWdCardLayout.setVisibility(8);
        mQuickTourLayout.setVisibility(8);
        mBottomPreferenceLayout.setVisibility(8);
        mLocationServicesDisabledLayout.setVisibility(8);
        mMoreToqPairedWarningLayout.setVisibility(8);
        getWhatsNewCardLayout().setVisibility(8);
        getActivityMonitorLayout().setVisibility(8);
        setSpanTextColor(mUnpairFirstTipText, mResources.getString(0x7f0a01c4), Color.parseColor("#359897"));
        if (!mBTAdapter.isEnabled())
        {
            mPairingButton.setVisibility(8);
            mBTOffLayout.setVisibility(0);
            return;
        } else
        {
            mPairingButton.setVisibility(0);
            mBTOffLayout.setVisibility(8);
            return;
        }
    }

    private void startBackgroundService()
    {
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        if (bluetoothadapter != null && bluetoothadapter.isEnabled())
            startService(new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName()));
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

    private void updateFirmwareUILayout(String s)
    {
        View view = mWDInflatorLayout.findViewById(0x7f0901ea);
        if (s.equals("firmware_layout_gone"))
        {
            if (mWDSoftwareUpdate != null)
                mWDSoftwareUpdate.setVisibility(8);
            if (mWDSoftwareUpdateSecondaryText != null)
                mWDSoftwareUpdateSecondaryText.setVisibility(8);
            if (mWDSoftwareUpdateCompleteText != null)
                mWDSoftwareUpdateCompleteText.setVisibility(8);
            if (mWDSoftwareAvailableText != null)
                mWDSoftwareAvailableText.setVisibility(8);
            if (mWDSoftwareUpdateText != null)
                mWDSoftwareUpdateText.setVisibility(8);
            if (mWDVersionAndDateText != null)
                mWDVersionAndDateText.setVisibility(8);
            if (mWDFirmwareProgressLayout != null)
                mWDFirmwareProgressLayout.setVisibility(8);
            if (mWDDivider != null)
                mWDDivider.setVisibility(8);
            if (view != null)
                view.setVisibility(8);
        } else
        {
            if (mWDSoftwareUpdate != null)
                mWDSoftwareUpdate.setVisibility(0);
            if (mWDSoftwareUpdateText != null)
                mWDSoftwareUpdateText.setVisibility(0);
            if (mWDVersionAndDateText != null)
                mWDVersionAndDateText.setVisibility(0);
            if (mWDDivider != null)
                mWDDivider.setVisibility(0);
            if (view != null)
                view.setVisibility(0);
            if (s.equals("Software Update Available"))
            {
                updateSoftwareUpdateText("Software Update Available");
                if (mWDSoftwareAvailableText != null)
                    mWDSoftwareAvailableText.setVisibility(0);
                if (mWDSoftwareUpdateCompleteText != null)
                    mWDSoftwareUpdateCompleteText.setVisibility(8);
                if (mWDSoftwareUpdateSecondaryText != null)
                    mWDSoftwareUpdateSecondaryText.setVisibility(8);
                if (mWDFirmwareProgressLayout != null)
                {
                    mWDFirmwareProgressLayout.setVisibility(8);
                    return;
                }
            } else
            if (s.equals("Transferring update..."))
            {
                updateSoftwareUpdateText("Transferring update...");
                if (mWDSoftwareAvailableText != null)
                    mWDSoftwareAvailableText.setVisibility(8);
                if (mWDSoftwareUpdateCompleteText != null)
                    mWDSoftwareUpdateCompleteText.setVisibility(8);
                if (mWDSoftwareUpdateSecondaryText != null)
                    mWDSoftwareUpdateSecondaryText.setVisibility(8);
                if (mWDFirmwareProgressLayout != null)
                {
                    mWDFirmwareProgressLayout.setVisibility(0);
                    return;
                }
            } else
            if (s.equals("Transfer complete"))
            {
                updateSoftwareUpdateText("Transfer complete");
                if (mWDSoftwareAvailableText != null)
                    mWDSoftwareAvailableText.setVisibility(8);
                if (mWDSoftwareUpdateCompleteText != null)
                    mWDSoftwareUpdateCompleteText.setVisibility(0);
                if (mWDSoftwareUpdateSecondaryText != null)
                    mWDSoftwareUpdateSecondaryText.setVisibility(0);
                if (mWDFirmwareProgressLayout != null)
                {
                    mWDFirmwareProgressLayout.setVisibility(8);
                    return;
                }
            }
        }
    }

    private void updateHeadsetPairingCards()
    {
        if (ToqApplication.getDeviceType() == 2)
        {
            if (!PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded() && !PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
            {
                getEPScreenLauncherCard().setVisibility(8);
                if (!isHeadsetWelcomeCardHidden())
                {
                    getHeadsetWelcomeCard().setVisibility(0);
                    return;
                } else
                {
                    getHeadsetWelcomeCard().setVisibility(8);
                    return;
                }
            } else
            {
                getEPScreenLauncherCard().setVisibility(0);
                getHeadsetWelcomeCard().setVisibility(8);
                return;
            }
        } else
        {
            getEPScreenLauncherCard().setVisibility(8);
            getHeadsetWelcomeCard().setVisibility(8);
            return;
        }
    }

    private void updateSoftwareUpdateText(String s)
    {
        String s1 = "";
        if (ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(0) != null)
        {
            String s2 = (new StringBuilder()).append(mResources.getString(0x7f0a014a)).append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(0)).toString();
            if (ConnectionFactory.getConnectionFactory().getEndPointFirmwareDate(0) != null)
            {
                String s3 = formatSoftwareVersionDate(ConnectionFactory.getConnectionFactory().getEndPointFirmwareDate(0));
                Log.d("MainActivity", (new StringBuilder()).append("Software version date").append(s3).toString());
                if (!TextUtils.isEmpty(s3))
                    s1 = (new StringBuilder()).append(s2).append(", ").append(s3).toString();
                else
                    s1 = s2;
            } else
            {
                s1 = s2;
            }
        }
        if (mWDSoftwareUpdateText != null && s != null)
            mWDSoftwareUpdateText.setText(getFirmwareStateText(s));
        if (mWDVersionAndDateText != null && s1 != null)
            mWDVersionAndDateText.setText(s1);
    }

    private void updateUI()
    {
        try
        {
            if (mBTAdapter == null)
            {
                Log.e("MainActivity", "Device doesn't have bluetooth support");
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Exception in UI Update").append(exception).toString());
            exception.printStackTrace();
            return;
        }
        if (!mBTAdapter.isEnabled()) goto _L2; else goto _L1
_L1:
        mBTOffLayout.setVisibility(8);
_L13:
        if (!isAtleastOnePhubDevicePaired())
            break MISSING_BLOCK_LABEL_268;
        if (isWhatsNewCardHidden()) goto _L4; else goto _L3
_L3:
        getWhatsNewCardLayout().setVisibility(0);
_L14:
        if (!isMoreThanOneToqPaired()) goto _L6; else goto _L5
_L5:
        mMoreToqPairedWarningLayout.setVisibility(0);
_L15:
        if (activityMonitoringPrefs == null || !activityMonitoringPrefs.getBoolean("activity_monitoring_settings_toggle_key", false)) goto _L8; else goto _L7
_L7:
        addGraphsForActivityMonitorCard();
_L16:
        mUnpairLinearLayout.setVisibility(8);
        mWdCardLayout.setVisibility(0);
        if (isTakeTourHidden()) goto _L10; else goto _L9
_L9:
        mQuickTourLayout.setVisibility(0);
_L17:
        mBottomPreferenceLayout.setVisibility(0);
        if (!mIsWDBonded) goto _L12; else goto _L11
_L11:
        Log.e("MainActivity", "WD is bonded");
        updateWDCard();
_L18:
        updateHeadsetPairingCards();
        return;
_L2:
        mBTOffLayout.setVisibility(0);
          goto _L13
_L4:
        getWhatsNewCardLayout().setVisibility(8);
          goto _L14
_L6:
        mMoreToqPairedWarningLayout.setVisibility(8);
          goto _L15
_L8:
        getActivityMonitorLayout().setVisibility(8);
          goto _L16
_L10:
        mQuickTourLayout.setVisibility(8);
          goto _L17
_L12:
        Log.e("MainActivity", "WD is not bonded");
        showWelcomeScreen();
          goto _L18
        showWelcomeScreen();
        updateHeadsetPairingCards();
        return;
          goto _L13
    }

    private void updateWDCard()
    {
        String s = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedWDDeviceName();
        String s1 = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedWDDeviceAddress();
        mWdIconLayout.setVisibility(0);
        if (mBTAdapter.isEnabled())
        {
            Log.d("MainActivity", "BT is ON fetching state from Connection Handler");
            int i = PhubBluetoothDeviceBondInfo.getInstance().getWDState();
            if (i == -1 || i == 2)
                i = 4;
            updateWDConnectionState(i, s, s1);
        } else
        {
            Log.d("MainActivity", "BT is OFF fetching device name and address from SP");
            if (s != null && s1 != null)
            {
                updateWDConnectionState(4, s, s1);
                return;
            }
        }
    }

    private void updateWDConnectionState(int i, String s, String s1)
    {
        Log.d("MainActivity", (new StringBuilder()).append(" UpdateWDConnectionState The device name is ").append(s).append(" and the device address is ").append(s1).toString());
        if (mBTAdapter.isEnabled())
        {
            mBTOffLayout.setVisibility(8);
        } else
        {
            mBTOffLayout.setVisibility(0);
            updateWatchDisconnectedUI(Boolean.valueOf(false), WATCH_CONNECTION_STATUS_TEXT);
        }
        if (isMoreThanOneToqPaired())
            mMoreToqPairedWarningLayout.setVisibility(0);
        else
            mMoreToqPairedWarningLayout.setVisibility(8);
        if (PhubBluetoothDeviceBondInfo.getInstance().isWDBonded() && s != null && s1 != null)
        {
            mUnpairLinearLayout.setVisibility(8);
            mWdCardLayout.setVisibility(0);
            mBottomPreferenceLayout.setVisibility(0);
            if (!isTakeTourHidden())
                mQuickTourLayout.setVisibility(0);
            else
                mQuickTourLayout.setVisibility(8);
            updateWDUI(null, s, i);
        } else
        {
            Log.d("MainActivity", " If WD is not paired the welcome screen is shown");
            showWelcomeScreen();
        }
        updateHeadsetPairingCards();
    }

    private void updateWDFirmware()
    {
label0:
        {
label1:
            {
label2:
                {
                    if (ConnectionFactory.getConnectionFactory() == null || !ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(0))
                        break label0;
                    ToqConnectionHandlerImpl toqconnectionhandlerimpl = ToqConnectionHandlerImpl.getConnectionHandler();
                    if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null && ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(0))
                    {
                        if (toqconnectionhandlerimpl.getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) != 3)
                            break label1;
                        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) != 1)
                            break label2;
                        Log.d("MainActivity", "Version Matched");
                        updateFirmwareUILayout("firmware_layout_gone");
                    }
                    return;
                }
                if (FMSController.getFmsController().getFmsDatabaseAdapter().getFMSState("/firmware/1234.zip") == 4)
                {
                    updateFirmwareUILayout("Transferring update...");
                    return;
                }
                if (FMSController.getFmsController().getFmsDatabaseAdapter().getFMSState("/firmware/1234.zip") != 6 && FMSController.getFmsController().getFmsDatabaseAdapter().getFMSState("/firmware/1234.zip") != 5)
                {
                    Log.d("MainActivity", "Firmware zip file 1234.zip is not pushed and firmware update layout is shown with software availability");
                    updateFirmwareUILayout("Software Update Available");
                    return;
                } else
                {
                    Log.d("MainActivity", "Firmware  zip file 1234.zip is pushed and firmware update layout is not shown");
                    updateFirmwareUILayout("Transfer complete");
                    return;
                }
            }
            updateFirmwareUILayout("firmware_layout_gone");
            return;
        }
        updateFirmwareUILayout("firmware_layout_gone");
    }

    private void updateWatchDisconnectedUI(Boolean boolean1, String s)
    {
        byte byte0 = 8;
        if (mWatchConnectButton != null)
            Log.d("MainActivity", (new StringBuilder()).append("The status text").append(mWatchConnectButton.getText().toString()).append("and boolean value").append(boolean1).toString());
        if (mWatchDisconnectLayout != null)
        {
            RelativeLayout relativelayout = mWatchDisconnectLayout;
            byte byte3;
            if (boolean1.booleanValue())
                byte3 = 0;
            else
                byte3 = byte0;
            relativelayout.setVisibility(byte3);
        }
        if (WATCH_CONNECTION_STATUS_TEXT.equalsIgnoreCase(mConnectString))
        {
            if (mWatchConnectButton != null && mWatchConnectingText != null)
            {
                Button button1 = mWatchConnectButton;
                byte byte2;
                if (boolean1.booleanValue())
                    byte2 = 0;
                else
                    byte2 = byte0;
                button1.setVisibility(byte2);
                TextView textview1 = mWatchConnectingText;
                if (!boolean1.booleanValue())
                    byte0 = 0;
                textview1.setVisibility(byte0);
            }
        } else
        if (mWatchConnectingText != null && mWatchConnectButton != null)
        {
            TextView textview = mWatchConnectingText;
            byte byte1;
            if (boolean1.booleanValue())
                byte1 = 0;
            else
                byte1 = byte0;
            textview.setVisibility(byte1);
            Button button = mWatchConnectButton;
            if (!boolean1.booleanValue())
                byte0 = 0;
            button.setVisibility(byte0);
            return;
        }
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        Log.d("MainActivity", "Inside on back pressed");
        if (mEulaLoadingProgressDialog != null && mEulaLoadingProgressDialog.isShowing())
            mEulaLoadingProgressDialog.dismiss();
        finish();
        Log.d("MainActivity", "Finishing the Main Activity");
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.printUsageLog("MainActivity", "MainActivity is started");
        AndroidUtils.printMemoryStatus("onCreate BEGIN");
        Log.i("MainActivity", "onCreate() Called");
        setProjectConfig();
        if (!Build.MANUFACTURER.equals("LGE") && android.os.Build.VERSION.SDK_INT != 16)
        {
            Log.d("MainActivity", " Hardware Acceleration not enabled ");
        } else
        {
            Log.d("MainActivity", (new StringBuilder()).append(" Device Manufacturer : ").append(Build.MANUFACTURER).append(" :: Device Android version : ").append(android.os.Build.VERSION.SDK_INT).append(" Hardware Acceleration enabled ").toString());
            getWindow().setFlags(0x1000000, 0x1000000);
        }
        setContentView(0x7f030016);
        if (mResources == null)
            mResources = ToqApplication.getAppContext().getResources();
        loadDrawables();
        initializeUI();
        initialiseWDCardUI();
        setTypeFaceForButtonsText();
        registerUIReceiver();
        mLocationManager = (LocationManager)getSystemService("location");
        mBTAdapter = BluetoothAdapter.getDefaultAdapter();
        setAnimationForCards();
        getOverFlowMenu().setOnClickListener(overFlowMenuClickListener);
        AndroidUtils.printMemoryStatus("onCreate END");
    }

    protected Dialog onCreateDialog(int i)
    {
        switch (i)
        {
        case 1: // '\001'
            mEulaLoadingProgressDialog.setMessage(mResources.getString(0x7f0a0128));
            mEulaLoadingProgressDialog.setCancelable(false);
            mEulaLoadingProgressDialog.setProgressStyle(0);
            return mEulaLoadingProgressDialog;
        }
        return null;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f0900b8));
        mLruCache.unBindDrawables();
        PhubBluetoothDeviceBondInfo.getInstance().isWDBonded();
        PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
        PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
        if (mWebViewContainer != null)
            mWebViewContainer.removeAllViews();
        mWebViewContainer = null;
        if (mWebView != null)
            mWebView.destroy();
        mWebView = null;
        Log.w("MainActivity", "onDestroy Watch");
        try
        {
            unregisterReceiver(mUIReceiver);
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Exception in onDestroy(): ").append(exception.toString()).toString());
        }
        if (mUiAnimationHandler != null)
        {
            mUiAnimationHandler.removeCallbacksAndMessages(null);
            mUiAnimationHandler = null;
        }
        mEulaLoadingProgressDialog = null;
        mEulaDialog = null;
        mResources = null;
        mConnectString = null;
        mConnectingString = null;
        mWDEPDetailsDialogListView = null;
        mTakeTourButton = null;
        mHideButton = null;
        mOpenBTSettingsButton = null;
        mBTButton = null;
        mPairingButton = null;
        mEulaAgreeButton = null;
        mEulaCancelButton = null;
        mWDEPDetailsAgreeButton = null;
        mLocationServiceTurnOnButton = null;
        mSpannableText = null;
        mWDIconText = null;
        mWDSoftwareUpdateText = null;
        mWDStatusIconText = null;
        mWDVersionAndDateText = null;
        mUnpairFirstTipText = null;
        mWDSoftwareUpdateCompleteText = null;
        mWDSoftwareUpdateSecondaryText = null;
        mWDSoftwareAvailableText = null;
        mWDDivider = null;
        mWdIconLayout = null;
        mWdCardLayout = null;
        mBottomPreferenceLayout = null;
        mQuickTourLayout = null;
        mBTOffLayout = null;
        mUnpairLinearLayout = null;
        mMoreToqPairedWarningLayout = null;
        mWhatsNewCardLayout = null;
        mWDFirmwareProgressLayout = null;
        mWDInflatorLayout = null;
        mWDSoftwareUpdate = null;
        mLocationServicesDisabledLayout = null;
        if (mWhatsNewCardCancelImage != null && mWhatsNewCardCancelImage.getDrawable() != null)
        {
            mWhatsNewCardCancelImage.getDrawable().setCallback(null);
            mWhatsNewCardCancelImage.setImageDrawable(null);
        }
        mWhatsNewCardCancelImage = null;
        if (mWDStatusIcon != null && mWDStatusIcon.getDrawable() != null)
        {
            mWDStatusIcon.getDrawable().setCallback(null);
            mWDStatusIcon.setImageDrawable(null);
        }
        mWDStatusIcon = null;
        if (mWDDeviceIcon != null && mWDDeviceIcon.getDrawable() != null)
        {
            mWDDeviceIcon.getDrawable().setCallback(null);
            mWDDeviceIcon.setImageDrawable(null);
        }
        mWDDeviceIcon = null;
        if (mWDInfoIcon != null && mWDInfoIcon.getDrawable() != null)
        {
            mWDInfoIcon.getDrawable().setCallback(null);
            mWDInfoIcon.setImageDrawable(null);
        }
        mWDInfoIcon = null;
        if (mWDPrimarySecondaryIcon != null && mWDPrimarySecondaryIcon.getDrawable() != null)
        {
            mWDPrimarySecondaryIcon.getDrawable().setCallback(null);
            mWDPrimarySecondaryIcon.setImageDrawable(null);
        }
        mWDPrimarySecondaryIcon = null;
        if (overFlowMenu != null && overFlowMenu.getBackground() != null)
            overFlowMenu.getBackground().setCallback(null);
        overFlowMenu = null;
        mWatchDisconnectLayout = null;
        mWatchConnectButton = null;
        mWatchConnectingText = null;
        System.gc();
    }

    public void onLowMemory()
    {
        super.onLowMemory();
        Log.i("MainActivity", "MainActivity onLowMemory");
    }

    protected void onPause()
    {
        Log.d("MainActivity", "onPause");
        super.onPause();
    }

    protected void onRestart()
    {
        super.onRestart();
        Log.i("MainActivity", "onRestart()");
    }

    public void onResume()
    {
        super.onResume();
        Log.i("MainActivity", "onResume() is called");
        updateUI();
        mEulaLoadingProgressDialog.dismiss();
        if (mBottomPreferenceLayout != null && !mBottomPreferenceLayout.isEnabled())
            mBottomPreferenceLayout.setEnabled(true);
        if (mBottomPreferenceLayout != null)
            mBottomPreferenceLayout.setOnClickListener(preferencesBarListener);
        mPairingButton.setOnClickListener(mainScreenButtonsListener);
        mBTButton.setOnClickListener(mainScreenButtonsListener);
        mHideButton.setOnClickListener(mainScreenButtonsListener);
        mTakeTourButton.setOnClickListener(takeTheTourDialogListener);
        if (mWdCardLayout != null)
        {
            if (mWDEPCardDetailsDialog.isShowing())
                mWdCardLayout.setEnabled(false);
            mWdCardLayout.setOnClickListener(mainScreenButtonsListener);
        }
        mWDEPCardDetailsDialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final MainActivity this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                mWdCardLayout.setEnabled(true);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }
);
        showLocationWarningCard();
        if (mEulaDialog != null && !mEulaDialog.isShowing())
        {
            Log.d("MainActivity", "Showing the eula dialog");
            if (!isEulaAgreementAccepted())
            {
                displayEulaDialog();
                mEulaAgreeButton = (Button)mEulaDialog.findViewById(0x7f090196);
                mEulaCancelButton = (Button)mEulaDialog.findViewById(0x7f090195);
                if (mEulaAgreeButton != null && mEulaCancelButton != null)
                {
                    mEulaAgreeButton.setOnClickListener(mainScreenButtonsListener);
                    mEulaCancelButton.setOnClickListener(mainScreenButtonsListener);
                    if (ToqData.getInstance().getRegularTypeFace() != null)
                    {
                        mEulaAgreeButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
                        mEulaCancelButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
                    }
                }
            } else
            if (isEulaAgreementAccepted() && PhubBluetoothDeviceBondInfo.getInstance().isWDBonded() && mBTAdapter != null && mBTAdapter.isEnabled() && !PHubService.isPHubServiceRunning)
                startBackgroundService();
        }
        checkPhubAppStatus();
        Log.d("MainActivity", "sendGetActivityInd() called from MainActivity");
        ActivityMonitoringController.getActivityMonitoringController().sendActivityUpdateInd();
    }

    public void onStart()
    {
        super.onStart();
        Log.i("MainActivity", "onStart() Called");
        loadUI();
        updateWDFirmware();
    }

    protected void onStop()
    {
        Log.d("MainActivity", "onStop");
        super.onStop();
        Log.printUsageLog("MainActivity", "MainActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        if (mResources.getString(0x7f0a012d).equals(s))
        {
            Intent intent = new Intent(this, com/qualcomm/toq/base/ui/activity/AboutScreenActivity);
            intent.addFlags(0x10000);
            startActivity(intent);
        } else
        if (mResources.getString(0x7f0a012f).equals(s))
            showToqVideo();
        else
        if (mResources.getString(0x7f0a0130).equals(s))
            startActivity(new Intent(this, com/qualcomm/toq/base/ui/activity/HelpScreenActivity));
        else
        if (mResources.getString(0x7f0a013b).equals(s))
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("take_tour_prefs", 0);
            if (sharedpreferences != null)
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putBoolean("headset_welcome_card_hidden", false);
                editor.commit();
            }
            updateHeadsetPairingCards();
            startActivity(new Intent(this, com/qualcomm/toq/earpiece/ui/activity/MainActivity));
        }
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
    }

    public void setProjectConfig()
    {
        printProjectInfo(ProjectConfig.getProjectConfig());
    }

    public void updateWDUI(String s, String s1, int i)
    {
        Log.d("MainActivity", (new StringBuilder()).append("UpdateTitle").append(s).append(" connectionStatus ").append(i).toString());
        if (mWatchConnectButton != null)
            if (i != 4 && i != 2)
            {
                if (i == 1)
                    WATCH_CONNECTION_STATUS_TEXT = mConnectString;
            } else
            {
                WATCH_CONNECTION_STATUS_TEXT = mConnectingString;
            }
        switch (i)
        {
        case 0: // '\0'
            Log.d("MainActivity", (new StringBuilder()).append("connectionState:").append(i).toString());
            View view2 = mWdIconLayout.getChildAt(0);
            mWDSoftwareUpdate.setVisibility(8);
            boolean flag2;
            if (BluetoothAdapter.getDefaultAdapter().isEnabled())
                flag2 = true;
            else
                flag2 = false;
            updateWatchDisconnectedUI(Boolean.valueOf(flag2), WATCH_CONNECTION_STATUS_TEXT);
            if (view2 != null)
            {
                mWDStatusIconText.setText(mDisconnectedText);
                mWDStatusIconText.setTextColor(mDisconnectedColor);
                mWDStatusIcon.setImageResource(0x7f020122);
            } else
            {
                loadImageIcons(mResourcesId[0].intValue(), mDisconnectedText, mStatusIcons[1].intValue(), mDisconnectedColor, mWDStatusIconText, mWDStatusIcon);
            }
            Log.d("MainActivity", "Title is updated to STATE_NONE");
            break;

        case 1: // '\001'
        case 2: // '\002'
        case 4: // '\004'
            Log.d("MainActivity", (new StringBuilder()).append("connectionState:").append(i).toString());
            if (s1 != null && PhubBluetoothDeviceBondInfo.getInstance().isWDNameSupported(s1, 0))
            {
                mWDSoftwareUpdate.setVisibility(8);
                View view1 = mWdIconLayout.getChildAt(0);
                if (i != 4 && i != 2)
                {
                    if (i == 1)
                    {
                        boolean flag1;
                        if (BluetoothAdapter.getDefaultAdapter().isEnabled() && !CustomPhoneStateListener.isPhoneOnActiveCall)
                            flag1 = true;
                        else
                            flag1 = false;
                        updateWatchDisconnectedUI(Boolean.valueOf(flag1), WATCH_CONNECTION_STATUS_TEXT);
                    }
                } else
                {
                    boolean flag;
                    if (BluetoothAdapter.getDefaultAdapter().isEnabled() && !CustomPhoneStateListener.isPhoneOnActiveCall)
                        flag = true;
                    else
                        flag = false;
                    updateWatchDisconnectedUI(Boolean.valueOf(flag), WATCH_CONNECTION_STATUS_TEXT);
                }
                if (view1 != null)
                {
                    mWDStatusIconText.setText(mDisconnectedText);
                    mWDStatusIconText.setTextColor(mDisconnectedColor);
                    mWDStatusIcon.setImageResource(0x7f020122);
                } else
                {
                    loadImageIcons(mResourcesId[0].intValue(), mDisconnectedText, mStatusIcons[1].intValue(), mDisconnectedColor, mWDStatusIconText, mWDStatusIcon);
                }
                Log.d("MainActivity", "Title is updated to STATE_DISCONNECTED");
            }
            break;

        case 3: // '\003'
            Log.d("MainActivity", (new StringBuilder()).append("connectionState:").append(i).toString());
            if (s1 != null && PhubBluetoothDeviceBondInfo.getInstance().isWDNameSupported(s1, 0))
            {
                Log.d("MainActivity", "Title is updated to STATE_CONNECTED");
                View view = mWdIconLayout.getChildAt(0);
                WATCH_CONNECTION_STATUS_TEXT = mConnectString;
                updateWatchDisconnectedUI(Boolean.valueOf(false), WATCH_CONNECTION_STATUS_TEXT);
                if (view != null)
                {
                    mWDStatusIconText.setText(mConnectedText);
                    mWDStatusIconText.setTextColor(mConnectedColor);
                    mWDStatusIcon.setImageResource(0x7f020121);
                } else
                {
                    loadImageIcons(mResourcesId[0].intValue(), mConnectedText, mStatusIcons[0].intValue(), mConnectedColor, mWDStatusIconText, mWDStatusIcon);
                }
            }
            break;
        }
        if (mWDInfoIcon != null)
        {
            mWDInfoIcon.setImageResource(0x7f0200e5);
            mWDInfoIcon.setOnClickListener(wdInfoIconClickListener);
        }
    }











/*
    static ListAdapter access$1602(MainActivity mainactivity, ListAdapter listadapter)
    {
        mainactivity.mWDEPDetailsListAdapter = listadapter;
        return listadapter;
    }

*/


























/*
    static PopupWindow access$3802(MainActivity mainactivity, PopupWindow popupwindow)
    {
        mainactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/






/*
    static boolean access$602(MainActivity mainactivity, boolean flag)
    {
        mainactivity.isEulaActed = flag;
        return flag;
    }

*/



}

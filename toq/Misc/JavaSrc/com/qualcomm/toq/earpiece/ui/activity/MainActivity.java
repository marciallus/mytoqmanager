// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.ui.activity;

import android.app.*;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.*;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.*;
import android.text.*;
import android.text.style.TypefaceSpan;
import android.util.DisplayMetrics;
import android.view.*;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.ui.activity.AboutScreenActivity;
import com.qualcomm.toq.base.ui.adapter.WDEPDetailsListAdapter;
import com.qualcomm.toq.base.ui.customview.PhubCustomSwitchView;
import com.qualcomm.toq.base.ui.customview.PhubTextView;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.controller.EPCommunicationController;
import com.qualcomm.toq.earpiece.controller.EPVersionController;
import com.qualcomm.toq.earpiece.handler.EPConnectionHandlerImpl;
import com.qualcomm.toq.earpiece.utils.*;
import com.qualcomm.toq.smartwatch.logger.ToqLoggerFactory;
import com.qualcomm.toq.smartwatch.logger.UsageToqLoggerImpl;
import java.io.File;
import java.io.InputStream;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.qualcomm.toq.earpiece.ui.activity:
//            DeviceStatusActivity

public class MainActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{
    class MyWebViewClient extends WebViewClient
    {

        final MainActivity this$0;

        public void onPageFinished(WebView webview, String s)
        {
            onPageFinished(webview, s);
            if (mEulaLoadingProgressDialog != null && mEulaLoadingProgressDialog.isShowing())
                mEulaLoadingProgressDialog.dismiss();
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            try
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                startActivity(intent);
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                Log.e("MainActivity", "Activity Not Found Exception:No Web Browser detected that can open the url");
                Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getString(0x7f0a0024), 0).show();
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
            WebViewClient();
        }
    }

    class QcomTypeFace extends TypefaceSpan
    {

        final MainActivity this$0;
        private Typeface typeface;

        public void updateDrawState(TextPaint textpaint)
        {
            updateDrawState(textpaint);
            textpaint.setTypeface(typeface);
        }

        public QcomTypeFace(String s, Typeface typeface1)
        {
            this$0 = MainActivity.this;
            TypefaceSpan(s);
            typeface = typeface1;
        }
    }

    class UIReciever extends BroadcastReceiver
    {

        final MainActivity this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s;
            int i;
            s = intent.getAction();
            i = intent.getIntExtra("endpointtype", 0);
            if (!"android.bluetooth.adapter.action.STATE_CHANGED".equals(s)) goto _L2; else goto _L1
_L1:
            Log.d("MainActivity", "ACTION_BT_ADAPTER_STATE_CHANGE Broadcast Received");
            dismissAllDialogs();
            if (intent.getExtras().getInt("android.bluetooth.adapter.extra.STATE") == 10 && !EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_status_checked", "none").equalsIgnoreCase("none"))
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_status_checked", "true");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).clearAppPreferences();
            updateUI();
            updateEarpieceUI();
_L10:
            return;
_L2:
            if (!"android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED".equals(s) && !"android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED".equals(s) && !"android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(s) && !"android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED".equals(s) && !"android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT".equals(s))
                break MISSING_BLOCK_LABEL_394;
            BluetoothDevice bluetoothdevice1;
            int j3;
            Log.d("MainActivity", (new StringBuilder()).append("[A2DP/HFP] onReceive:").append(s).toString());
            bluetoothdevice1 = (BluetoothDevice)intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            j3 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
            int k3 = intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", 0);
            Log.d("MainActivity", (new StringBuilder()).append("[A2DP/HFP] device = ").append(bluetoothdevice1.getName()).append(", state = ").append(j3).append(", previousState = ").append(k3).toString());
            if (!"android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED".equals(s) && !"android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED".equals(s))
                break MISSING_BLOCK_LABEL_394;
            Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] A2DP Playing / Connection state action = ").append(s).toString());
            String s8;
            String s9;
            Integer integer;
            int i1;
            int j1;
            Exception exception1;
            String s10;
            String s11;
            PhubTextView phubtextview;
            int k1;
            PhubTextView phubtextview1;
            Exception exception2;
            PhubTextView phubtextview2;
            int i2;
            PhubTextView phubtextview3;
            int j2;
            Exception exception3;
            PhubTextView phubtextview4;
            int k2;
            PhubTextView phubtextview5;
            int l2;
            Exception exception4;
            PhubTextView phubtextview6;
            PhubTextView phubtextview7;
            PhubTextView phubtextview8;
            byte byte0;
            String s24;
            String s25;
            String s26;
            String s27;
            if (j3 == 10 || j3 == 2)
                try
                {
                    String s28 = bluetoothdevice1.getName().trim();
                    Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] A2DP Playing device name = ").append(s28).toString());
                    int l3 = getEPNameEndPoint(s28);
                    Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] A2DP Playing epValue = ").append(l3).toString());
                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", l3);
                }
                catch (Exception exception) { }
            if ("android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT".equals(s))
                try
                {
                    Log.d("MainActivity", (new StringBuilder()).append("[A2DP/HFP] onReceive:").append(s).toString());
                    BluetoothDevice bluetoothdevice = (BluetoothDevice)intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    Log.d("MainActivity", (new StringBuilder()).append("[A2DP/HFP] Vendor specific event device = ").append(bluetoothdevice.getName()).toString());
                }
                catch (Exception exception6) { }
            if (!PhubBluetoothDeviceBondInfo.getInstance().isEPEndPointType(i))
            {
                Log.i("MainActivity", (new StringBuilder()).append("WD broadcasted this action. No need to handle in Headset MainAcvitiy. Action:").append(s).toString());
                return;
            }
            if (Constants.ACTION_EAR_PIECE_CONNECTED.equals(s))
            {
                Log.v("MainActivity", "ACTION_EAR_PIECE_CONNECTED Broadcast Received");
                return;
            }
            if (Constants.ACTION_EAR_PIECE_DISCONNECTED.equals(s))
            {
                Log.v("MainActivity", "ACTION_EAR_PIECE_DISCONNECTED Broadcast Received");
                dismissEarpieceFirmwareUpdateProgressDialog();
                return;
            }
            if (!Constants.ACTION_EAR_PIECE_UI_UPDATE.equals(s)) goto _L4; else goto _L3
_L3:
            Log.d("MainActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
            s8 = intent.getStringExtra("perform_action");
            s9 = intent.getStringExtra("display_message");
            Log.d("MainActivity", (new StringBuilder()).append("perform_action = ").append(s8).append(", display_message = ").append(s9).toString());
            Object obj = intent.getExtras().get("ep_firmware_update_error");
            integer = null;
            if (obj != null)
                integer = (Integer)intent.getExtras().get("ep_firmware_update_error");
            Object obj1 = intent.getExtras().get("state");
            i1 = 0;
            if (obj1 != null)
                i1 = ((Integer)intent.getExtras().get("state")).intValue();
            if (s8 == null || TextUtils.isEmpty(s8) || s8.length() <= 0)
                break MISSING_BLOCK_LABEL_1539;
            if (s8.trim().equalsIgnoreCase("PERFORM_CHANGE_ROLE"))
            {
                dismissEarpieceProgressDialog();
                showEarpieceRoleChangeDialog(null, null);
                return;
            }
            if (!s8.trim().equalsIgnoreCase("PERFORM_BASS_BOOST"))
                break MISSING_BLOCK_LABEL_1211;
            dismissEarpieceProgressDialog();
            byte0 = -1;
            s24 = epConnectionHandler.getBassBoostMode(1);
            s25 = epConnectionHandler.getBassBoostMode(2);
            s26 = epConnectionHandler.getEndPointRole(1);
            s27 = epConnectionHandler.getEndPointRole(2);
            Log.e("MainActivity", (new StringBuilder()).append("[BassBoost] rightBassBoostVal = ").append(s25).append(", leftBassBoostVal = ").append(s24).append(", leftEPRole = ").append(s26).append(", rightEPRole = ").append(s27).toString());
            if (s26 == null && s27 == null) goto _L6; else goto _L5
_L5:
            if (!s26.contains("Primary")) goto _L8; else goto _L7
_L7:
            if (s24 != null)
            {
                Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] Storing LEFT Headset LAST_KNOWN_HEADSET_PBE_MODE = ").append(s24).toString());
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_known_headset_mode", s24);
                if (s24.toLowerCase(Locale.US).equalsIgnoreCase("low"))
                    byte0 = 1;
                else
                if (s24.toLowerCase(Locale.US).equalsIgnoreCase("medium"))
                    byte0 = 2;
                else
                if (s24.toLowerCase(Locale.US).equalsIgnoreCase("high"))
                    byte0 = 3;
                else
                    byte0 = 0;
            }
_L9:
            showEarpieceBassBoostDialog(byte0, i);
            return;
_L8:
            if (s27.contains("Primary"))
            {
                if (s25 != null)
                {
                    Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] Storing RIGHT Headset LAST_KNOWN_HEADSET_PBE_MODE = ").append(s25).toString());
                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_known_headset_mode", s25);
                    if (s25.toLowerCase(Locale.US).equalsIgnoreCase("low"))
                        byte0 = 1;
                    else
                    if (s25.toLowerCase(Locale.US).equalsIgnoreCase("medium"))
                        byte0 = 2;
                    else
                    if (s25.toLowerCase(Locale.US).equalsIgnoreCase("high"))
                        byte0 = 3;
                    else
                        byte0 = 0;
                }
            } else
            {
                Log.d("MainActivity", "Both headsets are having DIFFERENT bass boost value..So setting default Value as OFF");
                Log.d("MainActivity", "[BassBoost] Storing RIGHT&LEFT Headset Values are different Off ");
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_known_headset_mode", "Off");
                byte0 = 0;
            }
            if (true) goto _L9; else goto _L6
_L6:
            Log.e("MainActivity", "Bass boost values are null");
            return;
            if (s8.trim().equalsIgnoreCase("PERFORM_CHANGE_ROLE_IN_VIEW_STATUS"))
            {
                dismissAllDialogs();
                showEarpieceRoleChangeDialog("Choose headset roles", "Please choose which headset you want to use for calls. Otherwise, your headsets may not work correctly.");
                return;
            }
            if (s8.trim().equalsIgnoreCase("PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS"))
            {
                dismissAllDialogs();
                String s16 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "");
                String s17 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "");
                if (mIsLeftEPBonded && (!mIsRightEPBonded || s16.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT)))
                {
                    String s21 = HeadsetUtils.getString(0x7f0a0198);
                    String s22 = HeadsetUtils.getString(0x7f0a0199);
                    String s23 = HeadsetUtils.getString(0x7f0a019a);
                    showEarpieceRoleChangeSingleHeadsetDialog(s21, s22, s23);
                }
                if (!mIsLeftEPBonded || s17.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT) && mIsRightEPBonded)
                {
                    String s18 = HeadsetUtils.getString(0x7f0a019b);
                    String s19 = HeadsetUtils.getString(0x7f0a019c);
                    String s20 = HeadsetUtils.getString(0x7f0a019d);
                    showEarpieceRoleChangeSingleHeadsetDialog(s18, s19, s20);
                    return;
                }
            } else
            {
                if (s8.trim().equalsIgnoreCase("SAME_FIRMEARE_INFO"))
                {
                    dismissAllDialogs();
                    showEarpieceInfoDialog("Software Update", "Your headset software is up to date.");
                    updateEarpieceUI();
                    return;
                }
                if (s8.trim().equalsIgnoreCase("UPDATE_HEADSET"))
                {
                    if (s9 != null && !TextUtils.isEmpty(s9))
                    {
                        updateEarpieceProgressDialog(s9);
                        return;
                    }
                } else
                {
                    dismissAllDialogs();
                    updateUI();
                    updateEarpieceUI();
                    return;
                }
            }
              goto _L10
            if (integer == null) goto _L12; else goto _L11
_L11:
            j1 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getInteger("last_known_primary_headset", -1);
            if (!mIsLeftEPBonded || !mIsRightEPBonded || 2 != i) goto _L14; else goto _L13
_L13:
            if (MainActivity.mEarpieceSoftwareUpdateProgressDialog.isShowing()) goto _L16; else goto _L15
_L15:
            showEarpieceFirmwareUpdateProgressDialog();
            if (!mIsLeftEPBonded || !mIsRightEPBonded) goto _L16; else goto _L17
_L17:
            mEarpieceRightProgressLoadingLayout.setVisibility(0);
            mEarpieceLeftProgressLoadingLayout.setVisibility(0);
            MainActivity.mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f090189).setVisibility(0);
            Log.d("MainActivity", "...[View GONE 2]");
            mEarpieceRightProgressCompleteIcon.setVisibility(8);
            mEarpieceLeftDisconnectInfo.setVisibility(8);
            mEarpieceRightFirmwareProgressLayout.setVisibility(8);
            if (ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(i)) goto _L19; else goto _L18
_L18:
            getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_COMPLETE);
            getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#74c594"));
            mEarpieceRightProgressCompleteIcon.setVisibility(0);
            mEarpieceRightDisconnectInfo.setVisibility(4);
              goto _L16
_L43:
            phubtextview6 = getEarpieceLeftProgressLoadingText();
_L33:
            String s14 = phubtextview6.getText().toString().trim();
            if (!s14.equalsIgnoreCase(Constants.EP_STATUS_HAS_UPDATED_SW) && !s14.equalsIgnoreCase(Constants.EP_STATUS_UPDATE_COMPLETE) && !s14.equalsIgnoreCase(Constants.EP_STATUS_UPDATE_FAILED) && !s14.equalsIgnoreCase(Constants.EP_STATUS_REBOOTING) && !s14.contains("Transfer"))
            {
                Log.d("MainActivity", "Set L / R Loading text as CONNECTING");
                String s15 = Constants.EP_STATUS_CONNECTING;
                phubtextview6.setText(s15);
            }
_L14:
            if (101 != i1 || !MainActivity.mEarpieceSoftwareUpdateProgressDialog.isShowing())
                break MISSING_BLOCK_LABEL_2139;
            if (!mIsRightEPBonded || 2 != i)
                break MISSING_BLOCK_LABEL_1944;
            mEarpieceRightFirmwareProgressLayout.setVisibility(4);
            getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_COMPLETE);
            getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#74c594"));
            mEarpieceRightProgressCompleteIcon.setVisibility(0);
            if (!mIsLeftEPBonded || 1 != i)
                break MISSING_BLOCK_LABEL_2061;
            Log.d("MainActivity", (new StringBuilder()).append("FW Success Updating Left EP text if bonded. Constants.EP_STATUS_HAS_UPDATED_SW ").append(Constants.EP_STATUS_HAS_UPDATED_SW).toString());
            mEarpieceLeftFirmwareProgressLayout.setVisibility(4);
            mEarpieceLeftDisconnectInfo.setVisibility(8);
            getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_HAS_UPDATED_SW);
            getEarpieceLeftProgressLoadingText().setTextColor(Color.parseColor("#74c594"));
            getEarpieceLeftProgressLoadingText().setVisibility(0);
            mEarpieceLeftProgressCompleteIcon.setVisibility(0);
            String s12 = (String)getEarpieceRightProgressLoadingText().getText();
            String s13 = (String)getEarpieceLeftProgressLoadingText().getText();
            Log.d("MainActivity", (new StringBuilder()).append("FW Success rStr = ").append(s12).append(", lStr = ").append(s13).toString());
            updateSoftwareUpdateRetryContinue(j1, i);
_L34:
            if (102 != i1) goto _L21; else goto _L20
_L20:
            if (MainActivity.mEarpieceSoftwareUpdateProgressDialog == null || !MainActivity.mEarpieceSoftwareUpdateProgressDialog.isShowing()) goto _L10; else goto _L22
_L22:
            if (1 != i) goto _L24; else goto _L23
_L23:
            if (mEarpieceLeftFirmwareProgressLayout != null)
                mEarpieceLeftFirmwareProgressLayout.setVisibility(8);
            getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_FAILED);
            getEarpieceLeftProgressLoadingText().setTextColor(Color.parseColor("#c04241"));
            if (mEarpieceLeftDisconnectInfo == null)
                break MISSING_BLOCK_LABEL_2266;
            mEarpieceLeftDisconnectInfo.setVisibility(0);
            phubtextview4 = mEarpieceLeftDisconnectInfo;
            if (MainActivity.isLeftLowBattery)
                k2 = 0x7f0a01ec;
            else
                k2 = 0x7f0a01eb;
            phubtextview4.setText(k2);
            if (mEarpieceLeftFirmwareProgressLayout != null)
                mEarpieceLeftFirmwareProgressLayout.setVisibility(8);
            if (mEarpieceLeftProgressCompleteIcon != null)
                mEarpieceLeftProgressCompleteIcon.setVisibility(8);
            Log.d("MainActivity", (new StringBuilder()).append("...[View GONE 3] Val = ").append(getEarpieceLeftProgressLoadingText().getText().toString().trim()).toString());
_L36:
            updateSoftwareUpdateRetryContinue(j1, i);
_L21:
            if (2020 != i1) goto _L26; else goto _L25
_L25:
            if (MainActivity.mEarpieceSoftwareUpdateProgressDialog == null || !MainActivity.mEarpieceSoftwareUpdateProgressDialog.isShowing())
            {
                showEarpieceFirmwareUpdateProgressDialog();
                updateEarpieceFirmwareText(i);
            }
            if (1 != i) goto _L28; else goto _L27
_L27:
            if (mEarpieceLeftFirmwareProgressLayout != null)
                mEarpieceLeftFirmwareProgressLayout.setVisibility(8);
            getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_FAILED);
            getEarpieceLeftProgressLoadingText().setTextColor(Color.parseColor("#c04241"));
            Log.d("MainActivity", (new StringBuilder()).append("...[View GONE 3] Val = ").append(getEarpieceLeftProgressLoadingText().getText().toString().trim()).toString());
            mEarpieceLeftProgressCompleteIcon.setVisibility(8);
            mEarpieceLeftDisconnectInfo.setVisibility(0);
            MainActivity.isLeftLowBattery = true;
            phubtextview2 = mEarpieceLeftDisconnectInfo;
            if (MainActivity.isLeftLowBattery)
                i2 = 0x7f0a01ec;
            else
                i2 = 0x7f0a01eb;
            phubtextview2.setText(i2);
_L38:
            updateSoftwareUpdateRetryContinue(j1, i);
_L26:
            if (2021 != i1) goto _L10; else goto _L29
_L29:
            if (MainActivity.mEarpieceSoftwareUpdateProgressDialog == null || !MainActivity.mEarpieceSoftwareUpdateProgressDialog.isShowing()) goto _L10; else goto _L30
_L30:
            s10 = (String)getEarpieceRightProgressLoadingText().getText();
            s11 = (String)getEarpieceLeftProgressLoadingText().getText();
            Log.d("MainActivity", (new StringBuilder()).append("FW EP_STATUS_SW_UPDATE_CHECKER rStr = ").append(s10).append(", lStr = ").append(s11).toString());
            if (!s11.equals(Constants.EP_STATUS_CONNECTING) && !s11.equals(Constants.EP_STATUS_WAITING)) goto _L32; else goto _L31
_L31:
            mEarpieceLeftFirmwareProgressLayout.setVisibility(8);
            getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_FAILED);
            getEarpieceLeftProgressLoadingText().setTextColor(Color.parseColor("#c04241"));
            mEarpieceLeftDisconnectInfo.setVisibility(0);
            phubtextview = mEarpieceLeftDisconnectInfo;
            if (MainActivity.isLeftLowBattery)
                k1 = 0x7f0a01ec;
            else
                k1 = 0x7f0a01eb;
            phubtextview.setText(k1);
            mEarpieceLeftProgressCompleteIcon.setVisibility(8);
_L40:
            if (mIsRightEPBonded && !ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(2))
            {
                getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_COMPLETE);
                getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#74c594"));
                mEarpieceRightProgressCompleteIcon.setVisibility(0);
                mEarpieceRightDisconnectInfo.setVisibility(4);
            }
            if (mIsLeftEPBonded && !ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(1))
            {
                getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_COMPLETE);
                getEarpieceLeftProgressLoadingText().setTextColor(Color.parseColor("#74c594"));
                mEarpieceLeftProgressCompleteIcon.setVisibility(0);
                mEarpieceLeftDisconnectInfo.setVisibility(4);
            }
            updateSoftwareUpdateRetryContinue(9999, 9999);
            return;
_L19:
            getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_FAILED);
            getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#c04241"));
            mEarpieceRightDisconnectInfo.setVisibility(0);
            phubtextview8 = mEarpieceRightDisconnectInfo;
            int i3;
            if (MainActivity.isRightLowBattery)
                i3 = 0x7f0a01ec;
            else
                i3 = 0x7f0a01eb;
            try
            {
                phubtextview8.setText(i3);
                continue; /* Loop/switch isn't completed */
            }
            catch (Exception exception5)
            {
                Log.e("MainActivity", (new StringBuilder()).append("Exception epFirmwareUpdateErr != null ").append(exception5.toString()).toString());
                exception5.printStackTrace();
            }
              goto _L14
_L44:
            phubtextview7 = getEarpieceRightProgressLoadingText();
            phubtextview6 = phubtextview7;
              goto _L33
            exception4;
            Log.e("MainActivity", (new StringBuilder()).append("Exception IHeadsetState.SUB_STATE_SUCCESS == state ").append(exception4.toString()).toString());
            exception4.printStackTrace();
              goto _L34
_L24:
            if (2 != i) goto _L36; else goto _L35
_L35:
            if (mEarpieceRightFirmwareProgressLayout != null)
                mEarpieceRightFirmwareProgressLayout.setVisibility(8);
            getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_FAILED);
            getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#c04241"));
            if (mEarpieceRightDisconnectInfo == null)
                break MISSING_BLOCK_LABEL_3244;
            mEarpieceRightDisconnectInfo.setVisibility(0);
            phubtextview5 = mEarpieceRightDisconnectInfo;
            if (MainActivity.isRightLowBattery)
                l2 = 0x7f0a01ec;
            else
                l2 = 0x7f0a01eb;
            phubtextview5.setText(l2);
            Log.d("MainActivity", (new StringBuilder()).append("...[View GONE 4] val = ").append(getEarpieceRightProgressLoadingText().getText().toString().trim()).toString());
            if (mEarpieceRightProgressCompleteIcon != null)
                mEarpieceRightProgressCompleteIcon.setVisibility(8);
              goto _L36
            exception3;
            Log.e("MainActivity", (new StringBuilder()).append("Exception IHeadsetState.SUB_STATE_FAILURE == state ").append(exception3.toString()).toString());
            exception3.printStackTrace();
              goto _L21
_L28:
            if (2 != i) goto _L38; else goto _L37
_L37:
            if (mEarpieceLeftFirmwareProgressLayout != null)
                mEarpieceRightFirmwareProgressLayout.setVisibility(8);
            getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_FAILED);
            getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#c04241"));
            Log.d("MainActivity", (new StringBuilder()).append("...[View GONE 4] val = ").append(getEarpieceRightProgressLoadingText().getText().toString().trim()).toString());
            mEarpieceRightProgressCompleteIcon.setVisibility(8);
            MainActivity.isRightLowBattery = true;
            mEarpieceRightDisconnectInfo.setVisibility(0);
            phubtextview3 = mEarpieceRightDisconnectInfo;
            if (MainActivity.isRightLowBattery)
                j2 = 0x7f0a01ec;
            else
                j2 = 0x7f0a01eb;
            phubtextview3.setText(j2);
              goto _L38
            exception2;
            Log.e("MainActivity", (new StringBuilder()).append("Exception Constants.EP_STATUS_LOW_BATTERY_STATE == state ").append(exception2.toString()).toString());
            exception2.printStackTrace();
              goto _L26
_L32:
            if (!s10.equals(Constants.EP_STATUS_CONNECTING) && !s10.equals(Constants.EP_STATUS_WAITING)) goto _L40; else goto _L39
_L39:
            mEarpieceRightFirmwareProgressLayout.setVisibility(8);
            getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_UPDATE_FAILED);
            getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#c04241"));
            mEarpieceRightDisconnectInfo.setVisibility(0);
            phubtextview1 = mEarpieceRightDisconnectInfo;
            int l1;
            if (MainActivity.isRightLowBattery)
                l1 = 0x7f0a01ec;
            else
                l1 = 0x7f0a01eb;
            try
            {
                phubtextview1.setText(l1);
                mEarpieceRightProgressCompleteIcon.setVisibility(8);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1)
            {
                Log.e("MainActivity", (new StringBuilder()).append("Exception Constants.EP_STATUS_SW_UPDATE_CHECKER == state ").append(exception1.toString()).toString());
                exception1.printStackTrace();
                return;
            }
              goto _L40
_L12:
            dismissAllDialogs();
            updateUI();
            updateEarpieceUI();
            return;
_L4:
            if (Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
            {
                Log.d("MainActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                String s7 = intent.getStringExtra("endpointname");
                int l = intent.getIntExtra("state", 0);
                if (l != 3 && l != 0)
                    l = 4;
                if (i == 1 || i == 2)
                {
                    Log.d("MainActivity", (new StringBuilder()).append("PHUB-EP-L or R connection state changed to: ").append(l).toString());
                    updateEarPieceState(s7, l);
                    return;
                }
            } else
            if (Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED.equals(s))
            {
                if (i == 1)
                {
                    updateEarPieceState(Constants.PERSONALHUB_LEFT_EAR_PIECE[0], 0);
                    return;
                }
                if (i == 2)
                {
                    updateEarPieceState(Constants.PERSONALHUB_RIGHT_EAR_PIECE[0], 0);
                    return;
                }
            } else
            {
                if (Constants.ACTION_VERSION_INFO.equals(s))
                {
                    Log.d("MainActivity", "ACTION_VERSION_INFO Broadcast received");
                    updateFirmwareLayout(i);
                    return;
                }
                if (Constants.ACTION_FIRMWARE_TRANSFER.equals(s))
                {
                    Log.i("MainActivity", "ACTION_FIRMWARE_TRANSFER Broadcast Received");
                    String s4 = intent.getStringExtra("firmware_status");
                    mEarpieceRetryContinuteButtonsLayout.setVisibility(0);
                    String s5 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "none");
                    String s6 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "none");
                    if (s5.equalsIgnoreCase("OK") && s6.equalsIgnoreCase("OK"))
                    {
                        Log.d("MainActivity", "Making RetryButton visibility as GONE..<<10>>");
                        eEarpieceSoftwareUpdateButtonDivder.setVisibility(8);
                        mEarpieceSoftwareUpdateRetryButton.setVisibility(8);
                        return;
                    }
                    if (s4.equalsIgnoreCase("success") && ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(i))
                    {
                        updateFirmwareUILayout("Transfer complete", i);
                        return;
                    }
                } else
                if (Constants.ACTION_FIRMWARE_TRANSFER_PROGRESS.equals(s))
                {
                    Log.i("MainActivity", "ACTION_FIRMWARE_TRANSFER_PROGRESS Broadcast Received");
                    int j = intent.getIntExtra("file_length", -1);
                    int k = intent.getIntExtra("sent_file_bytes", -1);
                    if (!MainActivity.mEarpieceSoftwareUpdateProgressDialog.isShowing())
                        showEarpieceFirmwareUpdateProgressDialog();
                    updateEarpieceFirmwareText(i);
                    if (j != -1 && j != 0 && k != -1)
                    {
                        if (i == 1)
                        {
                            if (mEarpieceLeftFirmwareProgressBar != null)
                                mEarpieceLeftFirmwareProgressBar.setProgress((k * 100) / j);
                            if (mEarpieceLeftFirmwareProgressText != null)
                                mEarpieceLeftFirmwareProgressText.setText((new StringBuilder()).append((k * 100) / j).append("%").toString());
                        } else
                        if (i == 2)
                        {
                            if (mEarpieceRightFirmwareProgressBar != null)
                                mEarpieceRightFirmwareProgressBar.setProgress((k * 100) / j);
                            if (mEarpieceRightFirmwareProgressText != null)
                                mEarpieceRightFirmwareProgressText.setText((new StringBuilder()).append((k * 100) / j).append("%").toString());
                        }
                        Log.i("MainActivity", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[i]).append(" Firmware percentage: ").append((k * 100) / j).toString());
                        if (k == j)
                        {
                            if (2 == i)
                            {
                                String s3 = getEarpieceRightProgressLoadingText().getText().toString().trim();
                                if (!s3.equals(Constants.EP_STATUS_HAS_UPDATED_SW) && !s3.equals(Constants.EP_STATUS_UPDATE_FAILED))
                                    getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_REBOOTING);
                            }
                            if (1 == i && mIsLeftEPBonded)
                            {
                                String s2 = getEarpieceLeftProgressLoadingText().getText().toString().trim();
                                if (!s2.equals(Constants.EP_STATUS_HAS_UPDATED_SW) && !s2.equals(Constants.EP_STATUS_UPDATE_FAILED))
                                    getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_REBOOTING);
                            }
                            if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getEndPointUpgradeState(i))
                            {
                                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_text").append(i).toString(), "OK");
                                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("current_status_subtext").append(i).toString(), "");
                                return;
                            }
                        }
                    }
                } else
                {
                    if (Constants.ACTION_EP_CONFIG_STATE_UPDATE.equals(s))
                    {
                        Log.d("MainActivity", (new StringBuilder()).append("onReceive() action = ").append(s).append("Closing dialog if any, stopping EP state machine").toString());
                        Log.d("MainActivity", "[BassBoost] setting -1 for PBE primay headset Constants.ACTION_EP_CONFIG_STATE_UPDATE");
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", -1);
                        HeadsetAction.getInstance().unRegisterHeadsetActionResponseReceiver();
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).clearAppPreferences();
                        closePendingActions();
                        dismissAllDialogs();
                        MainActivity.avoidStyledDataFlag = true;
                        if (!EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_status_checked", "none").equalsIgnoreCase("none"))
                            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_status_checked", "true");
                        updateUI();
                        updateEarpieceUI();
                        HeadsetAction.getInstance().quitLooper();
                        return;
                    }
                    if (!Constants.ACTION_EAR_PIECE_PROFILE_UPDATE.equals(s))
                        continue; /* Loop/switch isn't completed */
                    String s1 = intent.getStringExtra("actionType");
                    if (s1 != null)
                    {
                        if (!s1.equals(Constants.A2DP_PROFILE_CONNECTED) && !s1.equals(Constants.A2DP_PROFILE_DISCONNECTED) && !s1.equals(Constants.HFP_PROFILE_CONNECTED) && s1.equals(Constants.HFP_PROFILE_DISCONNECTED))
                            return;
                    } else
                    {
                        Log.d("MainActivity", "Ear piece Profile actionType is null!!!");
                        return;
                    }
                }
            }
              goto _L10
            if (!Constants.ACTION_EP_MORE_HEADSETS_FOUND_UPDATE.equals(s) || mMoreEarPiecesPairedWarningLayout.getVisibility() != 8) goto _L10; else goto _L41
_L41:
            mDeviceIconsLinearLayout.setVisibility(8);
            updateEPStereoAudioUI();
            mMoreEarPiecesPairedWarningLayout.setVisibility(0);
            return;
_L16:
            if ((j1 == -1 || j1 == i) && (j1 != -1 || i != 2)) goto _L14; else goto _L42
_L42:
            if (j1 != -1 && j1 != 2) goto _L44; else goto _L43
        }

        UIReciever()
        {
            this$0 = MainActivity.this;
            BroadcastReceiver();
        }
    }


    private static final int EULA_PROGRESS_DIALOG = 1;
    private static final String FIRMWARE_LAYOUT_GONE = "firmware_layout_gone";
    private static final String FIRMWARE_TRANSFERRING_COMPLETE = "Transfer complete";
    private static final String FIRMWARE_TRANSFERRING_UPDATE = "Transferring update...";
    private static final int INVALID_STATE = -1;
    private static final String KEY_EULA_VERSION = "EULA_VERSION";
    private static int MAX_CHANGE_ROLE_COUNTER_VALUE = 0;
    private static final String TAG = "MainActivity";
    private static boolean avoidStyledDataFlag = false;
    private static boolean isLeftLowBattery = false;
    private static boolean isRightLowBattery = false;
    private static Handler mChangeRoleHandler = null;
    private static byte mChangeRoleSecondsCounter;
    private static Handler mChangeRoleSingleHeadsetHandler = null;
    private static byte mChangeRoleSingleHeadsetSecondsCounter;
    private static DisplayMetrics mDisplayMetrics;
    private static Dialog mEarpieceChangeRoleInSingleHeadsetDialog = null;
    private static Dialog mEarpieceChangeRolesDialog = null;
    private static Dialog mEarpieceInfoDialog = null;
    private static Dialog mEarpieceProgressDialog;
    private static Dialog mEarpieceSoftwareUpdateProgressDialog;
    private final String EP_MAIN_SCREEN_VIEW_STATUS_HIGHLIGHT_TEXT = "'VIEW STATUS'";
    String addressAndLinkKeySeperator;
    ConnectionFactory connectionFactoryObj;
    private View eEarpieceSoftwareUpdateButtonDivder;
    private LinearLayout earpieceButtonsCardLayout;
    private FrameLayout epChangeRolesCardLayout;
    private PhubTextView epChangeRolesSecondaryTextHeadset;
    private PhubCustomSwitchView epChangeRolesSwitch;
    private PhubCustomSwitchView epChangeRolesSwitchDisabled;
    private EPConnectionHandlerImpl epConnectionHandler;
    private PhubTextView epInfoTextview;
    private PhubTextView epLeftLabel;
    String epLinkKey;
    private PhubTextView epRightLabel;
    private LinearLayout epRolesButtonLayout;
    private LinearLayout epRolesUpdateProgressLayout;
    private FrameLayout epSoftwareUpdateCardLayout;
    private PhubTextView epSoftwareVersionTextview;
    private PhubTextView epStatusCheckedTextview;
    private PhubTextView epStatusNotesTextview;
    private FrameLayout epViewStatusCardLayout;
    private android.content.DialogInterface.OnKeyListener eulaDialogKeyListener;
    final boolean isJellyBean;
    private Boolean isLinkKeyGenerated;
    String leftEPAddress;
    String leftEPName;
    String leftEPRole;
    String leftEPRoleFirst;
    PhubTextView loadingSubTextView;
    PhubTextView loadingTextView;
    private AlertDialog mAlert;
    private BluetoothAdapter mBTAdapter;
    private Button mBTButton;
    private LinearLayout mBTOffLayout;
    private LinearLayout mBassBoostBottomLayout;
    private Runnable mChangeRoleSingleHeadsetTimeTask;
    private Runnable mChangeRoleTimeTask;
    private LinearLayout mChangeRolesBottomLayout;
    private int mConnectedColor;
    private LinearLayout mDeviceIconsLinearLayout;
    private int mDisconnectedColor;
    private String mDisconnectedText;
    private View mDivider[];
    private LinearLayout mEPInfoWarningTextLayout;
    private AlertDialog mEPLAlert;
    private FrameLayout mEPLBatteryLevelFrameLayout;
    private ProgressBar mEPLBatteryLevelProgressBar;
    private TextView mEPLBatteryStatusPercentageText;
    private ImageView mEPLDeviceIcon;
    private TextView mEPLIconText;
    private FrameLayout mEPLInflatorLayout;
    private ImageView mEPLInfoIcon;
    private android.view.View.OnClickListener mEPLInfoIconClickListener;
    private TextView mEPLPrimarySecondaryIcon;
    private PhubTextView mEPLStatusCaptionTextView;
    private ImageView mEPLStatusIcon;
    private TextView mEPLStatusIconText;
    private TextView mEPMainScreenViewStatusText;
    private AlertDialog mEPRAlert;
    private FrameLayout mEPRBatteryLevelFrameLayout;
    private ProgressBar mEPRBatteryLevelProgressBar;
    private TextView mEPRBatteryStatusPercentageText;
    private ImageView mEPRDeviceIcon;
    private TextView mEPRIconText;
    private FrameLayout mEPRInflatorLayout;
    private ImageView mEPRInfoIcon;
    private android.view.View.OnClickListener mEPRInfoIconClickListener;
    private TextView mEPRPrimarySecondaryIcon;
    private PhubTextView mEPRStatusCaptionTextView;
    private ImageView mEPRStatusIcon;
    private TextView mEPRStatusIconText;
    private Dialog mEarpieceBassBoostDialog;
    private PhubTextView mEarpieceLeftDisconnectInfo;
    private ProgressBar mEarpieceLeftFirmwareProgressBar;
    private LinearLayout mEarpieceLeftFirmwareProgressLayout;
    private PhubTextView mEarpieceLeftFirmwareProgressText;
    private ImageView mEarpieceLeftIcon;
    private ImageView mEarpieceLeftProgressCompleteIcon;
    private LinearLayout mEarpieceLeftProgressLoadingLayout;
    private PhubTextView mEarpieceLeftProgressLoadingText;
    private LinearLayout mEarpiecePrimaryProgressLayout;
    private LinearLayout mEarpiecePrimaryProgressLayoutInflator;
    private LinearLayout mEarpieceRetryContinuteButtonsLayout;
    private PhubTextView mEarpieceRightDisconnectInfo;
    private ProgressBar mEarpieceRightFirmwareProgressBar;
    private LinearLayout mEarpieceRightFirmwareProgressLayout;
    private PhubTextView mEarpieceRightFirmwareProgressText;
    private ImageView mEarpieceRightIcon;
    private ImageView mEarpieceRightProgressCompleteIcon;
    private LinearLayout mEarpieceRightProgressLoadingLayout;
    private PhubTextView mEarpieceRightProgressLoadingText;
    private LinearLayout mEarpieceSecondaryProgressLayout;
    private LinearLayout mEarpieceSecondaryProgressLayoutInflator;
    private Button mEarpieceSoftwareUpdateContinueButton;
    private Button mEarpieceSoftwareUpdateRetryButton;
    private LinearLayout mEpBottomButtonsLayout;
    private LinearLayout mEpConnectingHeadsetsLayout;
    private LinearLayout mEpInfoMessageLayout;
    private LinearLayout mEpLeftIconLayout;
    private LinearLayout mEpRightIconLayout;
    private LinearLayout mEpStereoAudioMessageLayout;
    private Button mEulaAgreeButton;
    private Button mEulaCancelButton;
    private Dialog mEulaDialog;
    private ProgressDialog mEulaLoadingProgressDialog;
    private Handler mHandler;
    private boolean mIsLeftEPBonded;
    private boolean mIsRightEPBonded;
    private LinearLayout mMainAppBackground;
    private RelativeLayout mMoreEarPiecesPairedWarningLayout;
    private LinearLayout mNoHeadsetsPairedLayout;
    private Button mOpenBTSettingsButton;
    private PopupWindow mPopUpWindow;
    private Resources mResources;
    private Integer mResourcesId[];
    private RelativeLayout mSoftwareUpdate[];
    private TextView mSoftwareUpdateText[];
    private Integer mStatusIcons[];
    private BroadcastReceiver mUIReceiver;
    private LinearLayout mUnpairLinearLayout;
    private TextView mVersionAndDateText[];
    private LinearLayout mViewStatusBottomLayout;
    private LinearLayout mViewStatusInstallUpdateLayout;
    private ImageView mWDDeviceIcon;
    private Dialog mWDEPCardDetailsDialog;
    private Button mWDEPDetailsAgreeButton;
    private ListView mWDEPDetailsDialogListView;
    private ListAdapter mWDEPDetailsListAdapter;
    private TextView mWDIconText;
    private FrameLayout mWDInflatorLayout;
    private TextView mWDPrimarySecondaryIcon;
    private ImageView mWDStatusIcon;
    private ImageView mWDType;
    private ArrayList mWatchDetailsListContents;
    private ArrayList mWatchDetailsListTitles;
    private LinearLayout mWdIconLayout;
    private WebView mWebView;
    private FrameLayout mWebViewContainer;
    private android.view.View.OnClickListener mainScreenButtonsListener;
    LinearLayout overFlowMenu;
    android.view.View.OnClickListener overFlowMenuClickListener;
    private final SharedPreferences prefs2 = ToqData.getInstance().getAssociatedDevicePrefs();
    String rightEPAddress;
    String rightEPName;
    String rightEPRole;
    String rightEPRoleFirst;
    Boolean updateEPLOnlyfirstTime;
    Boolean updateEPROnlyfirstTime;
    private android.view.View.OnClickListener wdEPDetailsDialogClickListener;

    public MainActivity()
    {
        boolean flag = true;
        super();
        mHandler = new Handler();
        mEulaLoadingProgressDialog = null;
        mBTAdapter = null;
        mAlert = null;
        mSoftwareUpdateText = new TextView[3];
        mVersionAndDateText = new TextView[3];
        mEPLBatteryLevelFrameLayout = null;
        mEPRBatteryLevelFrameLayout = null;
        mDivider = new View[3];
        mSoftwareUpdate = new RelativeLayout[3];
        mViewStatusInstallUpdateLayout = null;
        updateEPLOnlyfirstTime = Boolean.valueOf(flag);
        updateEPROnlyfirstTime = Boolean.valueOf(flag);
        if (android.os.Build.VERSION.SDK_INT < 16)
            flag = false;
        isJellyBean = flag;
        mEarpieceBassBoostDialog = null;
        mIsLeftEPBonded = false;
        mIsRightEPBonded = false;
        mDisconnectedText = null;
        mWebView = null;
        mWebViewContainer = null;
        mResources = null;
        mEPMainScreenViewStatusText = null;
        epConnectionHandler = null;
        loadingTextView = null;
        loadingSubTextView = null;
        mEarpieceRightProgressLoadingText = null;
        mEarpieceLeftProgressLoadingText = null;
        isLinkKeyGenerated = Boolean.valueOf(false);
        mChangeRoleTimeTask = new Runnable() ;
        mChangeRoleSingleHeadsetTimeTask = new Runnable() ;
        wdEPDetailsDialogClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                if (view == mWDInflatorLayout)
                    initializeCardDetailsDialog(0);
                else
                if (view == mEPLInflatorLayout)
                    initializeCardDetailsDialog(1);
                else
                if (view == mEPRInflatorLayout)
                    initializeCardDetailsDialog(2);
                if (mWDEPDetailsDialogListView != null)
                {
                    if (view == mWDInflatorLayout)
                        setWatchDetailsListContent(0);
                    else
                    if (view == mEPLInflatorLayout)
                        setWatchDetailsListContent(1);
                    else
                    if (view == mEPRInflatorLayout)
                        setWatchDetailsListContent(2);
                    mWDEPDetailsListAdapter = new WDEPDetailsListAdapter(ToqApplication.getAppContext(), mWatchDetailsListTitles, mWatchDetailsListContents);
                    mWDEPDetailsDialogListView.setAdapter(mWDEPDetailsListAdapter);
                }
                mWDEPCardDetailsDialog.show();
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
;
        mainScreenButtonsListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296587: 
                case 2131296607: 
                    Log.d(Constants.EP_TAG, "Clicked Change Roles");
                    if (MainActivity.mEarpieceProgressDialog != null && MainActivity.mEarpieceProgressDialog.isShowing())
                    {
                        Log.d(Constants.EP_TAG, "Already showing progress bar...so no need to proceed returning");
                        return;
                    } else
                    {
                        performChangeRoleAction();
                        return;
                    }

                case 2131296583: 
                case 2131296606: 
                    Log.d(Constants.EP_TAG, "Clicked View Status");
                    if (MainActivity.mEarpieceProgressDialog != null && MainActivity.mEarpieceProgressDialog.isShowing())
                    {
                        Log.d(Constants.EP_TAG, "Already showing progress bar...so no need to proceed returning");
                        return;
                    } else
                    {
                        performRefreshStatusAction();
                        return;
                    }

                case 2131296590: 
                case 2131296593: 
                    Log.d(Constants.EP_TAG, "Clicked Software Update");
                    if (MainActivity.mEarpieceProgressDialog != null && MainActivity.mEarpieceProgressDialog.isShowing())
                    {
                        Log.d(Constants.EP_TAG, "Already showing progress bar...so no need to proceed returning");
                        return;
                    } else
                    {
                        performSoftwareUpdateAction();
                        return;
                    }

                case 2131296608: 
                    Log.d(Constants.EP_TAG, "[BassBoost] Clicked Adjust Bass");
                    if (MainActivity.mEarpieceProgressDialog != null && MainActivity.mEarpieceProgressDialog.isShowing())
                    {
                        Log.d(Constants.EP_TAG, "[BassBoost] Already showing progress bar...so no need to proceed returning");
                        return;
                    } else
                    {
                        performBassBoostAction();
                        return;
                    }

                case 2131296581: 
                    Intent intent3 = new Intent("android.settings.BLUETOOTH_SETTINGS");
                    intent3.setFlags(0x40000000);
                    intent3.setFlags(0x10000000);
                    ToqApplication.getAppContext().startActivity(intent3);
                    return;

                case 2131296869: 
                    byte byte0 = -1;
                    String s1 = ((TextView)mWDEPCardDetailsDialog.findViewById(0x7f090260)).getText().toString();
                    byte byte1 = -1;
                    if (s1.contains(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[1].toString()))
                    {
                        byte0 = 1;
                        byte1 = 2;
                    } else
                    if (s1.contains(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[2].toString()))
                    {
                        byte0 = 2;
                        byte1 = 1;
                    }
                    if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte0) != 3)
                    {
                        showDialog("Configuration", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[byte0]).append(" is not connected. Please connect it to role change.").toString(), byte0, "Ok", null);
                        return;
                    }
                    if ((byte0 != 1 || PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(2) == 3 && PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded()) && (byte0 != 2 || PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(1) == 3 && PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded()))
                    {
                        if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte0) == 3 && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte1) == 3)
                        {
                            if (epConnectionHandler.getEndpointMode(1).equals("Operational") && epConnectionHandler.getEndpointMode(2).equals("Operational"))
                            {
                                Button button = (Button)mWDEPCardDetailsDialog.findViewById(0x7f090265);
                                if (epConnectionHandler.getEndPointRole(1).equals("Primary") && epConnectionHandler.getEndPointRole(2).equals("Primary"))
                                {
                                    button.setText((new StringBuilder()).append("Switch to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[byte1]).toString());
                                    epConnectionHandler.setEndPointRole(byte0, "SecondaryProcessingRequest");
                                    epConnectionHandler.setEndPointRole(byte1, "PrimaryProcessingRequest");
                                } else
                                if (epConnectionHandler.getEndPointRole(1).equals("Primary"))
                                {
                                    button.setText((new StringBuilder()).append("Switch to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[2]).toString());
                                    epConnectionHandler.setEndPointRole(1, "SecondaryProcessingRequest");
                                    epConnectionHandler.setEndPointRole(2, "PrimaryProcessingRequest");
                                } else
                                {
                                    button.setText((new StringBuilder()).append("Switch to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[1]).toString());
                                    epConnectionHandler.setEndPointRole(1, "PrimaryProcessingRequest");
                                    epConnectionHandler.setEndPointRole(2, "SecondaryProcessingRequest");
                                }
                                if (mEPLPrimarySecondaryIcon != null)
                                    mEPLPrimarySecondaryIcon.setVisibility(8);
                                if (mEPRPrimarySecondaryIcon != null)
                                    mEPRPrimarySecondaryIcon.setVisibility(8);
                                String s2 = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedEPLDeviceName();
                                int i = PhubBluetoothDeviceBondInfo.getInstance().getEPLState();
                                String s3 = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedEPRDeviceName();
                                int j = PhubBluetoothDeviceBondInfo.getInstance().getEPRState();
                                if (s2 != null)
                                    updateEarPieceState(s2, i);
                                if (s3 != null)
                                    updateEarPieceState(s3, j);
                                if (epConnectionHandler.getEPDependendentOnPrimaryFlag(byte0))
                                {
                                    EPCommunicationController.getEPCommunicationController().handleEPRoleConfigurationRev3(0, byte0);
                                    byte _tmp = byte1;
                                } else
                                if (epConnectionHandler.getEPDependendentOnPrimaryFlag(byte1))
                                {
                                    EPCommunicationController.getEPCommunicationController().handleEPRoleConfigurationRev3(0, byte1);
                                } else
                                {
                                    EPCommunicationController.getEPCommunicationController().handleEPRoleConfigurationRev3(0, byte0);
                                    EPCommunicationController.getEPCommunicationController().handleEPRoleConfigurationRev3(0, byte1);
                                }
                            } else
                            {
                                showDialog("Configuration", "Both Earpieces are not in same(Operational) state. Please keep both in Operational state to role change.", byte0, "Ok", null);
                            }
                        } else
                        if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte0) != 3 && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte1) != 3)
                            showDialog("Upgrade Software", "No ear piece is connected. Please connect ear piece to cofigure role", byte0, "Ok", null);
                        else
                        if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte0) != 3)
                            showDialog("Upgrade Software", (new StringBuilder()).append("Require both the headsets for role change. Connect").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[byte0]).append("to role change.").toString(), byte0, "Ok", null);
                        else
                        if (PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(byte1) != 3)
                            showDialog("Upgrade Software", (new StringBuilder()).append("Require both the headsets for role change. Connect").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[byte1]).append("to role change.").toString(), byte1, "Ok", null);
                        mWDEPCardDetailsDialog.dismiss();
                        return;
                    } else
                    {
                        showDialog("Configuration", "Require other ear piece to role change.", byte0, "Ok", null);
                        return;
                    }

                case 2131296467: 
                    Intent intent2 = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
                    intent2.setFlags(0x40000000);
                    intent2.setFlags(0x10000000);
                    ToqApplication.getAppContext().startActivity(intent2);
                    return;

                case 2131296872: 
                    mWDEPCardDetailsDialog.dismiss();
                    return;

                case 2131296661: 
                    if (mEulaDialog != null)
                    {
                        mEulaDialog.dismiss();
                        mEulaDialog = null;
                    }
                    if (mEulaCancelButton != null)
                        mEulaCancelButton.setEnabled(false);
                    if (mEulaCancelButton != null)
                        mEulaCancelButton.setClickable(false);
                    dismissActivity();
                    android.content.SharedPreferences.Editor editor2 = ToqApplication.getAppContext().getSharedPreferences("app_pref", 0).edit();
                    editor2.putBoolean("ep_firstTime", true);
                    editor2.commit();
                    return;

                case 2131296662: 
                    SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("eula_dialog_check_prefs", 0);
                    String s = getEulaVersion();
                    android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                    editor.putBoolean("eula_accepted", true);
                    editor.putString("eula_version", s);
                    editor.commit();
                    if (mEulaDialog != null)
                    {
                        mEulaDialog.dismiss();
                        mEulaDialog = null;
                    }
                    if (mEulaCancelButton != null)
                        mEulaCancelButton.setEnabled(false);
                    if (mEulaCancelButton != null)
                        mEulaCancelButton.setClickable(false);
                    android.content.SharedPreferences.Editor editor1 = ToqApplication.getAppContext().getSharedPreferences("app_pref", 0).edit();
                    editor1.putBoolean("ep_firstTime", false);
                    editor1.commit();
                    return;

                case 2131296455: 
                    Intent intent1 = new Intent("android.settings.BLUETOOTH_SETTINGS");
                    intent1.setFlags(0x40000000);
                    intent1.setFlags(0x10000000);
                    ToqApplication.getAppContext().startActivity(intent1);
                    return;

                case 2131296461: 
                    Intent intent = new Intent("android.settings.BLUETOOTH_SETTINGS");
                    intent.setFlags(0x40000000);
                    intent.setFlags(0x10000000);
                    ToqApplication.getAppContext().startActivity(intent);
                    return;

                case 2131296449: 
                default:
                    return;
                }
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
;
        eulaDialogKeyListener = new android.content.DialogInterface.OnKeyListener() {

            final MainActivity this$0;

            public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
            {
                if (i == 4 && keyevent.getAction() == 1 && !keyevent.isCanceled())
                {
                    if (mEulaDialog != null)
                    {
                        mEulaDialog.dismiss();
                        mEulaDialog = null;
                    }
                    if (mEulaLoadingProgressDialog != null && mEulaLoadingProgressDialog.isShowing())
                        mEulaLoadingProgressDialog.dismiss();
                    dismissActivity();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
;
        mEPLInfoIconClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(MainActivity.this, com/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity);
                intent.putExtra("endpointtype", 1);
                startActivity(intent);
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
;
        mEPRInfoIconClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(MainActivity.this, com/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity);
                intent.putExtra("endpointtype", 2);
                startActivity(intent);
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
;
        overFlowMenuClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f060005);
                    mPopUpWindow = (new PopUpWindowUtils(MainActivity.this)).getPopUpWindow(as, MainActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 15);
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
;
    }

    private static boolean checkZerosInBluetoothAddress(String s)
    {
        boolean flag = BluetoothAdapter.checkBluetoothAddress(s);
        boolean flag1 = false;
        if (flag)
        {
            boolean flag2 = s.equals("00:00:00:00:00:00");
            flag1 = false;
            if (flag2)
                flag1 = true;
        }
        return flag1;
    }

    private void closePendingActions()
    {
        HeadsetAction headsetaction = HeadsetAction.getInstance();
        headsetaction.setCurrentAction(-1);
        if (headsetaction.actionHandler != null)
            headsetaction.actionHandler.removeCallbacksAndMessages(null);
        if (connectionFactoryObj == null)
            connectionFactoryObj = ConnectionFactory.getConnectionFactory();
        if (connectionFactoryObj != null)
        {
            BTConnectionManager btconnectionmanager = BTConnectionManager.getConnectionManager(connectionFactoryObj.getContext());
            if (btconnectionmanager != null)
            {
                btconnectionmanager.disassociatePhoneEPLeft();
                btconnectionmanager.disassociatePhoneEPRight();
            }
        }
        if (headsetaction.headsetActionStatusList != null && headsetaction.headsetActionStatusList.size() > 0)
            headsetaction.headsetActionStatusList.clear();
    }

    private void dialogResponseHandler(int i, int j, int k)
    {
        switch (i)
        {
        case 1: // '\001'
            if (j == 0)
            {
                EPVersionController.getEPVersionController().sendAlohaWaitUpdateMessage(0, k);
                return;
            }
            if (j == 1)
            {
                EPVersionController.getEPVersionController().sendAlohaContinueMessage(0, k);
                return;
            }
            break;
        }
    }

    private void dismissActivity()
    {
        finish();
    }

    private void dismissAllDialogs()
    {
        try
        {
            if (mEarpieceProgressDialog != null && mEarpieceProgressDialog.isShowing())
                mEarpieceProgressDialog.dismiss();
            if (mEarpieceChangeRolesDialog != null && mEarpieceChangeRolesDialog.isShowing())
                mEarpieceChangeRolesDialog.dismiss();
            if (mEarpieceChangeRoleInSingleHeadsetDialog != null && mEarpieceChangeRoleInSingleHeadsetDialog.isShowing())
                mEarpieceChangeRoleInSingleHeadsetDialog.dismiss();
            if (mEarpieceSoftwareUpdateProgressDialog != null && mEarpieceSoftwareUpdateProgressDialog.isShowing())
                mEarpieceSoftwareUpdateProgressDialog.dismiss();
            if (mWDEPCardDetailsDialog != null && mWDEPCardDetailsDialog.isShowing())
                mWDEPCardDetailsDialog.dismiss();
            if (mEarpieceInfoDialog != null && mEarpieceInfoDialog.isShowing())
                mEarpieceInfoDialog.dismiss();
            if (mEarpieceBassBoostDialog != null && mEarpieceBassBoostDialog.isShowing())
                mEarpieceBassBoostDialog.dismiss();
            if (mChangeRoleHandler != null)
            {
                mChangeRoleHandler.removeCallbacks(mChangeRoleTimeTask);
                mChangeRoleHandler = null;
            }
            if (mChangeRoleSingleHeadsetHandler != null)
            {
                mChangeRoleSingleHeadsetHandler.removeCallbacks(mChangeRoleSingleHeadsetTimeTask);
                mChangeRoleSingleHeadsetHandler = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.d("MainActivity", "Exception in dismissAllDialogs()");
        }
    }

    private void dismissEarpieceFirmwareUpdateProgressDialog()
    {
        if (mEarpieceSoftwareUpdateProgressDialog != null && mEarpieceSoftwareUpdateProgressDialog.isShowing())
            mEarpieceSoftwareUpdateProgressDialog.dismiss();
    }

    private void dismissEarpieceInfoDialog()
    {
        if (mEarpieceInfoDialog != null && mEarpieceInfoDialog.isShowing())
            mEarpieceInfoDialog.dismiss();
    }

    private void dismissEarpieceProgressDialog()
    {
        if (mEarpieceProgressDialog != null && mEarpieceProgressDialog.isShowing())
            mEarpieceProgressDialog.dismiss();
    }

    private void dismissEarpieceRoleChangeDialog()
    {
        if (mEarpieceChangeRolesDialog != null && mEarpieceChangeRolesDialog.isShowing())
            mEarpieceChangeRolesDialog.dismiss();
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

    private void emptyEarpiecePreference()
    {
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_text2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("current_status_text1", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("current_status_subtext1", Constants.EP_SUBSTATUS_REFRESH_STATUS);
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("current_status_text2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("current_status_subtext2", Constants.EP_SUBSTATUS_REFRESH_STATUS);
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
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
                    stringbuilder.append((new StringBuilder()).append((new DateFormatSymbols()).getMonths()[-1 + Integer.parseInt(as[1])].substring(0, 3)).append(" ").append(as[2]).append(", ").append(as[0]).toString());
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

    private BluetoothAdapter getBTAdapter()
    {
        if (mBTAdapter == null)
            mBTAdapter = BluetoothAdapter.getDefaultAdapter();
        return mBTAdapter;
    }

    private static long getDateDiff(Date date, Date date1, TimeUnit timeunit)
    {
        return timeunit.convert(date1.getTime() - date.getTime(), TimeUnit.MILLISECONDS);
    }

    private LinearLayout getEPInfoWarningTextLayout()
    {
        if (mEPInfoWarningTextLayout == null)
            mEPInfoWarningTextLayout = (LinearLayout)findViewById(0x7f09013d);
        return mEPInfoWarningTextLayout;
    }

    private TextView getEPMainScreenViewStatusText()
    {
        if (mEPMainScreenViewStatusText == null)
            mEPMainScreenViewStatusText = (TextView)findViewById(0x7f090138);
        return mEPMainScreenViewStatusText;
    }

    private int getEPNameEndPoint(String s)
    {
        String as[] = Constants.PERSONALHUB_LEFT_EAR_PIECE;
        int i = as.length;
        for (int j = 0; j < i; j++)
            if (s.equalsIgnoreCase(as[j]))
            {
                Log.d("MainActivity", "[BassBoost] getEPNameEndPoint Constants.END_POINT_EP_LEFT");
                return 1;
            }

        String as1[] = Constants.PERSONALHUB_RIGHT_EAR_PIECE;
        int k = as1.length;
        for (int l = 0; l < k; l++)
            if (s.equalsIgnoreCase(as1[l]))
            {
                Log.d("MainActivity", "[BassBoost] getEPNameEndPoint Constants.END_POINT_EP_RIGHT");
                return 2;
            }

        return -1;
    }

    private PhubTextView getEarpieceLeftProgressLoadingText()
    {
        if (mEarpieceSoftwareUpdateProgressDialog == null)
        {
            mEarpieceSoftwareUpdateProgressDialog = new Dialog(this);
            mEarpieceSoftwareUpdateProgressDialog.getWindow().requestFeature(1);
            LayoutInflater layoutinflater = LayoutInflater.from(ToqApplication.getAppContext());
            mEarpieceSoftwareUpdateProgressDialog.setContentView(layoutinflater.inflate(0x7f030028, null));
            mEarpieceSecondaryProgressLayoutInflator = (LinearLayout)getLayoutInflater().inflate(0x7f030027, null);
        }
        if (mEarpieceLeftProgressLoadingText == null && mEarpieceSoftwareUpdateProgressDialog != null && mEarpieceSecondaryProgressLayoutInflator != null)
            mEarpieceLeftProgressLoadingText = (PhubTextView)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f09017d);
        if (mEarpieceLeftProgressLoadingText != null)
            mEarpieceLeftProgressLoadingText.setVisibility(0);
        return mEarpieceLeftProgressLoadingText;
    }

    private PhubTextView getEarpieceRightProgressLoadingText()
    {
        if (mEarpieceSoftwareUpdateProgressDialog == null)
        {
            mEarpieceSoftwareUpdateProgressDialog = new Dialog(this);
            mEarpieceSoftwareUpdateProgressDialog.getWindow().requestFeature(1);
            LayoutInflater layoutinflater = LayoutInflater.from(ToqApplication.getAppContext());
            mEarpieceSoftwareUpdateProgressDialog.setContentView(layoutinflater.inflate(0x7f030028, null));
            mEarpiecePrimaryProgressLayoutInflator = (LinearLayout)getLayoutInflater().inflate(0x7f030027, null);
        }
        if (mEarpieceRightProgressLoadingText == null && mEarpieceSoftwareUpdateProgressDialog != null && mEarpiecePrimaryProgressLayoutInflator != null)
            mEarpieceRightProgressLoadingText = (PhubTextView)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f09017d);
        if (mEarpieceRightProgressLoadingText != null)
            mEarpieceRightProgressLoadingText.setVisibility(0);
        return mEarpieceRightProgressLoadingText;
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

    private String getNewLinkKey()
    {
        StringBuffer stringbuffer = new StringBuffer();
        Random random = new Random();
        for (int i = 0; i < 16; i++)
        {
            stringbuffer.append(10 + random.nextInt(89) % 100);
            if (i != 15)
                stringbuffer.append(":");
        }

        return stringbuffer.toString();
    }

    private LinearLayout getNoHeadsetsPairedLayout()
    {
        if (mNoHeadsetsPairedLayout == null)
            mNoHeadsetsPairedLayout = (LinearLayout)findViewById(0x7f090153);
        return mNoHeadsetsPairedLayout;
    }

    private LinearLayout getOverFlowMenu()
    {
        if (overFlowMenu == null)
            overFlowMenu = (LinearLayout)findViewById(0x7f0900bb);
        return overFlowMenu;
    }

    private void initialiseEPLCardUI()
    {
        mEPLInflatorLayout = (FrameLayout)getLayoutInflater().inflate(0x7f030036, null);
        mEPLDeviceIcon = (ImageView)mEPLInflatorLayout.findViewById(0x7f0901d8);
        mEPLStatusIcon = (ImageView)mEPLInflatorLayout.findViewById(0x7f0901dc);
        mEPLInfoIcon = (ImageView)mEPLInflatorLayout.findViewById(0x7f0901de);
        mEPLPrimarySecondaryIcon = (TextView)mEPLInflatorLayout.findViewById(0x7f0901ef);
        mEPLIconText = (TextView)mEPLInflatorLayout.findViewById(0x7f09014a);
        mEPLStatusIconText = (TextView)mEPLInflatorLayout.findViewById(0x7f0901dd);
        mEPLStatusCaptionTextView = (PhubTextView)mEPLInflatorLayout.findViewById(0x7f0901f3);
        mEPLBatteryLevelFrameLayout = (FrameLayout)mEPLInflatorLayout.findViewById(0x7f0901f0);
        mEPLBatteryStatusPercentageText = (TextView)mEPLInflatorLayout.findViewById(0x7f0901f2);
        mEPLBatteryLevelProgressBar = (ProgressBar)mEPLInflatorLayout.findViewById(0x7f0901f1);
        mSoftwareUpdate[1] = (RelativeLayout)mEPLInflatorLayout.findViewById(0x7f0901e0);
        mSoftwareUpdateText[1] = (TextView)mEPLInflatorLayout.findViewById(0x7f0901e2);
        mVersionAndDateText[1] = (TextView)mEPLInflatorLayout.findViewById(0x7f0901e3);
        RelativeLayout relativelayout = (RelativeLayout)mEPLInflatorLayout.findViewById(0x7f0901db);
        if (Build.MANUFACTURER.contains("HTC") && Build.MODEL.contains("6435LVW"))
            relativelayout.setBackgroundColor(ToqApplication.getAppContext().getResources().getColor(0x7f070027));
        else
            relativelayout.setBackgroundColor(ToqApplication.getAppContext().getResources().getColor(0x7f070026));
        mDivider[1] = mEPLInflatorLayout.findViewById(0x7f0901e1);
        mEPLInfoIcon.setOnClickListener(mEPLInfoIconClickListener);
        BTProfilesUtil.getInstance(ToqApplication.getAppContext());
    }

    private void initialiseEPRCardUI()
    {
        mEPRInflatorLayout = (FrameLayout)getLayoutInflater().inflate(0x7f030036, null);
        mEPRDeviceIcon = (ImageView)mEPRInflatorLayout.findViewById(0x7f0901d8);
        mEPRStatusIcon = (ImageView)mEPRInflatorLayout.findViewById(0x7f0901dc);
        mEPRInfoIcon = (ImageView)mEPRInflatorLayout.findViewById(0x7f0901de);
        mEPRPrimarySecondaryIcon = (TextView)mEPRInflatorLayout.findViewById(0x7f0901ef);
        mEPRIconText = (TextView)mEPRInflatorLayout.findViewById(0x7f09014a);
        mEPRStatusIconText = (TextView)mEPRInflatorLayout.findViewById(0x7f0901dd);
        mEPRStatusCaptionTextView = (PhubTextView)mEPRInflatorLayout.findViewById(0x7f0901f3);
        mEPRBatteryLevelFrameLayout = (FrameLayout)mEPRInflatorLayout.findViewById(0x7f0901f0);
        mEPRBatteryStatusPercentageText = (TextView)mEPRInflatorLayout.findViewById(0x7f0901f2);
        mEPRBatteryLevelProgressBar = (ProgressBar)mEPRInflatorLayout.findViewById(0x7f0901f1);
        RelativeLayout relativelayout = (RelativeLayout)mEPRInflatorLayout.findViewById(0x7f0901db);
        if (Build.MANUFACTURER.contains("HTC") && Build.MODEL.contains("6435LVW"))
            relativelayout.setBackgroundColor(ToqApplication.getAppContext().getResources().getColor(0x7f070027));
        else
            relativelayout.setBackgroundColor(ToqApplication.getAppContext().getResources().getColor(0x7f070026));
        mSoftwareUpdate[2] = (RelativeLayout)mEPRInflatorLayout.findViewById(0x7f0901e0);
        mSoftwareUpdateText[2] = (TextView)mEPRInflatorLayout.findViewById(0x7f0901e2);
        mVersionAndDateText[2] = (TextView)mEPRInflatorLayout.findViewById(0x7f0901e3);
        mDivider[2] = mEPRInflatorLayout.findViewById(0x7f0901e1);
        mEPRInfoIcon.setOnClickListener(mEPRInfoIconClickListener);
    }

    private void initializeCardDetailsDialog(int i)
    {
        byte byte0 = 2;
        if (mWDEPCardDetailsDialog != null)
        {
            mWDEPCardDetailsDialog.setContentView(getLayoutInflater().inflate(0x7f03004d, null));
            mWDEPCardDetailsDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            mWDEPDetailsAgreeButton = (Button)mWDEPCardDetailsDialog.findViewById(0x7f090268);
            mWDEPDetailsAgreeButton.setOnClickListener(mainScreenButtonsListener);
            mWDEPDetailsDialogListView = (ListView)mWDEPCardDetailsDialog.findViewById(0x7f090267);
            if (i == 1 || i == byte0)
            {
                Button button = (Button)mWDEPCardDetailsDialog.findViewById(0x7f090265);
                String s = epConnectionHandler.getEndPointRole(i);
                if (i != 1)
                    byte0 = 1;
                if (s.equals("Primary"))
                    button.setText((new StringBuilder()).append("Switch to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[byte0]).toString());
                else
                if (s.equals("Secondary"))
                    button.setText((new StringBuilder()).append("Switch to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[i]).toString());
                if (epConnectionHandler.getEndPointRole(i).equals("Primary"))
                    mWDEPCardDetailsDialog.findViewById(0x7f090262).setVisibility(8);
                else
                    mWDEPCardDetailsDialog.findViewById(0x7f090262).setVisibility(8);
                button.setOnClickListener(mainScreenButtonsListener);
            }
        }
    }

    private void initializeUI()
    {
        mEulaLoadingProgressDialog = new ProgressDialog(this);
        mDisplayMetrics = new DisplayMetrics();
        mEulaDialog = new Dialog(this, 0x1030006);
        mWDEPCardDetailsDialog = new Dialog(this);
        mWDEPCardDetailsDialog.getWindow().requestFeature(1);
        Integer ainteger[] = new Integer[3];
        ainteger[0] = Integer.valueOf(0x7f0900da);
        ainteger[1] = Integer.valueOf(0x7f090156);
        ainteger[2] = Integer.valueOf(0x7f090158);
        mResourcesId = ainteger;
        Integer ainteger1[] = new Integer[3];
        ainteger1[0] = Integer.valueOf(0x7f020121);
        ainteger1[1] = Integer.valueOf(0x7f020122);
        ainteger1[2] = Integer.valueOf(0x7f0200c7);
        mStatusIcons = ainteger1;
        mDeviceIconsLinearLayout = (LinearLayout)findViewById(0x7f090155);
        mUnpairLinearLayout = (LinearLayout)findViewById(0x7f0900c8);
        mWdIconLayout = (LinearLayout)findViewById(0x7f0900da);
        Typeface typeface = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0064));
        if (typeface != null)
            changeTypeFace("'VIEW STATUS'", typeface, getEPMainScreenViewStatusText());
        mMainAppBackground = (LinearLayout)findViewById(0x7f090137);
        mBTOffLayout = (LinearLayout)findViewById(0x7f0900c5);
        mBTButton = (Button)findViewById(0x7f0900c7);
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        mConnectedColor = getResources().getColor(0x7f07000a);
        mDisconnectedColor = getResources().getColor(0x7f07000b);
        mDisconnectedText = getResources().getString(0x7f0a0018);
        mMoreEarPiecesPairedWarningLayout = (RelativeLayout)findViewById(0x7f090142);
        mOpenBTSettingsButton = (Button)findViewById(0x7f090145);
        mOpenBTSettingsButton.setOnClickListener(mainScreenButtonsListener);
        mEpLeftIconLayout = (LinearLayout)findViewById(0x7f090156);
        mEpRightIconLayout = (LinearLayout)findViewById(0x7f090158);
        ((Button)findViewById(0x7f090154)).setOnClickListener(new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent("android.settings.BLUETOOTH_SETTINGS");
                intent.setFlags(0x40000000);
                intent.setFlags(0x10000000);
                ToqApplication.getAppContext().startActivity(intent);
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
);
        mEpStereoAudioMessageLayout = (LinearLayout)findViewById(0x7f09015a);
        mEpInfoMessageLayout = (LinearLayout)findViewById(0x7f090140);
        epInfoTextview = (PhubTextView)mEpInfoMessageLayout.findViewById(0x7f090141);
        mEpBottomButtonsLayout = (LinearLayout)findViewById(0x7f09013b);
        mEpBottomButtonsLayout.setVisibility(8);
        mBassBoostBottomLayout = (LinearLayout)findViewById(0x7f090160);
        mBassBoostBottomLayout.setOnClickListener(mainScreenButtonsListener);
        mViewStatusBottomLayout = (LinearLayout)findViewById(0x7f09015e);
        mViewStatusBottomLayout.setOnClickListener(mainScreenButtonsListener);
        mChangeRolesBottomLayout = (LinearLayout)findViewById(0x7f09015f);
        mChangeRolesBottomLayout.setOnClickListener(mainScreenButtonsListener);
        epStatusCheckedTextview = (PhubTextView)findViewById(0x7f09015c);
        epStatusCheckedTextview.setClickable(false);
        epStatusNotesTextview = (PhubTextView)findViewById(0x7f09015d);
        mEpConnectingHeadsetsLayout = (LinearLayout)findViewById(0x7f090159);
        epSoftwareVersionTextview = (PhubTextView)findViewById(0x7f090152);
        mViewStatusInstallUpdateLayout = (LinearLayout)findViewById(0x7f090151);
        mViewStatusInstallUpdateLayout.setVisibility(8);
        mViewStatusInstallUpdateLayout.setOnClickListener(mainScreenButtonsListener);
        earpieceButtonsCardLayout = (LinearLayout)findViewById(0x7f090146);
        earpieceButtonsCardLayout.setVisibility(8);
        epViewStatusCardLayout = (FrameLayout)findViewById(0x7f090147);
        epViewStatusCardLayout.setOnClickListener(mainScreenButtonsListener);
        epChangeRolesCardLayout = (FrameLayout)findViewById(0x7f09014b);
        epChangeRolesCardLayout.setOnClickListener(mainScreenButtonsListener);
        epSoftwareUpdateCardLayout = (FrameLayout)findViewById(0x7f09014e);
        epSoftwareUpdateCardLayout.setOnClickListener(mainScreenButtonsListener);
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f090139);
        ImageView imageview = (ImageView)findViewById(0x7f09013a);
        LinearLayout linearlayout1 = (LinearLayout)findViewById(0x7f0900bb);
        TextView textview = (TextView)findViewById(0x7f0900ba);
        if (ToqApplication.getDeviceType() == 2)
        {
            imageview.setImageResource(0x7f020000);
            linearlayout.setBackgroundResource(0x7f0200a1);
            linearlayout1.setVisibility(8);
            textview.setText(ToqApplication.getAppContext().getResources().getString(0x7f0a001c));
            linearlayout.setPadding(0, 0, 0, 0);
            linearlayout.setOnClickListener(new android.view.View.OnClickListener() {

                final MainActivity this$0;

                public void onClick(View view)
                {
                    finish();
                }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
            }
);
        } else
        if (ToqApplication.getDeviceType() == 1)
        {
            imageview.setImageResource(0x7f0200a5);
            linearlayout.setBackgroundResource(0);
            linearlayout1.setVisibility(0);
            textview.setText(ToqApplication.getAppContext().getResources().getString(0x7f0a001b));
        }
        Constants.EP_STATUS_OK = HeadsetUtils.getString(0x7f0a017e);
        Constants.EP_STATUS_UPDATE_COMPLETE = HeadsetUtils.getString(0x7f0a017f);
        Constants.EP_STATUS_UPDATE_FAILED = HeadsetUtils.getString(0x7f0a0180);
        Constants.EP_STATUS_CONNECTING = HeadsetUtils.getString(0x7f0a0181);
        Constants.EP_STATUS_REBOOTING = HeadsetUtils.getString(0x7f0a0182);
        Constants.EP_STATUS_WAITING = HeadsetUtils.getString(0x7f0a0183);
        Constants.EP_STATUS_UNABLE_CONNECT = HeadsetUtils.getString(0x7f0a0184);
        Constants.EP_STATUS_UPDATE_REQUIRED = HeadsetUtils.getString(0x7f0a0185);
        Constants.EP_SUBSTATUS_UNABLE_CONNECT = HeadsetUtils.getString(0x7f0a0186);
        Constants.EP_SUBSTATUS_REFRESH_STATUS = "";
        Constants.EP_STATUS_UNABLE_TO_SUPPORT = HeadsetUtils.getString(0x7f0a0187);
        Constants.EP_SUBSTATUS_UNABLE_TO_SUPPORT = HeadsetUtils.getString(0x7f0a0188);
        Constants.EP_STATUS_HAS_UPDATED_SW = HeadsetUtils.getString(0x7f0a0189);
    }

    private boolean isAtleastOnePhubDevicePaired()
    {
        mIsLeftEPBonded = PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
        mIsRightEPBonded = PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
        Log.e("MainActivity", (new StringBuilder()).append(" Left EP state ").append(mIsLeftEPBonded).append(" Right EP state ").append(mIsRightEPBonded).toString());
        return mIsLeftEPBonded || mIsRightEPBonded;
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

    private boolean isRefreshRequired(int i)
    {
        String s;
        boolean flag;
        s = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_status_checked", "none");
        Log.d("MainActivity", (new StringBuilder()).append("isRefreshRequired()  LAST_STATUS_CHECKED_KEY = ").append(s).toString());
        if (s.equalsIgnoreCase("none"))
            break MISSING_BLOCK_LABEL_230;
        flag = s.equalsIgnoreCase("true");
        if (flag)
            return true;
        long l;
        SimpleDateFormat simpledateformat = new SimpleDateFormat("MMMM dd, h:mm a", Locale.US);
        Date date = simpledateformat.parse(s);
        String s1 = simpledateformat.format(new Date());
        Date date1 = simpledateformat.parse(s1);
        Log.d("MainActivity", (new StringBuilder()).append("isRefreshRequired() -  oldDate = ").append(s).append(", newDate = ").append(s1).toString());
        l = getDateDiff(date, date1, TimeUnit.MINUTES);
        Log.d("MainActivity", (new StringBuilder()).append("isRefreshRequired() -  difference = ").append(l).toString());
        if (l >= (long)i)
            break MISSING_BLOCK_LABEL_205;
        Log.d("MainActivity", "isRefreshRequired() return false");
        return false;
        Log.d("MainActivity", "isRefreshRequired() return true");
        return true;
        Exception exception1;
        exception1;
        try
        {
            Log.e("MainActivity", "exception in date conversion 2 ");
            exception1.printStackTrace();
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Exception in isRefreshRequired()").append(exception.toString()).toString());
        }
        Log.d("MainActivity", "end of isRefreshRequired() return true");
        return true;
    }

    private void loadImageIcons(int i, String s, int j, int k, TextView textview, ImageView imageview)
    {
        imageview.setImageResource(j);
        textview.setTextColor(k);
        textview.setText(s);
        switch (i)
        {
        case 2131296600: 
            mEPRDeviceIcon.setImageResource(0x7f0200a4);
            mEPRIconText.setText(getResources().getString(0x7f0a01a8));
            mEPRPrimarySecondaryIcon.setVisibility(8);
            mEPRInfoIcon.setVisibility(0);
            mEpRightIconLayout.addView(mEPRInflatorLayout);
            return;

        case 2131296598: 
            mEPLDeviceIcon.setImageResource(0x7f0200a3);
            mEPLIconText.setText(getResources().getString(0x7f0a01a7));
            mEPLPrimarySecondaryIcon.setVisibility(8);
            mEPLInfoIcon.setVisibility(0);
            mEpLeftIconLayout.addView(mEPLInflatorLayout);
            return;

        case 2131296474: 
            mWDDeviceIcon.setVisibility(4);
            mWDPrimarySecondaryIcon.setVisibility(4);
            mWDType.setVisibility(4);
            mWDIconText.setText("Watch");
            mWdIconLayout.addView(mWDInflatorLayout);
            return;
        }
    }

    private void performBassBoostAction()
    {
        avoidStyledDataFlag = false;
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_text2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
        HeadsetAction.getInstance().quitLooper();
        HeadsetAction headsetaction = HeadsetAction.getInstance();
        if (headsetaction.getCurrentAction() != 3)
        {
            Log.d(Constants.EP_TAG, "[BassBoost] Clicked ACTION_BASS_BOOST closePendingActions");
            closePendingActions();
        }
        if (headsetaction.getCurrentAction() == -1)
        {
            Log.d(Constants.EP_TAG, "Setting ACTION_BASS_BOOST");
            headsetaction.setCurrentAction(3);
        } else
        {
            Log.d(Constants.EP_TAG, "[BassBoost] ACTION_BASS_BOOST - already other action in progress");
        }
        if (headsetaction.getCurrentAction() != -1)
        {
            Log.d(Constants.EP_TAG, "Processing ACTION_BASS_BOOST");
            mViewStatusInstallUpdateLayout.setVisibility(8);
            headsetaction.processAction(3);
            int i = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getInteger("last_known_primary_headset", -1);
            if (i != -1)
            {
                if (i == 1 && mIsLeftEPBonded)
                    showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a018c));
                if (i == 2 && mIsRightEPBonded)
                    showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a0192));
            } else
            {
                if (mIsLeftEPBonded && mIsRightEPBonded)
                {
                    showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018a), HeadsetUtils.getString(0x7f0a0192));
                    return;
                }
                if (mIsLeftEPBonded)
                {
                    showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a018c));
                    return;
                }
                if (mIsRightEPBonded)
                {
                    showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a0192));
                    return;
                }
            }
        }
    }

    private void performChangeRoleAction()
    {
        Log.d("MainActivity", "...performChangeRoleAction()");
        avoidStyledDataFlag = false;
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_text2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
        HeadsetAction.getInstance().quitLooper();
        HeadsetAction headsetaction = HeadsetAction.getInstance();
        if (headsetaction.getCurrentAction() != 1)
        {
            Log.d(Constants.EP_TAG, "Clicked Change Roles closePendingActions");
            closePendingActions();
        }
        if (headsetaction.getCurrentAction() == -1)
        {
            Log.d(Constants.EP_TAG, "Setting Change Roles");
            headsetaction.setCurrentAction(1);
        } else
        {
            Log.d(Constants.EP_TAG, "ACTION_SWAP_ROLES - already other action in progress");
        }
        if (headsetaction.getCurrentAction() != -1)
        {
            Log.d("MainActivity", "Processing Change Roles");
            mViewStatusInstallUpdateLayout.setVisibility(8);
            headsetaction.processAction(1);
            showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018a), HeadsetUtils.getString(0x7f0a0192));
        }
    }

    private void performRefreshStatusAction()
    {
        avoidStyledDataFlag = false;
        emptyEarpiecePreference();
        HeadsetAction.getInstance().quitLooper();
        HeadsetAction headsetaction = HeadsetAction.getInstance();
        if (headsetaction.getCurrentAction() != 2)
        {
            Log.d(Constants.EP_TAG, "Clicked View Status closePendingActions");
            closePendingActions();
        }
        if (headsetaction.getCurrentAction() == -1)
        {
            Log.d(Constants.EP_TAG, "Setting View Status");
            headsetaction.setCurrentAction(2);
        } else
        {
            Log.d(Constants.EP_TAG, "ACTION_CHECK_STATUS - already other action in progress");
        }
        if (headsetaction.getCurrentAction() != -1)
        {
            Log.d(Constants.EP_TAG, "Processing View Status");
            mViewStatusInstallUpdateLayout.setVisibility(8);
            headsetaction.processAction(2);
            if (mIsLeftEPBonded && mIsRightEPBonded)
            {
                showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018a), HeadsetUtils.getString(0x7f0a0192));
            } else
            {
                if (mIsLeftEPBonded)
                {
                    showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a018c));
                    return;
                }
                if (mIsRightEPBonded)
                {
                    showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a0192));
                    return;
                }
            }
        }
    }

    private void performSoftwareUpdateAction()
    {
        dismissAllDialogs();
        avoidStyledDataFlag = false;
        isLeftLowBattery = false;
        isRightLowBattery = false;
        emptyEarpiecePreference();
        HeadsetAction.getInstance().quitLooper();
        HeadsetAction headsetaction = HeadsetAction.getInstance();
        if (headsetaction.getCurrentAction() != 0)
        {
            Log.d(Constants.EP_TAG, "Clicked Software Update closePendingActions");
            closePendingActions();
        }
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
        if (headsetaction.getCurrentAction() == -1)
        {
            Log.d(Constants.EP_TAG, "Setting Software Update");
            headsetaction.setCurrentAction(0);
        } else
        {
            Log.d(Constants.EP_TAG, "Install Update - already other action in progress");
        }
        if (headsetaction.getCurrentAction() != -1)
        {
            mEpConnectingHeadsetsLayout.setVisibility(8);
            if (mIsLeftEPBonded && mIsRightEPBonded)
            {
                Log.d("MainActivity", "Showing Software Update L & R");
                showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018a), HeadsetUtils.getString(0x7f0a0192));
            } else
            if (mIsLeftEPBonded && !mIsRightEPBonded)
            {
                Log.d("MainActivity", "Showing Software Update L");
                showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a0192));
            } else
            if (mIsRightEPBonded && !mIsLeftEPBonded)
            {
                Log.d("MainActivity", "Showing Software Update R");
                showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a0192));
            }
            mViewStatusInstallUpdateLayout.setVisibility(8);
            Log.d(Constants.EP_TAG, "Processing Software Update");
            headsetaction.processAction(0);
        }
    }

    private void performSoftwareUpdateInRetryAction()
    {
        isLeftLowBattery = false;
        isRightLowBattery = false;
        HeadsetAction.getInstance().quitLooper();
        HeadsetAction headsetaction = HeadsetAction.getInstance();
        if (headsetaction.getCurrentAction() != 0)
        {
            Log.d(Constants.EP_TAG, "Clicked Software Update closePendingActions");
            closePendingActions();
        }
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
        if (headsetaction.getCurrentAction() == -1)
        {
            Log.d(Constants.EP_TAG, "Setting Software Update");
            headsetaction.setCurrentAction(0);
        } else
        {
            Log.d(Constants.EP_TAG, "Install Update - already other action in progress");
        }
        if (headsetaction.getCurrentAction() != -1)
        {
            mEpConnectingHeadsetsLayout.setVisibility(8);
            mViewStatusInstallUpdateLayout.setVisibility(8);
            Log.d(Constants.EP_TAG, "Processing Software Update");
            headsetaction.processAction(0);
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
            break MISSING_BLOCK_LABEL_143;
        intentfilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
        intentfilter.addAction(Constants.ACTION_WD_DEVICE_DISASSOCIATED);
        intentfilter.addAction(Constants.ACTION_REMOTE_DEVICE_DISASSOCIATED);
        intentfilter.addAction(Constants.ACTION_EAR_PIECE_DISCONNECTED);
        intentfilter.addAction(Constants.ACTION_EAR_PIECE_UI_UPDATE);
        intentfilter.addAction(Constants.ACTION_EAR_PIECE_CONNECTED);
        intentfilter.addAction(Constants.ACTION_VERSION_INFO);
        intentfilter.addAction(Constants.ACTION_FIRMWARE_TRANSFER);
        intentfilter.addAction(Constants.ACTION_FIRMWARE_TRANSFER_PROGRESS);
        intentfilter.addAction(Constants.ACTION_EP_CONFIG_STATE_UPDATE);
        intentfilter.addAction(Constants.ACTION_EP_MORE_HEADSETS_FOUND_UPDATE);
        intentfilter.addAction("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
        intentfilter.addAction("android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED");
        intentfilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentfilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
        intentfilter.addAction("android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT");
        registerReceiver(mUIReceiver, intentfilter);
        return;
    }

    private void sendChageRoleRequestToHeadset(int i)
    {
        Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] endPointType = ").append(i).toString());
        if (i == 2)
        {
            if (leftEPAddress == null || leftEPAddress.isEmpty())
            {
                leftEPAddress = epConnectionHandler.getEndpointConnectedEPAddress(2);
                Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] L emoty  leftEPAddress = ").append(leftEPAddress).append(", addressAndLinkKeySeperator = ").append(addressAndLinkKeySeperator).append(", epLinkKey = ").append(epLinkKey).toString());
            }
            if (leftEPAddress != null && !leftEPAddress.isEmpty() && checkZerosInBluetoothAddress(leftEPAddress))
            {
                Log.d("MainActivity", "[ChangeRoles] Connected EP is all Zeros so assiging from preference");
                leftEPAddress = prefs2.getString("associated_ep_l_device_address", null);
            }
            Log.d("MainActivity", "[ChangeRoles] Validate Connected address with Paired headset L");
            if (leftEPAddress != null && leftEPAddress.endsWith(prefs2.getString("associated_ep_l_device_address", "")))
            {
                Log.d("MainActivity", "[ChangeRoles] L had proper association with R");
            } else
            {
                Log.d("MainActivity", "[ChangeRoles] Setting Zeros for L");
                Log.d("MainActivity", "[ChangeRoles] L NOT Associated with R");
                leftEPAddress = "00:00:00:00:00:00";
            }
            String s2 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_known_headset_mode", "Off");
            EPCommunicationController.getEPCommunicationController().sendbassBoostRequest(s2, 0, i);
            String s3 = (new StringBuilder()).append(leftEPAddress).append(addressAndLinkKeySeperator).append(epLinkKey).toString();
            EPCommunicationController.getEPCommunicationController().sendChageRoleRequestMessage(rightEPName, rightEPAddress, rightEPRole, s3, 0, i);
            if (rightEPRole.equalsIgnoreCase("Primary"))
            {
                Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] Storing primary headset in change roles = ").append(i).append(", rightEPRole = ").append(rightEPRole).toString());
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", i);
            }
            Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] sendChageRoleRequestMessage rightEPName = ").append(rightEPName).append(", rightEPAddress = ").append(rightEPAddress).append(", rightEPRole = ").append(rightEPRole).append(", my_R_newLinkKey = ").append(s3).append(" to enpoint ").append(i).toString());
            epConnectionHandler.setEndPointLinkKey(i, epLinkKey);
            epConnectionHandler.setEndPointLinkKey(i, epLinkKey);
            epConnectionHandler.setEndPointRole(2, rightEPRole);
        } else
        if (i == 1)
        {
            Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] endPointType = ").append(i).toString());
            if (rightEPAddress == null || rightEPAddress.isEmpty())
            {
                rightEPAddress = epConnectionHandler.getEndpointConnectedEPAddress(1);
                Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] R empty rightEPAddress = ").append(rightEPAddress).append(", addressAndLinkKeySeperator = ").append(addressAndLinkKeySeperator).append(", epLinkKey = ").append(epLinkKey).toString());
            }
            if (rightEPAddress != null && !rightEPAddress.isEmpty() && checkZerosInBluetoothAddress(rightEPAddress))
            {
                Log.d("MainActivity", "[ChangeRoles] Connected EP is all Zeros so assiging from preference");
                rightEPAddress = prefs2.getString("associated_ep_r_device_address", null);
            }
            Log.d("MainActivity", "[ChangeRoles] Validate Connected address with Paired headset R");
            if (rightEPAddress != null && rightEPAddress.endsWith(prefs2.getString("associated_ep_r_device_address", "")))
            {
                Log.d("MainActivity", "[ChangeRoles] R had proper association with L");
            } else
            {
                Log.d("MainActivity", "[ChangeRoles] Setting Zeros for R");
                Log.d("MainActivity", "[ChangeRoles] R NOT Associated with L");
                rightEPAddress = "00:00:00:00:00:00";
            }
            String s = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_known_headset_mode", "Off");
            EPCommunicationController.getEPCommunicationController().sendbassBoostRequest(s, 0, i);
            String s1 = (new StringBuilder()).append(rightEPAddress).append(addressAndLinkKeySeperator).append(epLinkKey).toString();
            EPCommunicationController.getEPCommunicationController().sendChageRoleRequestMessage(leftEPName, leftEPAddress, leftEPRole, s1, 0, i);
            if (leftEPRole.equalsIgnoreCase("Primary"))
            {
                Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] Storing primary headset in change roles = ").append(i).append(", leftEPRole = ").append(leftEPRole).toString());
                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", i);
            }
            Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] sendChageRoleRequestMessage leftEPName = ").append(leftEPName).append(", leftEPAddress = ").append(leftEPAddress).append(", leftEPRole = ").append(leftEPRole).append(", my_L_newLinkKey = ").append(s1).append(" to enpoint ").append(i).toString());
            epConnectionHandler.setEndPointLinkKey(i, epLinkKey);
            epConnectionHandler.setEndPointLinkKey(i, epLinkKey);
            epConnectionHandler.setEndPointRole(1, leftEPRole);
            return;
        }
    }

    private void setTypeFaceForButtonsText()
    {
        if (ToqData.getInstance().getRegularTypeFace() != null)
            mBTButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
    }

    private void setWatchDetailsListContent(int i)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
label0:
        {
            SharedPreferences sharedpreferences;
label1:
            {
                mWatchDetailsListTitles = new ArrayList();
                mWatchDetailsListContents = new ArrayList();
                mWatchDetailsListContents.clear();
                ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
                sharedpreferences = null;
                if (connectionfactory != null)
                {
                    Context context = ConnectionFactory.getConnectionFactory().getContext();
                    sharedpreferences = null;
                    if (context != null)
                        sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("watch_details_pref", 0);
                }
                s = null;
                s1 = null;
                s2 = null;
                s3 = null;
                s4 = null;
                if (sharedpreferences == null)
                    break label0;
                s1 = sharedpreferences.getString((new StringBuilder()).append("device_name").append(i).toString(), "Not Available");
                if (i != 1)
                {
                    s = null;
                    if (i != 2)
                        break label1;
                }
                s = epConnectionHandler.getEpBatteryIndPercentage(i);
                if (s == null || s.isEmpty())
                    s = "Not Available";
            }
            s4 = sharedpreferences.getString((new StringBuilder()).append("software_revision").append(i).toString(), "Not Available");
            s2 = sharedpreferences.getString((new StringBuilder()).append("hardware_revision").append(i).toString(), "Not Available");
            s3 = sharedpreferences.getString((new StringBuilder()).append("serial_number").append(i).toString(), "Not Available");
        }
        TextView textview = (TextView)mWDEPCardDetailsDialog.findViewById(0x7f090260);
        if (textview != null)
            textview.setText((new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[i]).append(" Details").toString());
        mWatchDetailsListTitles.add("Device Name");
        mWatchDetailsListContents.add(s1);
        if (i == 1 || i == 2)
        {
            mWatchDetailsListTitles.add("Battery Level");
            if (s == null || TextUtils.isEmpty(s.trim()))
                s = "Not Available";
            String s5 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "");
            String s6 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "");
            if (i == 1 && s5.equals(Constants.EP_STATUS_UNABLE_CONNECT))
                s = "Not Available";
            if (i == 2 && s6.equals(Constants.EP_STATUS_UNABLE_CONNECT))
                s = "Not Available";
            mWatchDetailsListContents.add(s);
        }
        mWatchDetailsListTitles.add("Software Version");
        mWatchDetailsListContents.add(s4);
        mWatchDetailsListTitles.add("Hardware Version");
        mWatchDetailsListContents.add(s2);
        mWatchDetailsListTitles.add("Serial Number");
        if ((i == 1 || i == 2) && (s3 == null || TextUtils.isEmpty(s3.trim())))
            s3 = "Not Available";
        mWatchDetailsListContents.add(s3);
    }

    private void showEarpieceBassBoostDialog(final int selected, final int endPointType)
    {
        if (mEarpieceBassBoostDialog != null)
        {
            Log.d("MainActivity", "[BassBoost] showEarpieceBassBoostDialog");
            mEarpieceBassBoostDialog.setContentView(getLayoutInflater().inflate(0x7f030021, null));
            mEarpieceBassBoostDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            final Timer timer = new Timer();
            final Button bassBoostDoneButton = (Button)mEarpieceBassBoostDialog.findViewById(0x7f090133);
            final RadioGroup bassBoostDialogRadioGroup = (RadioGroup)mEarpieceBassBoostDialog.findViewById(0x7f09012e);
            bassBoostDoneButton.setOnClickListener(new android.view.View.OnClickListener() {

                final MainActivity this$0;
                final RadioGroup val$bassBoostDialogRadioGroup;
                final Button val$bassBoostDoneButton;
                final int val$endPointType;
                final int val$selected;
                final Timer val$timer;

                public void onClick(View view)
                {
                    Log.d("MainActivity", "[BassBoost] onClick of Done");
                    View view1 = bassBoostDialogRadioGroup.getChildAt(selected);
                    int k = bassBoostDialogRadioGroup.getCheckedRadioButtonId();
                    if (view1 != null && view1.getId() != k)
                    {
                        if (bassBoostDialogRadioGroup != null)
                            bassBoostDialogRadioGroup.setBackgroundResource(0x7f0200b9);
                        String s = "Off";
                        switch (k)
                        {
                        case 2131296562: 
                            Log.d("MainActivity", "[BassBoost] high");
                            s = "High";
                            break;

                        case 2131296561: 
                            Log.d("MainActivity", "[BassBoost] medium");
                            s = "Medium";
                            break;

                        case 2131296560: 
                            Log.d("MainActivity", "[BassBoost] low");
                            s = "Low";
                            break;

                        case 2131296559: 
                            Log.d("MainActivity", "[BassBoost] off");
                            s = "Off";
                            break;

                        default:
                            Log.d("MainActivity", "[BassBoost] default off");
                            break;
                        }
                        Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] Sending sendbassBoostRequest to the END POINT = ").append(endPointType).toString());
                        EPCommunicationController.getEPCommunicationController().sendbassBoostRequest(s, 0, endPointType);
                        mEarpieceBassBoostDialog.findViewById(0x7f090134).setVisibility(0);
                        bassBoostDoneButton.setVisibility(8);
                        bassBoostDialogRadioGroup.setEnabled(false);
                        for (int l = 0; l < bassBoostDialogRadioGroup.getChildCount(); l++)
                        {
                            RadioButton radiobutton = (RadioButton)bassBoostDialogRadioGroup.getChildAt(l);
                            radiobutton.setEnabled(false);
                            radiobutton.setTextColor(getResources().getColor(0x7f07001e));
                        }

                        timer.schedule(new TimerTask() {

                            final _cls10 this$1;

                            public void run()
                            {
                                runOnUiThread(new Runnable() {

                                    final _cls1 this$2;

                                    public void run()
                                    {
                                        Log.d("MainActivity", "[BassBoost] dismiss dialog box");
                                        if (mEarpieceBassBoostDialog != null)
                                            mEarpieceBassBoostDialog.dismiss();
                                    }

            
            {
                this$2 = _cls1.this;
                Object();
            }
                                }
);
                            }

            
            {
                this$1 = _cls10.this;
                TimerTask();
            }
                        }
, 5000L);
                    } else
                    {
                        Log.d("MainActivity", "[BassBoost] dismiss dialog box since last selected bass mode is same as current mode");
                        if (mEarpieceBassBoostDialog != null)
                        {
                            mEarpieceBassBoostDialog.dismiss();
                            return;
                        }
                    }
                }

            
            {
                this$0 = MainActivity.this;
                bassBoostDialogRadioGroup = radiogroup;
                selected = i;
                endPointType = j;
                bassBoostDoneButton = button;
                timer = timer1;
                Object();
            }
            }
);
            switch (selected)
            {
            case 3: // '\003'
                bassBoostDialogRadioGroup.check(0x7f090132);
                break;

            case 2: // '\002'
                bassBoostDialogRadioGroup.check(0x7f090131);
                break;

            case 1: // '\001'
                bassBoostDialogRadioGroup.check(0x7f090130);
                break;

            default:
                bassBoostDialogRadioGroup.check(0x7f09012f);
                break;
            }
            int i = bassBoostDialogRadioGroup.getCheckedRadioButtonId();
            ((RadioButton)mEarpieceBassBoostDialog.findViewById(i)).setTextColor(0xff000000);
            bassBoostDialogRadioGroup.setOnCheckedChangeListener(new android.widget.RadioGroup.OnCheckedChangeListener() {

                final MainActivity this$0;
                final RadioGroup val$bassBoostDialogRadioGroup;

                public void onCheckedChanged(RadioGroup radiogroup, int k)
                {
                    for (int l = 0; l < bassBoostDialogRadioGroup.getChildCount(); l++)
                        ((RadioButton)bassBoostDialogRadioGroup.getChildAt(l)).setTextColor(getResources().getColor(0x7f07001e));

                    ((RadioButton)mEarpieceBassBoostDialog.findViewById(k)).setTextColor(0xff000000);
                }

            
            {
                this$0 = MainActivity.this;
                bassBoostDialogRadioGroup = radiogroup;
                Object();
            }
            }
);
            if (ToqData.getInstance().getRegularTypeFace() != null)
            {
                bassBoostDoneButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
                for (int j = 0; j < bassBoostDialogRadioGroup.getChildCount(); j++)
                    ((RadioButton)bassBoostDialogRadioGroup.getChildAt(j)).setTypeface(ToqData.getInstance().getRegularTypeFace());

            }
            mEarpieceBassBoostDialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                final MainActivity this$0;

                public void onDismiss(DialogInterface dialoginterface)
                {
                    Log.d("MainActivity", "[BassBoost] onDismiss updating UI");
                    HeadsetAction.getInstance().unRegisterHeadsetActionResponseReceiver();
                    HeadsetAction.getInstance().setCurrentAction(-1);
                    closePendingActions();
                    HeadsetAction.getInstance().quitLooper();
                    MainActivity.avoidStyledDataFlag = false;
                    updateUI();
                    updateEarpieceUI();
                }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
            }
);
            mEarpieceBassBoostDialog.setCanceledOnTouchOutside(false);
            mEarpieceBassBoostDialog.show();
        }
    }

    private void showEarpieceFirmwareUpdateProgressDialog()
    {
        dismissAllDialogs();
        if (mEarpieceSoftwareUpdateProgressDialog != null)
        {
            LayoutInflater layoutinflater = LayoutInflater.from(ToqApplication.getAppContext());
            mEarpieceSoftwareUpdateProgressDialog.setContentView(layoutinflater.inflate(0x7f030028, null));
            mEarpieceSoftwareUpdateProgressDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            mEarpieceSoftwareUpdateProgressDialog.setCancelable(false);
            mEarpieceRetryContinuteButtonsLayout = (LinearLayout)mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f09018c);
            mEarpieceRetryContinuteButtonsLayout.setVisibility(8);
            mEarpieceSoftwareUpdateContinueButton = (Button)mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f09018f);
            mEarpieceSoftwareUpdateRetryButton = (Button)mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f09018d);
            eEarpieceSoftwareUpdateButtonDivder = mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f09018e);
            mEarpiecePrimaryProgressLayout = (LinearLayout)mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f090188);
            mEarpieceSecondaryProgressLayout = (LinearLayout)mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f09018a);
            mEarpieceSecondaryProgressLayoutInflator = (LinearLayout)getLayoutInflater().inflate(0x7f030027, null);
            mEarpiecePrimaryProgressLayoutInflator = (LinearLayout)getLayoutInflater().inflate(0x7f030027, null);
            mEarpieceRightProgressLoadingLayout = (LinearLayout)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f09017b);
            mEarpieceRightProgressLoadingText = getEarpieceRightProgressLoadingText();
            mEarpieceRightDisconnectInfo = (PhubTextView)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f090181);
            mEarpieceRightProgressCompleteIcon = (ImageView)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f090182);
            mEarpieceRightFirmwareProgressLayout = (LinearLayout)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f090183);
            mEarpieceRightFirmwareProgressText = (PhubTextView)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f090185);
            mEarpieceRightFirmwareProgressBar = (ProgressBar)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f090184);
            mEarpieceRightIcon = (ImageView)mEarpiecePrimaryProgressLayoutInflator.findViewById(0x7f090180);
            mEarpieceLeftProgressLoadingLayout = (LinearLayout)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f09017b);
            mEarpieceLeftProgressLoadingText = getEarpieceLeftProgressLoadingText();
            mEarpieceLeftDisconnectInfo = (PhubTextView)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f090181);
            mEarpieceLeftProgressCompleteIcon = (ImageView)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f090182);
            mEarpieceLeftFirmwareProgressLayout = (LinearLayout)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f090183);
            mEarpieceLeftFirmwareProgressText = (PhubTextView)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f090185);
            mEarpieceLeftFirmwareProgressBar = (ProgressBar)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f090184);
            mEarpieceLeftIcon = (ImageView)mEarpieceSecondaryProgressLayoutInflator.findViewById(0x7f090180);
            mEarpieceLeftIcon.setImageResource(0x7f0200c1);
            mEarpieceRightIcon.setImageResource(0x7f0200c6);
            switch (EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getInteger("last_known_primary_headset", -1))
            {
            case 2: // '\002'
                mEarpiecePrimaryProgressLayout.addView(mEarpiecePrimaryProgressLayoutInflator);
                mEarpieceSecondaryProgressLayout.addView(mEarpieceSecondaryProgressLayoutInflator);
                break;

            case 1: // '\001'
                mEarpiecePrimaryProgressLayout.addView(mEarpieceSecondaryProgressLayoutInflator);
                mEarpieceSecondaryProgressLayout.addView(mEarpiecePrimaryProgressLayoutInflator);
                break;

            default:
                mEarpiecePrimaryProgressLayout.addView(mEarpiecePrimaryProgressLayoutInflator);
                mEarpieceSecondaryProgressLayout.addView(mEarpieceSecondaryProgressLayoutInflator);
                break;
            }
            mEarpieceRightDisconnectInfo.setVisibility(4);
            mEarpieceLeftDisconnectInfo.setVisibility(4);
            if (ToqData.getInstance().getRegularTypeFace() != null)
            {
                mEarpieceSoftwareUpdateContinueButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
                mEarpieceSoftwareUpdateRetryButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            }
            mEarpieceSoftwareUpdateRetryButton.setOnClickListener(new android.view.View.OnClickListener() {

                final MainActivity this$0;

                public void onClick(View view)
                {
                    getEarpieceRightProgressLoadingText().setText("");
                    getEarpieceLeftProgressLoadingText().setText("");
                    dismissAllDialogs();
                    if (mIsLeftEPBonded && mIsRightEPBonded)
                    {
                        Log.d("MainActivity", "Showing Software Update L & R");
                        showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018a), HeadsetUtils.getString(0x7f0a0192));
                    } else
                    if (mIsLeftEPBonded && !mIsRightEPBonded)
                    {
                        Log.d("MainActivity", "Showing Software Update L");
                        showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a018c));
                    } else
                    if (mIsRightEPBonded && !mIsLeftEPBonded)
                    {
                        Log.d("MainActivity", "Showing Software Update R");
                        showEarpieceProgressDialog(HeadsetUtils.getString(0x7f0a018b), HeadsetUtils.getString(0x7f0a0192));
                    }
                    HeadsetAction.getInstance().setCurrentAction(-1);
                    mViewStatusInstallUpdateLayout.setVisibility(8);
                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_text2", "");
                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
                    performSoftwareUpdateInRetryAction();
                }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
            }
);
            mEarpieceSoftwareUpdateContinueButton.setOnClickListener(new android.view.View.OnClickListener() {

                final MainActivity this$0;

                public void onClick(View view)
                {
                    HeadsetAction.getInstance().setCurrentAction(-1);
                    MainActivity.mEarpieceSoftwareUpdateProgressDialog.dismiss();
                    performRefreshStatusAction();
                }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
            }
);
            mEarpieceRightProgressLoadingText = null;
            mEarpieceLeftProgressLoadingText = null;
            mEarpieceLeftFirmwareProgressLayout.setVisibility(4);
            getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_WAITING);
            getEarpieceLeftProgressLoadingText().setTextColor(0xff000000);
            mEarpieceLeftProgressCompleteIcon.setVisibility(8);
            mEarpieceLeftFirmwareProgressLayout.setVisibility(4);
            getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_WAITING);
            getEarpieceRightProgressLoadingText().setTextColor(0xff000000);
            mEarpieceLeftProgressCompleteIcon.setVisibility(8);
            if (EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "").equals(Constants.EP_STATUS_OK))
            {
                mEarpieceRightDisconnectInfo.setVisibility(4);
                getEarpieceRightProgressLoadingText().setText(Constants.EP_STATUS_HAS_UPDATED_SW);
                getEarpieceRightProgressLoadingText().setTextColor(Color.parseColor("#74c594"));
                mEarpieceRightProgressCompleteIcon.setVisibility(0);
            }
            if (EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "").equals(Constants.EP_STATUS_OK))
            {
                mEarpieceLeftDisconnectInfo.setVisibility(4);
                getEarpieceLeftProgressLoadingText().setText(Constants.EP_STATUS_HAS_UPDATED_SW);
                getEarpieceLeftProgressLoadingText().setTextColor(Color.parseColor("#74c594"));
                mEarpieceLeftProgressCompleteIcon.setVisibility(0);
            }
            ProgressDialog progressdialog = new ProgressDialog(layoutinflater.getContext());
            progressdialog.setProgressStyle(1);
            progressdialog.setProgress(100);
            progressdialog.setMax(100);
            mEarpieceSoftwareUpdateProgressDialog.setCancelable(false);
            mEarpieceSoftwareUpdateProgressDialog.show();
        }
    }

    private void showEarpieceInfoDialog(String s, String s1)
    {
        if (mEarpieceInfoDialog != null)
        {
            dismissEarpieceInfoDialog();
            mEarpieceInfoDialog.setContentView(getLayoutInflater().inflate(0x7f030025, null));
            mEarpieceInfoDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            mEarpieceInfoDialog.setCancelable(false);
            ((PhubTextView)mEarpieceInfoDialog.findViewById(0x7f090172)).setText(s);
            ((PhubTextView)mEarpieceInfoDialog.findViewById(0x7f090174)).setText(s1);
            Button button = (Button)mEarpieceInfoDialog.findViewById(0x7f090177);
            button.setVisibility(0);
            button.setText("OK");
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final MainActivity this$0;

                public void onClick(View view)
                {
                    dismissEarpieceInfoDialog();
                    dismissAllDialogs();
                }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
            }
);
            if (ToqData.getInstance().getRegularTypeFace() != null)
                button.setTypeface(ToqData.getInstance().getRegularTypeFace());
            mEarpieceInfoDialog.findViewById(0x7f090178).setVisibility(8);
            ((Button)mEarpieceInfoDialog.findViewById(0x7f090179)).setVisibility(8);
            mEarpieceInfoDialog.show();
        }
    }

    private void showEarpieceProgressDialog(String s, String s1)
    {
        if (mEarpieceProgressDialog != null && mEarpieceProgressDialog.isShowing())
            mEarpieceProgressDialog.dismiss();
        if (mEarpieceProgressDialog != null && !mEarpieceProgressDialog.isShowing())
        {
            LayoutInflater layoutinflater = LayoutInflater.from(ToqApplication.getAppContext());
            mEarpieceProgressDialog.setContentView(layoutinflater.inflate(0x7f030026, null));
            mEarpieceProgressDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            loadingTextView = (PhubTextView)mEarpieceProgressDialog.findViewById(0x7f09017d);
            loadingSubTextView = (PhubTextView)mEarpieceProgressDialog.findViewById(0x7f09017e);
            if (s != null && !TextUtils.isEmpty(s))
                loadingTextView.setText(s);
            else
                loadingTextView.setText(HeadsetUtils.getString(0x7f0a018a));
            if (s1 != null && !TextUtils.isEmpty(s1))
                loadingSubTextView.setText(s1);
            else
                loadingSubTextView.setText(HeadsetUtils.getString(0x7f0a0192));
            loadingTextView.setVisibility(0);
            mEarpieceProgressDialog.setCancelable(false);
            mEarpieceProgressDialog.show();
        }
    }

    private void showEarpieceRoleChangeDialog(String s, String s1)
    {
        if (mEarpieceChangeRolesDialog != null)
        {
            Constants.isChangeRolesActive = false;
            mEarpieceChangeRolesDialog.setContentView(getLayoutInflater().inflate(0x7f030023, null));
            if (s1 != null && s != null)
            {
                ((PhubTextView)mEarpieceChangeRolesDialog.findViewById(0x7f090161)).setText(s);
                ((PhubTextView)mEarpieceChangeRolesDialog.findViewById(0x7f090162)).setText(s1);
                ((PhubTextView)mEarpieceChangeRolesDialog.findViewById(0x7f090162)).setVisibility(0);
            } else
            {
                ((PhubTextView)mEarpieceChangeRolesDialog.findViewById(0x7f090162)).setVisibility(8);
            }
            mEarpieceChangeRolesDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            epLeftLabel = (PhubTextView)mEarpieceChangeRolesDialog.findViewById(0x7f090163);
            epRightLabel = (PhubTextView)mEarpieceChangeRolesDialog.findViewById(0x7f090167);
            epChangeRolesSwitch = (PhubCustomSwitchView)mEarpieceChangeRolesDialog.findViewById(0x7f090165);
            if (!isJellyBean)
                epChangeRolesSwitchDisabled = (PhubCustomSwitchView)mEarpieceChangeRolesDialog.findViewById(0x7f090166);
            epRolesButtonLayout = (LinearLayout)mEarpieceChangeRolesDialog.findViewById(0x7f09016a);
            epRolesUpdateProgressLayout = (LinearLayout)mEarpieceChangeRolesDialog.findViewById(0x7f09016d);
            epChangeRolesSecondaryTextHeadset = (PhubTextView)mEarpieceChangeRolesDialog.findViewById(0x7f090168);
            connectionFactoryObj = ConnectionFactory.getConnectionFactory();
            epLinkKey = epConnectionHandler.getEndpointCommonLinkKey();
            leftEPName = prefs2.getString("associated_ep_l_device_name", null);
            rightEPName = prefs2.getString("associated_ep_r_device_name", null);
            leftEPAddress = prefs2.getString("associated_ep_l_device_address", null);
            rightEPAddress = prefs2.getString("associated_ep_r_device_address", null);
            leftEPRole = epConnectionHandler.getEndPointRole(1);
            rightEPRole = epConnectionHandler.getEndPointRole(2);
            leftEPRoleFirst = leftEPRole;
            rightEPRoleFirst = rightEPRole;
            addressAndLinkKeySeperator = ":00:00:10:";
            String s2 = epConnectionHandler.getEndPointLinkKey(1);
            String s3 = epConnectionHandler.getEndPointLinkKey(2);
            Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] epLinkKey = ").append(epLinkKey).append(", leftEPName = ").append(leftEPName).append(", rightEPName = ").append(rightEPName).append(", leftEPAddress = ").append(leftEPAddress).append(", rightEPAddress = ").append(rightEPAddress).append(", leftEPRole = ").append(leftEPRole).append(", rightEPRole = ").append(rightEPRole).append(", leftLinkKey = ").append(s2).append(", rightLinkKey = ").append(s3).toString());
            isLinkKeyGenerated = Boolean.valueOf(false);
            if (s2.equals(s3) && !s2.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00") && !s3.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"))
            {
                epLinkKey = s2;
            } else
            {
                epLinkKey = getNewLinkKey();
                Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] Created new link key.. epLinkKey = ").append(epLinkKey).toString());
                isLinkKeyGenerated = Boolean.valueOf(true);
            }
            if (leftEPRole.contains("Primary") && rightEPRole.contains("Primary"))
            {
                s1 = (new StringBuilder()).append(s1).append("\nBoth headsets are primary").toString();
                epChangeRolesSwitch.setChecked(true);
                rightEPRole = "Primary";
                leftEPRole = "Secondary";
            } else
            if (leftEPRole.contains("Secondary") && rightEPRole.contains("Secondary"))
            {
                s1 = (new StringBuilder()).append(s1).append("\nBoth headsets are secondary").toString();
                epChangeRolesSwitch.setChecked(true);
                rightEPRole = "Primary";
                leftEPRole = "Secondary";
            }
            if (rightEPRole.contains("Primary") && leftEPRole.contains("Secondary"))
                epChangeRolesSwitch.setChecked(true);
            else
                epChangeRolesSwitch.setChecked(false);
            if (s1 != null)
                Log.e("MainActivity", (new StringBuilder()).append("Headsets roles are = ").append(s1).toString());
            if (epChangeRolesSwitch.isChecked())
                epChangeRolesSecondaryTextHeadset.setText(getResources().getString(0x7f0a01dc));
            else
                epChangeRolesSecondaryTextHeadset.setText(getResources().getString(0x7f0a01db));
            final Button saveButton = (Button)mEarpieceChangeRolesDialog.findViewById(0x7f09016c);
            Log.d("MainActivity", (new StringBuilder()).append("..TEST = 3 = ").append(HeadsetAction.getInstance().getCurrentAction()).toString());
            final Button cancelButton = (Button)mEarpieceChangeRolesDialog.findViewById(0x7f09016b);
            if (ToqData.getInstance().getRegularTypeFace() != null)
            {
                saveButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
                cancelButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            }
            saveButton.setOnTouchListener(new android.view.View.OnTouchListener() {

                final MainActivity this$0;
                final Button val$cancelButton;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if (motionevent.getAction() == 0)
                    {
                        cancelButton.setClickable(false);
                        cancelButton.setFocusable(false);
                        cancelButton.setFocusableInTouchMode(false);
                    } else
                    if (motionevent.getAction() == 1)
                    {
                        Constants.isChangeRolesActive = true;
                        HeadsetAction.getInstance().unRegisterHeadsetActionResponseReceiver();
                        if (leftEPRoleFirst.equalsIgnoreCase(leftEPRole) && rightEPRoleFirst.equalsIgnoreCase(rightEPRole) && !isLinkKeyGenerated.booleanValue())
                        {
                            String s4 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_known_headset_mode", "Off");
                            EPCommunicationController.getEPCommunicationController().sendbassBoostRequest(s4, 0, 1);
                            EPCommunicationController.getEPCommunicationController().sendbassBoostRequest(s4, 0, 2);
                            dismissEarpieceRoleChangeDialog();
                            Log.d("MainActivity", "[ChangeRoles] No need to change roles, You already have the same roles");
                            HeadsetAction.getInstance().unRegisterHeadsetActionResponseReceiver();
                            HeadsetAction.getInstance().setCurrentAction(-1);
                            closePendingActions();
                            HeadsetAction.getInstance().quitLooper();
                            MainActivity.avoidStyledDataFlag = false;
                            updateUI();
                            updateEarpieceUI();
                            return true;
                        }
                        Log.d("MainActivity", (new StringBuilder()).append("[ChangeRoles] rightEPRole = ").append(rightEPRole).toString());
                        if (rightEPRole.equalsIgnoreCase("Primary"))
                        {
                            Log.d("MainActivity", "[ChangeRoles] sendChageRoleRequestToHeadset to left <<1>>");
                            sendChageRoleRequestToHeadset(2);
                        } else
                        {
                            Log.d("MainActivity", "[ChangeRoles] sendChageRoleRequestToHeadset to Right <<1>>");
                            sendChageRoleRequestToHeadset(1);
                        }
                        epRolesUpdateProgressLayout.setVisibility(0);
                        epRolesButtonLayout.setVisibility(8);
                        epLeftLabel.setTextColor(getResources().getColor(0x7f07001f));
                        epRightLabel.setTextColor(getResources().getColor(0x7f07001f));
                        if (isJellyBean)
                        {
                            epChangeRolesSwitch.setThumbDrawable(getResources().getDrawable(0x7f0200b6));
                            epChangeRolesSwitch.setTrackDrawable(getResources().getDrawable(0x7f0200b9));
                            epChangeRolesSwitch.setEnabled(false);
                        } else
                        {
                            if (epChangeRolesSwitch.getVisibility() == 0)
                                epChangeRolesSwitch.setVisibility(8);
                            epChangeRolesSwitchDisabled.setVisibility(0);
                            epChangeRolesSwitchDisabled.setChecked(epChangeRolesSwitch.isChecked());
                            epChangeRolesSwitchDisabled.setEnabled(false);
                        }
                        MainActivity.mChangeRoleSecondsCounter = 0;
                        MainActivity.mChangeRoleHandler = new Handler();
                        MainActivity.mChangeRoleHandler.removeCallbacks(mChangeRoleTimeTask);
                        MainActivity.mChangeRoleHandler.postDelayed(mChangeRoleTimeTask, 1000L);
                        return true;
                    }
                    return false;
                }

            
            {
                this$0 = MainActivity.this;
                cancelButton = button;
                Object();
            }
            }
);
            cancelButton.setOnTouchListener(new android.view.View.OnTouchListener() {

                final MainActivity this$0;
                final Button val$saveButton;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if (motionevent.getAction() == 0)
                    {
                        saveButton.setClickable(false);
                        saveButton.setFocusable(false);
                        saveButton.setFocusableInTouchMode(false);
                    } else
                    if (motionevent.getAction() == 1)
                    {
                        connectionFactoryObj = ConnectionFactory.getConnectionFactory();
                        MainActivity.mEarpieceChangeRolesDialog.dismiss();
                        HeadsetAction.getInstance().unRegisterHeadsetActionResponseReceiver();
                        HeadsetAction.getInstance().setCurrentAction(-1);
                        closePendingActions();
                        HeadsetAction.getInstance().quitLooper();
                        if (connectionFactoryObj != null)
                        {
                            BTConnectionManager btconnectionmanager = BTConnectionManager.getConnectionManager(connectionFactoryObj.getContext());
                            if (btconnectionmanager != null)
                            {
                                btconnectionmanager.disassociatePhoneEPLeft();
                                btconnectionmanager.disassociatePhoneEPRight();
                            }
                        }
                        updateUI();
                        updateEarpieceUI();
                        return true;
                    }
                    return false;
                }

            
            {
                this$0 = MainActivity.this;
                saveButton = button;
                Object();
            }
            }
);
            epChangeRolesSwitch.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

                final MainActivity this$0;

                public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
                {
                    if (flag)
                    {
                        epChangeRolesSecondaryTextHeadset.setText(getResources().getString(0x7f0a01dc));
                        rightEPRole = "Primary";
                        leftEPRole = "Secondary";
                        return;
                    } else
                    {
                        epChangeRolesSecondaryTextHeadset.setText(getResources().getString(0x7f0a01db));
                        rightEPRole = "Secondary";
                        leftEPRole = "Primary";
                        return;
                    }
                }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
            }
);
            mEarpieceChangeRolesDialog.setCancelable(false);
            mEarpieceChangeRolesDialog.show();
        }
    }

    private void showEarpieceRoleChangeSingleHeadsetDialog(String s, String s1, String s2)
    {
        if (mEarpieceChangeRoleInSingleHeadsetDialog != null)
        {
            Constants.isChangeRolesActive = false;
            dismissAllDialogs();
            mEarpieceChangeRoleInSingleHeadsetDialog.setContentView(getLayoutInflater().inflate(0x7f030024, null));
            ((PhubTextView)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f090161)).setText(s);
            ((PhubTextView)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f090170)).setText(s1);
            ((PhubTextView)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f090170)).setVisibility(0);
            ((PhubTextView)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f090162)).setText(s2);
            ((PhubTextView)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f090162)).setVisibility(0);
            epRolesButtonLayout = (LinearLayout)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f09016a);
            epRolesUpdateProgressLayout = (LinearLayout)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f09016d);
            mEarpieceChangeRoleInSingleHeadsetDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            connectionFactoryObj = ConnectionFactory.getConnectionFactory();
            final SharedPreferences prefs2 = ToqData.getInstance().getAssociatedDevicePrefs();
            epLinkKey = epConnectionHandler.getEndpointCommonLinkKey();
            leftEPName = prefs2.getString("associated_ep_l_device_name", null);
            rightEPName = prefs2.getString("associated_ep_r_device_name", null);
            leftEPAddress = prefs2.getString("associated_ep_l_device_address", null);
            rightEPAddress = prefs2.getString("associated_ep_r_device_address", null);
            leftEPRole = epConnectionHandler.getEndPointRole(1);
            rightEPRole = epConnectionHandler.getEndPointRole(2);
            leftEPRoleFirst = leftEPRole;
            rightEPRoleFirst = rightEPRole;
            rightEPRole = "Primary";
            leftEPRole = "Primary";
            addressAndLinkKeySeperator = ":00:00:10:";
            String s3 = epConnectionHandler.getEndPointLinkKey(1);
            String s4 = epConnectionHandler.getEndPointLinkKey(2);
            Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] epLinkKey = ").append(epLinkKey).append(", leftEPName = ").append(leftEPName).append(", rightEPName = ").append(rightEPName).append(", leftEPAddress = ").append(leftEPAddress).append(", rightEPAddress = ").append(rightEPAddress).append(", leftEPRole = ").append(leftEPRole).append(", rightEPRole = ").append(rightEPRole).append(", leftLinkKey = ").append(s3).append(", rightLinkKey = ").append(s4).toString());
            if (s3.equals(s4) && !s3.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00") && !s4.equals("00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"))
                epLinkKey = s3;
            else
                epLinkKey = getNewLinkKey();
            final Button useForCallsButton = (Button)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f090171);
            HeadsetAction.getInstance().setCurrentAction(-1);
            final Button cancelButton = (Button)mEarpieceChangeRoleInSingleHeadsetDialog.findViewById(0x7f09016b);
            useForCallsButton.setOnTouchListener(new android.view.View.OnTouchListener() {

                final MainActivity this$0;
                final Button val$cancelButton;
                final SharedPreferences val$prefs2;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if (motionevent.getAction() == 0)
                    {
                        cancelButton.setClickable(false);
                        cancelButton.setFocusable(false);
                        cancelButton.setFocusableInTouchMode(false);
                        return false;
                    }
                    if (motionevent.getAction() == 1)
                    {
                        Constants.isChangeRolesActive = true;
                        String s5 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "");
                        String s6 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "");
                        if (!mIsRightEPBonded || mIsLeftEPBonded && !s6.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT))
                        {
                            if ((!mIsRightEPBonded || s5.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT)) && mIsLeftEPBonded && true)
                            {
                                Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] Left currentEndpoint = ").append(1).toString());
                                if (rightEPAddress == null || rightEPAddress.isEmpty())
                                {
                                    rightEPAddress = epConnectionHandler.getEndpointConnectedEPAddress(1);
                                    Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] R empty rightEPAddress = ").append(rightEPAddress).append(", addressAndLinkKeySeperator = ").append(addressAndLinkKeySeperator).append(", epLinkKey = ").append(epLinkKey).toString());
                                }
                                Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] R empty rightEPAddres... = ").append(rightEPAddress).toString());
                                if (rightEPAddress != null && !rightEPAddress.isEmpty() && MainActivity.checkZerosInBluetoothAddress(rightEPAddress))
                                {
                                    Log.d("MainActivity", "[ChangeRolesSingle] Connected EP is all Zeros so assiging from preference");
                                    rightEPAddress = prefs2.getString("associated_ep_r_device_address", null);
                                }
                                Log.d("MainActivity", "[ChangeRolesSingle] Validate Connected address with Paired headset R");
                                if (mIsRightEPBonded)
                                    if (rightEPAddress != null && rightEPAddress.endsWith(prefs2.getString("associated_ep_r_device_address", "")))
                                    {
                                        Log.d("MainActivity", "[ChangeRolesSingle] R had proper association with L");
                                    } else
                                    {
                                        Log.d("MainActivity", "[ChangeRolesSingle] Setting Zeros for R");
                                        Log.d("MainActivity", "[ChangeRolesSingle] R NOT Associated with L");
                                        rightEPAddress = "00:00:00:00:00:00";
                                    }
                                String s7 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_known_headset_mode", "Off");
                                EPCommunicationController.getEPCommunicationController().sendbassBoostRequest(s7, 0, 1);
                                String s8 = (new StringBuilder()).append(rightEPAddress).append(addressAndLinkKeySeperator).append(epLinkKey).toString();
                                EPCommunicationController.getEPCommunicationController().sendChageRoleRequestMessage(leftEPName, leftEPAddress, leftEPRole, s8, 0, 1);
                                if (leftEPRole.equalsIgnoreCase("Primary"))
                                {
                                    Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] Storing primary headset in change roles single headset = ").append(1).append(", leftEPRole = ").append(leftEPRole).toString());
                                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", 1);
                                }
                                Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] sendChageRoleRequestMessage leftEPName = ").append(leftEPName).append(", leftEPAddress = ").append(leftEPAddress).append(", leftEPRole = ").append(leftEPRole).append(", my_L_newLinkKey = ").append(s8).append(" to enpoint ").append(1).toString());
                                epConnectionHandler.setEndPointLinkKey(1, epLinkKey);
                                epConnectionHandler.setEndPointLinkKey(1, epLinkKey);
                                epConnectionHandler.setEndPointRole(1, leftEPRole);
                                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("current_status_text1", Constants.EP_STATUS_OK);
                                epConnectionHandler.setEndpointMode(1, "Operational");
                            }
                        } else
                        {
                            Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] RIGHT otherEndpoint = ").append(2).toString());
                            if (2 == 2)
                            {
                                if (leftEPAddress == null || leftEPAddress.isEmpty())
                                {
                                    leftEPAddress = epConnectionHandler.getEndpointConnectedEPAddress(2);
                                    Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] L emoty  leftEPAddress = ").append(leftEPAddress).append(", addressAndLinkKeySeperator = ").append(addressAndLinkKeySeperator).append(", epLinkKey = ").append(epLinkKey).toString());
                                }
                                if (leftEPAddress != null && !leftEPAddress.isEmpty() && MainActivity.checkZerosInBluetoothAddress(leftEPAddress))
                                {
                                    Log.d("MainActivity", "[ChangeRolesSingle] Connected EP is all Zeros so assiging from preference");
                                    leftEPAddress = prefs2.getString("associated_ep_l_device_address", null);
                                }
                                Log.d("MainActivity", "[ChangeRolesSingle] Validate Connected address with Paired headset L");
                                if (mIsLeftEPBonded)
                                    if (leftEPAddress != null && leftEPAddress.endsWith(prefs2.getString("associated_ep_l_device_address", "")))
                                    {
                                        Log.d("MainActivity", "[ChangeRolesSingle] L had proper association with R");
                                    } else
                                    {
                                        Log.d("MainActivity", "[ChangeRolesSingle] Setting Zeros for L");
                                        Log.d("MainActivity", "[ChangeRolesSingle] L NOT Associated with R");
                                        leftEPAddress = "00:00:00:00:00:00";
                                    }
                                String s9 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_known_headset_mode", "Off");
                                EPCommunicationController.getEPCommunicationController().sendbassBoostRequest(s9, 0, 2);
                                String s10 = (new StringBuilder()).append(leftEPAddress).append(addressAndLinkKeySeperator).append(epLinkKey).toString();
                                EPCommunicationController.getEPCommunicationController().sendChageRoleRequestMessage(rightEPName, rightEPAddress, rightEPRole, s10, 0, 2);
                                if (rightEPRole.equalsIgnoreCase("Primary"))
                                {
                                    Log.d("MainActivity", (new StringBuilder()).append("[BassBoost] Storing primary headset in change roles single headset = ").append(2).append(", rightEPRole = ").append(rightEPRole).toString());
                                    EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putInteger("last_known_primary_headset", 2);
                                }
                                Log.d("MainActivity", (new StringBuilder()).append("[ChangeRolesSingle] sendChageRoleRequestMessage rightEPName = ").append(rightEPName).append(", rightEPAddress = ").append(rightEPAddress).append(", rightEPRole = ").append(rightEPRole).append(", my_R_newLinkKey = ").append(s10).append(" to enpoint ").append(2).toString());
                                epConnectionHandler.setEndPointLinkKey(2, epLinkKey);
                                epConnectionHandler.setEndPointLinkKey(2, epLinkKey);
                                epConnectionHandler.setEndPointRole(2, rightEPRole);
                                EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("current_status_text2", Constants.EP_STATUS_OK);
                                epConnectionHandler.setEndpointMode(2, "Operational");
                            }
                        }
                        epRolesUpdateProgressLayout.setVisibility(0);
                        epRolesButtonLayout.setVisibility(8);
                        MainActivity.mChangeRoleSingleHeadsetSecondsCounter = 0;
                        MainActivity.mChangeRoleSingleHeadsetHandler = new Handler();
                        MainActivity.mChangeRoleSingleHeadsetHandler.removeCallbacks(mChangeRoleSingleHeadsetTimeTask);
                        MainActivity.mChangeRoleSingleHeadsetHandler.postDelayed(mChangeRoleSingleHeadsetTimeTask, 1000L);
                        return true;
                    } else
                    {
                        return false;
                    }
                }

            
            {
                this$0 = MainActivity.this;
                cancelButton = button;
                prefs2 = sharedpreferences;
                Object();
            }
            }
);
            cancelButton.setOnTouchListener(new android.view.View.OnTouchListener() {

                final MainActivity this$0;
                final Button val$useForCallsButton;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if (motionevent.getAction() == 0)
                    {
                        useForCallsButton.setClickable(false);
                        useForCallsButton.setFocusable(false);
                        useForCallsButton.setFocusableInTouchMode(false);
                    } else
                    if (motionevent.getAction() == 1)
                    {
                        updateEarpieceUI();
                        HeadsetAction.getInstance().setCurrentAction(-1);
                        HeadsetAction.getInstance().unRegisterHeadsetActionResponseReceiver();
                        connectionFactoryObj = ConnectionFactory.getConnectionFactory();
                        MainActivity.mEarpieceChangeRoleInSingleHeadsetDialog.dismiss();
                        HeadsetAction headsetaction = HeadsetAction.getInstance();
                        if (headsetaction.actionHandler != null)
                            headsetaction.actionHandler.removeCallbacksAndMessages(null);
                        if (connectionFactoryObj != null)
                        {
                            BTConnectionManager btconnectionmanager = BTConnectionManager.getConnectionManager(connectionFactoryObj.getContext());
                            if (btconnectionmanager != null)
                            {
                                btconnectionmanager.disassociatePhoneEPLeft();
                                btconnectionmanager.disassociatePhoneEPRight();
                            }
                        }
                        if (headsetaction.headsetActionStatusList != null && headsetaction.headsetActionStatusList.size() > 0)
                            headsetaction.headsetActionStatusList.clear();
                        return true;
                    }
                    return false;
                }

            
            {
                this$0 = MainActivity.this;
                useForCallsButton = button;
                Object();
            }
            }
);
            if (ToqData.getInstance().getRegularTypeFace() != null)
            {
                useForCallsButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
                cancelButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            }
            mEarpieceChangeRoleInSingleHeadsetDialog.setCancelable(false);
            mEarpieceChangeRoleInSingleHeadsetDialog.show();
        }
    }

    private void showNoEPPairedLayout()
    {
        getNoHeadsetsPairedLayout().setVisibility(0);
        if (HeadsetAction.getInstance().getCurrentAction() != -1)
            closePendingActions();
        dismissAllDialogs();
        earpieceButtonsCardLayout.setVisibility(8);
        mEpBottomButtonsLayout.setVisibility(8);
        getEPInfoWarningTextLayout().setVisibility(8);
        mEpInfoMessageLayout.setVisibility(8);
        epStatusCheckedTextview.setVisibility(8);
        mEpLeftIconLayout.setVisibility(8);
        mEpRightIconLayout.setVisibility(8);
        mViewStatusInstallUpdateLayout.setVisibility(8);
        if (getBTAdapter() != null && getBTAdapter().isEnabled())
        {
            mBTOffLayout.setVisibility(8);
        } else
        {
            mBTOffLayout.setVisibility(0);
            getNoHeadsetsPairedLayout().setVisibility(8);
            mMoreEarPiecesPairedWarningLayout.setVisibility(8);
        }
        if (mBTOffLayout.getVisibility() == 0 || earpieceButtonsCardLayout.getVisibility() == 0 || getNoHeadsetsPairedLayout().getVisibility() == 0 || getEPInfoWarningTextLayout().getVisibility() == 0 || mMoreEarPiecesPairedWarningLayout.getVisibility() == 0)
        {
            if (mMainAppBackground != null)
                mMainAppBackground.setVisibility(8);
            epStatusCheckedTextview.setVisibility(8);
            if (getNoHeadsetsPairedLayout().getVisibility() == 0 || mMoreEarPiecesPairedWarningLayout.getVisibility() == 0)
            {
                mEpBottomButtonsLayout.setVisibility(8);
                earpieceButtonsCardLayout.setVisibility(8);
            }
        }
    }

    private void showToqHelp()
    {
        if (Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
        {
            try
            {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://toq.qualcomm.com/app-help?utm_source=app&utm_medium=toq+app&utm_campaign=applink")));
                return;
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getString(0x7f0a0024), 0).show();
                activitynotfoundexception.printStackTrace();
                return;
            }
        } else
        {
            Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010d), 0).show();
            return;
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

    private void updateEPBatteryStatus(int i)
    {
label0:
        {
label1:
            {
                String s = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString((new StringBuilder()).append("current_status_text").append(i).toString(), "");
                if (!TextUtils.isEmpty(s) && s.equalsIgnoreCase(Constants.EP_STATUS_UNABLE_CONNECT))
                {
                    if (i == 1 && mEPLBatteryLevelFrameLayout != null && mEPLBatteryStatusPercentageText != null)
                    {
                        mEPLBatteryLevelFrameLayout.setVisibility(8);
                        mEPLBatteryStatusPercentageText.setVisibility(8);
                        break label1;
                    }
                    if (i == 2 && mEPRBatteryLevelFrameLayout != null && mEPRBatteryStatusPercentageText != null)
                    {
                        mEPRBatteryLevelFrameLayout.setVisibility(8);
                        mEPRBatteryStatusPercentageText.setVisibility(8);
                        return;
                    }
                } else
                {
                    if (i == 1 && mEPLBatteryLevelFrameLayout != null && mEPLBatteryStatusPercentageText != null)
                    {
                        mEPLBatteryLevelFrameLayout.setVisibility(0);
                        mEPLBatteryStatusPercentageText.setVisibility(0);
                    }
                    if (i == 2 && mEPRBatteryLevelFrameLayout != null && mEPRBatteryStatusPercentageText != null)
                    {
                        mEPRBatteryLevelFrameLayout.setVisibility(0);
                        mEPRBatteryStatusPercentageText.setVisibility(0);
                    }
                }
                if (ConnectionFactory.getConnectionFactory() != null)
                {
                    String s1 = epConnectionHandler.getEpBatteryIndPercentage(i);
                    switch (i)
                    {
                    default:
                        break label0;

                    case 2: // '\002'
                        if (mEPRBatteryStatusPercentageText != null && mEPRBatteryLevelProgressBar != null)
                            if (!TextUtils.isEmpty(s1))
                            {
                                mEPRBatteryStatusPercentageText.setText((new StringBuilder()).append(s1).append("%").toString());
                                mEPRBatteryLevelProgressBar.setProgress(Integer.valueOf(s1).intValue());
                                return;
                            } else
                            {
                                mEPRBatteryStatusPercentageText.setText("0%");
                                mEPRBatteryLevelProgressBar.setProgress(0);
                                return;
                            }
                        break;

                    case 1: // '\001'
                        if (mEPLBatteryStatusPercentageText == null || mEPLBatteryLevelProgressBar == null)
                            break;
                        if (!TextUtils.isEmpty(s1))
                        {
                            mEPLBatteryStatusPercentageText.setText((new StringBuilder()).append(s1).append("%").toString());
                            mEPLBatteryLevelProgressBar.setProgress(Integer.valueOf(s1).intValue());
                            return;
                        } else
                        {
                            mEPLBatteryStatusPercentageText.setText("0%");
                            mEPLBatteryLevelProgressBar.setProgress(0);
                            return;
                        }
                    }
                }
            }
            return;
        }
    }

    private void updateEPLCard()
    {
        String s;
        String s1;
        Log.d("MainActivity", "updateEPLCard");
        s = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedEPLDeviceName();
        s1 = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedEPLDeviceAddress();
        getNoHeadsetsPairedLayout().setVisibility(8);
        mEpLeftIconLayout.setVisibility(0);
        if (getBTAdapter() != null) goto _L2; else goto _L1
_L1:
        Log.e("MainActivity", "Device doesn't have bluetooth support");
_L4:
        return;
_L2:
        if (getBTAdapter() == null || !getBTAdapter().isEnabled())
            break MISSING_BLOCK_LABEL_120;
        int i;
        try
        {
            Log.d("MainActivity", "BT is ON fetching state from Connection Handler for EPL");
            i = PhubBluetoothDeviceBondInfo.getInstance().getEPLState();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.v("MainActivity", exception.toString());
            return;
        }
        if (i == -1)
            i = 4;
        updateEarPieceState(s, i);
        return;
        Log.d("MainActivity", "BT is OFF fetching device name and address from SP for EPL");
        if (s != null && s1 != null)
        {
            updateEarPieceState(s, 4);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void updateEPRCard()
    {
        String s;
        String s1;
        Log.d("MainActivity", "updateEPRCard");
        s = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedEPRDeviceName();
        s1 = PhubBluetoothDeviceBondInfo.getInstance().getAssociatedEPRDeviceAddress();
        getNoHeadsetsPairedLayout().setVisibility(8);
        mEpRightIconLayout.setVisibility(0);
        if (getBTAdapter() != null) goto _L2; else goto _L1
_L1:
        Log.e("MainActivity", "Device doesn't have bluetooth support");
_L4:
        return;
_L2:
        if (getBTAdapter() == null || !getBTAdapter().isEnabled())
            break MISSING_BLOCK_LABEL_120;
        int i;
        try
        {
            Log.d("MainActivity", "BT is ON fetching state from Connection Handler for EPR");
            i = PhubBluetoothDeviceBondInfo.getInstance().getEPRState();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.v("MainActivity", exception.toString());
            return;
        }
        if (i == -1)
            i = 4;
        updateEarPieceState(s, i);
        return;
        Log.d("MainActivity", "BT is OFF fetching device name and address from SP for EPR");
        if (s != null && s1 != null)
        {
            updateEarPieceState(s, 4);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void updateEPStereoAudioUI()
    {
        int i = PhubBluetoothDeviceBondInfo.getInstance().getEPLState();
        int j = PhubBluetoothDeviceBondInfo.getInstance().getEPRState();
        if ((i != -1 || j == -1) && (i == -1 || j != -1))
            mEpStereoAudioMessageLayout.setVisibility(8);
        else
            mEpStereoAudioMessageLayout.setVisibility(8);
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        String s = epConnectionHandler.getEndPointRole(1);
        String s1 = epConnectionHandler.getEndPointRole(2);
        String s2 = epConnectionHandler.getEndpointMode(1);
        String s3 = epConnectionHandler.getEndpointMode(2);
        boolean flag = connectionfactory.getEndPointUpgradeState(1);
        boolean flag1 = connectionfactory.getEndPointUpgradeState(2);
        boolean flag2;
        if ((flag || !flag1) && (!flag || flag1))
            flag2 = false;
        else
            flag2 = true;
        if (i == 3 && j == 3 && epConnectionHandler.getEndPointLinkKey(1).equals(epConnectionHandler.getEndPointLinkKey(2)) && mDeviceIconsLinearLayout.getVisibility() == 0 && !s.equals(s1) && s2.equals("Operational") && s3.equals("Operational"))
            if (flag2);
    }

    private void updateEarPieceState(String s, int i)
    {
        Log.v("MainActivity", (new StringBuilder()).append("updateEarPieceState() called: deviceName = ").append(s).append(" connectionStatus = ").append(i).toString());
        if (getBTAdapter() == null || !getBTAdapter().isEnabled()) goto _L2; else goto _L1
_L1:
        mBTOffLayout.setVisibility(8);
_L6:
        getNoHeadsetsPairedLayout().setVisibility(8);
        if (s != null) goto _L4; else goto _L3
_L3:
        try
        {
            Log.v("MainActivity", "updateEarPieceState() deviceName is NULL");
            if (!isAtleastOnePhubDevicePaired())
            {
                showNoEPPairedLayout();
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Exception in updateEarPieceState(): ").append(exception.getMessage()).toString());
            exception.printStackTrace();
            return;
        }
          goto _L5
_L2:
        if (mBTOffLayout != null)
            mBTOffLayout.setVisibility(0);
        dismissAllDialogs();
        if (earpieceButtonsCardLayout != null)
            earpieceButtonsCardLayout.setVisibility(8);
        if (mEpBottomButtonsLayout != null)
            mEpBottomButtonsLayout.setVisibility(8);
          goto _L6
_L4:
        if (!PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(s, 1) && !PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(s, 2))
        {
            Log.v("MainActivity", "updateEarPieceState() deviceName is not equal to PHUB-EP-L or PHUB-EP-R");
            return;
        }
          goto _L7
_L27:
        if (!PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(s, 1)) goto _L9; else goto _L8
_L8:
        mDisconnectedText = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "none");
        Log.v("MainActivity", "EP LTitle is updated  ");
        if (mEpLeftIconLayout.getChildAt(0) == null) goto _L11; else goto _L10
_L10:
        TextView textview1;
        mEPLStatusIconText.setText(mDisconnectedText);
        textview1 = mEPLStatusIconText;
        if (!mDisconnectedText.trim().equalsIgnoreCase("OK")) goto _L13; else goto _L12
_L12:
        int l2 = mConnectedColor;
_L28:
        ImageView imageview1;
        textview1.setTextColor(l2);
        imageview1 = mEPLStatusIcon;
        int j;
        String s1;
        Integer ainteger[];
        int k;
        int l;
        int i1;
        TextView textview;
        int j1;
        ImageView imageview;
        int k1;
        int l1;
        String s2;
        Integer ainteger1[];
        int i2;
        int j2;
        int k2;
        int i3;
        if (mDisconnectedText.trim().equalsIgnoreCase("OK"))
            i3 = 0x7f020121;
        else
            i3 = 0x7f020122;
        imageview1.setImageResource(i3);
        if (!mDisconnectedText.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED)) goto _L15; else goto _L14
_L14:
        mEPLStatusIcon.setImageResource(0x7f0200c7);
_L30:
        if (mEPLStatusIcon.getVisibility() != 0)
            mEPLStatusIcon.setVisibility(0);
        if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(1))
            updateFirmwareUILayout("firmware_layout_gone", 1);
_L33:
        if (!mDisconnectedText.trim().equalsIgnoreCase("none")) goto _L17; else goto _L16
_L16:
        mEPLStatusIconText.setVisibility(4);
        mEPLStatusIcon.setVisibility(4);
_L36:
        updateEPBatteryStatus(1);
_L9:
        if (!PhubBluetoothDeviceBondInfo.getInstance().isEPNameSupported(s, 2)) goto _L5; else goto _L18
_L18:
        mDisconnectedText = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "none");
        Log.v("MainActivity", "EP R Title is updated");
        if (mEpRightIconLayout.getChildAt(0) == null) goto _L20; else goto _L19
_L19:
        mEPRStatusIconText.setText(mDisconnectedText);
        textview = mEPRStatusIconText;
        if (!mDisconnectedText.trim().equalsIgnoreCase("OK")) goto _L22; else goto _L21
_L21:
        j1 = mConnectedColor;
_L37:
        textview.setTextColor(j1);
        imageview = mEPRStatusIcon;
        if (mDisconnectedText.trim().equalsIgnoreCase("OK"))
            k1 = 0x7f020121;
        else
            k1 = 0x7f020122;
        imageview.setImageResource(k1);
        if (!mDisconnectedText.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED)) goto _L24; else goto _L23
_L23:
        mEPRStatusIcon.setImageResource(0x7f0200c7);
_L39:
        if (mEPRStatusIcon.getVisibility() != 0)
            mEPRStatusIcon.setVisibility(0);
        if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(2))
            updateFirmwareUILayout("firmware_layout_gone", 2);
_L42:
        if (!mDisconnectedText.trim().equalsIgnoreCase("none")) goto _L26; else goto _L25
_L25:
        mEPRStatusIconText.setVisibility(4);
        mEPRStatusIcon.setVisibility(4);
_L45:
        updateEPBatteryStatus(2);
        return;
_L46:
        updateEPStereoAudioUI();
          goto _L27
_L13:
        l2 = mDisconnectedColor;
          goto _L28
_L15:
        if (mDisconnectedText == null || !TextUtils.isEmpty(mDisconnectedText)) goto _L30; else goto _L29
_L29:
        mEPLStatusIconText.setVisibility(4);
        mEPLStatusIcon.setImageResource(0);
        mEPLPrimarySecondaryIcon.setVisibility(4);
          goto _L30
_L11:
        l1 = mResourcesId[1].intValue();
        s2 = mDisconnectedText;
        ainteger1 = mStatusIcons;
        if (!mDisconnectedText.trim().equalsIgnoreCase(Constants.EP_STATUS_OK)) goto _L32; else goto _L31
_L31:
        i2 = 0;
_L34:
        j2 = ainteger1[i2].intValue();
        if (!mDisconnectedText.trim().equalsIgnoreCase("OK"))
            break MISSING_BLOCK_LABEL_849;
        k2 = mConnectedColor;
_L35:
        loadImageIcons(l1, s2, j2, k2, mEPLStatusIconText, mEPLStatusIcon);
          goto _L33
_L32:
        if (mDisconnectedText.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
            i2 = 2;
        else
            i2 = 1;
          goto _L34
        k2 = mDisconnectedColor;
          goto _L35
_L17:
        mEPLStatusIconText.setVisibility(0);
        mEPLStatusIcon.setVisibility(0);
          goto _L36
_L22:
        j1 = mDisconnectedColor;
          goto _L37
_L24:
        if (mDisconnectedText == null || !TextUtils.isEmpty(mDisconnectedText)) goto _L39; else goto _L38
_L38:
        mEPRStatusIconText.setVisibility(4);
        mEPRStatusIcon.setImageResource(0);
        mEPRPrimarySecondaryIcon.setVisibility(4);
          goto _L39
_L20:
        j = mResourcesId[2].intValue();
        s1 = mDisconnectedText;
        ainteger = mStatusIcons;
        if (!mDisconnectedText.trim().equalsIgnoreCase(Constants.EP_STATUS_OK)) goto _L41; else goto _L40
_L40:
        k = 0;
_L43:
        l = ainteger[k].intValue();
        if (!mDisconnectedText.trim().equalsIgnoreCase("OK"))
            break MISSING_BLOCK_LABEL_1049;
        i1 = mConnectedColor;
_L44:
        loadImageIcons(j, s1, l, i1, mEPRStatusIconText, mEPRStatusIcon);
          goto _L42
_L41:
        if (mDisconnectedText.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
            k = 2;
        else
            k = 1;
          goto _L43
        i1 = mDisconnectedColor;
          goto _L44
_L26:
        mEPRStatusIconText.setVisibility(0);
        mEPRStatusIcon.setVisibility(0);
          goto _L45
_L5:
        return;
_L7:
        i;
        JVM INSTR tableswitch 0 4: default 213
    //                   0 670
    //                   1 670
    //                   2 670
    //                   3 213
    //                   4 670;
           goto _L27 _L46 _L46 _L46 _L27 _L46
    }

    private void updateEarpieceFirmwareText(int i)
    {
        int j;
        int k;
        j = 0x7f0a01ec;
        String s;
        String s1;
        PhubTextView phubtextview;
        PhubTextView phubtextview1;
        try
        {
            if (mEarpieceSoftwareUpdateProgressDialog != null && !mEarpieceSoftwareUpdateProgressDialog.isShowing())
                return;
        }
        catch (Exception exception)
        {
            Log.d("MainActivity", (new StringBuilder()).append("Exception in updateEarpieceFirmwareText() = ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
        if (mEarpieceRightProgressLoadingLayout != null)
            mEarpieceRightProgressLoadingLayout.setVisibility(8);
        if (mEarpieceLeftProgressLoadingLayout != null)
            mEarpieceLeftProgressLoadingLayout.setVisibility(8);
        mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f090189).setVisibility(8);
        s = getEarpieceRightProgressLoadingText().getText().toString().trim();
        s1 = getEarpieceLeftProgressLoadingText().getText().toString().trim();
        if (!s.equals(Constants.EP_STATUS_UPDATE_FAILED)) goto _L2; else goto _L1
_L1:
        mEarpieceRightProgressCompleteIcon.setVisibility(8);
        mEarpieceRightDisconnectInfo.setVisibility(0);
        phubtextview1 = mEarpieceRightDisconnectInfo;
        if (isRightLowBattery)
            k = j;
        else
            k = 0x7f0a01eb;
        phubtextview1.setText(k);
        mEarpieceRightFirmwareProgressLayout.setVisibility(8);
_L9:
        if (!s1.equals(Constants.EP_STATUS_UPDATE_FAILED)) goto _L4; else goto _L3
_L3:
        mEarpieceLeftDisconnectInfo.setVisibility(0);
        phubtextview = mEarpieceLeftDisconnectInfo;
        if (!isLeftLowBattery)
            j = 0x7f0a01eb;
        phubtextview.setText(j);
        mEarpieceLeftFirmwareProgressLayout.setVisibility(8);
_L7:
        if (mIsLeftEPBonded && mIsRightEPBonded)
            mEarpieceSoftwareUpdateProgressDialog.findViewById(0x7f090189).setVisibility(0);
        if (mIsLeftEPBonded)
            mEarpieceLeftProgressLoadingLayout.setVisibility(0);
        if (mIsRightEPBonded)
            mEarpieceRightProgressLoadingLayout.setVisibility(0);
        if (2 != i) goto _L6; else goto _L5
_L5:
        mEarpieceRightFirmwareProgressLayout.setVisibility(0);
        getEarpieceRightProgressLoadingText().setText("Transferring update...");
        getEarpieceRightProgressLoadingText().setTextColor(0xff000000);
        return;
_L2:
        mEarpieceRightDisconnectInfo.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L4:
        mEarpieceLeftDisconnectInfo.setVisibility(8);
          goto _L7
_L6:
        if (1 != i)
            break MISSING_BLOCK_LABEL_426;
        mEarpieceLeftFirmwareProgressLayout.setVisibility(0);
        getEarpieceLeftProgressLoadingText().setText("Transferring update...");
        if (!mIsRightEPBonded)
            break MISSING_BLOCK_LABEL_426;
        if (getEarpieceRightProgressLoadingText().getText().toString().trim().equals(Constants.EP_STATUS_UPDATE_FAILED))
        {
            mEarpieceRightFirmwareProgressLayout.setVisibility(8);
            return;
        }
        mEarpieceRightFirmwareProgressLayout.setVisibility(4);
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void updateEarpieceProgressDialog(String s)
    {
label0:
        {
            if (mEarpieceProgressDialog != null && mEarpieceProgressDialog.isShowing())
            {
                if (s == null || TextUtils.isEmpty(s))
                    break label0;
                loadingSubTextView.setText(s);
            }
            return;
        }
        loadingSubTextView.setText("This may take about 30 seconds");
    }

    private void updateEarpieceStatusNotes()
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        try
        {
            epStatusNotesTextview.setVisibility(8);
            if (avoidStyledDataFlag)
            {
                mViewStatusInstallUpdateLayout.setVisibility(8);
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", "Exception in updateEarpieceStatusNotes()");
            exception.printStackTrace();
            return;
        }
        s = "";
        s1 = epConnectionHandler.getEndPointRole(1);
        s2 = epConnectionHandler.getEndPointRole(2);
        s3 = epConnectionHandler.getEndpointMode(1);
        s4 = epConnectionHandler.getEndpointMode(2);
        s5 = epConnectionHandler.getEndPointLinkKey(1);
        s6 = epConnectionHandler.getEndPointLinkKey(2);
        if (!mIsLeftEPBonded || !mIsRightEPBonded) goto _L2; else goto _L1
_L1:
        if (s1.contains("Primary") && s2.contains("Primary"))
            s = (new StringBuilder()).append(s).append("Both headsets are primary\n").toString();
        if (s1.contains("Secondary") && s2.contains("Secondary"))
            s = (new StringBuilder()).append(s).append("Both headsets are Secondary\n").toString();
        if (!s5.equals(s6) && s3.equals("Operational") && s4.equals("Operational"))
            s = (new StringBuilder()).append(s).append("Left & Right headset is not having association\n").toString();
_L5:
        if (s3.equals("Config") || s4.equals("Config"))
            s = (new StringBuilder()).append(s).append("Left or Right headset is in CONFIG mode\n").toString();
        Log.i("MainActivity", (new StringBuilder()).append("[updateEarpieceStatusNotes] status = ").append(s).toString());
        return;
_L2:
        if (!mIsLeftEPBonded) goto _L4; else goto _L3
_L3:
        if (s1.contains("Secondary"))
            s = (new StringBuilder()).append(s).append("Only Left headset paired but Secondary\n").toString();
          goto _L5
_L4:
        if (!mIsRightEPBonded || !s2.contains("Secondary")) goto _L5; else goto _L6
_L6:
        String s7 = (new StringBuilder()).append(s).append("Only Right headset paired but Secondary\n").toString();
        s = s7;
          goto _L5
    }

    private void updateEarpieceUI()
    {
        String s;
        Log.d("MainActivity", "Inside updateEarpieceUI() called");
        if (HeadsetAction.getInstance().getCurrentAction() == -1)
        {
            dismissEarpieceProgressDialog();
            epStatusCheckedTextview.setVisibility(0);
            if (PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded())
                mEpLeftIconLayout.setVisibility(0);
            if (PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
                mEpRightIconLayout.setVisibility(0);
        }
        s = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_status_checked", "none");
        if (s.equalsIgnoreCase("none"))
            break MISSING_BLOCK_LABEL_132;
        String s18;
        Date date = (new SimpleDateFormat("MMMM dd, h:mm a", Locale.US)).parse(s);
        s18 = (new SimpleDateFormat("h:mm a", Locale.US)).format(date);
        s = s18;
_L1:
        String s5;
        String s1 = String.format(ToqApplication.getAppContext().getResources().getString(0x7f0a017d), new Object[] {
            s
        });
        epStatusCheckedTextview.setText(s1);
        String s2;
        String s3;
        if (s.equalsIgnoreCase("none"))
        {
            earpieceButtonsCardLayout.setVisibility(0);
            epStatusCheckedTextview.setVisibility(8);
            mEpBottomButtonsLayout.setVisibility(8);
            mEpLeftIconLayout.setVisibility(8);
            mEpRightIconLayout.setVisibility(8);
            if (mMainAppBackground != null)
                mMainAppBackground.setVisibility(8);
        } else
        {
            earpieceButtonsCardLayout.setVisibility(8);
            if (PhubBluetoothDeviceBondInfo.getInstance().isMoreThanOneEarPiecesHeadsetPaired() || !isAtleastOnePhubDevicePaired() || getNoHeadsetsPairedLayout().getVisibility() == 0 || mMoreEarPiecesPairedWarningLayout.getVisibility() == 0)
            {
                mEpBottomButtonsLayout.setVisibility(8);
                epStatusCheckedTextview.setVisibility(8);
            } else
            {
                mEpBottomButtonsLayout.setVisibility(0);
                epStatusCheckedTextview.setVisibility(0);
            }
        }
        s2 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_subtext2", "");
        s3 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_subtext1", "");
        if (PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded())
        {
            String s17 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "none");
            Log.v("MainActivity", "EP LTitle is updated to STATE_DISCONNECTED");
            Log.d("MainActivity", (new StringBuilder()).append("Inside updateEarpieceUI() isLeftEPBonded mDisconnectedText =").append(s17).toString());
            if (mEpLeftIconLayout.getChildAt(0) != null)
            {
                mEPLStatusIconText.setText(s17);
                TextView textview1 = mEPLStatusIconText;
                String s4;
                boolean flag;
                int i;
                String s6;
                String s7;
                String s8;
                String s9;
                String s10;
                String s11;
                String s12;
                String s13;
                String s14;
                String s15;
                TextView textview;
                ImageView imageview;
                int l2;
                ImageView imageview1;
                int i3;
                Exception exception1;
                if (s17.trim().equalsIgnoreCase("OK"))
                    l2 = mConnectedColor;
                else
                    l2 = mDisconnectedColor;
                textview1.setTextColor(l2);
                imageview1 = mEPLStatusIcon;
                if (s17.trim().equalsIgnoreCase("OK"))
                    i3 = 0x7f020121;
                else
                    i3 = 0x7f020122;
                imageview1.setImageResource(i3);
                if (s17.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
                    mEPLStatusIcon.setImageResource(0x7f0200c7);
                else
                if (s17 != null && TextUtils.isEmpty(s17))
                {
                    mEPLStatusIconText.setTextColor(0xff000000);
                    mEPLStatusIcon.setImageResource(0);
                }
                if (mEPLStatusIcon.getVisibility() != 0)
                    mEPLStatusIcon.setVisibility(0);
                if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(1))
                    updateFirmwareUILayout("firmware_layout_gone", 1);
            } else
            {
                int l1 = mResourcesId[1].intValue();
                Integer ainteger1[] = mStatusIcons;
                int i2;
                int j2;
                int k2;
                if (s17.trim().equalsIgnoreCase(Constants.EP_STATUS_OK))
                    i2 = 0;
                else
                if (s17.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
                    i2 = 2;
                else
                    i2 = 1;
                j2 = ainteger1[i2].intValue();
                if (s17.trim().equalsIgnoreCase("OK"))
                    k2 = mConnectedColor;
                else
                    k2 = mDisconnectedColor;
                loadImageIcons(l1, s17, j2, k2, mEPLStatusIconText, mEPLStatusIcon);
            }
            if (s17.trim().equalsIgnoreCase("none"))
            {
                mEPLStatusIconText.setVisibility(4);
                mEPLStatusIcon.setVisibility(4);
            } else
            {
                mEPLStatusIconText.setVisibility(0);
                mEPLStatusIcon.setVisibility(0);
            }
            mEPLStatusCaptionTextView.setVisibility(8);
            updateEPBatteryStatus(1);
            updatePrimaryIconUI(1);
        }
        if (PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
        {
            String s16 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "none");
            Log.v("MainActivity", "EP R Title is updated");
            if (mEpRightIconLayout.getChildAt(0) != null)
            {
                mEPRStatusIconText.setText(s16);
                textview = mEPRStatusIconText;
                int j1;
                int k1;
                if (s16.trim().equalsIgnoreCase("OK"))
                    j1 = mConnectedColor;
                else
                    j1 = mDisconnectedColor;
                textview.setTextColor(j1);
                imageview = mEPRStatusIcon;
                if (s16.trim().equalsIgnoreCase("OK"))
                    k1 = 0x7f020121;
                else
                    k1 = 0x7f020122;
                imageview.setImageResource(k1);
                if (s16.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
                    mEPRStatusIcon.setImageResource(0x7f0200c7);
                else
                if (s16 != null && TextUtils.isEmpty(s16))
                {
                    mEPRStatusIconText.setTextColor(0xff000000);
                    mEPRStatusIcon.setImageResource(0);
                }
                if (mEPRStatusIcon.getVisibility() != 0)
                    mEPRStatusIcon.setVisibility(0);
                if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(2))
                    updateFirmwareUILayout("firmware_layout_gone", 2);
            } else
            {
                int j = mResourcesId[2].intValue();
                Integer ainteger[] = mStatusIcons;
                int k;
                int l;
                int i1;
                if (s16.trim().equalsIgnoreCase(Constants.EP_STATUS_OK))
                    k = 0;
                else
                if (s16.trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
                    k = 2;
                else
                    k = 1;
                l = ainteger[k].intValue();
                if (s16.trim().equalsIgnoreCase("OK"))
                    i1 = mConnectedColor;
                else
                    i1 = mDisconnectedColor;
                loadImageIcons(j, s16, l, i1, mEPRStatusIconText, mEPRStatusIcon);
            }
            if (s16.trim().equalsIgnoreCase("none"))
            {
                mEPRStatusIconText.setVisibility(4);
                mEPRStatusIcon.setVisibility(4);
            } else
            {
                mEPRStatusIconText.setVisibility(0);
                mEPRStatusIcon.setVisibility(0);
            }
            mEPRStatusCaptionTextView.setVisibility(8);
            updateEPBatteryStatus(2);
            updatePrimaryIconUI(2);
        }
        updateEarpieceStatusNotes();
        if (!EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text2", "").trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED) && !EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("current_status_text1", "").trim().equalsIgnoreCase(Constants.EP_STATUS_UPDATE_REQUIRED))
            break MISSING_BLOCK_LABEL_2132;
        if (earpieceButtonsCardLayout != null && earpieceButtonsCardLayout.getVisibility() != 0)
            mViewStatusInstallUpdateLayout.setVisibility(0);
        if (mIsRightEPBonded && !mIsLeftEPBonded)
        {
            epSoftwareVersionTextview.setVisibility(0);
            s13 = (new StringBuilder()).append("Version ").append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(2)).toString();
            s14 = formatSoftwareVersionDate(ConnectionFactory.getConnectionFactory().getEndPointFirmwareDate(2));
            Log.d("MainActivity", (new StringBuilder()).append("Software version date").append(s14).toString());
            s15 = (new StringBuilder()).append(s13).append(", ").append(s14).toString();
            epSoftwareVersionTextview.setText(s15);
        }
        if (mIsLeftEPBonded && !mIsRightEPBonded)
        {
            epSoftwareVersionTextview.setVisibility(0);
            s10 = (new StringBuilder()).append("Version ").append(ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(1)).toString();
            s11 = formatSoftwareVersionDate(ConnectionFactory.getConnectionFactory().getEndPointFirmwareDate(1));
            Log.d("MainActivity", (new StringBuilder()).append("Software version date").append(s11).toString());
            s12 = (new StringBuilder()).append(s10).append(", ").append(s11).toString();
            epSoftwareVersionTextview.setText(s12);
        }
        if (!mIsRightEPBonded || !mIsLeftEPBonded)
            break MISSING_BLOCK_LABEL_1259;
        epSoftwareVersionTextview.setVisibility(0);
        s5 = ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(2);
        s6 = ConnectionFactory.getConnectionFactory().getEndPointFirmwareDate(2);
        if (s5 != null)
            break MISSING_BLOCK_LABEL_1138;
        s5 = ConnectionFactory.getConnectionFactory().getEndPointFirmwareVersion(1);
        if (s6 != null)
            break MISSING_BLOCK_LABEL_1152;
        s6 = ConnectionFactory.getConnectionFactory().getEndPointFirmwareDate(1);
        s7 = formatSoftwareVersionDate(s6);
        if (s7 == null)
            s7 = "NA";
        break MISSING_BLOCK_LABEL_2296;
        if (s5 == null)
            s5 = "NA";
        try
        {
            s8 = (new StringBuilder()).append("Version ").append(s5).toString();
            Log.d("MainActivity", (new StringBuilder()).append("Software version date").append(s7).toString());
            s9 = (new StringBuilder()).append(s8).append(", ").append(s7).toString();
            epSoftwareVersionTextview.setText(s9);
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", "Exception in number conversion");
        }
        if (getBTAdapter() != null && getBTAdapter().isEnabled())
        {
            if (mBTOffLayout != null)
                mBTOffLayout.setVisibility(8);
        } else
        {
            if (mBTOffLayout != null)
                mBTOffLayout.setVisibility(0);
            if (HeadsetAction.getInstance().getCurrentAction() != -1)
                closePendingActions();
            dismissAllDialogs();
            earpieceButtonsCardLayout.setVisibility(8);
            mEpBottomButtonsLayout.setVisibility(8);
            epStatusCheckedTextview.setVisibility(8);
            mEpLeftIconLayout.setVisibility(8);
            mEpRightIconLayout.setVisibility(8);
            mViewStatusInstallUpdateLayout.setVisibility(8);
            getNoHeadsetsPairedLayout().setVisibility(8);
        }
        if (avoidStyledDataFlag)
        {
            epStatusCheckedTextview.setVisibility(8);
            mEpLeftIconLayout.setVisibility(8);
            mEpRightIconLayout.setVisibility(8);
            mViewStatusInstallUpdateLayout.setVisibility(8);
            if (mMainAppBackground != null)
                mMainAppBackground.setVisibility(0);
        } else
        if (mMainAppBackground != null)
            mMainAppBackground.setVisibility(8);
        if (mBTOffLayout.getVisibility() == 0 || earpieceButtonsCardLayout.getVisibility() == 0 || getNoHeadsetsPairedLayout().getVisibility() == 0 || getEPInfoWarningTextLayout().getVisibility() == 0 || mMoreEarPiecesPairedWarningLayout.getVisibility() == 0)
        {
            if (mMainAppBackground != null)
                mMainAppBackground.setVisibility(8);
            if (mEpLeftIconLayout.getVisibility() == 0 || mEpRightIconLayout.getVisibility() == 0)
                epStatusCheckedTextview.setVisibility(0);
            else
                epStatusCheckedTextview.setVisibility(8);
            if (getNoHeadsetsPairedLayout().getVisibility() == 0 || mMoreEarPiecesPairedWarningLayout.getVisibility() == 0)
            {
                mEpBottomButtonsLayout.setVisibility(8);
                earpieceButtonsCardLayout.setVisibility(8);
            }
        }
        s4 = null;
        if (s2 != null)
        {
            flag = TextUtils.isEmpty(s2);
            s4 = null;
            if (!flag)
            {
                i = s2.length();
                s4 = null;
                if (i > 0)
                    s4 = s2;
            }
        }
        if (s3 != null && !TextUtils.isEmpty(s3) && s3.length() > 0)
            s4 = s3;
        if (s2 != null && !TextUtils.isEmpty(s2) && s2.length() > 0)
        {
            mEPRStatusCaptionTextView.setText(s4);
            mEPRStatusCaptionTextView.setVisibility(0);
            mEPRStatusCaptionTextView.postInvalidate();
        } else
        {
            mEPLStatusCaptionTextView.setVisibility(8);
        }
        if (s3 != null && !TextUtils.isEmpty(s3) && s3.length() > 0)
        {
            mEPLStatusCaptionTextView.setText(s4);
            mEPLStatusCaptionTextView.setVisibility(0);
            mEPLStatusCaptionTextView.postInvalidate();
            return;
        } else
        {
            mEPLStatusCaptionTextView.setVisibility(8);
            return;
        }
        exception1;
        Log.e("MainActivity", "exception in date conversion 1 ");
        exception1.printStackTrace();
          goto _L1
        mViewStatusInstallUpdateLayout.setVisibility(8);
        break MISSING_BLOCK_LABEL_1259;
    }

    private void updateFirmwareLayout(int i)
    {
        switch (i)
        {
        default:
            break;

        case 2: // '\002'
            ConnectionFactory connectionfactory1 = ConnectionFactory.getConnectionFactory();
            if (connectionfactory1 != null && connectionfactory1.getEndPointUpgradeState(i))
            {
                if (PhubBluetoothDeviceBondInfo.getInstance().getEPRState() == 3)
                {
                    Log.d("MainActivity", "Firmware file is not pushed and firmware update layout is shown with software availability");
                    return;
                }
                if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(i))
                {
                    updateFirmwareUILayout("firmware_layout_gone", i);
                    return;
                }
            } else
            if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(i))
            {
                updateFirmwareUILayout("firmware_layout_gone", i);
                return;
            }
            break;

        case 1: // '\001'
            ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
            if (connectionfactory != null && connectionfactory.getEndPointUpgradeState(i))
            {
                if (PhubBluetoothDeviceBondInfo.getInstance().getEPLState() == 3)
                {
                    Log.d("MainActivity", "Firmware file is not pushed and firmware update layout is shown with software availability");
                    return;
                }
                if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(1))
                {
                    updateFirmwareUILayout("firmware_layout_gone", i);
                    return;
                }
                break;
            }
            if (!epConnectionHandler.isEpSoftwareUpgradeOnProcess(1))
            {
                updateFirmwareUILayout("firmware_layout_gone", i);
                return;
            }
            break;
        }
    }

    private void updateFirmwareUILayout(String s, int i)
    {
        if (PhubBluetoothDeviceBondInfo.getInstance().isEPEndPointType(i))
            updateEPStereoAudioUI();
    }

    private void updatePrimaryIconUI(int i)
    {
        if (i != 1) goto _L2; else goto _L1
_L1:
        TextView textview = mEPLPrimarySecondaryIcon;
_L10:
        String s;
        s = epConnectionHandler.getEndpointMode(i);
        Log.d("MainActivity", (new StringBuilder()).append("updatePrimaryIconUI modeValue = ").append(s).append(", Role = ").append(epConnectionHandler.getEndPointRole(i)).toString());
        if (textview == null || s == null) goto _L4; else goto _L3
_L3:
        if (!s.equals("Operational")) goto _L4; else goto _L5
_L5:
        if (!epConnectionHandler.getEndPointRole(i).equals("Primary")) goto _L7; else goto _L6
_L6:
        String s1;
        s1 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString((new StringBuilder()).append("current_status_text").append(i).toString(), "none");
        Log.d("MainActivity", (new StringBuilder()).append("updatePrimaryIconUI Inside CURRENT_STATUS_TEXT_KEY = ").append(s1).toString());
        if (!s1.equalsIgnoreCase(Constants.EP_STATUS_OK)) goto _L9; else goto _L8
_L8:
        textview.setVisibility(0);
_L11:
        textview.postInvalidate();
        return;
_L2:
        try
        {
            textview = mEPRPrimarySecondaryIcon;
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Exception in updatePrimaryIconUI() : ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
          goto _L10
_L9:
        textview.setVisibility(8);
          goto _L11
_L7:
        textview.setVisibility(8);
          goto _L11
_L4:
        if (textview == null || s == null) goto _L11; else goto _L12
_L12:
        if (!s.equals("Config") && !s.equals("")) goto _L11; else goto _L13
_L13:
        textview.setVisibility(8);
          goto _L11
    }

    private void updateSoftwareUpdateRetryContinue(int i, int j)
    {
        String s = (String)getEarpieceRightProgressLoadingText().getText();
        String s1 = (String)getEarpieceLeftProgressLoadingText().getText();
        Log.d("MainActivity", (new StringBuilder()).append("FW updateSoftwareUpdateRetryContinue rStr = ").append(s).append(", lStr = ").append(s1).toString());
        boolean flag = s1.equals(Constants.EP_STATUS_UPDATE_FAILED);
        boolean flag1 = s.equals(Constants.EP_STATUS_UPDATE_FAILED);
        if (mIsLeftEPBonded && mIsRightEPBonded)
        {
            boolean flag2;
            if (!flag && !flag1)
                flag2 = false;
            else
                flag2 = true;
            if (i != -1 && i != j || i == -1 && j == 1 || i == 9999)
            {
                Log.d("MainActivity", (new StringBuilder()).append("Making RetryButton visibility as VISIBLE..<<7>> INSIDE epVal = ").append(i).append(", endPointType = ").append(j).toString());
                mEarpieceRetryContinuteButtonsLayout.setVisibility(0);
                View view2 = eEarpieceSoftwareUpdateButtonDivder;
                byte byte4;
                if (flag2)
                    byte4 = 0;
                else
                    byte4 = 8;
                view2.setVisibility(byte4);
                Button button2 = mEarpieceSoftwareUpdateRetryButton;
                byte byte5 = 0;
                if (!flag2)
                    byte5 = 8;
                button2.setVisibility(byte5);
            }
        } else
        {
            if (mIsLeftEPBonded && !mIsRightEPBonded)
            {
                Log.d("MainActivity", "Making RetryButton visibility as VISIBLE..<<8>>");
                mEarpieceRetryContinuteButtonsLayout.setVisibility(0);
                View view1 = eEarpieceSoftwareUpdateButtonDivder;
                byte byte2;
                if (flag)
                    byte2 = 0;
                else
                    byte2 = 8;
                view1.setVisibility(byte2);
                Button button1 = mEarpieceSoftwareUpdateRetryButton;
                byte byte3 = 0;
                if (!flag)
                    byte3 = 8;
                button1.setVisibility(byte3);
                return;
            }
            if (!mIsLeftEPBonded && mIsRightEPBonded)
            {
                Log.d("MainActivity", "Making RetryButton visibility as VISIBLE..<<9>>");
                mEarpieceRetryContinuteButtonsLayout.setVisibility(0);
                View view = eEarpieceSoftwareUpdateButtonDivder;
                byte byte0;
                if (flag1)
                    byte0 = 0;
                else
                    byte0 = 8;
                view.setVisibility(byte0);
                Button button = mEarpieceSoftwareUpdateRetryButton;
                byte byte1 = 0;
                if (!flag1)
                    byte1 = 8;
                button.setVisibility(byte1);
                return;
            }
        }
    }

    private void updateUI()
    {
        String s;
        String s1;
        String s2;
        boolean flag;
        String s4;
        TextView textview;
        TextView textview1;
        try
        {
            if (getBTAdapter() == null)
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
        if (!isAtleastOnePhubDevicePaired()) goto _L2; else goto _L1
_L1:
        getNoHeadsetsPairedLayout().setVisibility(8);
        if (!PhubBluetoothDeviceBondInfo.getInstance().isMoreThanOneEarPiecesHeadsetPaired()) goto _L4; else goto _L3
_L3:
        mMoreEarPiecesPairedWarningLayout.setVisibility(0);
        mDeviceIconsLinearLayout.setVisibility(8);
        mEpInfoMessageLayout.setVisibility(8);
        getEPInfoWarningTextLayout().setVisibility(8);
_L19:
        s = "";
        s1 = "";
        if (!mIsLeftEPBonded || !mIsRightEPBonded) goto _L6; else goto _L5
_L5:
        s = getResources().getString(0x7f0a01a2);
_L23:
        if (s.trim().length() <= 0 || getBTAdapter() == null || !getBTAdapter().isEnabled()) goto _L8; else goto _L7
_L7:
        if (HeadsetAction.getInstance().getCurrentAction() != -1) goto _L10; else goto _L9
_L9:
        textview = (TextView)findViewById(0x7f09013f);
        textview1 = (TextView)findViewById(0x7f09013e);
        if (!mIsLeftEPBonded || !mIsRightEPBonded) goto _L12; else goto _L11
_L11:
        if (!PhubBluetoothDeviceBondInfo.getInstance().isMoreThanOneEarPiecesHeadsetPaired())
            mEpInfoMessageLayout.setVisibility(0);
        getEPInfoWarningTextLayout().setVisibility(8);
        epInfoTextview.setText(s.trim());
_L10:
        s2 = EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_status_checked", "none");
        flag = s2.equalsIgnoreCase("none");
        if (flag)
            break MISSING_BLOCK_LABEL_297;
        Date date = (new SimpleDateFormat("MMMM dd, h:mm a", Locale.US)).parse(s2);
        s4 = (new SimpleDateFormat("h:mm a", Locale.US)).format(date);
        s2 = s4;
_L28:
        String s3 = String.format(ToqApplication.getAppContext().getResources().getString(0x7f0a017d), new Object[] {
            s2
        });
        epStatusCheckedTextview.setText(s3);
        if (!s2.equalsIgnoreCase("none")) goto _L14; else goto _L13
_L13:
        earpieceButtonsCardLayout.setVisibility(0);
        epStatusCheckedTextview.setVisibility(8);
        mEpBottomButtonsLayout.setVisibility(8);
        mEpLeftIconLayout.setVisibility(8);
        mEpRightIconLayout.setVisibility(8);
_L29:
        if (getBTAdapter() == null || !getBTAdapter().isEnabled()) goto _L16; else goto _L15
_L15:
        mBTOffLayout.setVisibility(8);
_L30:
        if (mBTOffLayout.getVisibility() != 0 && earpieceButtonsCardLayout.getVisibility() != 0 && getNoHeadsetsPairedLayout().getVisibility() != 0 && getEPInfoWarningTextLayout().getVisibility() != 0 && mMoreEarPiecesPairedWarningLayout.getVisibility() != 0) goto _L18; else goto _L17
_L17:
        if (mMainAppBackground != null)
            mMainAppBackground.setVisibility(8);
        if (mEpLeftIconLayout.getVisibility() != 0 && mEpRightIconLayout.getVisibility() != 0)
            break MISSING_BLOCK_LABEL_1228;
        epStatusCheckedTextview.setVisibility(0);
_L31:
        if (getNoHeadsetsPairedLayout().getVisibility() == 0 || mMoreEarPiecesPairedWarningLayout.getVisibility() == 0)
        {
            mEpBottomButtonsLayout.setVisibility(8);
            earpieceButtonsCardLayout.setVisibility(8);
        }
_L18:
        Log.d("MainActivity", (new StringBuilder()).append("..TEST = ").append(HeadsetAction.getInstance().getCurrentAction()).append(", mIsLeftEPBonded = ").append(mIsLeftEPBonded).append(", mIsRightEPBonded = ").append(mIsRightEPBonded).toString());
        return;
_L4:
        if (mMoreEarPiecesPairedWarningLayout != null)
            mMoreEarPiecesPairedWarningLayout.setVisibility(8);
        if (mUnpairLinearLayout != null)
            mUnpairLinearLayout.setVisibility(8);
        if (mDeviceIconsLinearLayout != null)
            mDeviceIconsLinearLayout.setVisibility(0);
        if (mEpRightIconLayout != null)
            mEpLeftIconLayout.setVisibility(8);
        if (mEpRightIconLayout != null)
            mEpRightIconLayout.setVisibility(8);
        if (!mIsLeftEPBonded || HeadsetAction.getInstance().getCurrentAction() != -1 && HeadsetAction.getInstance().getCurrentAction() != 0)
            break MISSING_BLOCK_LABEL_791;
        Log.e("MainActivity", "Left EP is bonded");
        updateEPLCard();
_L20:
        if (!mIsRightEPBonded || HeadsetAction.getInstance().getCurrentAction() != -1 && HeadsetAction.getInstance().getCurrentAction() != 0)
            break MISSING_BLOCK_LABEL_811;
        Log.e("MainActivity", "Right EP is bonded");
        updateEPRCard();
          goto _L19
        Log.e("MainActivity", "Left EP is not bonded");
        mEpLeftIconLayout.setVisibility(8);
          goto _L20
        Log.e("MainActivity", "Right EP is not bonded");
        mEpRightIconLayout.setVisibility(8);
          goto _L19
_L6:
        if (!mIsLeftEPBonded) goto _L22; else goto _L21
_L21:
        s = getResources().getString(0x7f0a01a3);
        s1 = getResources().getString(0x7f0a01a6);
          goto _L23
_L22:
        if (!mIsRightEPBonded) goto _L23; else goto _L24
_L24:
        s = getResources().getString(0x7f0a01a5);
        s1 = getResources().getString(0x7f0a01a4);
          goto _L23
_L12:
        if (!mIsLeftEPBonded) goto _L26; else goto _L25
_L25:
        mEpInfoMessageLayout.setVisibility(8);
        if (!PhubBluetoothDeviceBondInfo.getInstance().isMoreThanOneEarPiecesHeadsetPaired())
            getEPInfoWarningTextLayout().setVisibility(0);
        textview.setText(s);
        textview1.setText(s1);
          goto _L10
_L26:
        if (!mIsRightEPBonded) goto _L10; else goto _L27
_L27:
        mEpInfoMessageLayout.setVisibility(8);
        if (!PhubBluetoothDeviceBondInfo.getInstance().isMoreThanOneEarPiecesHeadsetPaired())
            getEPInfoWarningTextLayout().setVisibility(0);
        textview.setText(s);
        textview1.setText(s1);
          goto _L10
_L8:
        mEpInfoMessageLayout.setVisibility(8);
        getEPInfoWarningTextLayout().setVisibility(8);
          goto _L10
_L2:
        showNoEPPairedLayout();
        return;
        Exception exception1;
        exception1;
        Log.e("MainActivity", (new StringBuilder()).append("exception in date conversion 2 ").append(exception1.toString()).toString());
          goto _L28
_L14:
label0:
        {
            earpieceButtonsCardLayout.setVisibility(8);
            if (!PhubBluetoothDeviceBondInfo.getInstance().isMoreThanOneEarPiecesHeadsetPaired() && isAtleastOnePhubDevicePaired() && getNoHeadsetsPairedLayout().getVisibility() != 0 && mMoreEarPiecesPairedWarningLayout.getVisibility() != 0)
                break label0;
            mEpBottomButtonsLayout.setVisibility(8);
            epStatusCheckedTextview.setVisibility(8);
        }
          goto _L29
        mEpBottomButtonsLayout.setVisibility(0);
        epStatusCheckedTextview.setVisibility(0);
          goto _L29
_L16:
        mBTOffLayout.setVisibility(0);
        if (HeadsetAction.getInstance().getCurrentAction() != -1)
            closePendingActions();
        dismissAllDialogs();
        earpieceButtonsCardLayout.setVisibility(8);
        mEpBottomButtonsLayout.setVisibility(8);
        epStatusCheckedTextview.setVisibility(8);
        mEpLeftIconLayout.setVisibility(8);
        mEpRightIconLayout.setVisibility(8);
        mViewStatusInstallUpdateLayout.setVisibility(8);
        getNoHeadsetsPairedLayout().setVisibility(8);
          goto _L30
        epStatusCheckedTextview.setVisibility(8);
          goto _L31
    }

    public void changeTypeFace(String s, Typeface typeface, TextView textview)
    {
        String s1 = textview.getText().toString();
        if (s1 != null)
        {
            int i = s1.indexOf(s);
            int j = i + s.length();
            QcomTypeFace qcomtypeface = new QcomTypeFace("roboto", typeface);
            SpannableString spannablestring = new SpannableString(s1);
            spannablestring.setSpan(qcomtypeface, i, j, 33);
            textview.setText(spannablestring);
        }
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        if (mEulaLoadingProgressDialog != null && mEulaLoadingProgressDialog.isShowing())
            mEulaLoadingProgressDialog.dismiss();
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.printUsageLog("MainActivity", "MainActivity is started");
        Log.i("MainActivity", "onCreate() Called");
        setProjectConfig();
        setContentView(0x7f030022);
        epConnectionHandler = EPConnectionHandlerImpl.getConnectionHandler();
        if (mResources == null)
            mResources = ToqApplication.getAppContext().getResources();
        initializeUI();
        initialiseEPLCardUI();
        initialiseEPRCardUI();
        setTypeFaceForButtonsText();
        updateFirmwareLayout(0);
        updateFirmwareLayout(1);
        updateFirmwareLayout(2);
        registerUIReceiver();
        mBTAdapter = BluetoothAdapter.getDefaultAdapter();
        getOverFlowMenu().setOnClickListener(overFlowMenuClickListener);
        mEarpieceProgressDialog = new Dialog(this);
        mEarpieceProgressDialog.getWindow().requestFeature(1);
        mEarpieceSoftwareUpdateProgressDialog = new Dialog(this);
        mEarpieceSoftwareUpdateProgressDialog.getWindow().requestFeature(1);
        mEarpieceChangeRolesDialog = new Dialog(this);
        mEarpieceChangeRolesDialog.getWindow().requestFeature(1);
        mEarpieceBassBoostDialog = new Dialog(this);
        mEarpieceBassBoostDialog.getWindow().requestFeature(1);
        mEarpieceChangeRoleInSingleHeadsetDialog = new Dialog(this);
        mEarpieceChangeRoleInSingleHeadsetDialog.getWindow().requestFeature(1);
        mEarpieceInfoDialog = new Dialog(this);
        mEarpieceInfoDialog.getWindow().requestFeature(1);
        Constants.EP_TFTP_PATH = (new StringBuilder()).append(ToqApplication.getAppContext().getFilesDir().getAbsoluteFile()).append("/TFTP/").toString();
    }

    protected Dialog onCreateDialog(int i)
    {
        switch (i)
        {
        case 1: // '\001'
            mEulaLoadingProgressDialog.setMessage("Loading EULA...");
            mEulaLoadingProgressDialog.setCancelable(false);
            mEulaLoadingProgressDialog.setProgressStyle(0);
            return mEulaLoadingProgressDialog;
        }
        return null;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        dismissAllDialogs();
        unbindDrawables(findViewById(0x7f0900b8));
        PhubBluetoothDeviceBondInfo.getInstance().isWDBonded();
        PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded();
        PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded();
        if (mWebViewContainer != null)
            mWebViewContainer.removeAllViews();
        mWebViewContainer = null;
        if (mWebView != null)
            mWebView.destroy();
        mWebView = null;
        mHandler = null;
        Log.w("MainActivity", "onDestroy EP");
        try
        {
            unregisterReceiver(mUIReceiver);
        }
        catch (Exception exception)
        {
            Log.e("MainActivity", (new StringBuilder()).append("Exception in onDestroy(): ").append(exception.toString()).toString());
        }
        mWDEPDetailsDialogListView = null;
        mEulaLoadingProgressDialog = null;
        mEulaDialog = null;
        mBTButton = null;
        mEulaAgreeButton = null;
        mEulaCancelButton = null;
        mWDEPDetailsAgreeButton = null;
        mWDIconText = null;
        mSoftwareUpdateText = null;
        mVersionAndDateText = null;
        mDivider = null;
        mWdIconLayout = null;
        mBTOffLayout = null;
        mUnpairLinearLayout = null;
        mDeviceIconsLinearLayout = null;
        mWDInflatorLayout = null;
        mSoftwareUpdate = null;
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
        mWDPrimarySecondaryIcon = null;
        if (overFlowMenu != null && overFlowMenu.getBackground() != null)
            overFlowMenu.getBackground().setCallback(null);
        overFlowMenu = null;
        BTProfilesUtil.getInstance(ToqApplication.getAppContext()).shutdown();
        System.gc();
    }

    protected void onPause()
    {
        Log.d("MainActivity", "onPause");
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        Log.i("MainActivity", "onResume() is called");
        if (HeadsetAction.getInstance().getCurrentAction() == -1)
            avoidStyledDataFlag = isRefreshRequired(15);
        else
            avoidStyledDataFlag = false;
        if (avoidStyledDataFlag)
        {
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_text2", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
        }
        updateUI();
        mEulaLoadingProgressDialog.dismiss();
        mBTButton.setOnClickListener(mainScreenButtonsListener);
        if (mWDInflatorLayout != null)
        {
            if (mWDEPCardDetailsDialog.isShowing())
                mWDInflatorLayout.setEnabled(false);
            mWDInflatorLayout.setOnClickListener(wdEPDetailsDialogClickListener);
        }
        if (mEPLInflatorLayout != null)
        {
            if (mWDEPCardDetailsDialog.isShowing())
                mEPLInflatorLayout.setEnabled(false);
            mEPLInflatorLayout.setOnClickListener(wdEPDetailsDialogClickListener);
        }
        if (mEPRInflatorLayout != null)
        {
            if (mWDEPCardDetailsDialog.isShowing())
                mEPRInflatorLayout.setEnabled(false);
            mEPRInflatorLayout.setOnClickListener(wdEPDetailsDialogClickListener);
        }
        mWDEPCardDetailsDialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final MainActivity this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                if (mWDInflatorLayout != null)
                    mWDInflatorLayout.setEnabled(true);
                if (mEPLInflatorLayout != null)
                    mEPLInflatorLayout.setEnabled(true);
                if (mEPRInflatorLayout != null)
                    mEPRInflatorLayout.setEnabled(true);
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
);
        updateEPStereoAudioUI();
        updatePrimaryIconUI(1);
        updatePrimaryIconUI(2);
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
            }
        }
        if (!PhubBluetoothDeviceBondInfo.getInstance().isWDBonded() && !PhubBluetoothDeviceBondInfo.getInstance().isLeftEPBonded() && !PhubBluetoothDeviceBondInfo.getInstance().isRightEPBonded())
            Log.d("MainActivity", "onResume() No bonded devices found");
        if (!EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).getString("last_status_checked", "none").equalsIgnoreCase("none"))
            updateEarpieceUI();
    }

    public void onStart()
    {
        super.onStart();
        Log.i("MainActivity", "onStart() Called");
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
        if (mResources.getString(0x7f0a012e).equals(s))
        {
            UsageToqLoggerImpl usagetoqloggerimpl = (UsageToqLoggerImpl)ToqLoggerFactory.getInstance().getLoggerInstance("usage_log");
            if (usagetoqloggerimpl != null)
                usagetoqloggerimpl.sendLogs();
        } else
        if (mResources.getString(0x7f0a0130).equals(s))
            showToqHelp();
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
    }

    public void setProjectConfig()
    {
        ProjectConfig projectconfig = ProjectConfig.getProjectConfig();
        projectconfig.setBambooBuildNumber(getString(0x7f0a0002));
        projectconfig.setTransferType(getString(0x7f0a0005));
        projectconfig.loadProperties();
        printProjectInfo(projectconfig);
    }

    public void showDialog(String s, String s1, int i, String s2, String s3)
    {
        AlertDialog alertdialog = null;
        switch (i)
        {
        case 2: // '\002'
            alertdialog = mEPRAlert;
            break;

        case 1: // '\001'
            alertdialog = mEPLAlert;
            break;

        case 0: // '\0'
            alertdialog = mAlert;
            break;
        }
        if (alertdialog != null && alertdialog.isShowing())
            alertdialog.dismiss();
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle(s);
        builder.setMessage(s1);
        builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

            final MainActivity this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
        }
);
        if (s3 != null)
            builder.setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                final MainActivity this$0;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    dialoginterface.dismiss();
                }

            
            {
                this$0 = MainActivity.this;
                Object();
            }
            }
);
        AlertDialog alertdialog1 = builder.create();
        alertdialog1.show();
        if (i == 0)
        {
            mAlert = alertdialog1;
        } else
        {
            if (i == 1)
            {
                mEPLAlert = alertdialog1;
                return;
            }
            if (i == 2)
            {
                mEPRAlert = alertdialog1;
                return;
            }
        }
    }

    public void showDialog(String s, String s1, final int endpointType, String s2, String s3, final int dialogType)
    {
        AlertDialog alertdialog = null;
        switch (endpointType)
        {
        case 2: // '\002'
            alertdialog = mEPRAlert;
            break;

        case 1: // '\001'
            alertdialog = mEPLAlert;
            break;

        case 0: // '\0'
            alertdialog = mAlert;
            break;
        }
        if (alertdialog != null && alertdialog.isShowing())
            alertdialog.dismiss();
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle(s);
        builder.setMessage(s1);
        builder.setPositiveButton(s2, new android.content.DialogInterface.OnClickListener() {

            final MainActivity this$0;
            final int val$dialogType;
            final int val$endpointType;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                dialogResponseHandler(dialogType, 0, endpointType);
            }

            
            {
                this$0 = MainActivity.this;
                dialogType = i;
                endpointType = j;
                Object();
            }
        }
);
        if (s3 != null)
            builder.setNegativeButton(s3, new android.content.DialogInterface.OnClickListener() {

                final MainActivity this$0;
                final int val$dialogType;
                final int val$endpointType;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                    dialogResponseHandler(dialogType, 1, endpointType);
                }

            
            {
                this$0 = MainActivity.this;
                dialogType = i;
                endpointType = j;
                Object();
            }
            }
);
        AlertDialog alertdialog1 = builder.create();
        alertdialog1.show();
        if (endpointType == 0)
        {
            mAlert = alertdialog1;
        } else
        {
            if (endpointType == 1)
            {
                mEPLAlert = alertdialog1;
                return;
            }
            if (endpointType == 2)
            {
                mEPRAlert = alertdialog1;
                return;
            }
        }
    }

    public void showToastMessage(final String message, final Context context)
    {
        Log.d("MainActivity", (new StringBuilder()).append("Showtoast message = ").append(message).append(", context = ").append(context).append(", mHandler =").append(mHandler).toString());
        if (mHandler != null)
            mHandler.post(new Runnable() {

                final MainActivity this$0;
                final Context val$context;
                final String val$message;

                public void run()
                {
                    Toast.makeText(context, message, 1).show();
                }

            
            {
                this$0 = MainActivity.this;
                context = context1;
                message = s;
                Object();
            }
            }
);
    }

    static 
    {
        MAX_CHANGE_ROLE_COUNTER_VALUE = 25;
    }











/*
    static boolean access$1702(boolean flag)
    {
        avoidStyledDataFlag = flag;
        return flag;
    }

*/













/*
    static byte access$2702(byte byte0)
    {
        mChangeRoleSecondsCounter = byte0;
        return byte0;
    }

*/


/*
    static byte access$2708()
    {
        byte byte0 = mChangeRoleSecondsCounter;
        mChangeRoleSecondsCounter = (byte)(byte0 + 1);
        return byte0;
    }

*/



/*
    static Handler access$2802(Handler handler)
    {
        mChangeRoleHandler = handler;
        return handler;
    }

*/











/*
    static byte access$3602(byte byte0)
    {
        mChangeRoleSingleHeadsetSecondsCounter = byte0;
        return byte0;
    }

*/


/*
    static byte access$3608()
    {
        byte byte0 = mChangeRoleSingleHeadsetSecondsCounter;
        mChangeRoleSingleHeadsetSecondsCounter = (byte)(byte0 + 1);
        return byte0;
    }

*/



/*
    static Handler access$3702(Handler handler)
    {
        mChangeRoleSingleHeadsetHandler = handler;
        return handler;
    }

*/










/*
    static ListAdapter access$4402(MainActivity mainactivity, ListAdapter listadapter)
    {
        mainactivity.mWDEPDetailsListAdapter = listadapter;
        return listadapter;
    }

*/







/*
    static Dialog access$4902(MainActivity mainactivity, Dialog dialog)
    {
        mainactivity.mEulaDialog = dialog;
        return dialog;
    }

*/






























/*
    static boolean access$7402(boolean flag)
    {
        isRightLowBattery = flag;
        return flag;
    }

*/






/*
    static boolean access$7802(boolean flag)
    {
        isLeftLowBattery = flag;
        return flag;
    }

*/



















/*
    static PopupWindow access$9302(MainActivity mainactivity, PopupWindow popupwindow)
    {
        mainactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/

    // Unreferenced inner class com/qualcomm/toq/earpiece/ui/activity/MainActivity$15$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final _cls15 this$1;

        public void run()
        {
            HeadsetAction.getInstance().setCurrentAction(-1);
            if (MainActivity.mEarpieceChangeRoleInSingleHeadsetDialog != null && MainActivity.mEarpieceChangeRoleInSingleHeadsetDialog.isShowing())
                MainActivity.mEarpieceChangeRoleInSingleHeadsetDialog.dismiss();
            showToastMessage("Tap 'View Status' to see the latest headset status", ToqApplication.getAppContext());
            MainActivity.avoidStyledDataFlag = true;
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_status_checked", "true");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_text2", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
            updateEarpieceUI();
        }

            
            {
                this$1 = _cls15.this;
                Object();
            }
    }


    // Unreferenced inner class com/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1

/* anonymous class */
    class _cls1 extends AsyncTask
    {

        final _cls9 this$1;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient Void doInBackground(Void avoid[])
        {
            try
            {
                runOnUiThread(new Runnable() {

                    final _cls1 this$2;

                    public void run()
                    {
                        HeadsetAction.getInstance().unRegisterHeadsetActionResponseReceiver();
                        HeadsetAction.getInstance().setCurrentAction(-1);
                        dismissEarpieceRoleChangeDialog();
                        closePendingActions();
                        HeadsetAction.getInstance().quitLooper();
                        MainActivity.avoidStyledDataFlag = true;
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_status_checked", "true");
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress1", "");
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress2", "");
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_text2", "");
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode2", "");
                        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("firmware_progress_mode1", "");
                        updateEarpieceUI();
                        showToastMessage("Performed Change Roles \nTap 'View Status' to see the latest headset status", ToqApplication.getAppContext());
                    }

            
            {
                this$2 = _cls1.this;
                Object();
            }
                }
);
            }
            catch (Exception exception)
            {
                Log.d("MainActivity", "Exception while closing change Roles dialog");
                exception.printStackTrace();
            }
            return null;
        }

            
            {
                this$1 = _cls9.this;
                AsyncTask();
            }
    }

}

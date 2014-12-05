// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.activity;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.MessageQueue;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PhubBluetoothDeviceBondInfo;
import com.qualcomm.toq.base.utils.Utils;
import com.qualcomm.toq.smartwatch.service.PHubService;
import com.qualcomm.toq.smartwatch.ui.activity.MainActivity;

public class SplashScreenActivity extends Activity
{

    private static final long SPLASH_DISPLAY_TIME = 1000L;
    private static final String TAG = "SplashScreenActivity";
    ImageView backgroundImageView;
    Handler mBackgroundHandler;
    Looper mBackgroundLooper;
    Runnable mBackgroundRunnable;
    Handler mHandler;
    Runnable mRunnable;

    public SplashScreenActivity()
    {
        backgroundImageView = null;
        mRunnable = new Runnable() {

            final SplashScreenActivity this$0;

            public void run()
            {
                Intent intent;
                if (ToqApplication.getDeviceType() == 0)
                    intent = new Intent(SplashScreenActivity.this, com/qualcomm/toq/smartwatch/ui/activity/MainActivity);
                else
                if (ToqApplication.getDeviceType() == 1)
                {
                    intent = new Intent(SplashScreenActivity.this, com/qualcomm/toq/earpiece/ui/activity/MainActivity);
                } else
                {
                    int i = ToqApplication.getDeviceType();
                    intent = null;
                    if (i == 2)
                        intent = new Intent(SplashScreenActivity.this, com/qualcomm/toq/smartwatch/ui/activity/MainActivity);
                }
                startActivity(intent);
                finish();
            }

            
            {
                this$0 = SplashScreenActivity.this;
                super();
            }
        }
;
        mBackgroundRunnable = new Runnable() {

            final SplashScreenActivity this$0;

            public void run()
            {
                if (ToqApplication.getAppContext().getResources().getString(0x7f0a0000).equals("TCP"))
                {
                    Utils.showBrowserNotInstalledToast();
                    if (!PHubService.isPHubServiceRunning)
                    {
                        Log.d("SplashScreenActivity", "Starting PhubService");
                        if (Utils.isEulaAgreementAccepted())
                        {
                            Intent intent1 = new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName());
                            startService(intent1);
                        }
                    } else
                    {
                        Log.d("SplashScreenActivity", "PhubService is already running");
                    }
                }
                BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
                if (bluetoothadapter != null && bluetoothadapter.isEnabled())
                {
                    if ((ToqApplication.getDeviceType() == 0 || ToqApplication.getDeviceType() == 2) && PhubBluetoothDeviceBondInfo.getInstance().isWDBonded())
                        if (!PHubService.isPHubServiceRunning)
                        {
                            Log.d("SplashScreenActivity", "Starting PhubService");
                            if (Utils.isEulaAgreementAccepted())
                            {
                                Intent intent = new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName());
                                startService(intent);
                            }
                        } else
                        {
                            Log.d("SplashScreenActivity", "PhubService is already running");
                        }
                } else
                {
                    Log.d("SplashScreenActivity", "BT adapter is null or BT is OFF");
                }
                Looper.myQueue().addIdleHandler(new android.os.MessageQueue.IdleHandler() {

                    final _cls2 this$1;

                    public boolean queueIdle()
                    {
                        Log.d("SplashScreenActivity", "Background threads queue is empty.Removing the handler calbacks.");
                        if (mBackgroundHandler != null && mBackgroundRunnable != null)
                        {
                            mBackgroundHandler.removeCallbacks(mBackgroundRunnable);
                            mBackgroundHandler = null;
                            mBackgroundRunnable = null;
                        }
                        if (mBackgroundLooper != null)
                        {
                            mBackgroundLooper.quit();
                            mBackgroundLooper = null;
                        }
                        return false;
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                }
);
            }

            
            {
                this$0 = SplashScreenActivity.this;
                super();
            }
        }
;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f03004a);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        Constants.SCREEN_HEIGHT = displaymetrics.heightPixels;
        Constants.SCREEN_WIDTH = displaymetrics.widthPixels;
        backgroundImageView = (ImageView)findViewById(0x7f090255);
        if (ToqApplication.getDeviceType() == 1)
            backgroundImageView.setImageDrawable(getApplicationContext().getResources().getDrawable(0x7f0200a6));
        else
            backgroundImageView.setImageDrawable(getApplicationContext().getResources().getDrawable(0x7f020136));
        mHandler = new Handler();
        if (mHandler != null && mRunnable != null)
            mHandler.postDelayed(mRunnable, 1000L);
    }

    protected void onDestroy()
    {
        Log.d("SplashScreenActivity", "onDestroy called");
        super.onDestroy();
        if (mHandler != null && mRunnable != null)
        {
            mHandler.removeCallbacks(mRunnable);
            mHandler = null;
            mRunnable = null;
        }
        if (backgroundImageView != null)
        {
            backgroundImageView.setImageDrawable(null);
            backgroundImageView = null;
        }
    }

    public void onResume()
    {
        super.onResume();
        Log.d("SplashScreenActivity", "onResume");
        HandlerThread handlerthread = new HandlerThread("SplashScreenActivity");
        handlerthread.start();
        mBackgroundLooper = handlerthread.getLooper();
        if (mBackgroundLooper != null)
        {
            mBackgroundHandler = new Handler(mBackgroundLooper);
            mBackgroundHandler.post(mBackgroundRunnable);
        }
    }

    public void onStart()
    {
        super.onStart();
        Log.printUsageLog("SplashScreenActivity", "SplashScreenActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("SplashScreenActivity", "SplashScreenActivity is stopped");
    }
}

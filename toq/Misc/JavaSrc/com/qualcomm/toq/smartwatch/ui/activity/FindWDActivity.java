// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.*;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.SystemController;
import com.qualcomm.toq.smartwatch.utils.WakeLocker;

public class FindWDActivity extends Activity
{

    private static final String TAG = "FindWDActivity";
    BroadcastReceiver btReceiver;
    private TextView mFindWDTextView;

    public FindWDActivity()
    {
        mFindWDTextView = null;
        btReceiver = new BroadcastReceiver() {

            final FindWDActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s;
                s = intent.getAction();
                try
                {
                    if (Constants.ACTION_FOUND_WD_REQUEST.equals(s))
                    {
                        unregisterReceiver(btReceiver);
                        finish();
                        return;
                    }
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    return;
                }
                if (Constants.ACTION_BLUETOOTH_NOT_ENABLED.equals(s))
                {
                    Log.d("FindWDActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                    return;
                }
                int i;
                int j;
                if (!Constants.ACTION_CONNECTION_STATE_CHANGE.equals(s))
                    break MISSING_BLOCK_LABEL_195;
                Log.d("FindWDActivity", (new StringBuilder()).append("onReceive:").append(s).toString());
                i = intent.getIntExtra("state", 0);
                j = intent.getIntExtra("endpointtype", 0);
                if (j == 3 || j == 2 || j == 1 || i == 3)
                    break MISSING_BLOCK_LABEL_195;
                unregisterReceiver(btReceiver);
                finish();
                return;
                Exception exception1;
                exception1;
                Log.d("FindWDActivity", exception1.toString());
                exception1.printStackTrace();
            }

            
            {
                this$0 = FindWDActivity.this;
                super();
            }
        }
;
    }

    private void cancelFindWDReq()
        throws RemoteException
    {
        SystemController systemcontroller = SystemController.getSystemController();
        if (systemcontroller != null)
        {
            systemcontroller.sendCancelFindWDReq();
            return;
        } else
        {
            Log.d("FindWDActivity", "SystemController.getSystemController() is null");
            return;
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("FindWDActivity", (new StringBuilder()).append("onActivityResult ").append(j).toString());
    }

    public void onBackPressed()
    {
        Log.d("FindWDActivity", "onBackPressed() called");
        super.onBackPressed();
        try
        {
            cancelFindWDReq();
            unregisterReceiver(btReceiver);
            finish();
            return;
        }
        catch (Exception exception)
        {
            Log.e("FindWDActivity", exception.toString());
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        WakeLocker.acquire(this);
        setContentView(0x7f03002b);
        mFindWDTextView = (TextView)findViewById(0x7f0901ad);
        if (mFindWDTextView != null)
            mFindWDTextView.setText("Finding WD Device\nPlease click Cancel Button\nto stop Finding");
        IntentFilter intentfilter = new IntentFilter(Constants.ACTION_BLUETOOTH_NOT_ENABLED);
        if (intentfilter != null)
        {
            intentfilter.addAction(Constants.ACTION_FOUND_WD_REQUEST);
            intentfilter.addAction(Constants.ACTION_CONNECTION_STATE_CHANGE);
            registerReceiver(btReceiver, intentfilter);
        }
        ((Button)findViewById(0x7f0901ae)).setOnClickListener(new android.view.View.OnClickListener() {

            final FindWDActivity this$0;

            public void onClick(View view)
            {
                try
                {
                    cancelFindWDReq();
                    unregisterReceiver(btReceiver);
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
                catch (IllegalArgumentException illegalargumentexception) { }
                finish();
            }

            
            {
                this$0 = FindWDActivity.this;
                super();
            }
        }
);
        WakeLocker.release();
        setFinishOnTouchOutside(false);
    }

    protected void onDestroy()
    {
        Log.d("FindWDActivity", "onDestroy");
        super.onDestroy();
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("FindWDActivity", "FindWDActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("FindWDActivity", "FindWDActivity is stopped");
    }

}

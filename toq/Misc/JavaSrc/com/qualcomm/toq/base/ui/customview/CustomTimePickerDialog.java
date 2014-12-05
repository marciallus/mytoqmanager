// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.customview;

import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ToqData;
import java.util.Calendar;

public class CustomTimePickerDialog extends TimePickerDialog
{
    public static interface CustomTimePickerDialogInterface
    {

        public abstract void onNegetiveButtonClicked();

        public abstract void onPositiveButtonClicked();
    }


    private static final int NUMBER_PICKER_HOUR_MAX_VALUE = 23;
    private static final int NUMBER_PICKER_MINUTE_MAX_VALUE = 59;
    private static final int NUMBER_PICKER_MIN_VALUE = 0;
    private static final String TAG = "CustomTimePickerDialog";
    private TimePicker mTimePicker;
    private CustomTimePickerDialogInterface timePickerInterface;
    private android.content.DialogInterface.OnClickListener timePickerdialogButtonsListener;

    public CustomTimePickerDialog(Context context, android.app.TimePickerDialog.OnTimeSetListener ontimesetlistener, String s, String s1, String s2, boolean flag)
    {
        ContextThemeWrapper contextthemewrapper = new ContextThemeWrapper(context, 0x7f0b0007);
        byte byte0;
        if (Calendar.getInstance().get(11) == 0)
            byte0 = 23;
        else
            byte0 = 0;
        byte byte1;
        if (Calendar.getInstance().get(12) == 0)
            byte1 = 59;
        else
            byte1 = 0;
        super(contextthemewrapper, ontimesetlistener, byte0, byte1, flag);
        mTimePicker = null;
        timePickerdialogButtonsListener = new android.content.DialogInterface.OnClickListener() {

            final CustomTimePickerDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                switch (i)
                {
                case -2: 
                    timePickerInterface.onNegetiveButtonClicked();
                    break;

                case -1: 
                    getTimePicker().clearFocus();
                    timePickerInterface.onPositiveButtonClicked();
                    break;
                }
                if (isShowing())
                    dismiss();
            }

            
            {
                this$0 = CustomTimePickerDialog.this;
                super();
            }
        }
;
        updateTime(Calendar.getInstance().get(11), Calendar.getInstance().get(12));
        timePickerInterface = (CustomTimePickerDialogInterface)context;
        setTitle(s);
        setCancelable(false);
        setButton(-1, s1, timePickerdialogButtonsListener);
        setButton(-2, s2, timePickerdialogButtonsListener);
    }

    private void setTimePicker(TimePicker timepicker)
    {
        mTimePicker = timepicker;
    }

    public TimePicker getTimePicker()
    {
        return mTimePicker;
    }

    public void onTimeChanged(TimePicker timepicker, int i, int j)
    {
        Log.d("CustomTimePickerDialog", (new StringBuilder()).append(" OnTimeChanged called ==> changed hour : ").append(i).append(" and changed minute : ").append(j).toString());
        if (getTimePicker() == null)
            setTimePicker(timepicker);
    }

    public void show()
    {
        super.show();
        View view;
        TextView textview;
        Button button;
        Button button1;
        Button button2;
        try
        {
            view = findViewById(getContext().getResources().getIdentifier("android:id/titleDivider", null, null));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.d("CustomTimePickerDialog", exception.toString());
            return;
        }
        if (view == null)
            break MISSING_BLOCK_LABEL_56;
        view.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-2, 5));
        view.setBackgroundColor(ToqApplication.getAppContext().getResources().getColor(0x7f070015));
        textview = (TextView)findViewById(getContext().getResources().getIdentifier("android:id/alertTitle", null, null));
        button = getButton(-1);
        button1 = getButton(-2);
        if (ToqData.getInstance().getRegularTypeFace() == null)
            break MISSING_BLOCK_LABEL_138;
        if (textview == null)
            break MISSING_BLOCK_LABEL_116;
        textview.setTypeface(ToqData.getInstance().getMediumTypeFace());
        button.setTypeface(ToqData.getInstance().getRegularTypeFace());
        button1.setTypeface(ToqData.getInstance().getRegularTypeFace());
        if (textview == null)
            break MISSING_BLOCK_LABEL_148;
        textview.setTextSize(22F);
        button.setTextSize(16F);
        button1.setTextSize(16F);
        updateTime(Calendar.getInstance().get(11), Calendar.getInstance().get(12));
        if (android.os.Build.VERSION.SDK_INT <= 19)
            break MISSING_BLOCK_LABEL_228;
        button2 = (Button)findViewById(getTimePicker().getContext().getResources().getIdentifier("android:id/done_button", null, null));
        if (button2 == null)
            break MISSING_BLOCK_LABEL_228;
        button2.setVisibility(8);
    }

}

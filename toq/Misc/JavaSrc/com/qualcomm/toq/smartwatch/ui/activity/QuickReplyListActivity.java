// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.*;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.*;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.ui.customview.PhubEditTextView;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.SMSController;
import com.qualcomm.toq.smartwatch.ui.adapter.QuickReplyAdapter;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import com.qualcomm.toq.smartwatch.utils.QuickReplyMessageObject;
import com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;

public class QuickReplyListActivity extends ListActivity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef, com.qualcomm.toq.smartwatch.ui.adapter.QuickReplyAdapter.QRListAdapterInterface
{

    private static final int MAXSIZE_OF_CHARACTERS = 160;
    private static final int MAX_LINE_COUNT = 10;
    private static final String TAG = "QuickReplyListActivity";
    android.view.View.OnFocusChangeListener editTextFocusChangedListener;
    android.view.View.OnKeyListener editTextOnKeyListener;
    private int lengthOfQRString;
    private TextView mCharacterCountText;
    private ArrayList mCurrentQuickReplys;
    private DisplayMetrics mDisplayMetrics;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener mDropListener;
    private PhubEditTextView mEditText;
    private InputMethodManager mInputMethodManager;
    private Dialog mNewQRDialog;
    private PopupWindow mPopUpWindow;
    private LinearLayout mQRAcceptButtonView;
    private LinearLayout mQRAddImageView;
    private QuickReplyAdapter mQuickReplyAdapter;
    private String mQuickReplyFirstTimeDispKeyOnLocale;
    private ListView mQuickReplyList;
    private LinearLayout mQuickReplyOverFlowMenu;
    private String mQuickReplyPrefsKeyOnLocale;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener mRemoveListener;
    android.view.View.OnClickListener qrDialogButtonsListener;
    android.view.View.OnClickListener qrScreenButtonsListener;
    private TextWatcher textWatcher;

    public QuickReplyListActivity()
    {
        mCharacterCountText = null;
        lengthOfQRString = 0;
        mEditText = null;
        mInputMethodManager = null;
        mQuickReplyPrefsKeyOnLocale = null;
        mQuickReplyFirstTimeDispKeyOnLocale = null;
        qrScreenButtonsListener = new android.view.View.OnClickListener() {

            final QuickReplyListActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296848: 
                    if (mPopUpWindow == null)
                    {
                        String as[] = getResources().getStringArray(0x7f060008);
                        mPopUpWindow = (new PopUpWindowUtils(QuickReplyListActivity.this)).getPopUpWindow(as, QuickReplyListActivity.this);
                    }
                    mPopUpWindow.showAsDropDown(view, 0, 0);
                    return;

                case 2131296849: 
                    createNewQRMessage();
                    return;

                case 2131296847: 
                    initiateDoneChanges();
                    return;
                }
            }

            
            {
                this$0 = QuickReplyListActivity.this;
                super();
            }
        }
;
        editTextOnKeyListener = new android.view.View.OnKeyListener() {

            final QuickReplyListActivity this$0;

            public boolean onKey(View view, int i, KeyEvent keyevent)
            {
                return i == 66 && keyevent.getAction() == 0 && ((EditText)view).getLineCount() >= 10;
            }

            
            {
                this$0 = QuickReplyListActivity.this;
                super();
            }
        }
;
        editTextFocusChangedListener = new android.view.View.OnFocusChangeListener() {

            final QuickReplyListActivity this$0;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    Log.d("QuickReplyListActivity", "Edit text is focused");
                    mNewQRDialog.getWindow().setSoftInputMode(5);
                }
            }

            
            {
                this$0 = QuickReplyListActivity.this;
                super();
            }
        }
;
        qrDialogButtonsListener = new android.view.View.OnClickListener() {

            final QuickReplyListActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296798: 
                    mNewQRDialog.dismiss();
                    return;

                case 2131296799: 
                    String s = mEditText.getText().toString();
                    if (!TextUtils.isEmpty(s))
                    {
                        saveNewQuickReply(s);
                        mNewQRDialog.dismiss();
                        return;
                    }
                    break;
                }
            }

            
            {
                this$0 = QuickReplyListActivity.this;
                super();
            }
        }
;
        textWatcher = new TextWatcher() {

            private boolean isMaxCharactersReached;
            private AlertDialog qrAlertDialog;
            private StringBuilder qrBufferStringBuilder;
            final QuickReplyListActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                lengthOfQRString = mEditText.getText().toString().length();
                if (lengthOfQRString > 160)
                {
                    Log.d("QuickReplyListActivity", (new StringBuilder()).append("The length of string afterTextChanged  ").append(lengthOfQRString).toString());
                    mNewQRDialog.getWindow().setSoftInputMode(2);
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                lengthOfQRString = mEditText.getText().toString().length();
                if (lengthOfQRString > 160)
                {
                    Log.d("QuickReplyListActivity", (new StringBuilder()).append("The length of string is beforeTextChanged ").append(lengthOfQRString).toString());
                    mNewQRDialog.getWindow().setSoftInputMode(2);
                }
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                mCharacterCountText.setVisibility(8);
                lengthOfQRString = charsequence.toString().length();
                if (lengthOfQRString >= 160 && !isMaxCharactersReached)
                    try
                    {
                        Log.d("QuickReplyListActivity", (new StringBuilder()).append("Inside buffer setting ").append(lengthOfQRString).toString());
                        qrBufferStringBuilder.delete(0, qrBufferStringBuilder.length());
                        qrBufferStringBuilder.append(charsequence.toString().substring(0, 160));
                        isMaxCharactersReached = true;
                    }
                    catch (IndexOutOfBoundsException indexoutofboundsexception)
                    {
                        Log.d("QuickReplyListActivity", (new StringBuilder()).append("Index out of bound exception in Quick Reply Screen ").append(indexoutofboundsexception.toString()).toString());
                        indexoutofboundsexception.printStackTrace();
                    }
                if (lengthOfQRString > 160)
                {
                    mCharacterCountText.setText((new StringBuilder()).append(String.valueOf(lengthOfQRString)).append("/").append(String.valueOf(160)).toString());
                    mNewQRDialog.getWindow().setSoftInputMode(2);
                    if (qrAlertDialog == null)
                    {
                        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(QuickReplyListActivity.this);
                        if (builder != null)
                        {
                            builder.setTitle(getResources().getString(0x7f0a003a));
                            builder.setMessage(getResources().getString(0x7f0a0038));
                            builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                                final _cls5 this$1;

                                public void onClick(DialogInterface dialoginterface, int i)
                                {
                                    dialoginterface.dismiss();
                                    mEditText.setEnabled(true);
                                    mInputMethodManager.showSoftInput(mEditText, 0);
                                }

            
            {
                this$1 = _cls5.this;
                super();
            }
                            }
);
                            Log.d("QuickReplyListActivity", (new StringBuilder()).append("The dialog is ").append(lengthOfQRString).toString());
                            qrAlertDialog = builder.create();
                            qrAlertDialog.setCanceledOnTouchOutside(false);
                            qrAlertDialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

                                final _cls5 this$1;

                                public void onCancel(DialogInterface dialoginterface)
                                {
                                    mEditText.setEnabled(true);
                                    mInputMethodManager.showSoftInput(mEditText, 0);
                                }

            
            {
                this$1 = _cls5.this;
                super();
            }
                            }
);
                        }
                    }
                    if (mEditText != null && mCharacterCountText != null)
                    {
                        if (qrBufferStringBuilder != null)
                            mEditText.setText(qrBufferStringBuilder);
                        mEditText.setSelection(160);
                        mEditText.setEnabled(false);
                        mCharacterCountText.setVisibility(0);
                    }
                    if (qrAlertDialog != null && !qrAlertDialog.isShowing())
                        qrAlertDialog.show();
                    return;
                }
                boolean flag;
                if (mEditText.getText().toString().length() >= 160)
                    flag = true;
                else
                    flag = false;
                isMaxCharactersReached = flag;
                mEditText.setEnabled(true);
                mCharacterCountText.setText((new StringBuilder()).append(String.valueOf(lengthOfQRString)).append("/").append(String.valueOf(160)).toString());
                mCharacterCountText.setVisibility(0);
            }

            
            {
                this$0 = QuickReplyListActivity.this;
                super();
                qrAlertDialog = null;
                qrBufferStringBuilder = new StringBuilder();
                isMaxCharactersReached = false;
            }
        }
;
        mDropListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener() {

            final QuickReplyListActivity this$0;

            public void drop(int i, int j)
            {
                Log.d("QuickReplyListActivity", (new StringBuilder()).append(" DropListener from = ").append(i).append("to = ").append(j).toString());
                moveListItem(i, j);
                if (mCurrentQuickReplys != null && mQuickReplyAdapter != null)
                {
                    mQuickReplyAdapter.setUpdateList(mCurrentQuickReplys);
                    mQuickReplyAdapter.notifyDataSetChanged();
                }
            }

            
            {
                this$0 = QuickReplyListActivity.this;
                super();
            }
        }
;
        mRemoveListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener() {

            final QuickReplyListActivity this$0;

            public void remove(int i)
            {
                if (mCurrentQuickReplys != null)
                {
                    mCurrentQuickReplys.remove(i);
                    mCurrentQuickReplys.remove(i);
                    if (mQuickReplyAdapter != null)
                    {
                        mQuickReplyAdapter.setUpdateList(mCurrentQuickReplys);
                        mQuickReplyAdapter.notifyDataSetChanged();
                    }
                }
            }

            
            {
                this$0 = QuickReplyListActivity.this;
                super();
            }
        }
;
    }

    private void createNewQRMessage()
    {
        mNewQRDialog.setContentView(getLayoutInflater().inflate(0x7f03003e, null));
        mNewQRDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
        ((TextView)mNewQRDialog.findViewById(0x7f090219)).setText(getResources().getString(0x7f0a0039));
        Button button = (Button)mNewQRDialog.findViewById(0x7f09021f);
        Button button1 = (Button)mNewQRDialog.findViewById(0x7f09021e);
        mNewQRDialog.getWindow().setSoftInputMode(32);
        if (ToqData.getInstance().getRegularTypeFace() != null)
        {
            button.setTypeface(ToqData.getInstance().getRegularTypeFace());
            button1.setTypeface(ToqData.getInstance().getRegularTypeFace());
        }
        mEditText = (PhubEditTextView)mNewQRDialog.findViewById(0x7f09021a);
        mCharacterCountText = (TextView)mNewQRDialog.findViewById(0x7f09021c);
        if (mEditText != null)
        {
            mEditText.addTextChangedListener(textWatcher);
            mEditText.setOnKeyListener(editTextOnKeyListener);
            mEditText.setOnFocusChangeListener(editTextFocusChangedListener);
        }
        button.setOnClickListener(qrDialogButtonsListener);
        button1.setOnClickListener(qrDialogButtonsListener);
        mNewQRDialog.show();
    }

    private void deleteQuickReplyAt(int i)
    {
        if (mCurrentQuickReplys != null && mCurrentQuickReplys.size() == 0)
            Log.d("QuickReplyListActivity", "Either Quick Reply is null or size is zero");
        else
        if (mCurrentQuickReplys != null)
        {
            Log.d("QuickReplyListActivity", (new StringBuilder()).append("Size of list = ").append(mCurrentQuickReplys.size()).toString());
            mCurrentQuickReplys.remove(i);
            Log.d("QuickReplyListActivity", (new StringBuilder()).append("Size of list = ").append(mCurrentQuickReplys.size()).toString());
            if (mQuickReplyAdapter != null)
            {
                mQuickReplyAdapter.setUpdateList(mCurrentQuickReplys);
                mQuickReplyAdapter.notifyDataSetChanged();
            }
            if (mQuickReplyList != null)
            {
                mQuickReplyList.setAdapter(mQuickReplyAdapter);
                mQuickReplyList.invalidateViews();
                return;
            }
        }
    }

    private LinearLayout getOverFlowMenu()
    {
        if (mQuickReplyOverFlowMenu == null)
            mQuickReplyOverFlowMenu = (LinearLayout)findViewById(0x7f090250);
        return mQuickReplyOverFlowMenu;
    }

    private void initiateDoneChanges()
    {
        SharedPreferences sharedpreferences = getSharedPreferences("sms_pref", 0);
        android.content.SharedPreferences.Editor editor;
        try
        {
            if (!TextUtils.isEmpty(mQuickReplyPrefsKeyOnLocale) && isAnyChangeInArraylist((ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString(mQuickReplyPrefsKeyOnLocale, ObjectSerializer.serialize(new ArrayList())))))
                Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            notfoundexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        editor = sharedpreferences.edit();
        try
        {
            if (!isFirstTimeDefaultQRListShown() && !TextUtils.isEmpty(mQuickReplyFirstTimeDispKeyOnLocale))
                editor.putBoolean(mQuickReplyFirstTimeDispKeyOnLocale, true);
            if (!TextUtils.isEmpty(mQuickReplyPrefsKeyOnLocale) && mCurrentQuickReplys != null)
                editor.putString(mQuickReplyPrefsKeyOnLocale, ObjectSerializer.serialize(mCurrentQuickReplys));
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        editor.commit();
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null && SMSController.getSMSController() != null)
            SMSController.getSMSController().storeUpdateQuickReplyToFile(ConnectionFactory.getConnectionFactory().getContext());
        finish();
    }

    private boolean isAnyChangeInArraylist(ArrayList arraylist)
    {
        if (mCurrentQuickReplys.size() == arraylist.size())
        {
            for (int i = 0; i < mCurrentQuickReplys.size(); i++)
                if (!((QuickReplyMessageObject)arraylist.get(i)).getQRMessage().equals(((QuickReplyMessageObject)mCurrentQuickReplys.get(i)).getQRMessage()))
                    return true;

            return false;
        } else
        {
            return true;
        }
    }

    private boolean isFirstTimeDefaultQRListShown()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("sms_pref", 0);
        boolean flag = false;
        if (sharedpreferences != null)
        {
            boolean flag1 = TextUtils.isEmpty(mQuickReplyFirstTimeDispKeyOnLocale);
            flag = false;
            if (!flag1)
                flag = sharedpreferences.getBoolean(mQuickReplyFirstTimeDispKeyOnLocale, false);
        }
        return flag;
    }

    private void loadCurrentQuickReplyList()
    {
        SharedPreferences sharedpreferences;
        try
        {
            sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("sms_pref", 0);
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_86;
        if (!TextUtils.isEmpty(mQuickReplyPrefsKeyOnLocale))
        {
            mCurrentQuickReplys = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString(mQuickReplyPrefsKeyOnLocale, ObjectSerializer.serialize(new ArrayList())));
            if (!isFirstTimeDefaultQRListShown() && mCurrentQuickReplys != null && mCurrentQuickReplys.isEmpty())
                loadDefaultQuickReplyList();
        }
    }

    private void loadDefaultQuickReplyList()
    {
        mCurrentQuickReplys.clear();
        mCurrentQuickReplys.add(new QuickReplyMessageObject(getString(0x7f0a0033), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(getString(0x7f0a0034), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(getString(0x7f0a0035), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(getString(0x7f0a0036), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(getString(0x7f0a0031), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(getString(0x7f0a0032), true));
        mCurrentQuickReplys.add(new QuickReplyMessageObject(getString(0x7f0a0037), true));
    }

    private void restoreQuickReplyMessages()
    {
        if (mCurrentQuickReplys != null)
        {
            ArrayList arraylist = new ArrayList(mCurrentQuickReplys);
            loadDefaultQuickReplyList();
            if (arraylist != null && !arraylist.isEmpty())
            {
                for (int i = 0; i < arraylist.size(); i++)
                    if (!((QuickReplyMessageObject)arraylist.get(i)).isDefault())
                        mCurrentQuickReplys.add(arraylist.get(i));

            }
            if (!isAnyChangeInArraylist(arraylist));
            if (mQuickReplyAdapter != null)
            {
                mQuickReplyAdapter.setUpdateList(mCurrentQuickReplys);
                mQuickReplyAdapter.notifyDataSetChanged();
            }
            if (mQuickReplyList != null)
            {
                mQuickReplyList.setAdapter(mQuickReplyAdapter);
                mQuickReplyList.invalidateViews();
            }
        }
    }

    private void saveNewQuickReply(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            mInputMethodManager.hideSoftInputFromWindow(mEditText.getWindowToken(), 0);
            if (mCurrentQuickReplys != null)
            {
                mCurrentQuickReplys.add(new QuickReplyMessageObject(s, false));
                if (mQuickReplyAdapter != null)
                {
                    mQuickReplyAdapter.setUpdateList(mCurrentQuickReplys);
                    mQuickReplyAdapter.notifyDataSetChanged();
                }
                if (mQuickReplyList != null)
                {
                    mQuickReplyList.setAdapter(mQuickReplyAdapter);
                    mQuickReplyList.invalidateViews();
                }
                return;
            } else
            {
                Log.d("QuickReplyListActivity", "Quick replies list is null");
                return;
            }
        } else
        {
            Log.d("QuickReplyListActivity", "Quick Reply text is null");
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

    public void deleteQRFromTheList(int i)
    {
        deleteQuickReplyAt(i);
    }

    public void init()
    {
        mInputMethodManager = (InputMethodManager)getSystemService("input_method");
        mQuickReplyList = getListView();
        mNewQRDialog = new Dialog(this);
        mDisplayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        mNewQRDialog.getWindow().requestFeature(1);
        mQRAcceptButtonView = (LinearLayout)findViewById(0x7f09024f);
        mQRAddImageView = (LinearLayout)findViewById(0x7f090251);
        String s = ToqApplication.getAppContext().getResources().getConfiguration().locale.toString();
        mQuickReplyPrefsKeyOnLocale = Utils.getQuickReplyPrefsKeyForLocale(s);
        mQuickReplyFirstTimeDispKeyOnLocale = Utils.getFirstTimeQRDispPrefsKeyForLocale(s);
        Log.d("QuickReplyListActivity", (new StringBuilder()).append(" QR locale key ==> ").append(mQuickReplyPrefsKeyOnLocale).append(" First time QR locale key ==> ").append(mQuickReplyFirstTimeDispKeyOnLocale).toString());
        loadCurrentQuickReplyList();
        mQuickReplyAdapter = new QuickReplyAdapter(ToqApplication.getAppContext(), this, mCurrentQuickReplys);
    }

    public void moveListItem(int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        int k = mCurrentQuickReplys.size();
        Exception exception;
        QuickReplyMessageObject quickreplymessageobject;
        if (i >= k)
            i = k - 1;
        if (j >= k)
            j = k - 1;
          goto _L1
_L3:
        quickreplymessageobject = (QuickReplyMessageObject)mCurrentQuickReplys.get(i);
        mCurrentQuickReplys.remove(i);
        mCurrentQuickReplys.add(j, quickreplymessageobject);
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L1:
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030049);
        init();
        ((TouchInterceptor)mQuickReplyList).setDropListener(mDropListener);
        ((TouchInterceptor)mQuickReplyList).setRemoveListener(mRemoveListener);
        mQuickReplyList.setCacheColorHint(0);
    }

    public void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f09024d));
        System.gc();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            initiateDoneChanges();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        mQuickReplyAdapter.setUpdateList(mCurrentQuickReplys);
        mQuickReplyList.setAdapter(mQuickReplyAdapter);
        mQRAcceptButtonView.setOnClickListener(qrScreenButtonsListener);
        mQRAddImageView.setOnClickListener(qrScreenButtonsListener);
        getOverFlowMenu().setOnClickListener(qrScreenButtonsListener);
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("QuickReplyListActivity", "QuickReplyListActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("QuickReplyListActivity", "QuickReplyListActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0136).equals(s))
            restoreQuickReplyMessages();
        else
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
        {
            finish();
            return;
        }
    }

    public void refreshQuickReplyList()
    {
        mQuickReplyAdapter.notifyDataSetChanged();
        mQuickReplyList.invalidateViews();
    }






/*
    static PopupWindow access$202(QuickReplyListActivity quickreplylistactivity, PopupWindow popupwindow)
    {
        quickreplylistactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/






/*
    static int access$602(QuickReplyListActivity quickreplylistactivity, int i)
    {
        quickreplylistactivity.lengthOfQRString = i;
        return i;
    }

*/



}

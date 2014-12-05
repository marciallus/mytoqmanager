// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.accounts.*;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PopUpWindowUtils;
import com.qualcomm.toq.smartwatch.controller.AgendaController;
import com.qualcomm.toq.smartwatch.controller.CalendarController;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.File;
import java.io.IOException;
import java.util.*;

public class CalendarChooserActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{
    private class CalendarsArrayAdapter extends ArrayAdapter
    {

        private LayoutInflater inflater;
        final CalendarChooserActivity this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars calendars = (com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars)getItem(i);
            CheckBox checkbox;
            TextView textview;
            if (view == null)
            {
                view = inflater.inflate(0x7f030014, null);
                textview = (TextView)view.findViewById(0x7f0900ac);
                checkbox = (CheckBox)view.findViewById(0x7f0900ad);
                if (textview != null && checkbox != null)
                    view.setTag(new CalendarsViewHolder(textview, checkbox));
                if (checkbox != null)
                    checkbox.setOnClickListener(new android.view.View.OnClickListener() {

                        final CalendarsArrayAdapter this$1;

                        public void onClick(View view)
                        {
                            CheckBox checkbox = (CheckBox)view;
                            com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars calendars = (com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars)checkbox.getTag();
                            calendars.setChecked(checkbox.isChecked());
                            if (mAvailableCalendarIds != null)
                                mAvailableCalendarIds.put(calendars.getCalendarId(), Boolean.valueOf(calendars.isChecked()));
                        }

            
            {
                this$1 = CalendarsArrayAdapter.this;
                super();
            }
                    }
);
            } else
            {
                CalendarsViewHolder calendarsviewholder = (CalendarsViewHolder)view.getTag();
                checkbox = calendarsviewholder.getCheckBox();
                textview = calendarsviewholder.getTextView();
            }
            if (calendars != null)
            {
                checkbox.setTag(calendars);
                if (!(new File("/data/data/com.qualcomm.toq/shared_prefs/calendars_pref.xml")).exists())
                {
                    checkbox.setChecked(true);
                    calendars.setChecked(true);
                } else
                {
                    checkbox.setChecked(calendars.isChecked());
                }
                textview.setText(calendars.getCalendarName());
            }
            return view;
        }

        public CalendarsArrayAdapter(Context context, List list)
        {
            this$0 = CalendarChooserActivity.this;
            super(context, 0x7f030014, 0x7f0900ac, list);
            inflater = LayoutInflater.from(context);
        }
    }

    private class CalendarsViewHolder
    {

        private CheckBox checkBox;
        private TextView textView;
        final CalendarChooserActivity this$0;

        public CheckBox getCheckBox()
        {
            return checkBox;
        }

        public TextView getTextView()
        {
            return textView;
        }

        public CalendarsViewHolder(TextView textview, CheckBox checkbox)
        {
            this$0 = CalendarChooserActivity.this;
            super();
            checkBox = checkbox;
            textView = textview;
        }
    }


    private static final String TAG = "CalendarChooserActivity";
    OnAccountsUpdateListener calendarAccountsUpdatedListener;
    android.view.View.OnClickListener calendarChooserDoneButtonListener;
    android.view.View.OnClickListener calendarOverFlowImageListener;
    private boolean isAnyChangeDoneInCalendarActivity;
    private boolean isCalendarAccountsListUpdated;
    private AccountManager mAccountManager;
    private HashMap mAvailableCalendarIds;
    private com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars mAvailableCalendars[];
    private LinearLayout mCalendarChooserDoneButton;
    private LinearLayout mCalendarChooserOverFlowImage;
    public ArrayAdapter mCalendarListAdapter;
    public ListView mCalendarListView;
    private PopupWindow mPopUpWindow;

    public CalendarChooserActivity()
    {
        mAvailableCalendars = null;
        mCalendarListView = null;
        mCalendarListAdapter = null;
        mAvailableCalendarIds = null;
        isCalendarAccountsListUpdated = true;
        isAnyChangeDoneInCalendarActivity = false;
        calendarOverFlowImageListener = new android.view.View.OnClickListener() {

            final CalendarChooserActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f060007);
                    mPopUpWindow = (new PopUpWindowUtils(CalendarChooserActivity.this)).getPopUpWindow(as, CalendarChooserActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = CalendarChooserActivity.this;
                super();
            }
        }
;
        calendarChooserDoneButtonListener = new android.view.View.OnClickListener() {

            final CalendarChooserActivity this$0;

            public void onClick(View view)
            {
                initiateDoneChanges();
            }

            
            {
                this$0 = CalendarChooserActivity.this;
                super();
            }
        }
;
        calendarAccountsUpdatedListener = new OnAccountsUpdateListener() {

            final CalendarChooserActivity this$0;

            public void onAccountsUpdated(Account aaccount[])
            {
                Log.d("CalendarChooserActivity", "Accounts updated");
                int i = aaccount.length;
                for (int j = 0; j < i; j++)
                {
                    Account account = aaccount[j];
                    Log.d("CalendarChooserActivity", (new StringBuilder()).append(" Calendar Account added ==> ").append(account.name).toString());
                }

                isCalendarAccountsListUpdated = true;
            }

            
            {
                this$0 = CalendarChooserActivity.this;
                super();
            }
        }
;
    }

    private LinearLayout getOverFlowImage()
    {
        if (mCalendarChooserOverFlowImage == null)
            mCalendarChooserOverFlowImage = (LinearLayout)findViewById(0x7f0900b3);
        return mCalendarChooserOverFlowImage;
    }

    private void inilializeCalendarSettings()
    {
        mCalendarListView = (ListView)findViewById(0x7f0900b7);
        mCalendarChooserDoneButton = (LinearLayout)findViewById(0x7f0900b0);
        mCalendarListAdapter = new CalendarsArrayAdapter(ToqApplication.getAppContext(), new ArrayList());
        if (mCalendarListAdapter != null)
            mCalendarListView.setAdapter(mCalendarListAdapter);
        mAccountManager = AccountManager.get(this);
        mAccountManager.addOnAccountsUpdatedListener(calendarAccountsUpdatedListener, null, true);
        mAvailableCalendarIds = new HashMap();
    }

    private void initiateDoneChanges()
    {
        SharedPreferences sharedpreferences;
        android.content.SharedPreferences.Editor editor;
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("calendars_pref", 0);
        editor = sharedpreferences.edit();
        if (CalendarController.getCalendarController() != null && mAvailableCalendarIds != null)
            CalendarController.getCalendarController().setAvailableCalendarIds(mAvailableCalendarIds);
        HashMap hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("all_calendar_id", ObjectSerializer.serialize(new HashMap())));
        if (hashmap != null)
            try
            {
                if (mAvailableCalendarIds != null && !mAvailableCalendarIds.equals(hashmap))
                {
                    Log.d("CalendarChooserActivity", (new StringBuilder()).append("The current calendar list is compared with the calendars from the shared preference").append(hashmap).append("==").append(mAvailableCalendarIds).toString());
                    Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
                }
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        try
        {
            Log.d("CalendarChooserActivity", (new StringBuilder()).append(" The calendars with all ids and is checked value").append(mAvailableCalendarIds).toString());
            editor.putString("all_calendar_id", ObjectSerializer.serialize(mAvailableCalendarIds));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        editor.commit();
        (new Thread() {

            final CalendarChooserActivity this$0;

            public void run()
            {
                refreshCalendarEvents();
            }

            
            {
                this$0 = CalendarChooserActivity.this;
                super();
            }
        }
).start();
        finish();
        return;
    }

    private void refreshCalendarEvents()
    {
        CalendarController calendarcontroller = CalendarController.getCalendarController();
        if (calendarcontroller != null)
        {
            Log.d("CalendarChooserActivity", "readCalendar() called from CalendarChooserActivity");
            if (CalendarController.DEFAULT_EVENTS == 0)
                calendarcontroller.readCalendar(ToqApplication.getAppContext());
            else
            if (CalendarController.DEFAULT_EVENTS == 1)
                calendarcontroller.readCalendarVer2(ToqApplication.getAppContext());
        }
        if (AgendaController.getAgendaController() != null)
        {
            Log.d("CalendarChooserActivity", "storeUpdateAgendaToFile() called from CalendarChooserActivity");
            AgendaController.getAgendaController().storeUpdateAgendaToFile(ToqApplication.getAppContext());
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

    private void updateCalendarListAdapter()
    {
        isCalendarAccountsListUpdated = false;
        if (CalendarController.getCalendarController() != null && CalendarController.getCalendarController().getAvailableCalendars(ToqApplication.getAppContext()) != null)
            mAvailableCalendars = CalendarController.getCalendarController().getAvailableCalendars(ToqApplication.getAppContext());
        if (mCalendarListAdapter != null && mAvailableCalendarIds != null && mAvailableCalendars != null)
        {
            mCalendarListAdapter.clear();
            int k = 0;
            while (k < mAvailableCalendars.length) 
            {
                if (!mAvailableCalendarIds.containsKey(mAvailableCalendars[k].getCalendarId()))
                    mAvailableCalendarIds.put(mAvailableCalendars[k].getCalendarId(), Boolean.valueOf(mAvailableCalendars[k].isChecked()));
                else
                    mAvailableCalendars[k].setChecked(((Boolean)mAvailableCalendarIds.get(mAvailableCalendars[k].getCalendarId())).booleanValue());
                Log.d("CalendarChooserActivity", mAvailableCalendars[k].getCalendarName());
                mCalendarListAdapter.add(mAvailableCalendars[k]);
                k++;
            }
        }
        ArrayList arraylist = new ArrayList();
        com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars acalendars[] = mAvailableCalendars;
        int i = acalendars.length;
        for (int j = 0; j < i; j++)
            arraylist.add(acalendars[j].getCalendarId());

        android.content.SharedPreferences.Editor editor;
        try
        {
            Iterator iterator = mAvailableCalendarIds.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                String s = (String)iterator.next();
                if (!arraylist.contains(s))
                {
                    iterator.remove();
                    mAvailableCalendarIds.remove(s);
                }
            } while (true);
        }
        catch (ConcurrentModificationException concurrentmodificationexception)
        {
            concurrentmodificationexception.printStackTrace();
            Log.e("CalendarChooserActivity", concurrentmodificationexception.toString());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("CalendarChooserActivity", exception.toString());
        }
        if (arraylist != null)
            arraylist.clear();
        editor = ToqApplication.getAppContext().getSharedPreferences("calendars_pref", 0).edit();
        try
        {
            if (mAvailableCalendarIds != null)
            {
                Log.d("CalendarChooserActivity", (new StringBuilder()).append(" The calendars with all ids and is checked value").append(mAvailableCalendarIds).toString());
                editor.putString("all_calendar_id", ObjectSerializer.serialize(mAvailableCalendarIds));
            }
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        editor.commit();
    }

    public boolean isAnyChangeDoneInCalendarActivity()
    {
        return isAnyChangeDoneInCalendarActivity;
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        initiateDoneChanges();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030015);
        inilializeCalendarSettings();
        getOverFlowImage().setOnClickListener(calendarOverFlowImageListener);
        mCalendarChooserDoneButton.setOnClickListener(calendarChooserDoneButtonListener);
        mCalendarListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final CalendarChooserActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars calendars = (com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars)mCalendarListAdapter.getItem(i);
                if (calendars != null)
                {
                    calendars.toggleChecked();
                    ((CalendarsViewHolder)view.getTag()).getCheckBox().setChecked(calendars.isChecked());
                    if (mAvailableCalendarIds != null)
                        mAvailableCalendarIds.put(calendars.getCalendarId(), Boolean.valueOf(calendars.isChecked()));
                    return;
                } else
                {
                    Log.d("CalendarChooserActivity", "Calendar is null");
                    return;
                }
            }

            
            {
                this$0 = CalendarChooserActivity.this;
                super();
            }
        }
);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mAccountManager.removeOnAccountsUpdatedListener(calendarAccountsUpdatedListener);
        unbindDrawables(findViewById(0x7f0900ae));
        System.gc();
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("CalendarChooserActivity", "CalendarChooserActivity is started");
        if (isCalendarAccountsListUpdated)
            updateCalendarListAdapter();
        if (mCalendarListAdapter != null && mCalendarListView != null)
        {
            mCalendarListAdapter.notifyDataSetChanged();
            mCalendarListView.invalidateViews();
        }
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("CalendarChooserActivity", "CalendarChooserActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
    }

    public void setAnyChangeDoneInCalendarActivity(boolean flag)
    {
        isAnyChangeDoneInCalendarActivity = flag;
    }




/*
    static PopupWindow access$102(CalendarChooserActivity calendarchooseractivity, PopupWindow popupwindow)
    {
        calendarchooseractivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/




/*
    static boolean access$402(CalendarChooserActivity calendarchooseractivity, boolean flag)
    {
        calendarchooseractivity.isCalendarAccountsListUpdated = flag;
        return flag;
    }

*/
}

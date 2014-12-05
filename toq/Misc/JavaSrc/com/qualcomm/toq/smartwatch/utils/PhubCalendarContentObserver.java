// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.database.ContentObserver;
import android.os.Handler;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.AgendaController;
import com.qualcomm.toq.smartwatch.controller.CalendarController;
import java.util.Timer;
import java.util.TimerTask;

public class PhubCalendarContentObserver extends ContentObserver
{
    public class calendarTask extends TimerTask
    {

        final PhubCalendarContentObserver this$0;

        public void run()
        {
            if (CalendarController.DEFAULT_EVENTS == 0 && ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
            {
                android.content.Context context = ConnectionFactory.getConnectionFactory().getContext();
                CalendarController calendarcontroller = CalendarController.getCalendarController();
                if (calendarcontroller != null)
                {
                    Log.d("CalendarController", "calendarTask called after 2000 millisec delay");
                    if (CalendarController.DEFAULT_EVENTS == 0)
                        calendarcontroller.readCalendar(context);
                    else
                    if (CalendarController.DEFAULT_EVENTS == 1)
                        calendarcontroller.readCalendarVer2(context);
                }
            }
            Log.d("CalendarController", "PhubCalendarContentObserver onChange() called");
            if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null && AgendaController.getAgendaController() != null)
            {
                Log.d("CalendarController", "storeUpdateAgendaToFile() called from PhubCalendarContentObserver");
                AgendaController.getAgendaController().storeUpdateAgendaToFile(ConnectionFactory.getConnectionFactory().getContext());
            }
        }

        public calendarTask()
        {
            this$0 = PhubCalendarContentObserver.this;
            super();
        }
    }


    public static final String TAG = "CalendarController";
    public Timer counter;

    public PhubCalendarContentObserver(Handler handler)
    {
        super(handler);
    }

    public boolean deliverSelfNotifications()
    {
        return true;
    }

    public void onChange(boolean flag)
    {
        super.onChange(flag);
        Log.d("CalendarController", "onChange method called");
        if (counter != null)
        {
            counter.cancel();
            counter = null;
        }
        counter = new Timer();
        counter.schedule(new calendarTask(), 2000L);
        Log.d("CalendarController", "counter scheduled for 2000 milliseconds");
        if (CalendarController.DEFAULT_EVENTS == 1 && ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            android.content.Context context = ConnectionFactory.getConnectionFactory().getContext();
            CalendarController calendarcontroller = CalendarController.getCalendarController();
            if (calendarcontroller != null)
            {
                Log.d("CalendarController", "readCalendar can be called immediately without delay for processing events.");
                if (CalendarController.DEFAULT_EVENTS == 0)
                    calendarcontroller.readCalendar(context);
                else
                if (CalendarController.DEFAULT_EVENTS == 1)
                {
                    calendarcontroller.readCalendarVer2(context);
                    return;
                }
            }
        }
    }
}

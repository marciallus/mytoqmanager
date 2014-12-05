// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.text.DateFormat;
import java.util.*;
import javax.swing.table.AbstractTableModel;
import org.apache.log4j.Logger;
import org.apache.log4j.Priority;

// Referenced classes of package org.apache.log4j.chainsaw:
//            EventDetails

class MyTableModel extends AbstractTableModel
{
    private class Processor
        implements Runnable
    {

        private final MyTableModel this$0;

        public void run()
        {
_L8:
            boolean flag;
            boolean flag1;
            do
            {
                Iterator iterator;
                EventDetails eventdetails;
                try
                {
                    Thread.sleep(1000L);
                }
                catch (InterruptedException interruptedexception) { }
                synchronized (mLock)
                {
                    if (!mPaused)
                        break MISSING_BLOCK_LABEL_36;
                }
            } while (true);
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
            flag = true;
            flag1 = false;
            iterator = mPendingEvents.iterator();
_L9:
            if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
            eventdetails = (EventDetails)iterator.next();
            mAllEvents.add(eventdetails);
            if (!flag) goto _L4; else goto _L3
_L3:
            if (eventdetails != mAllEvents.first()) goto _L4; else goto _L5
_L5:
            flag = true;
_L10:
            if (flag1) goto _L7; else goto _L6
_L6:
            if (!matchFilter(eventdetails))
                break MISSING_BLOCK_LABEL_185;
              goto _L7
_L2:
            mPendingEvents.clear();
            if (!flag1)
                break MISSING_BLOCK_LABEL_164;
            updateFilteredEvents(flag);
            obj;
            JVM INSTR monitorexit ;
              goto _L8
_L7:
            flag1 = true;
              goto _L9
_L4:
            flag = false;
              goto _L10
            flag1 = false;
              goto _L9
        }

        private Processor()
        {
            this$0 = MyTableModel.this;
            super();
        }

        Processor(_cls1 _pcls1)
        {
            this();
        }
    }


    private static final String COL_NAMES[] = {
        "Time", "Priority", "Trace", "Category", "NDC", "Message"
    };
    private static final DateFormat DATE_FORMATTER = DateFormat.getDateTimeInstance(3, 2);
    private static final EventDetails EMPTY_LIST[] = new EventDetails[0];
    private static final Logger LOG;
    private static final Comparator MY_COMP = new _cls1();
    static Class class$java$lang$Boolean;
    static Class class$java$lang$Object;
    static Class class$org$apache$log4j$chainsaw$MyTableModel;
    private final SortedSet mAllEvents;
    private String mCategoryFilter;
    private EventDetails mFilteredEvents[];
    private final Object mLock = new Object();
    private String mMessageFilter;
    private String mNDCFilter;
    private boolean mPaused;
    private final List mPendingEvents = new ArrayList();
    private Priority mPriorityFilter;
    private String mThreadFilter;

    MyTableModel()
    {
        mAllEvents = new TreeSet(MY_COMP);
        mFilteredEvents = EMPTY_LIST;
        mPaused = false;
        mThreadFilter = "";
        mMessageFilter = "";
        mNDCFilter = "";
        mCategoryFilter = "";
        mPriorityFilter = Priority.DEBUG;
        Thread thread = new Thread(new Processor(null));
        thread.setDaemon(true);
        thread.start();
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    private boolean matchFilter(EventDetails eventdetails)
    {
        if (!eventdetails.getPriority().isGreaterOrEqual(mPriorityFilter) || eventdetails.getThreadName().indexOf(mThreadFilter) < 0 || eventdetails.getCategoryName().indexOf(mCategoryFilter) < 0 || mNDCFilter.length() != 0 && (eventdetails.getNDC() == null || eventdetails.getNDC().indexOf(mNDCFilter) < 0))
            return false;
        String s = eventdetails.getMessage();
        if (s == null)
        {
            if (mMessageFilter.length() != 0)
                return false;
        } else
        if (s.indexOf(mMessageFilter) < 0)
            return false;
        return true;
    }

    private void updateFilteredEvents(boolean flag)
    {
        long l = System.currentTimeMillis();
        ArrayList arraylist = new ArrayList();
        int i = mAllEvents.size();
        Iterator iterator = mAllEvents.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            EventDetails eventdetails1 = (EventDetails)iterator.next();
            if (matchFilter(eventdetails1))
                arraylist.add(eventdetails1);
        } while (true);
        EventDetails eventdetails;
        if (mFilteredEvents.length == 0)
            eventdetails = null;
        else
            eventdetails = mFilteredEvents[0];
        mFilteredEvents = (EventDetails[])(EventDetails[])arraylist.toArray(EMPTY_LIST);
        if (flag && eventdetails != null)
        {
            int j = arraylist.indexOf(eventdetails);
            if (j < 1)
            {
                LOG.warn("In strange state");
                fireTableDataChanged();
            } else
            {
                fireTableRowsInserted(0, j - 1);
            }
        } else
        {
            fireTableDataChanged();
        }
        long l1 = System.currentTimeMillis();
        LOG.debug("Total time [ms]: " + (l1 - l) + " in update, size: " + i);
    }

    public void addEvent(EventDetails eventdetails)
    {
        synchronized (mLock)
        {
            mPendingEvents.add(eventdetails);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void clear()
    {
        synchronized (mLock)
        {
            mAllEvents.clear();
            mFilteredEvents = new EventDetails[0];
            mPendingEvents.clear();
            fireTableDataChanged();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Class getColumnClass(int i)
    {
        if (i == 2)
            if (class$java$lang$Boolean == null)
            {
                Class class2 = _mthclass$("java.lang.Boolean");
                class$java$lang$Boolean = class2;
                return class2;
            } else
            {
                return class$java$lang$Boolean;
            }
        if (class$java$lang$Object == null)
        {
            Class class1 = _mthclass$("java.lang.Object");
            class$java$lang$Object = class1;
            return class1;
        } else
        {
            return class$java$lang$Object;
        }
    }

    public int getColumnCount()
    {
        return COL_NAMES.length;
    }

    public String getColumnName(int i)
    {
        return COL_NAMES[i];
    }

    public EventDetails getEventDetails(int i)
    {
        EventDetails eventdetails;
        synchronized (mLock)
        {
            eventdetails = mFilteredEvents[i];
        }
        return eventdetails;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getRowCount()
    {
        int i;
        synchronized (mLock)
        {
            i = mFilteredEvents.length;
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object getValueAt(int i, int j)
    {
        Object obj = mLock;
        obj;
        JVM INSTR monitorenter ;
        EventDetails eventdetails = mFilteredEvents[i];
        if (j != 0)
            break MISSING_BLOCK_LABEL_44;
        String s = DATE_FORMATTER.format(new Date(eventdetails.getTimeStamp()));
        obj;
        JVM INSTR monitorexit ;
        return s;
        if (j != 1)
            break MISSING_BLOCK_LABEL_68;
        Priority priority = eventdetails.getPriority();
        obj;
        JVM INSTR monitorexit ;
        return priority;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (j != 2)
            break MISSING_BLOCK_LABEL_99;
        Boolean boolean1;
        if (eventdetails.getThrowableStrRep() != null)
            break MISSING_BLOCK_LABEL_91;
        boolean1 = Boolean.FALSE;
_L1:
        obj;
        JVM INSTR monitorexit ;
        return boolean1;
        boolean1 = Boolean.TRUE;
          goto _L1
        if (j != 3)
            break MISSING_BLOCK_LABEL_116;
        String s1 = eventdetails.getCategoryName();
        obj;
        JVM INSTR monitorexit ;
        return s1;
        if (j != 4)
            break MISSING_BLOCK_LABEL_133;
        String s2 = eventdetails.getNDC();
        obj;
        JVM INSTR monitorexit ;
        return s2;
        String s3 = eventdetails.getMessage();
        obj;
        JVM INSTR monitorexit ;
        return s3;
    }

    public boolean isPaused()
    {
        boolean flag;
        synchronized (mLock)
        {
            flag = mPaused;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setCategoryFilter(String s)
    {
        synchronized (mLock)
        {
            mCategoryFilter = s.trim();
            updateFilteredEvents(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setMessageFilter(String s)
    {
        synchronized (mLock)
        {
            mMessageFilter = s.trim();
            updateFilteredEvents(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setNDCFilter(String s)
    {
        synchronized (mLock)
        {
            mNDCFilter = s.trim();
            updateFilteredEvents(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setPriorityFilter(Priority priority)
    {
        synchronized (mLock)
        {
            mPriorityFilter = priority;
            updateFilteredEvents(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setThreadFilter(String s)
    {
        synchronized (mLock)
        {
            mThreadFilter = s.trim();
            updateFilteredEvents(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void toggle()
    {
        Object obj = mLock;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (!mPaused)
            flag = true;
        else
            flag = false;
        mPaused = flag;
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$chainsaw$MyTableModel == null)
        {
            class1 = _mthclass$("org.apache.log4j.chainsaw.MyTableModel");
            class$org$apache$log4j$chainsaw$MyTableModel = class1;
        } else
        {
            class1 = class$org$apache$log4j$chainsaw$MyTableModel;
        }
        LOG = Logger.getLogger(class1);
    }







    private class _cls1
        implements Comparator
    {

        public int compare(Object obj, Object obj1)
        {
            byte byte0 = -1;
            if (obj == null && obj1 == null)
                byte0 = 0;
            else
            if (obj != null)
            {
                if (obj1 == null)
                    return 1;
                EventDetails eventdetails = (EventDetails)obj;
                EventDetails eventdetails1 = (EventDetails)obj1;
                if (eventdetails.getTimeStamp() < eventdetails1.getTimeStamp())
                    return 1;
            }
            return byte0;
        }

    }

}

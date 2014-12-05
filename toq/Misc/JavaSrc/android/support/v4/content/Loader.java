// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package android.support.v4.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.support.v4.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class Loader
{
    public final class ForceLoadContentObserver extends ContentObserver
    {

        final Loader this$0;

        public boolean deliverSelfNotifications()
        {
            return true;
        }

        public void onChange(boolean flag)
        {
            onContentChanged();
        }

        public ForceLoadContentObserver()
        {
            this$0 = Loader.this;
            super(new Handler());
        }
    }

    public static interface OnLoadCompleteListener
    {

        public abstract void onLoadComplete(Loader loader, Object obj);
    }


    boolean mAbandoned;
    boolean mContentChanged;
    Context mContext;
    int mId;
    OnLoadCompleteListener mListener;
    boolean mReset;
    boolean mStarted;

    public Loader(Context context)
    {
        mStarted = false;
        mAbandoned = false;
        mReset = true;
        mContentChanged = false;
        mContext = context.getApplicationContext();
    }

    public void abandon()
    {
        mAbandoned = true;
        onAbandon();
    }

    public String dataToString(Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        DebugUtils.buildShortClassTag(obj, stringbuilder);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void deliverResult(Object obj)
    {
        if (mListener != null)
            mListener.onLoadComplete(this, obj);
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s);
        printwriter.print("mId=");
        printwriter.print(mId);
        printwriter.print(" mListener=");
        printwriter.println(mListener);
        printwriter.print(s);
        printwriter.print("mStarted=");
        printwriter.print(mStarted);
        printwriter.print(" mContentChanged=");
        printwriter.print(mContentChanged);
        printwriter.print(" mAbandoned=");
        printwriter.print(mAbandoned);
        printwriter.print(" mReset=");
        printwriter.println(mReset);
    }

    public void forceLoad()
    {
        onForceLoad();
    }

    public Context getContext()
    {
        return mContext;
    }

    public int getId()
    {
        return mId;
    }

    public boolean isAbandoned()
    {
        return mAbandoned;
    }

    public boolean isReset()
    {
        return mReset;
    }

    public boolean isStarted()
    {
        return mStarted;
    }

    protected void onAbandon()
    {
    }

    public void onContentChanged()
    {
        if (mStarted)
        {
            forceLoad();
            return;
        } else
        {
            mContentChanged = true;
            return;
        }
    }

    protected void onForceLoad()
    {
    }

    protected void onReset()
    {
    }

    protected void onStartLoading()
    {
    }

    protected void onStopLoading()
    {
    }

    public void registerListener(int i, OnLoadCompleteListener onloadcompletelistener)
    {
        if (mListener != null)
        {
            throw new IllegalStateException("There is already a listener registered");
        } else
        {
            mListener = onloadcompletelistener;
            mId = i;
            return;
        }
    }

    public void reset()
    {
        onReset();
        mReset = true;
        mStarted = false;
        mAbandoned = false;
        mContentChanged = false;
    }

    public final void startLoading()
    {
        mStarted = true;
        mReset = false;
        mAbandoned = false;
        onStartLoading();
    }

    public void stopLoading()
    {
        mStarted = false;
        onStopLoading();
    }

    public boolean takeContentChanged()
    {
        boolean flag = mContentChanged;
        mContentChanged = false;
        return flag;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, stringbuilder);
        stringbuilder.append(" id=");
        stringbuilder.append(mId);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void unregisterListener(OnLoadCompleteListener onloadcompletelistener)
    {
        if (mListener == null)
            throw new IllegalStateException("No listener register");
        if (mListener != onloadcompletelistener)
        {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else
        {
            mListener = null;
            return;
        }
    }
}

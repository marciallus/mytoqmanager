// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils.quickreplylistview;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.*;
import android.widget.ImageView;
import android.widget.ListView;
import com.qualcomm.toq.base.utils.Log;

public class TouchInterceptor extends ListView
{
    public static interface DragListener
    {

        public abstract void drag(int i, int j);
    }

    public static interface DropListener
    {

        public abstract void drop(int i, int j);
    }

    public static interface RemoveListener
    {

        public abstract void remove(int i);
    }


    private static final int FLING = 0;
    private static final int SLIDE = 1;
    private static final String TAG = "TouchInterceptor";
    private Context mContext;
    private int mCoordOffset;
    private DragListener mDragListener;
    private int mDragPoint;
    private int mDragPos;
    private View mDragView;
    private DropListener mDropListener;
    private int mFirstDragPos;
    private GestureDetector mGestureDetector;
    private int mHeight;
    private int mLowerBound;
    private RemoveListener mRemoveListener;
    private int mRemoveMode;
    private Rect mTempRect;
    private final int mTouchSlop;
    private int mUpperBound;
    private WindowManager mWindowManager;
    private android.view.WindowManager.LayoutParams mWindowParams;

    public TouchInterceptor(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mRemoveMode = -1;
        mTempRect = new Rect();
        mRemoveMode = context.getSharedPreferences("Music", 3).getInt("deletemode", -1);
        mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        mContext = context;
    }

    private void adjustScrollBounds(int i)
    {
        if (i >= mHeight / 3)
            mUpperBound = mHeight / 3;
        if (i <= (2 * mHeight) / 3)
            mLowerBound = (2 * mHeight) / 3;
    }

    private void doExpansion()
    {
        int i = mDragPos - getFirstVisiblePosition();
        if (mDragPos > mFirstDragPos)
            i++;
        View view = getChildAt(mFirstDragPos - getFirstVisiblePosition());
        int j = 0;
        do
        {
            View view1 = getChildAt(j);
            if (view1 == null)
                return;
            int k = -1;
            byte byte0;
            if (view1.equals(view))
            {
                if (mDragPos == mFirstDragPos)
                {
                    byte0 = 4;
                } else
                {
                    k = 1;
                    byte0 = 0;
                }
            } else
            {
                byte0 = 0;
                if (j == i)
                {
                    int l = mDragPos;
                    int i1 = -1 + getCount();
                    byte0 = 0;
                    if (l < i1)
                    {
                        k = 128;
                        byte0 = 0;
                    }
                }
            }
            android.view.ViewGroup.LayoutParams layoutparams = view1.getLayoutParams();
            layoutparams.height = k;
            view1.setLayoutParams(layoutparams);
            view1.setVisibility(byte0);
            j++;
        } while (true);
    }

    private void dragView(int i, int j)
    {
        if (mRemoveMode == 1)
        {
            float f = 1.0F;
            int k = mDragView.getWidth();
            if (i > k / 2)
                f = (float)(k - i) / (float)(k / 2);
            mWindowParams.alpha = f;
        }
        mWindowParams.y = (j - mDragPoint) + mCoordOffset;
        mWindowManager.updateViewLayout(mDragView, mWindowParams);
    }

    private int getItemForPosition(int i)
    {
        int j = -32 + (i - mDragPoint);
        int k = myPointToPosition(0, j);
        if (k >= 0)
        {
            if (k <= mFirstDragPos)
                k++;
        } else
        if (j < 0)
            return 0;
        return k;
    }

    private int myPointToPosition(int i, int j)
    {
        Rect rect = mTempRect;
        for (int k = -1 + getChildCount(); k >= 0; k--)
        {
            getChildAt(k).getHitRect(rect);
            if (rect.contains(i, j))
                return k + getFirstVisiblePosition();
        }

        return -1;
    }

    private void startDragging(Bitmap bitmap, int i)
    {
        mWindowParams = new android.view.WindowManager.LayoutParams();
        mWindowParams.gravity = 48;
        mWindowParams.x = 0;
        mWindowParams.y = (i - mDragPoint) + mCoordOffset;
        mWindowParams.height = -2;
        mWindowParams.width = -2;
        mWindowParams.flags = 408;
        mWindowParams.format = -3;
        mWindowParams.windowAnimations = 0;
        ImageView imageview = new ImageView(mContext);
        imageview.setBackgroundColor(Color.parseColor("#66181e1e"));
        imageview.setImageBitmap(bitmap);
        mWindowManager = (WindowManager)mContext.getSystemService("window");
        mWindowManager.addView(imageview, mWindowParams);
        mDragView = imageview;
    }

    private void stopDragging()
    {
        ((WindowManager)mContext.getSystemService("window")).removeView(mDragView);
        mDragView = null;
    }

    private void unExpandViews(boolean flag)
    {
        int i = 0;
        do
        {
            View view = getChildAt(i);
            if (view == null)
            {
                if (flag)
                {
                    int j = getFirstVisiblePosition();
                    int k = getChildAt(0).getTop();
                    setAdapter(getAdapter());
                    setSelectionFromTop(j, k);
                }
                layoutChildren();
                view = getChildAt(i);
                if (view == null)
                    return;
            }
            android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
            layoutparams.height = -1;
            view.setLayoutParams(layoutparams);
            view.setVisibility(0);
            i++;
        } while (true);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (mRemoveListener != null && mGestureDetector == null && mRemoveMode == 0)
            mGestureDetector = new GestureDetector(getContext(), new android.view.GestureDetector.SimpleOnGestureListener() {

                final TouchInterceptor this$0;

                public boolean onFling(MotionEvent motionevent1, MotionEvent motionevent2, float f, float f1)
                {
                    if (mDragView != null)
                    {
                        if (f > 1000F)
                        {
                            Rect rect1 = mTempRect;
                            mDragView.getDrawingRect(rect1);
                            if (motionevent2.getX() > (float)((2 * rect1.right) / 3))
                            {
                                stopDragging();
                                mRemoveListener.remove(mFirstDragPos);
                                unExpandViews(true);
                            }
                        }
                        return true;
                    } else
                    {
                        return false;
                    }
                }

            
            {
                this$0 = TouchInterceptor.this;
                super();
            }
            }
);
        if (mDragListener == null && mDropListener == null) goto _L2; else goto _L1
_L1:
        motionevent.getAction();
        JVM INSTR tableswitch 0 0: default 539
    //                   0 80;
           goto _L2 _L3
_L3:
        int i;
        int j;
        int k;
        Log.i("TouchInterceptor", " ACTION_DOWN");
        i = (int)motionevent.getX();
        j = (int)motionevent.getY();
        k = pointToPosition(i, j);
        if (k != -1) goto _L5; else goto _L4
_L4:
        Log.i("TouchInterceptor", " INVALID_POSITION");
          goto _L2
_L5:
        ViewGroup viewgroup;
        View view;
        viewgroup = (ViewGroup)getChildAt(k - getFirstVisiblePosition());
        mDragPoint = j - viewgroup.getTop();
        mCoordOffset = (int)motionevent.getRawY() - j;
        view = viewgroup.findViewById(0x7f09008a);
        if (view == null || view.getVisibility() != 0) goto _L7; else goto _L6
_L6:
        Rect rect = mTempRect;
        int l = getWidth();
        int i1 = view.getWidth();
        Log.i("TouchInterceptor", (new StringBuilder()).append(" x is :").append(i).toString());
        Log.i("TouchInterceptor", (new StringBuilder()).append(" y is :").append(j).toString());
        Log.i("TouchInterceptor", (new StringBuilder()).append(" screenWidth is :").append(l).toString());
        Log.i("TouchInterceptor", (new StringBuilder()).append(" imageWidth is :").append(i1).toString());
        view.getDrawingRect(rect);
        if (i > l - i1)
        {
            Log.i("TouchInterceptor", " ACTION_DOWN 2222");
            viewgroup.setDrawingCacheEnabled(true);
            startDragging(Bitmap.createBitmap(viewgroup.getDrawingCache()), j);
            mDragPos = k;
            mFirstDragPos = mDragPos;
            mHeight = getHeight();
            int j1 = mTouchSlop;
            mUpperBound = Math.min(j - j1, mHeight / 3);
            mLowerBound = Math.max(j + j1, (2 * mHeight) / 3);
            Log.i("TouchInterceptor", (new StringBuilder()).append(" mHeight is :").append(mHeight).toString());
            Log.i("TouchInterceptor", (new StringBuilder()).append(" mFirstDragPos is :").append(mFirstDragPos).toString());
            Log.i("TouchInterceptor", (new StringBuilder()).append(" mUpperBoundis :").append(mUpperBound).toString());
            Log.i("TouchInterceptor", (new StringBuilder()).append(" mLowerBound is :").append(mLowerBound).toString());
            viewgroup.setDrawingCacheEnabled(false);
            return false;
        }
        mDragView = null;
_L2:
        return super.onInterceptTouchEvent(motionevent);
_L7:
        Log.v("TouchInterceptor", "View Not Visible so not doing any work");
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (mGestureDetector != null)
            mGestureDetector.onTouchEvent(motionevent);
        if ((mDragListener != null || mDropListener != null) && mDragView != null)
        {
            int i = motionevent.getAction();
            Rect rect;
            switch (i)
            {
            case 0: // '\0'
            case 2: // '\002'
                int j = (int)motionevent.getX();
                int k = (int)motionevent.getY();
                dragView(j, k);
                int l = getItemForPosition(k);
                if (l >= 0)
                {
                    if (i == 0 || l != mDragPos)
                    {
                        if (mDragListener != null)
                            mDragListener.drag(mDragPos, l);
                        mDragPos = l;
                        doExpansion();
                    }
                    adjustScrollBounds(k);
                    byte byte0;
                    if (k > mLowerBound)
                    {
                        if (k > (mHeight + mLowerBound) / 2)
                            byte0 = 16;
                        else
                            byte0 = 4;
                    } else
                    {
                        int i1 = mUpperBound;
                        byte0 = 0;
                        if (k < i1)
                            if (k < mUpperBound / 2)
                                byte0 = -16;
                            else
                                byte0 = -4;
                    }
                    if (byte0 != 0)
                    {
                        int j1 = pointToPosition(0, mHeight / 2);
                        if (j1 == -1)
                            j1 = pointToPosition(0, -1 + (mHeight / 2 + getDividerHeight()));
                        View view = getChildAt(j1 - getFirstVisiblePosition());
                        if (view != null)
                        {
                            setSelectionFromTop(j1, view.getTop() - byte0);
                            return true;
                        }
                    }
                }
                // fall through

            default:
                return true;

            case 1: // '\001'
            case 3: // '\003'
                rect = mTempRect;
                mDragView.getDrawingRect(rect);
                stopDragging();
                break;
            }
            if (mRemoveMode == 1 && motionevent.getX() > (float)((3 * rect.right) / 4))
            {
                if (mRemoveListener != null)
                    mRemoveListener.remove(mFirstDragPos);
                unExpandViews(true);
                return true;
            }
            if (mDropListener != null && mDragPos >= 0 && mDragPos < getCount())
                mDropListener.drop(mFirstDragPos, mDragPos);
            unExpandViews(false);
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public void setDragListener(DragListener draglistener)
    {
        mDragListener = draglistener;
    }

    public void setDropListener(DropListener droplistener)
    {
        mDropListener = droplistener;
    }

    public void setRemoveListener(RemoveListener removelistener)
    {
        mRemoveListener = removelistener;
    }






}

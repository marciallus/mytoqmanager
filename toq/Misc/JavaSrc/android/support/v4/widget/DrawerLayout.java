// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.os.*;
import android.support.v4.view.*;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v4.widget:
//            ViewDragHelper

public class DrawerLayout extends ViewGroup
{
    class AccessibilityDelegate extends AccessibilityDelegateCompat
    {

        private final Rect mTmpRect = new Rect();
        final DrawerLayout this$0;

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilitynodeinfocompat, AccessibilityNodeInfoCompat accessibilitynodeinfocompat1)
        {
            Rect rect = mTmpRect;
            accessibilitynodeinfocompat1.getBoundsInParent(rect);
            accessibilitynodeinfocompat.setBoundsInParent(rect);
            accessibilitynodeinfocompat1.getBoundsInScreen(rect);
            accessibilitynodeinfocompat.setBoundsInScreen(rect);
            accessibilitynodeinfocompat.setVisibleToUser(accessibilitynodeinfocompat1.isVisibleToUser());
            accessibilitynodeinfocompat.setPackageName(accessibilitynodeinfocompat1.getPackageName());
            accessibilitynodeinfocompat.setClassName(accessibilitynodeinfocompat1.getClassName());
            accessibilitynodeinfocompat.setContentDescription(accessibilitynodeinfocompat1.getContentDescription());
            accessibilitynodeinfocompat.setEnabled(accessibilitynodeinfocompat1.isEnabled());
            accessibilitynodeinfocompat.setClickable(accessibilitynodeinfocompat1.isClickable());
            accessibilitynodeinfocompat.setFocusable(accessibilitynodeinfocompat1.isFocusable());
            accessibilitynodeinfocompat.setFocused(accessibilitynodeinfocompat1.isFocused());
            accessibilitynodeinfocompat.setAccessibilityFocused(accessibilitynodeinfocompat1.isAccessibilityFocused());
            accessibilitynodeinfocompat.setSelected(accessibilitynodeinfocompat1.isSelected());
            accessibilitynodeinfocompat.setLongClickable(accessibilitynodeinfocompat1.isLongClickable());
            accessibilitynodeinfocompat.addAction(accessibilitynodeinfocompat1.getActions());
        }

        public boolean filter(View view)
        {
            View view1 = findOpenDrawer();
            return view1 != null && view1 != view;
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
        {
            AccessibilityNodeInfoCompat accessibilitynodeinfocompat1 = AccessibilityNodeInfoCompat.obtain(accessibilitynodeinfocompat);
            super.onInitializeAccessibilityNodeInfo(view, accessibilitynodeinfocompat1);
            accessibilitynodeinfocompat.setSource(view);
            android.view.ViewParent viewparent = ViewCompat.getParentForAccessibility(view);
            if (viewparent instanceof View)
                accessibilitynodeinfocompat.setParent((View)viewparent);
            copyNodeInfoNoChildren(accessibilitynodeinfocompat, accessibilitynodeinfocompat1);
            accessibilitynodeinfocompat1.recycle();
            int i = getChildCount();
            for (int j = 0; j < i; j++)
            {
                View view1 = getChildAt(j);
                if (!filter(view1))
                    accessibilitynodeinfocompat.addChild(view1);
            }

        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
        {
            if (!filter(view))
                return super.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
            else
                return false;
        }

        AccessibilityDelegate()
        {
            this$0 = DrawerLayout.this;
            super();
        }
    }

    public static interface DrawerListener
    {

        public abstract void onDrawerClosed(View view);

        public abstract void onDrawerOpened(View view);

        public abstract void onDrawerSlide(View view, float f);

        public abstract void onDrawerStateChanged(int i);
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public int gravity;
        boolean isPeeking;
        boolean knownOpen;
        float onScreen;

        public LayoutParams(int i, int j)
        {
            super(i, j);
            gravity = 0;
        }

        public LayoutParams(int i, int j, int k)
        {
            this(i, j);
            gravity = k;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            gravity = 0;
            TypedArray typedarray = context.obtainStyledAttributes(attributeset, DrawerLayout.LAYOUT_ATTRS);
            gravity = typedarray.getInt(0, 0);
            typedarray.recycle();
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            gravity = 0;
            gravity = layoutparams.gravity;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            gravity = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            gravity = 0;
        }
    }

    protected static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        }
;
        int lockModeLeft;
        int lockModeRight;
        int openDrawerGravity;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeInt(openDrawerGravity);
        }


        public SavedState(Parcel parcel)
        {
            super(parcel);
            openDrawerGravity = 0;
            lockModeLeft = 0;
            lockModeRight = 0;
            openDrawerGravity = parcel.readInt();
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
            openDrawerGravity = 0;
            lockModeLeft = 0;
            lockModeRight = 0;
        }
    }

    public static abstract class SimpleDrawerListener
        implements DrawerListener
    {

        public void onDrawerClosed(View view)
        {
        }

        public void onDrawerOpened(View view)
        {
        }

        public void onDrawerSlide(View view, float f)
        {
        }

        public void onDrawerStateChanged(int i)
        {
        }

    }

    private class ViewDragCallback extends ViewDragHelper.Callback
    {

        private ViewDragHelper mDragger;
        private final int mGravity;
        private final Runnable mPeekRunnable = new _cls1();
        final DrawerLayout this$0;

        private void closeOtherDrawer()
        {
            byte byte0 = 3;
            if (mGravity == byte0)
                byte0 = 5;
            View view = findDrawerWithGravity(byte0);
            if (view != null)
                closeDrawer(view);
        }

        private void peekDrawer()
        {
            int i = mDragger.getEdgeSize();
            boolean flag;
            if (mGravity == 3)
                flag = true;
            else
                flag = false;
            View view;
            int j;
            if (flag)
            {
                view = findDrawerWithGravity(3);
                int k = 0;
                if (view != null)
                    k = -view.getWidth();
                j = k + i;
            } else
            {
                view = findDrawerWithGravity(5);
                j = getWidth() - i;
            }
            if (view != null && (flag && view.getLeft() < j || !flag && view.getLeft() > j) && getDrawerLockMode(view) == 0)
            {
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                mDragger.smoothSlideViewTo(view, j, view.getTop());
                layoutparams.isPeeking = true;
                invalidate();
                closeOtherDrawer();
                cancelChildViewTouch();
            }
        }

        public int clampViewPositionHorizontal(View view, int i, int j)
        {
            if (checkDrawerViewGravity(view, 3))
            {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            } else
            {
                int k = getWidth();
                return Math.max(k - view.getWidth(), Math.min(i, k));
            }
        }

        public int clampViewPositionVertical(View view, int i, int j)
        {
            return view.getTop();
        }

        public int getViewHorizontalDragRange(View view)
        {
            return view.getWidth();
        }

        public void onEdgeDragStarted(int i, int j)
        {
            View view;
            if ((i & 1) == 1)
                view = findDrawerWithGravity(3);
            else
                view = findDrawerWithGravity(5);
            if (view != null && getDrawerLockMode(view) == 0)
                mDragger.captureChildView(view, j);
        }

        public boolean onEdgeLock(int i)
        {
            return false;
        }

        public void onEdgeTouched(int i, int j)
        {
            postDelayed(mPeekRunnable, 160L);
        }

        public void onViewCaptured(View view, int i)
        {
            ((LayoutParams)view.getLayoutParams()).isPeeking = false;
            closeOtherDrawer();
        }

        public void onViewDragStateChanged(int i)
        {
            updateDrawerState(mGravity, i, mDragger.getCapturedView());
        }

        public void onViewPositionChanged(View view, int i, int j, int k, int l)
        {
            int i1 = view.getWidth();
            float f;
            if (checkDrawerViewGravity(view, 3))
                f = (float)(i1 + i) / (float)i1;
            else
                f = (float)(getWidth() - i) / (float)i1;
            setDrawerViewOffset(view, f);
            byte byte0;
            if (f == 0.0F)
                byte0 = 4;
            else
                byte0 = 0;
            view.setVisibility(byte0);
            invalidate();
        }

        public void onViewReleased(View view, float f, float f1)
        {
            float f2 = getDrawerViewOffset(view);
            int i = view.getWidth();
            int k;
            if (checkDrawerViewGravity(view, 3))
            {
                if (f <= 0.0F && (f != 0.0F || f2 <= 0.5F))
                    k = -i;
                else
                    k = 0;
            } else
            {
                int j = getWidth();
                if (f >= 0.0F && (f != 0.0F || f2 >= 0.5F))
                    k = j;
                else
                    k = j - i;
            }
            mDragger.settleCapturedViewAt(k, view.getTop());
            invalidate();
        }

        public void removeCallbacks()
        {
            DrawerLayout.this.removeCallbacks(mPeekRunnable);
        }

        public void setDragger(ViewDragHelper viewdraghelper)
        {
            mDragger = viewdraghelper;
        }

        public boolean tryCaptureView(View view, int i)
        {
            return isDrawerView(view) && checkDrawerViewGravity(view, mGravity) && getDrawerLockMode(view) == 0;
        }


        public ViewDragCallback(int i)
        {
            this$0 = DrawerLayout.this;
            super();
            mGravity = i;
        }
    }


    private static final boolean ALLOW_EDGE_LOCK = false;
    private static final int DEFAULT_SCRIM_COLOR = 0x99000000;
    private static final int LAYOUT_ATTRS[] = {
        0x10100b3
    };
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private boolean mChildrenCanceledTouch;
    private boolean mDisallowInterceptRequested;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private final ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;
    private DrawerListener mListener;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mMinDrawerMargin;
    private final ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowLeft;
    private Drawable mShadowRight;

    public DrawerLayout(Context context)
    {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mScrimColor = 0x99000000;
        mScrimPaint = new Paint();
        mFirstLayout = true;
        float f = getResources().getDisplayMetrics().density;
        mMinDrawerMargin = (int)(0.5F + 64F * f);
        float f1 = 400F * f;
        mLeftCallback = new ViewDragCallback(3);
        mRightCallback = new ViewDragCallback(5);
        mLeftDragger = ViewDragHelper.create(this, 0.5F, mLeftCallback);
        mLeftDragger.setEdgeTrackingEnabled(1);
        mLeftDragger.setMinVelocity(f1);
        mLeftCallback.setDragger(mLeftDragger);
        mRightDragger = ViewDragHelper.create(this, 0.5F, mRightCallback);
        mRightDragger.setEdgeTrackingEnabled(2);
        mRightDragger.setMinVelocity(f1);
        mRightCallback.setDragger(mRightDragger);
        setFocusableInTouchMode(true);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewGroupCompat.setMotionEventSplittingEnabled(this, false);
    }

    private View findVisibleDrawer()
    {
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
            View view = getChildAt(j);
            if (isDrawerView(view) && isDrawerVisible(view))
                return view;
        }

        return null;
    }

    static String gravityToString(int i)
    {
        if ((i & 3) == 3)
            return "LEFT";
        if ((i & 5) == 5)
            return "RIGHT";
        else
            return Integer.toHexString(i);
    }

    private static boolean hasOpaqueBackground(View view)
    {
        Drawable drawable = view.getBackground();
        boolean flag = false;
        if (drawable != null)
        {
            int i = drawable.getOpacity();
            flag = false;
            if (i == -1)
                flag = true;
        }
        return flag;
    }

    private boolean hasPeekingDrawer()
    {
        int i = getChildCount();
        for (int j = 0; j < i; j++)
            if (((LayoutParams)getChildAt(j).getLayoutParams()).isPeeking)
                return true;

        return false;
    }

    private boolean hasVisibleDrawer()
    {
        return findVisibleDrawer() != null;
    }

    void cancelChildViewTouch()
    {
        if (!mChildrenCanceledTouch)
        {
            long l = SystemClock.uptimeMillis();
            MotionEvent motionevent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
            int i = getChildCount();
            for (int j = 0; j < i; j++)
                getChildAt(j).dispatchTouchEvent(motionevent);

            motionevent.recycle();
            mChildrenCanceledTouch = true;
        }
    }

    boolean checkDrawerViewGravity(View view, int i)
    {
        return (i & getDrawerViewGravity(view)) == i;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && super.checkLayoutParams(layoutparams);
    }

    public void closeDrawer(int i)
    {
        int j = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        View view = findDrawerWithGravity(j);
        if (view == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No drawer view found with absolute gravity ").append(gravityToString(j)).toString());
        } else
        {
            closeDrawer(view);
            return;
        }
    }

    public void closeDrawer(View view)
    {
        if (!isDrawerView(view))
            throw new IllegalArgumentException((new StringBuilder()).append("View ").append(view).append(" is not a sliding drawer").toString());
        if (mFirstLayout)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            layoutparams.onScreen = 0.0F;
            layoutparams.knownOpen = false;
        } else
        if (checkDrawerViewGravity(view, 3))
            mLeftDragger.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
        else
            mRightDragger.smoothSlideViewTo(view, getWidth(), view.getTop());
        invalidate();
    }

    public void closeDrawers()
    {
        closeDrawers(false);
    }

    void closeDrawers(boolean flag)
    {
        boolean flag1 = false;
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
            View view = getChildAt(j);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (!isDrawerView(view) || flag && !layoutparams.isPeeking)
                continue;
            int k = view.getWidth();
            if (checkDrawerViewGravity(view, 3))
                flag1 |= mLeftDragger.smoothSlideViewTo(view, -k, view.getTop());
            else
                flag1 |= mRightDragger.smoothSlideViewTo(view, getWidth(), view.getTop());
            layoutparams.isPeeking = false;
        }

        mLeftCallback.removeCallbacks();
        mRightCallback.removeCallbacks();
        if (flag1)
            invalidate();
    }

    public void computeScroll()
    {
        int i = getChildCount();
        float f = 0.0F;
        for (int j = 0; j < i; j++)
            f = Math.max(f, ((LayoutParams)getChildAt(j).getLayoutParams()).onScreen);

        mScrimOpacity = f;
        if (mLeftDragger.continueSettling(true) | mRightDragger.continueSettling(true))
            ViewCompat.postInvalidateOnAnimation(this);
    }

    void dispatchOnDrawerClosed(View view)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (layoutparams.knownOpen)
        {
            layoutparams.knownOpen = false;
            if (mListener != null)
                mListener.onDrawerClosed(view);
            sendAccessibilityEvent(32);
        }
    }

    void dispatchOnDrawerOpened(View view)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.knownOpen)
        {
            layoutparams.knownOpen = true;
            if (mListener != null)
                mListener.onDrawerOpened(view);
            view.sendAccessibilityEvent(32);
        }
    }

    void dispatchOnDrawerSlide(View view, float f)
    {
        if (mListener != null)
            mListener.onDrawerSlide(view, f);
    }

    protected boolean drawChild(Canvas canvas, View view, long l)
    {
        int i = getHeight();
        boolean flag = isContentView(view);
        int j = getWidth();
        int k = canvas.save();
        int i1 = 0;
        if (flag)
        {
            int j3 = getChildCount();
            for (int k3 = 0; k3 < j3; k3++)
            {
                View view1 = getChildAt(k3);
                if (view1 == view || view1.getVisibility() != 0 || !hasOpaqueBackground(view1) || !isDrawerView(view1) || view1.getHeight() < i)
                    continue;
                if (checkDrawerViewGravity(view1, 3))
                {
                    int i4 = view1.getRight();
                    if (i4 > i1)
                        i1 = i4;
                    continue;
                }
                int l3 = view1.getLeft();
                if (l3 < j)
                    j = l3;
            }

            canvas.clipRect(i1, 0, j, getHeight());
        }
        boolean flag1 = super.drawChild(canvas, view, l);
        canvas.restoreToCount(k);
        if (mScrimOpacity > 0.0F && flag)
        {
            int i3 = (int)((float)((0xff000000 & mScrimColor) >>> 24) * mScrimOpacity) << 24 | 0xffffff & mScrimColor;
            mScrimPaint.setColor(i3);
            canvas.drawRect(i1, 0.0F, j, getHeight(), mScrimPaint);
        } else
        {
            if (mShadowLeft != null && checkDrawerViewGravity(view, 3))
            {
                int j2 = mShadowLeft.getIntrinsicWidth();
                int k2 = view.getRight();
                int l2 = mLeftDragger.getEdgeSize();
                float f1 = Math.max(0.0F, Math.min((float)k2 / (float)l2, 1.0F));
                mShadowLeft.setBounds(k2, view.getTop(), k2 + j2, view.getBottom());
                mShadowLeft.setAlpha((int)(255F * f1));
                mShadowLeft.draw(canvas);
                return flag1;
            }
            if (mShadowRight != null && checkDrawerViewGravity(view, 5))
            {
                int j1 = mShadowRight.getIntrinsicWidth();
                int k1 = view.getLeft();
                int l1 = getWidth() - k1;
                int i2 = mRightDragger.getEdgeSize();
                float f = Math.max(0.0F, Math.min((float)l1 / (float)i2, 1.0F));
                mShadowRight.setBounds(k1 - j1, view.getTop(), k1, view.getBottom());
                mShadowRight.setAlpha((int)(255F * f));
                mShadowRight.draw(canvas);
                return flag1;
            }
        }
        return flag1;
    }

    View findDrawerWithGravity(int i)
    {
        int j = getChildCount();
        for (int k = 0; k < j; k++)
        {
            View view = getChildAt(k);
            if ((7 & getDrawerViewGravity(view)) == (i & 7))
                return view;
        }

        return null;
    }

    View findOpenDrawer()
    {
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
            View view = getChildAt(j);
            if (((LayoutParams)view.getLayoutParams()).knownOpen)
                return view;
        }

        return null;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams(-1, -1);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof LayoutParams)
            return new LayoutParams((LayoutParams)layoutparams);
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        else
            return new LayoutParams(layoutparams);
    }

    public int getDrawerLockMode(int i)
    {
        int j = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (j == 3)
            return mLockModeLeft;
        if (j == 5)
            return mLockModeRight;
        else
            return 0;
    }

    public int getDrawerLockMode(View view)
    {
        int i = getDrawerViewGravity(view);
        if (i == 3)
            return mLockModeLeft;
        if (i == 5)
            return mLockModeRight;
        else
            return 0;
    }

    int getDrawerViewGravity(View view)
    {
        return GravityCompat.getAbsoluteGravity(((LayoutParams)view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view));
    }

    float getDrawerViewOffset(View view)
    {
        return ((LayoutParams)view.getLayoutParams()).onScreen;
    }

    boolean isContentView(View view)
    {
        return ((LayoutParams)view.getLayoutParams()).gravity == 0;
    }

    public boolean isDrawerOpen(int i)
    {
        View view = findDrawerWithGravity(i);
        if (view != null)
            return isDrawerOpen(view);
        else
            return false;
    }

    public boolean isDrawerOpen(View view)
    {
        if (!isDrawerView(view))
            throw new IllegalArgumentException((new StringBuilder()).append("View ").append(view).append(" is not a drawer").toString());
        else
            return ((LayoutParams)view.getLayoutParams()).knownOpen;
    }

    boolean isDrawerView(View view)
    {
        return (7 & GravityCompat.getAbsoluteGravity(((LayoutParams)view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view))) != 0;
    }

    public boolean isDrawerVisible(int i)
    {
        View view = findDrawerWithGravity(i);
        if (view != null)
            return isDrawerVisible(view);
        else
            return false;
    }

    public boolean isDrawerVisible(View view)
    {
        if (!isDrawerView(view))
            throw new IllegalArgumentException((new StringBuilder()).append("View ").append(view).append(" is not a drawer").toString());
        return ((LayoutParams)view.getLayoutParams()).onScreen > 0.0F;
    }

    void moveDrawerToOffset(View view, float f)
    {
        float f1 = getDrawerViewOffset(view);
        int i = view.getWidth();
        int j = (int)(f1 * (float)i);
        int k = (int)(f * (float)i) - j;
        if (!checkDrawerViewGravity(view, 3))
            k = -k;
        view.offsetLeftAndRight(k);
        setDrawerViewOffset(view, f);
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        mFirstLayout = true;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        mFirstLayout = true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        boolean flag2;
label0:
        {
            int i = MotionEventCompat.getActionMasked(motionevent);
            boolean flag = mLeftDragger.shouldInterceptTouchEvent(motionevent) | mRightDragger.shouldInterceptTouchEvent(motionevent);
            boolean flag1 = false;
            switch (i)
            {
            case 1: // '\001'
            case 3: // '\003'
                closeDrawers(true);
                mDisallowInterceptRequested = false;
                mChildrenCanceledTouch = false;
                flag1 = false;
                break;

            case 2: // '\002'
                boolean flag5 = mLeftDragger.checkTouchSlop(3);
                flag1 = false;
                if (flag5)
                {
                    mLeftCallback.removeCallbacks();
                    mRightCallback.removeCallbacks();
                    flag1 = false;
                }
                break;

            case 0: // '\0'
                float f = motionevent.getX();
                float f1 = motionevent.getY();
                mInitialMotionX = f;
                mInitialMotionY = f1;
                int j = mScrimOpacity != 0.0F;
                flag1 = false;
                if (j > 0)
                {
                    boolean flag4 = isContentView(mLeftDragger.findTopChildUnder((int)f, (int)f1));
                    flag1 = false;
                    if (flag4)
                        flag1 = true;
                }
                mDisallowInterceptRequested = false;
                mChildrenCanceledTouch = false;
                break;
            }
            if (!flag && !flag1 && !hasPeekingDrawer())
            {
                boolean flag3 = mChildrenCanceledTouch;
                flag2 = false;
                if (!flag3)
                    break label0;
            }
            flag2 = true;
        }
        return flag2;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 && hasVisibleDrawer())
        {
            KeyEventCompat.startTracking(keyevent);
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            View view = findVisibleDrawer();
            if (view != null && getDrawerLockMode(view) == 0)
                closeDrawers();
            return view != null;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        mInLayout = true;
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            View view = getChildAt(j1);
            if (view.getVisibility() == 8)
                continue;
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (isContentView(view))
            {
                view.layout(layoutparams.leftMargin, layoutparams.topMargin, layoutparams.leftMargin + view.getMeasuredWidth(), layoutparams.topMargin + view.getMeasuredHeight());
                continue;
            }
            int k1 = view.getMeasuredWidth();
            int l1 = view.getMeasuredHeight();
            int i2;
            if (checkDrawerViewGravity(view, 3))
                i2 = -k1 + (int)((float)k1 * layoutparams.onScreen);
            else
                i2 = k - i - (int)((float)k1 * layoutparams.onScreen);
            switch (0x70 & layoutparams.gravity)
            {
            case 16: // '\020'
                int k2 = l - j;
                int l2 = (k2 - l1) / 2;
                if (l2 < layoutparams.topMargin)
                    l2 = layoutparams.topMargin;
                else
                if (l2 + l1 > k2 - layoutparams.bottomMargin)
                    l2 = k2 - layoutparams.bottomMargin - l1;
                view.layout(i2, l2, i2 + k1, l2 + l1);
                break;

            case 80: // 'P'
                int j2 = l - j;
                view.layout(i2, j2 - layoutparams.bottomMargin - view.getMeasuredHeight(), i2 + k1, j2 - layoutparams.bottomMargin);
                break;

            default:
                view.layout(i2, layoutparams.topMargin, i2 + k1, l1);
                break;
            }
            if (layoutparams.onScreen == 0.0F)
                view.setVisibility(4);
        }

        mInLayout = false;
        mFirstLayout = false;
    }

    protected void onMeasure(int i, int j)
    {
label0:
        {
label1:
            {
                int k = android.view.View.MeasureSpec.getMode(i);
                int l = android.view.View.MeasureSpec.getMode(j);
                int i1 = android.view.View.MeasureSpec.getSize(i);
                int j1 = android.view.View.MeasureSpec.getSize(j);
                if (k != 0x40000000 || l != 0x40000000)
                    break label0;
                setMeasuredDimension(i1, j1);
                int k1 = getChildCount();
                int l1 = 0;
                View view;
                do
                {
                    if (l1 >= k1)
                        break label1;
                    view = getChildAt(l1);
                    if (view.getVisibility() != 8)
                    {
                        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                        if (isContentView(view))
                        {
                            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i1 - layoutparams.leftMargin - layoutparams.rightMargin, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(j1 - layoutparams.topMargin - layoutparams.bottomMargin, 0x40000000));
                        } else
                        {
                            if (!isDrawerView(view))
                                break;
                            int i2 = 7 & getDrawerViewGravity(view);
                            if ((0 & i2) != 0)
                                throw new IllegalStateException((new StringBuilder()).append("Child drawer has absolute gravity ").append(gravityToString(i2)).append(" but this ").append("DrawerLayout").append(" already has a ").append("drawer view along that edge").toString());
                            view.measure(getChildMeasureSpec(i, mMinDrawerMargin + layoutparams.leftMargin + layoutparams.rightMargin, layoutparams.width), getChildMeasureSpec(j, layoutparams.topMargin + layoutparams.bottomMargin, layoutparams.height));
                        }
                    }
                    l1++;
                } while (true);
                throw new IllegalStateException((new StringBuilder()).append("Child ").append(view).append(" at index ").append(l1).append(" does not have a valid layout_gravity - must be Gravity.LEFT, ").append("Gravity.RIGHT or Gravity.NO_GRAVITY").toString());
            }
            return;
        }
        throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (savedstate.openDrawerGravity != 0)
        {
            View view = findDrawerWithGravity(savedstate.openDrawerGravity);
            if (view != null)
                openDrawer(view);
        }
        setDrawerLockMode(savedstate.lockModeLeft, 3);
        setDrawerLockMode(savedstate.lockModeRight, 5);
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        int i = getChildCount();
        int j = 0;
        do
        {
label0:
            {
                if (j < i)
                {
                    View view = getChildAt(j);
                    if (!isDrawerView(view))
                        break label0;
                    LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                    if (!layoutparams.knownOpen)
                        break label0;
                    savedstate.openDrawerGravity = layoutparams.gravity;
                }
                savedstate.lockModeLeft = mLockModeLeft;
                savedstate.lockModeRight = mLockModeRight;
                return savedstate;
            }
            j++;
        } while (true);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        mLeftDragger.processTouchEvent(motionevent);
        mRightDragger.processTouchEvent(motionevent);
        switch (0xff & motionevent.getAction())
        {
        case 3: // '\003'
            closeDrawers(true);
            mDisallowInterceptRequested = false;
            mChildrenCanceledTouch = false;
            return true;

        case 1: // '\001'
            float f2 = motionevent.getX();
            float f3 = motionevent.getY();
            boolean flag = true;
            View view = mLeftDragger.findTopChildUnder((int)f2, (int)f3);
            if (view != null && isContentView(view))
            {
                float f4 = f2 - mInitialMotionX;
                float f5 = f3 - mInitialMotionY;
                int i = mLeftDragger.getTouchSlop();
                if (f4 * f4 + f5 * f5 < (float)(i * i))
                {
                    View view1 = findOpenDrawer();
                    if (view1 != null)
                        if (getDrawerLockMode(view1) == 2)
                            flag = true;
                        else
                            flag = false;
                }
            }
            closeDrawers(flag);
            mDisallowInterceptRequested = false;
            return true;

        case 0: // '\0'
            float f = motionevent.getX();
            float f1 = motionevent.getY();
            mInitialMotionX = f;
            mInitialMotionY = f1;
            mDisallowInterceptRequested = false;
            mChildrenCanceledTouch = false;
            return true;

        case 2: // '\002'
        default:
            return true;
        }
    }

    public void openDrawer(int i)
    {
        int j = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        View view = findDrawerWithGravity(j);
        if (view == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No drawer view found with absolute gravity ").append(gravityToString(j)).toString());
        } else
        {
            openDrawer(view);
            return;
        }
    }

    public void openDrawer(View view)
    {
        if (!isDrawerView(view))
            throw new IllegalArgumentException((new StringBuilder()).append("View ").append(view).append(" is not a sliding drawer").toString());
        if (mFirstLayout)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            layoutparams.onScreen = 1.0F;
            layoutparams.knownOpen = true;
        } else
        if (checkDrawerViewGravity(view, 3))
            mLeftDragger.smoothSlideViewTo(view, 0, view.getTop());
        else
            mRightDragger.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
        invalidate();
    }

    public void requestDisallowInterceptTouchEvent(boolean flag)
    {
        if (!mLeftDragger.isEdgeTouched(1) && !mRightDragger.isEdgeTouched(2))
            super.requestDisallowInterceptTouchEvent(flag);
        mDisallowInterceptRequested = flag;
        if (flag)
            closeDrawers(true);
    }

    public void requestLayout()
    {
        if (!mInLayout)
            super.requestLayout();
    }

    public void setDrawerListener(DrawerListener drawerlistener)
    {
        mListener = drawerlistener;
    }

    public void setDrawerLockMode(int i)
    {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int j)
    {
        int k = GravityCompat.getAbsoluteGravity(j, ViewCompat.getLayoutDirection(this));
        if (k == 3)
            mLockModeLeft = i;
        else
        if (k == 5)
            mLockModeRight = i;
        if (i != 0)
        {
            ViewDragHelper viewdraghelper;
            if (k == 3)
                viewdraghelper = mLeftDragger;
            else
                viewdraghelper = mRightDragger;
            viewdraghelper.cancel();
        }
        switch (i)
        {
        default:
            break;

        case 1: // '\001'
            View view1 = findDrawerWithGravity(k);
            if (view1 != null)
            {
                closeDrawer(view1);
                return;
            }
            break;

        case 2: // '\002'
            View view = findDrawerWithGravity(k);
            if (view != null)
            {
                openDrawer(view);
                return;
            }
            break;
        }
    }

    public void setDrawerLockMode(int i, View view)
    {
        if (!isDrawerView(view))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("View ").append(view).append(" is not a ").append("drawer with appropriate layout_gravity").toString());
        } else
        {
            setDrawerLockMode(i, getDrawerViewGravity(view));
            return;
        }
    }

    public void setDrawerShadow(int i, int j)
    {
        setDrawerShadow(getResources().getDrawable(i), j);
    }

    public void setDrawerShadow(Drawable drawable, int i)
    {
        int j = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if ((j & 3) == 3)
        {
            mShadowLeft = drawable;
            invalidate();
        }
        if ((j & 5) == 5)
        {
            mShadowRight = drawable;
            invalidate();
        }
    }

    void setDrawerViewOffset(View view, float f)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (f == layoutparams.onScreen)
        {
            return;
        } else
        {
            layoutparams.onScreen = f;
            dispatchOnDrawerSlide(view, f);
            return;
        }
    }

    public void setScrimColor(int i)
    {
        mScrimColor = i;
        invalidate();
    }

    void updateDrawerState(int i, int j, View view)
    {
        int k = mLeftDragger.getViewDragState();
        int l = mRightDragger.getViewDragState();
        int i1;
        if (k != 1 && l != 1)
        {
            if (k != 2 && l != 2)
                i1 = 0;
            else
                i1 = 2;
        } else
        {
            i1 = 1;
        }
        if (view != null && j == 0)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (layoutparams.onScreen == 0.0F)
                dispatchOnDrawerClosed(view);
            else
            if (layoutparams.onScreen == 1.0F)
                dispatchOnDrawerOpened(view);
        }
        if (i1 != mDrawerState)
        {
            mDrawerState = i1;
            if (mListener != null)
                mListener.onDrawerStateChanged(i1);
        }
    }



    // Unreferenced inner class android/support/v4/widget/DrawerLayout$ViewDragCallback$1

/* anonymous class */
    class ViewDragCallback._cls1
        implements Runnable
    {

        final ViewDragCallback this$1;

        public void run()
        {
            peekDrawer();
        }

            
            {
                this$1 = ViewDragCallback.this;
                super();
            }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.*;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.*;
import android.view.*;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.widget:
//            ViewDragHelper

public class SlidingPaneLayout extends ViewGroup
{
    class AccessibilityDelegate extends AccessibilityDelegateCompat
    {

        private final Rect mTmpRect = new Rect();
        final SlidingPaneLayout this$0;

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
            return isDimmed(view);
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
            this$0 = SlidingPaneLayout.this;
            super();
        }
    }

    private class DisableLayerRunnable
        implements Runnable
    {

        final View mChildView;
        final SlidingPaneLayout this$0;

        public void run()
        {
            if (mChildView.getParent() == SlidingPaneLayout.this)
            {
                ViewCompat.setLayerType(mChildView, 0, null);
                invalidateChildRegion(mChildView);
            }
            mPostedRunnables.remove(this);
        }

        DisableLayerRunnable(View view)
        {
            this$0 = SlidingPaneLayout.this;
            super();
            mChildView = view;
        }
    }

    private class DragHelperCallback extends ViewDragHelper.Callback
    {

        final SlidingPaneLayout this$0;

        public int clampViewPositionHorizontal(View view, int i, int j)
        {
            LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
            int k = getPaddingLeft() + layoutparams.leftMargin;
            int l = k + mSlideRange;
            return Math.min(Math.max(i, k), l);
        }

        public int getViewHorizontalDragRange(View view)
        {
            return mSlideRange;
        }

        public void onEdgeDragStarted(int i, int j)
        {
            mDragHelper.captureChildView(mSlideableView, j);
        }

        public void onViewCaptured(View view, int i)
        {
            setAllChildrenVisible();
        }

        public void onViewDragStateChanged(int i)
        {
label0:
            {
                if (mDragHelper.getViewDragState() == 0)
                {
                    if (mSlideOffset != 0.0F)
                        break label0;
                    updateObscuredViewsVisibility(mSlideableView);
                    dispatchOnPanelClosed(mSlideableView);
                    mPreservedOpenState = false;
                }
                return;
            }
            dispatchOnPanelOpened(mSlideableView);
            mPreservedOpenState = true;
        }

        public void onViewPositionChanged(View view, int i, int j, int k, int l)
        {
            onPanelDragged(i);
            invalidate();
        }

        public void onViewReleased(View view, float f, float f1)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            int i = getPaddingLeft() + layoutparams.leftMargin;
            if (f > 0.0F || f == 0.0F && mSlideOffset > 0.5F)
                i += mSlideRange;
            mDragHelper.settleCapturedViewAt(i, view.getTop());
            invalidate();
        }

        public boolean tryCaptureView(View view, int i)
        {
            if (mIsUnableToDrag)
                return false;
            else
                return ((LayoutParams)view.getLayoutParams()).slideable;
        }

        private DragHelperCallback()
        {
            this$0 = SlidingPaneLayout.this;
            super();
        }

    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        private static final int ATTRS[] = {
            0x1010181
        };
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;


        public LayoutParams()
        {
            super(-1, -1);
            weight = 0.0F;
        }

        public LayoutParams(int i, int j)
        {
            super(i, j);
            weight = 0.0F;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            weight = 0.0F;
            TypedArray typedarray = context.obtainStyledAttributes(attributeset, ATTRS);
            weight = typedarray.getFloat(0, 0.0F);
            typedarray.recycle();
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            weight = 0.0F;
            weight = layoutparams.weight;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            weight = 0.0F;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            weight = 0.0F;
        }
    }

    public static interface PanelSlideListener
    {

        public abstract void onPanelClosed(View view);

        public abstract void onPanelOpened(View view);

        public abstract void onPanelSlide(View view, float f);
    }

    static class SavedState extends android.view.View.BaseSavedState
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
        boolean isOpen;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            int j;
            if (isOpen)
                j = 1;
            else
                j = 0;
            parcel.writeInt(j);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            boolean flag;
            if (parcel.readInt() != 0)
                flag = true;
            else
                flag = false;
            isOpen = flag;
        }


        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    public static class SimplePanelSlideListener
        implements PanelSlideListener
    {

        public void onPanelClosed(View view)
        {
        }

        public void onPanelOpened(View view)
        {
        }

        public void onPanelSlide(View view, float f)
        {
        }

    }

    static interface SlidingPanelLayoutImpl
    {

        public abstract void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view);
    }

    static class SlidingPanelLayoutImplBase
        implements SlidingPanelLayoutImpl
    {

        public void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view)
        {
            ViewCompat.postInvalidateOnAnimation(slidingpanelayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }

    }

    static class SlidingPanelLayoutImplJB extends SlidingPanelLayoutImplBase
    {

        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        public void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view)
        {
            if (mGetDisplayList != null && mRecreateDisplayList != null)
            {
                try
                {
                    mRecreateDisplayList.setBoolean(view, true);
                    mGetDisplayList.invoke(view, (Object[])null);
                }
                catch (Exception exception)
                {
                    Log.e("SlidingPaneLayout", "Error refreshing display list state", exception);
                }
                super.invalidateChildRegion(slidingpanelayout, view);
                return;
            } else
            {
                view.invalidate();
                return;
            }
        }

        SlidingPanelLayoutImplJB()
        {
            try
            {
                mGetDisplayList = android/view/View.getDeclaredMethod("getDisplayList", (Class[])null);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", nosuchmethodexception);
            }
            try
            {
                mRecreateDisplayList = android/view/View.getDeclaredField("mRecreateDisplayList");
                mRecreateDisplayList.setAccessible(true);
                return;
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", nosuchfieldexception);
            }
        }
    }

    static class SlidingPanelLayoutImplJBMR1 extends SlidingPanelLayoutImplBase
    {

        public void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view)
        {
            ViewCompat.setLayerPaint(view, ((LayoutParams)view.getLayoutParams()).dimPaint);
        }

    }


    private static final int DEFAULT_FADE_COLOR = 0xcccccccc;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    private final ArrayList mPostedRunnables;
    private boolean mPreservedOpenState;
    private Drawable mShadowDrawable;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    public SlidingPaneLayout(Context context)
    {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mSliderFadeColor = 0xcccccccc;
        mFirstLayout = true;
        mTmpRect = new Rect();
        mPostedRunnables = new ArrayList();
        float f = context.getResources().getDisplayMetrics().density;
        mOverhangSize = (int)(0.5F + 32F * f);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        mDragHelper = ViewDragHelper.create(this, 0.5F, new DragHelperCallback());
        mDragHelper.setEdgeTrackingEnabled(1);
        mDragHelper.setMinVelocity(400F * f);
    }

    private boolean closePane(View view, int i)
    {
        boolean flag;
label0:
        {
            if (!mFirstLayout)
            {
                boolean flag1 = smoothSlideTo(0.0F, i);
                flag = false;
                if (!flag1)
                    break label0;
            }
            mPreservedOpenState = false;
            flag = true;
        }
        return flag;
    }

    private void dimChildView(View view, float f, int i)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (f > 0.0F && i != 0)
        {
            int j = (int)(f * (float)((0xff000000 & i) >>> 24)) << 24 | 0xffffff & i;
            if (layoutparams.dimPaint == null)
                layoutparams.dimPaint = new Paint();
            layoutparams.dimPaint.setColorFilter(new PorterDuffColorFilter(j, android.graphics.PorterDuff.Mode.SRC_OVER));
            if (ViewCompat.getLayerType(view) != 2)
                ViewCompat.setLayerType(view, 2, layoutparams.dimPaint);
            invalidateChildRegion(view);
        } else
        if (ViewCompat.getLayerType(view) != 0)
        {
            if (layoutparams.dimPaint != null)
                layoutparams.dimPaint.setColorFilter(null);
            DisableLayerRunnable disablelayerrunnable = new DisableLayerRunnable(view);
            mPostedRunnables.add(disablelayerrunnable);
            ViewCompat.postOnAnimation(this, disablelayerrunnable);
            return;
        }
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

    private void invalidateChildRegion(View view)
    {
        IMPL.invalidateChildRegion(this, view);
    }

    private void onPanelDragged(int i)
    {
        LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
        mSlideOffset = (float)(i - (getPaddingLeft() + layoutparams.leftMargin)) / (float)mSlideRange;
        if (mParallaxBy != 0)
            parallaxOtherViews(mSlideOffset);
        if (layoutparams.dimWhenOffset)
            dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
        dispatchOnPanelSlide(mSlideableView);
    }

    private boolean openPane(View view, int i)
    {
        if (!mFirstLayout && !smoothSlideTo(1.0F, i))
        {
            return false;
        } else
        {
            mPreservedOpenState = true;
            return true;
        }
    }

    private void parallaxOtherViews(float f)
    {
        LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
        boolean flag;
        if (layoutparams.dimWhenOffset && layoutparams.leftMargin <= 0)
            flag = true;
        else
            flag = false;
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
            View view = getChildAt(j);
            if (view == mSlideableView)
                continue;
            int k = (int)((1.0F - mParallaxOffset) * (float)mParallaxBy);
            mParallaxOffset = f;
            view.offsetLeftAndRight(k - (int)((1.0F - f) * (float)mParallaxBy));
            if (flag)
                dimChildView(view, 1.0F - mParallaxOffset, mCoveredFadeColor);
        }

    }

    protected boolean canScroll(View view, boolean flag, int i, int j, int k)
    {
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int l = view.getScrollX();
            int i1 = view.getScrollY();
            for (int j1 = -1 + viewgroup.getChildCount(); j1 >= 0; j1--)
            {
                View view1 = viewgroup.getChildAt(j1);
                if (j + l >= view1.getLeft() && j + l < view1.getRight() && k + i1 >= view1.getTop() && k + i1 < view1.getBottom() && canScroll(view1, true, i, (j + l) - view1.getLeft(), (k + i1) - view1.getTop()))
                    return true;
            }

        }
        return flag && ViewCompat.canScrollHorizontally(view, -i);
    }

    public boolean canSlide()
    {
        return mCanSlide;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && super.checkLayoutParams(layoutparams);
    }

    public boolean closePane()
    {
        return closePane(mSlideableView, 0);
    }

    public void computeScroll()
    {
label0:
        {
            if (mDragHelper.continueSettling(true))
            {
                if (mCanSlide)
                    break label0;
                mDragHelper.abort();
            }
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    void dispatchOnPanelClosed(View view)
    {
        if (mPanelSlideListener != null)
            mPanelSlideListener.onPanelClosed(view);
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelOpened(View view)
    {
        if (mPanelSlideListener != null)
            mPanelSlideListener.onPanelOpened(view);
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelSlide(View view)
    {
        if (mPanelSlideListener != null)
            mPanelSlideListener.onPanelSlide(view, mSlideOffset);
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        View view;
        if (getChildCount() > 1)
            view = getChildAt(1);
        else
            view = null;
        if (view != null && mShadowDrawable != null)
        {
            int i = mShadowDrawable.getIntrinsicWidth();
            int j = view.getLeft();
            int k = view.getTop();
            int l = view.getBottom();
            int i1 = j - i;
            mShadowDrawable.setBounds(i1, k, j, l);
            mShadowDrawable.draw(canvas);
            return;
        } else
        {
            return;
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long l)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int i = canvas.save(2);
        if (mCanSlide && !layoutparams.slideable && mSlideableView != null)
        {
            canvas.getClipBounds(mTmpRect);
            mTmpRect.right = Math.min(mTmpRect.right, mSlideableView.getLeft());
            canvas.clipRect(mTmpRect);
        }
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 11)
            flag = super.drawChild(canvas, view, l);
        else
        if (layoutparams.dimWhenOffset && mSlideOffset > 0.0F)
        {
            if (!view.isDrawingCacheEnabled())
                view.setDrawingCacheEnabled(true);
            android.graphics.Bitmap bitmap = view.getDrawingCache();
            if (bitmap != null)
            {
                canvas.drawBitmap(bitmap, view.getLeft(), view.getTop(), layoutparams.dimPaint);
                flag = false;
            } else
            {
                Log.e("SlidingPaneLayout", (new StringBuilder()).append("drawChild: child view ").append(view).append(" returned null drawing cache").toString());
                flag = super.drawChild(canvas, view, l);
            }
        } else
        {
            if (view.isDrawingCacheEnabled())
                view.setDrawingCacheEnabled(false);
            flag = super.drawChild(canvas, view, l);
        }
        canvas.restoreToCount(i);
        return flag;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        else
            return new LayoutParams(layoutparams);
    }

    public int getCoveredFadeColor()
    {
        return mCoveredFadeColor;
    }

    public int getParallaxDistance()
    {
        return mParallaxBy;
    }

    public int getSliderFadeColor()
    {
        return mSliderFadeColor;
    }

    boolean isDimmed(View view)
    {
        if (view != null)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (mCanSlide && layoutparams.dimWhenOffset && mSlideOffset > 0.0F)
                return true;
        }
        return false;
    }

    public boolean isOpen()
    {
        return !mCanSlide || mSlideOffset == 1.0F;
    }

    public boolean isSlideable()
    {
        return mCanSlide;
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
        int i = 0;
        for (int j = mPostedRunnables.size(); i < j; i++)
            ((DisableLayerRunnable)mPostedRunnables.get(i)).run();

        mPostedRunnables.clear();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i = MotionEventCompat.getActionMasked(motionevent);
        if (!mCanSlide && i == 0 && getChildCount() > 1)
        {
            View view = getChildAt(1);
            if (view != null)
            {
                boolean flag3;
                if (!mDragHelper.isViewUnder(view, (int)motionevent.getX(), (int)motionevent.getY()))
                    flag3 = true;
                else
                    flag3 = false;
                mPreservedOpenState = flag3;
            }
        }
        if (mCanSlide && (!mIsUnableToDrag || i == 0))
        {
            if (i != 3 && i != 1)
            {
                boolean flag = false;
                switch (i)
                {
                case 2: // '\002'
                    float f2 = motionevent.getX();
                    float f3 = motionevent.getY();
                    float f4 = Math.abs(f2 - mInitialMotionX);
                    float f5 = Math.abs(f3 - mInitialMotionY);
                    int j = f4 != (float)mDragHelper.getTouchSlop();
                    flag = false;
                    if (j > 0)
                    {
                        int k = f5 != f4;
                        flag = false;
                        if (k > 0)
                        {
                            mDragHelper.cancel();
                            mIsUnableToDrag = true;
                            return false;
                        }
                    }
                    break;

                case 0: // '\0'
                    mIsUnableToDrag = false;
                    float f = motionevent.getX();
                    float f1 = motionevent.getY();
                    mInitialMotionX = f;
                    mInitialMotionY = f1;
                    boolean flag1 = mDragHelper.isViewUnder(mSlideableView, (int)f, (int)f1);
                    flag = false;
                    if (flag1)
                    {
                        boolean flag2 = isDimmed(mSlideableView);
                        flag = false;
                        if (flag2)
                            flag = true;
                    }
                    break;
                }
                return mDragHelper.shouldInterceptTouchEvent(motionevent) || flag;
            } else
            {
                mDragHelper.cancel();
                return false;
            }
        } else
        {
            mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionevent);
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = k - i;
        int j1 = getPaddingLeft();
        int k1 = getPaddingRight();
        int l1 = getPaddingTop();
        int i2 = getChildCount();
        int j2 = j1;
        int k2 = j2;
        if (mFirstLayout)
        {
            float f;
            if (mCanSlide && mPreservedOpenState)
                f = 1.0F;
            else
                f = 0.0F;
            mSlideOffset = f;
        }
        for (int l2 = 0; l2 < i2; l2++)
        {
            View view = getChildAt(l2);
            if (view.getVisibility() == 8)
                continue;
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            int j3 = view.getMeasuredWidth();
            int k3 = 0;
            if (layoutparams.slideable)
            {
                int i4 = layoutparams.leftMargin + layoutparams.rightMargin;
                int j4 = Math.min(k2, i1 - k1 - mOverhangSize) - j2 - i4;
                mSlideRange = j4;
                boolean flag1;
                if (j4 + (j2 + layoutparams.leftMargin) + j3 / 2 > i1 - k1)
                    flag1 = true;
                else
                    flag1 = false;
                layoutparams.dimWhenOffset = flag1;
                j2 += (int)((float)j4 * mSlideOffset) + layoutparams.leftMargin;
            } else
            if (mCanSlide && mParallaxBy != 0)
            {
                k3 = (int)((1.0F - mSlideOffset) * (float)mParallaxBy);
                j2 = k2;
            } else
            {
                j2 = k2;
                k3 = 0;
            }
            int l3 = j2 - k3;
            view.layout(l3, l1, l3 + j3, l1 + view.getMeasuredHeight());
            k2 += view.getWidth();
        }

        if (mFirstLayout)
        {
            if (mCanSlide)
            {
                if (mParallaxBy != 0)
                    parallaxOtherViews(mSlideOffset);
                if (((LayoutParams)mSlideableView.getLayoutParams()).dimWhenOffset)
                    dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
            } else
            {
                for (int i3 = 0; i3 < i2; i3++)
                    dimChildView(getChildAt(i3), 0.0F, mSliderFadeColor);

            }
            updateObscuredViewsVisibility(mSlideableView);
        }
        mFirstLayout = false;
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(i);
        int l = android.view.View.MeasureSpec.getSize(i);
        int i1 = android.view.View.MeasureSpec.getMode(j);
        int j1 = android.view.View.MeasureSpec.getSize(j);
        if (k != 0x40000000)
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        if (i1 == 0)
            throw new IllegalStateException("Height must not be UNSPECIFIED");
        int k1 = -1;
        int l1 = 0;
        switch (i1)
        {
        case -2147483648: 
            k1 = j1 - getPaddingTop() - getPaddingBottom();
            l1 = 0;
            break;

        case 1073741824: 
            k1 = j1 - getPaddingTop() - getPaddingBottom();
            l1 = k1;
            break;
        }
        float f = 0.0F;
        boolean flag = false;
        int i2 = l - getPaddingLeft() - getPaddingRight();
        int j2 = getChildCount();
        if (j2 > 2)
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        mSlideableView = null;
        for (int k2 = 0; k2 < j2; k2++)
        {
            View view1 = getChildAt(k2);
            LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
            if (view1.getVisibility() == 8)
            {
                layoutparams1.dimWhenOffset = false;
                continue;
            }
            if (layoutparams1.weight > 0.0F)
            {
                f += layoutparams1.weight;
                if (layoutparams1.width == 0)
                    continue;
            }
            int l4 = layoutparams1.leftMargin + layoutparams1.rightMargin;
            int i5;
            if (layoutparams1.width == -2)
                i5 = android.view.View.MeasureSpec.makeMeasureSpec(l - l4, 0x80000000);
            else
            if (layoutparams1.width == -1)
                i5 = android.view.View.MeasureSpec.makeMeasureSpec(l - l4, 0x40000000);
            else
                i5 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams1.width, 0x40000000);
            int j5;
            if (layoutparams1.height == -2)
                j5 = android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x80000000);
            else
            if (layoutparams1.height == -1)
                j5 = android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x40000000);
            else
                j5 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams1.height, 0x40000000);
            view1.measure(i5, j5);
            int k5 = view1.getMeasuredWidth();
            int l5 = view1.getMeasuredHeight();
            if (i1 == 0x80000000 && l5 > l1)
                l1 = Math.min(l5, k1);
            i2 -= k5;
            boolean flag2;
            if (i2 < 0)
                flag2 = true;
            else
                flag2 = false;
            layoutparams1.slideable = flag2;
            flag |= flag2;
            if (layoutparams1.slideable)
                mSlideableView = view1;
        }

        if (flag || f > 0.0F)
        {
            int l2 = l - mOverhangSize;
            for (int i3 = 0; i3 < j2; i3++)
            {
                View view = getChildAt(i3);
                if (view.getVisibility() == 8)
                    continue;
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                boolean flag1;
                if (layoutparams.width == 0 && layoutparams.weight > 0.0F)
                    flag1 = true;
                else
                    flag1 = false;
                int j3;
                if (flag1)
                    j3 = 0;
                else
                    j3 = view.getMeasuredWidth();
                if (flag && view != mSlideableView)
                {
                    if (layoutparams.width >= 0 || j3 <= l2 && layoutparams.weight <= 0.0F)
                        continue;
                    int k4;
                    if (flag1)
                    {
                        if (layoutparams.height == -2)
                            k4 = android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x80000000);
                        else
                        if (layoutparams.height == -1)
                            k4 = android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x40000000);
                        else
                            k4 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
                    } else
                    {
                        k4 = android.view.View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0x40000000);
                    }
                    view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l2, 0x40000000), k4);
                    continue;
                }
                if (layoutparams.weight <= 0.0F)
                    continue;
                int k3;
                if (layoutparams.width == 0)
                {
                    if (layoutparams.height == -2)
                        k3 = android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x80000000);
                    else
                    if (layoutparams.height == -1)
                        k3 = android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x40000000);
                    else
                        k3 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
                } else
                {
                    k3 = android.view.View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0x40000000);
                }
                if (flag)
                {
                    int i4 = l - (layoutparams.leftMargin + layoutparams.rightMargin);
                    int j4 = android.view.View.MeasureSpec.makeMeasureSpec(i4, 0x40000000);
                    if (j3 != i4)
                        view.measure(j4, k3);
                } else
                {
                    int l3 = Math.max(0, i2);
                    view.measure(android.view.View.MeasureSpec.makeMeasureSpec(j3 + (int)((layoutparams.weight * (float)l3) / f), 0x40000000), k3);
                }
            }

        }
        setMeasuredDimension(l, l1);
        mCanSlide = flag;
        if (mDragHelper.getViewDragState() != 0 && !flag)
            mDragHelper.abort();
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (savedstate.isOpen)
            openPane();
        else
            closePane();
        mPreservedOpenState = savedstate.isOpen;
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        boolean flag;
        if (isSlideable())
            flag = isOpen();
        else
            flag = mPreservedOpenState;
        savedstate.isOpen = flag;
        return savedstate;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (i != k)
            mFirstLayout = true;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
label0:
        {
label1:
            {
                if (!mCanSlide)
                {
                    flag = super.onTouchEvent(motionevent);
                } else
                {
                    mDragHelper.processTouchEvent(motionevent);
                    int i = motionevent.getAction();
                    flag = true;
                    switch (i & 0xff)
                    {
                    default:
                        break label0;

                    case 0: // '\0'
                        break label1;

                    case 1: // '\001'
                        if (isDimmed(mSlideableView))
                        {
                            float f2 = motionevent.getX();
                            float f3 = motionevent.getY();
                            float f4 = f2 - mInitialMotionX;
                            float f5 = f3 - mInitialMotionY;
                            int j = mDragHelper.getTouchSlop();
                            if (f4 * f4 + f5 * f5 < (float)(j * j) && mDragHelper.isViewUnder(mSlideableView, (int)f2, (int)f3))
                            {
                                closePane(mSlideableView, 0);
                                return flag;
                            }
                        }
                        break;
                    }
                }
                return flag;
            }
            float f = motionevent.getX();
            float f1 = motionevent.getY();
            mInitialMotionX = f;
            mInitialMotionY = f1;
            return flag;
        }
        return flag;
    }

    public boolean openPane()
    {
        return openPane(mSlideableView, 0);
    }

    public void requestChildFocus(View view, View view1)
    {
        super.requestChildFocus(view, view1);
        if (!isInTouchMode() && !mCanSlide)
        {
            boolean flag;
            if (view == mSlideableView)
                flag = true;
            else
                flag = false;
            mPreservedOpenState = flag;
        }
    }

    void setAllChildrenVisible()
    {
        int i = 0;
        for (int j = getChildCount(); i < j; i++)
        {
            View view = getChildAt(i);
            if (view.getVisibility() == 4)
                view.setVisibility(0);
        }

    }

    public void setCoveredFadeColor(int i)
    {
        mCoveredFadeColor = i;
    }

    public void setPanelSlideListener(PanelSlideListener panelslidelistener)
    {
        mPanelSlideListener = panelslidelistener;
    }

    public void setParallaxDistance(int i)
    {
        mParallaxBy = i;
        requestLayout();
    }

    public void setShadowDrawable(Drawable drawable)
    {
        mShadowDrawable = drawable;
    }

    public void setShadowResource(int i)
    {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setSliderFadeColor(int i)
    {
        mSliderFadeColor = i;
    }

    public void smoothSlideClosed()
    {
        closePane();
    }

    public void smoothSlideOpen()
    {
        openPane();
    }

    boolean smoothSlideTo(float f, int i)
    {
        if (mCanSlide)
        {
            LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
            int j = (int)((float)(getPaddingLeft() + layoutparams.leftMargin) + f * (float)mSlideRange);
            if (mDragHelper.smoothSlideViewTo(mSlideableView, j, mSlideableView.getTop()))
            {
                setAllChildrenVisible();
                ViewCompat.postInvalidateOnAnimation(this);
                return true;
            }
        }
        return false;
    }

    void updateObscuredViewsVisibility(View view)
    {
        int i = getPaddingLeft();
        int j = getWidth() - getPaddingRight();
        int k = getPaddingTop();
        int l = getHeight() - getPaddingBottom();
        int i1;
        int j1;
        int k1;
        int l1;
        if (view != null && hasOpaqueBackground(view))
        {
            j1 = view.getLeft();
            k1 = view.getRight();
            l1 = view.getTop();
            i1 = view.getBottom();
        } else
        {
            i1 = 0;
            j1 = 0;
            k1 = 0;
            l1 = 0;
        }
        int i2 = 0;
        int j2 = getChildCount();
        do
        {
            if (i2 >= j2)
                break;
            View view1 = getChildAt(i2);
            if (view1 == view)
                break;
            int k2 = Math.max(i, view1.getLeft());
            int l2 = Math.max(k, view1.getTop());
            int i3 = Math.min(j, view1.getRight());
            int j3 = Math.min(l, view1.getBottom());
            byte byte0;
            if (k2 >= j1 && l2 >= l1 && i3 <= k1 && j3 <= i1)
                byte0 = 4;
            else
                byte0 = 0;
            view1.setVisibility(byte0);
            i2++;
        } while (true);
    }

    static 
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 17)
            IMPL = new SlidingPanelLayoutImplJBMR1();
        else
        if (i >= 16)
            IMPL = new SlidingPanelLayoutImplJB();
        else
            IMPL = new SlidingPanelLayoutImplBase();
    }







/*
    static boolean access$502(SlidingPaneLayout slidingpanelayout, boolean flag)
    {
        slidingpanelayout.mPreservedOpenState = flag;
        return flag;
    }

*/



}

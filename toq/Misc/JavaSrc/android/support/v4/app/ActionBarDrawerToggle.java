// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package android.support.v4.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.support.v4.widget.DrawerLayout;
import android.view.MenuItem;
import android.view.View;

// Referenced classes of package android.support.v4.app:
//            ActionBarDrawerToggleHoneycomb

public class ActionBarDrawerToggle
    implements android.support.v4.widget.DrawerLayout.DrawerListener
{
    private static interface ActionBarDrawerToggleImpl
    {

        public abstract Drawable getThemeUpIndicator(Activity activity);

        public abstract Object setActionBarDescription(Object obj, Activity activity, int i);

        public abstract Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i);
    }

    private static class ActionBarDrawerToggleImplBase
        implements ActionBarDrawerToggleImpl
    {

        public Drawable getThemeUpIndicator(Activity activity)
        {
            return null;
        }

        public Object setActionBarDescription(Object obj, Activity activity, int i)
        {
            return obj;
        }

        public Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i)
        {
            return obj;
        }

        private ActionBarDrawerToggleImplBase()
        {
        }

    }

    private static class ActionBarDrawerToggleImplHC
        implements ActionBarDrawerToggleImpl
    {

        public Drawable getThemeUpIndicator(Activity activity)
        {
            return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(activity);
        }

        public Object setActionBarDescription(Object obj, Activity activity, int i)
        {
            return ActionBarDrawerToggleHoneycomb.setActionBarDescription(obj, activity, i);
        }

        public Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i)
        {
            return ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(obj, activity, drawable, i);
        }

        private ActionBarDrawerToggleImplHC()
        {
        }

    }

    private static class SlideDrawable extends Drawable
        implements android.graphics.drawable.Drawable.Callback
    {

        private float mOffset;
        private float mOffsetBy;
        private final Rect mTmpRect = new Rect();
        private Drawable mWrapped;

        public void clearColorFilter()
        {
            mWrapped.clearColorFilter();
        }

        public void draw(Canvas canvas)
        {
            mWrapped.copyBounds(mTmpRect);
            canvas.save();
            canvas.translate(mOffsetBy * (float)mTmpRect.width() * -mOffset, 0.0F);
            mWrapped.draw(canvas);
            canvas.restore();
        }

        public int getChangingConfigurations()
        {
            return mWrapped.getChangingConfigurations();
        }

        public android.graphics.drawable.Drawable.ConstantState getConstantState()
        {
            return super.getConstantState();
        }

        public Drawable getCurrent()
        {
            return mWrapped.getCurrent();
        }

        public int getIntrinsicHeight()
        {
            return mWrapped.getIntrinsicHeight();
        }

        public int getIntrinsicWidth()
        {
            return mWrapped.getIntrinsicWidth();
        }

        public int getMinimumHeight()
        {
            return mWrapped.getMinimumHeight();
        }

        public int getMinimumWidth()
        {
            return mWrapped.getMinimumWidth();
        }

        public float getOffset()
        {
            return mOffset;
        }

        public int getOpacity()
        {
            return mWrapped.getOpacity();
        }

        public boolean getPadding(Rect rect)
        {
            return mWrapped.getPadding(rect);
        }

        public int[] getState()
        {
            return mWrapped.getState();
        }

        public Region getTransparentRegion()
        {
            return mWrapped.getTransparentRegion();
        }

        public void invalidateDrawable(Drawable drawable)
        {
            if (drawable == mWrapped)
                invalidateSelf();
        }

        public boolean isStateful()
        {
            return mWrapped.isStateful();
        }

        protected void onBoundsChange(Rect rect)
        {
            super.onBoundsChange(rect);
            mWrapped.setBounds(rect);
        }

        protected boolean onStateChange(int ai[])
        {
            mWrapped.setState(ai);
            return super.onStateChange(ai);
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
        {
            if (drawable == mWrapped)
                scheduleSelf(runnable, l);
        }

        public void setAlpha(int i)
        {
            mWrapped.setAlpha(i);
        }

        public void setChangingConfigurations(int i)
        {
            mWrapped.setChangingConfigurations(i);
        }

        public void setColorFilter(int i, android.graphics.PorterDuff.Mode mode)
        {
            mWrapped.setColorFilter(i, mode);
        }

        public void setColorFilter(ColorFilter colorfilter)
        {
            mWrapped.setColorFilter(colorfilter);
        }

        public void setDither(boolean flag)
        {
            mWrapped.setDither(flag);
        }

        public void setFilterBitmap(boolean flag)
        {
            mWrapped.setFilterBitmap(flag);
        }

        public void setOffset(float f)
        {
            mOffset = f;
            invalidateSelf();
        }

        public void setOffsetBy(float f)
        {
            mOffsetBy = f;
            invalidateSelf();
        }

        public boolean setState(int ai[])
        {
            return mWrapped.setState(ai);
        }

        public boolean setVisible(boolean flag, boolean flag1)
        {
            return super.setVisible(flag, flag1);
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable)
        {
            if (drawable == mWrapped)
                unscheduleSelf(runnable);
        }

        public SlideDrawable(Drawable drawable)
        {
            mWrapped = drawable;
        }
    }


    private static final int ID_HOME = 0x102002c;
    private static final ActionBarDrawerToggleImpl IMPL;
    private final Activity mActivity;
    private final int mCloseDrawerContentDescRes;
    private Drawable mDrawerImage;
    private final int mDrawerImageResource;
    private boolean mDrawerIndicatorEnabled;
    private final DrawerLayout mDrawerLayout;
    private final int mOpenDrawerContentDescRes;
    private Object mSetIndicatorInfo;
    private SlideDrawable mSlider;
    private Drawable mThemeImage;

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerlayout, int i, int j, int k)
    {
        mDrawerIndicatorEnabled = true;
        mActivity = activity;
        mDrawerLayout = drawerlayout;
        mDrawerImageResource = i;
        mOpenDrawerContentDescRes = j;
        mCloseDrawerContentDescRes = k;
        mThemeImage = IMPL.getThemeUpIndicator(activity);
        mDrawerImage = activity.getResources().getDrawable(i);
        mSlider = new SlideDrawable(mDrawerImage);
        mSlider.setOffsetBy(0.3333333F);
    }

    public boolean isDrawerIndicatorEnabled()
    {
        return mDrawerIndicatorEnabled;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        mThemeImage = IMPL.getThemeUpIndicator(mActivity);
        mDrawerImage = mActivity.getResources().getDrawable(mDrawerImageResource);
        syncState();
    }

    public void onDrawerClosed(View view)
    {
        mSlider.setOffset(0.0F);
        if (mDrawerIndicatorEnabled)
            mSetIndicatorInfo = IMPL.setActionBarDescription(mSetIndicatorInfo, mActivity, mCloseDrawerContentDescRes);
    }

    public void onDrawerOpened(View view)
    {
        mSlider.setOffset(1.0F);
        if (mDrawerIndicatorEnabled)
            mSetIndicatorInfo = IMPL.setActionBarDescription(mSetIndicatorInfo, mActivity, mOpenDrawerContentDescRes);
    }

    public void onDrawerSlide(View view, float f)
    {
        float f1 = mSlider.getOffset();
        float f2;
        if (f > 0.5F)
            f2 = Math.max(f1, 2.0F * Math.max(0.0F, f - 0.5F));
        else
            f2 = Math.min(f1, f * 2.0F);
        mSlider.setOffset(f2);
    }

    public void onDrawerStateChanged(int i)
    {
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem != null && menuitem.getItemId() == 0x102002c && mDrawerIndicatorEnabled)
            if (mDrawerLayout.isDrawerVisible(0x800003))
                mDrawerLayout.closeDrawer(0x800003);
            else
                mDrawerLayout.openDrawer(0x800003);
        return false;
    }

    public void setDrawerIndicatorEnabled(boolean flag)
    {
        if (flag != mDrawerIndicatorEnabled)
        {
            if (flag)
            {
                ActionBarDrawerToggleImpl actionbardrawertoggleimpl = IMPL;
                Object obj = mSetIndicatorInfo;
                Activity activity = mActivity;
                SlideDrawable slidedrawable = mSlider;
                int i;
                if (mDrawerLayout.isDrawerOpen(0x800003))
                    i = mOpenDrawerContentDescRes;
                else
                    i = mCloseDrawerContentDescRes;
                mSetIndicatorInfo = actionbardrawertoggleimpl.setActionBarUpIndicator(obj, activity, slidedrawable, i);
            } else
            {
                mSetIndicatorInfo = IMPL.setActionBarUpIndicator(mSetIndicatorInfo, mActivity, mThemeImage, 0);
            }
            mDrawerIndicatorEnabled = flag;
        }
    }

    public void syncState()
    {
        if (mDrawerLayout.isDrawerOpen(0x800003))
            mSlider.setOffset(1.0F);
        else
            mSlider.setOffset(0.0F);
        if (mDrawerIndicatorEnabled)
        {
            ActionBarDrawerToggleImpl actionbardrawertoggleimpl = IMPL;
            Object obj = mSetIndicatorInfo;
            Activity activity = mActivity;
            SlideDrawable slidedrawable = mSlider;
            int i;
            if (mDrawerLayout.isDrawerOpen(0x800003))
                i = mOpenDrawerContentDescRes;
            else
                i = mCloseDrawerContentDescRes;
            mSetIndicatorInfo = actionbardrawertoggleimpl.setActionBarUpIndicator(obj, activity, slidedrawable, i);
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
            IMPL = new ActionBarDrawerToggleImplHC();
        else
            IMPL = new ActionBarDrawerToggleImplBase();
    }
}

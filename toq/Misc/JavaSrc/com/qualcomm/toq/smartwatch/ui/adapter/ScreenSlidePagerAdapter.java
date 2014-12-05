// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.RelativeLayout;
import com.qualcomm.toq.base.utils.Log;
import java.util.ArrayList;

public class ScreenSlidePagerAdapter extends PagerAdapter
{

    private String TAG;
    private ArrayList mCarouselViewList;

    public ScreenSlidePagerAdapter()
    {
        TAG = "FavoriteAppLauncherActivity";
        mCarouselViewList = new ArrayList();
    }

    public void addInitialViews(RelativeLayout relativelayout)
    {
        if (mCarouselViewList != null)
            mCarouselViewList.add(relativelayout);
    }

    public void addViews(RelativeLayout relativelayout, int i)
    {
        Log.d(TAG, (new StringBuilder()).append("Adding View at position ").append(i).toString());
        if (mCarouselViewList != null)
        {
            mCarouselViewList.set(i, relativelayout);
            notifyDataSetChanged();
        }
    }

    public void clearAdapter()
    {
        if (mCarouselViewList != null)
        {
            mCarouselViewList.clear();
            mCarouselViewList = null;
        }
    }

    public void destroyItem(View view, int i, Object obj)
    {
        Log.e(TAG, "Remove view called");
        if (mCarouselViewList != null)
            ((ViewPager)view).removeView((View)mCarouselViewList.get(i));
    }

    public ArrayList getCarouselViewList()
    {
        return mCarouselViewList;
    }

    public int getCount()
    {
        if (mCarouselViewList != null)
            return mCarouselViewList.size();
        else
            return 0;
    }

    public int getItemPosition(Object obj)
    {
        return -2;
    }

    public float getPageWidth(int i)
    {
        return 0.35F;
    }

    public Object instantiateItem(View view, int i)
    {
        Log.i(TAG, "Inside instantiateItem");
        ArrayList arraylist = mCarouselViewList;
        RelativeLayout relativelayout = null;
        if (arraylist != null)
        {
            relativelayout = (RelativeLayout)mCarouselViewList.get(i);
            ((ViewPager)view).addView(relativelayout);
        }
        return relativelayout;
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public Parcelable saveState()
    {
        return null;
    }
}

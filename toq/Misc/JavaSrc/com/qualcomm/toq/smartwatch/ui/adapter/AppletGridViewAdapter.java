// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Utils;
import java.util.ArrayList;

public class AppletGridViewAdapter extends BaseAdapter
{
    private class ViewHolder
    {

        ImageView appImage;
        View app_bottom_margin;
        TextView app_name;
        final AppletGridViewAdapter this$0;

        private ViewHolder()
        {
            this$0 = AppletGridViewAdapter.this;
            super();
        }

    }


    private int appletImageIdArray[] = {
        0x7f020016, 0x7f02001c, 0x7f020015, 0x7f02001b, 0x7f020018, 0x7f02001a, 0x7f020013, 0x7f020019, 0x7f020014
    };
    int bgImgIndex;
    ArrayList carouselViewsAppInfoList;
    private Context context;
    private LayoutInflater inflator;
    SharedPreferences pref;
    ArrayList selectionList;

    public AppletGridViewAdapter(Context context1)
    {
        bgImgIndex = -1;
        context = context1;
        inflator = LayoutInflater.from(context1);
    }

    private void populateUI(View view, int i)
    {
        ViewHolder viewholder = (ViewHolder)view.getTag();
        viewholder.app_name.setText(Utils.getFavouriteAppLocalName(Constants.appletImageNames[i]));
        if (appletImageIdArray != null)
            viewholder.appImage.setImageResource(appletImageIdArray[i]);
        if (selectionList.contains(Integer.valueOf(i)))
            ((ImageView)view.findViewById(0x7f0900a1)).setVisibility(0);
        else
            ((ImageView)view.findViewById(0x7f0900a1)).setVisibility(8);
        if (bgImgIndex == i)
        {
            LinearLayout linearlayout1 = (LinearLayout)view.findViewById(0x7f09009e);
            if (linearlayout1 != null)
                linearlayout1.setBackgroundResource(0x7f020074);
        } else
        {
            LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f09009e);
            if (linearlayout != null)
                linearlayout.setBackgroundColor(Color.parseColor("#242929"));
        }
        if (appletImageIdArray != null && i == -1 + appletImageIdArray.length)
        {
            viewholder.app_bottom_margin.setVisibility(0);
            return;
        } else
        {
            viewholder.app_bottom_margin.setVisibility(8);
            return;
        }
    }

    public void clearAdapter()
    {
        if (carouselViewsAppInfoList != null)
        {
            carouselViewsAppInfoList.clear();
            carouselViewsAppInfoList = null;
        }
    }

    public int getAppletImageAt(int i)
    {
        return appletImageIdArray[i];
    }

    public String getAppletNameAt(int i)
    {
        return Constants.appletImageNames[i];
    }

    public int getCount()
    {
        return appletImageIdArray.length;
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view1 == null)
        {
            if (inflator != null)
            {
                view1 = inflator.inflate(0x7f030011, null);
                ((RelativeLayout)view1.findViewById(0x7f09009f)).setBackgroundColor(context.getResources().getColor(0x7f070012));
                ViewHolder viewholder = new ViewHolder();
                viewholder.appImage = (ImageView)view1.findViewById(0x7f0900a0);
                viewholder.app_name = (TextView)view1.findViewById(0x7f0900a2);
                viewholder.app_bottom_margin = view1.findViewById(0x7f0900a3);
                view1.setTag(viewholder);
                populateUI(view1, i);
            }
            return view1;
        } else
        {
            populateUI(view1, i);
            return view1;
        }
    }

    public void setBacgroundImageIndex(int i)
    {
        bgImgIndex = i;
    }

    public void setCarouselViewsAppInfoList(ArrayList arraylist)
    {
        carouselViewsAppInfoList = arraylist;
    }

    public void setSelictionList(ArrayList arraylist)
    {
        selectionList = arraylist;
    }
}

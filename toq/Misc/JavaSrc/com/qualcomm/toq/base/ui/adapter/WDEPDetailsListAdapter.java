// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class WDEPDetailsListAdapter extends BaseAdapter
{
    private class ViewHolder
    {

        TextView content;
        final WDEPDetailsListAdapter this$0;
        TextView title;

        private ViewHolder()
        {
            this$0 = WDEPDetailsListAdapter.this;
            super();
        }

    }


    private Context mContext;
    private ArrayList mDetailsContent;
    private ArrayList mDetailsTitle;
    private LayoutInflater mInflator;

    public WDEPDetailsListAdapter(Context context, ArrayList arraylist, ArrayList arraylist1)
    {
        mContext = context;
        mInflator = LayoutInflater.from(context);
        mDetailsTitle = arraylist;
        mDetailsContent = arraylist1;
    }

    public int getCount()
    {
        return mDetailsTitle.size();
    }

    public Object getItem(int i)
    {
        return Integer.valueOf(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        if (view == null)
        {
            viewholder = new ViewHolder();
            view = mInflator.inflate(0x7f03004e, null);
            viewholder.title = (TextView)view.findViewById(0x7f090269);
            viewholder.content = (TextView)view.findViewById(0x7f09026a);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.title.setText((CharSequence)mDetailsTitle.get(i));
        viewholder.content.setText((CharSequence)mDetailsContent.get(i));
        return view;
    }
}

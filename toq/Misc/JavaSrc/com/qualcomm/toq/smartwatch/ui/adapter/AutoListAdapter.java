// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class AutoListAdapter extends ArrayAdapter
{
    private class ViewHolder
    {

        TextView lowerItem;
        final AutoListAdapter this$0;
        TextView upperItem;

        private ViewHolder()
        {
            this$0 = AutoListAdapter.this;
            super();
        }

    }


    private LayoutInflater mInflater;
    ArrayList mItemListEntries;

    public AutoListAdapter(Context context)
    {
        super(context, 0x7f03001d);
        mInflater = LayoutInflater.from(context);
    }

    public int getCount()
    {
        if (mItemListEntries != null)
            return mItemListEntries.size();
        else
            return 0;
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public String getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        if (view == null)
        {
            view = mInflater.inflate(0x7f03001d, null);
            viewholder = new ViewHolder();
            viewholder.upperItem = (TextView)view.findViewById(0x7f09010c);
            viewholder.lowerItem = (TextView)view.findViewById(0x7f09010d);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        if (mItemListEntries != null && mItemListEntries.get(i) != null)
        {
            String as[] = ((String)mItemListEntries.get(i)).split(",");
            if (as.length == 3)
            {
                if (as[0] != null)
                    viewholder.upperItem.setText(as[0]);
                if (as[1] != null)
                    viewholder.lowerItem.setText((new StringBuilder()).append(as[1]).append(",").append(as[2]).toString());
            } else
            if (as.length == 2)
            {
                if (as[0] != null)
                    viewholder.upperItem.setText(as[0]);
                if (as[1] != null)
                {
                    viewholder.lowerItem.setText(as[1]);
                    return view;
                }
            } else
            if (as.length == 1 && as[0] != null)
            {
                viewholder.upperItem.setText(as[0]);
                return view;
            }
        }
        return view;
    }

    public void setItemsList(ArrayList arraylist)
    {
        mItemListEntries = arraylist;
    }
}

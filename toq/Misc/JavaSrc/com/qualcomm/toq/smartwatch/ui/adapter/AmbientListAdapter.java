// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class AmbientListAdapter extends BaseAdapter
{
    private class ViewHolder
    {

        final AmbientListAdapter this$0;
        TextView tvName;

        private ViewHolder()
        {
            this$0 = AmbientListAdapter.this;
            super();
        }

    }


    private ArrayList ambientList;
    private LayoutInflater mInflater;

    public AmbientListAdapter(Context context)
    {
        mInflater = LayoutInflater.from(context);
    }

    public int getCount()
    {
        if (ambientList == null)
            return 0;
        else
            return ambientList.size();
    }

    public Object getItem(int i)
    {
        return Integer.valueOf(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public String getStringAtPosition(int i)
    {
        return (String)ambientList.get(i);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        if (view == null)
        {
            view = mInflater.inflate(0x7f03000e, null);
            viewholder = new ViewHolder();
            viewholder.tvName = (TextView)view.findViewById(0x7f090087);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.tvName.setText((CharSequence)ambientList.get(i));
        return view;
    }

    public void setLists(ArrayList arraylist)
    {
        ambientList = arraylist;
    }

    public void setUpdateList(ArrayList arraylist)
    {
        ambientList = arraylist;
    }
}

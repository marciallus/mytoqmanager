// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.ui.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.*;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class FileTransferStatusAdapter extends ArrayAdapter
{
    static class ViewHolder
    {

        TextView text;

    }


    private ArrayList headerList;
    private LayoutInflater mInflater;

    public FileTransferStatusAdapter(Context context, int i)
    {
        super(context, i);
        headerList = null;
        mInflater = LayoutInflater.from(context);
    }

    public int getCount()
    {
        if (headerList != null)
            return headerList.size();
        else
            return 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        String s = "";
        ViewHolder viewholder;
        if (view == null)
        {
            view = mInflater.inflate(0x7f030039, null);
            viewholder = new ViewHolder();
            if (viewholder != null)
            {
                viewholder.text = (TextView)view.findViewById(0x7f0901fa);
                view.setTag(viewholder);
            }
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        if (i < headerList.size())
            s = (String)headerList.get(i);
        if (viewholder != null)
        {
            if (s.contains("Success"))
                viewholder.text.setTextColor(Color.rgb(0, 127, 0));
            else
            if (s.contains("Failed"))
                viewholder.text.setTextColor(Color.rgb(127, 0, 0));
            else
            if (s.contains("Sending"))
                viewholder.text.setTextColor(Color.rgb(127, 127, 0));
            else
                viewholder.text.setTextColor(Color.rgb(0, 0, 0));
            viewholder.text.setText(s);
        }
        return view;
    }

    public void setList(ArrayList arraylist)
    {
        headerList = arraylist;
        notifyDataSetChanged();
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.*;

public class AdvancedSettingsDialogListAdapter extends BaseAdapter
{
    class ViewHolder
    {

        RadioButton radioButton;
        final AdvancedSettingsDialogListAdapter this$0;
        TextView titleTextView;

        ViewHolder()
        {
            this$0 = AdvancedSettingsDialogListAdapter.this;
            super();
        }
    }


    String array[];
    LayoutInflater inflator;
    int initialValue;

    public AdvancedSettingsDialogListAdapter(Context context, String as[], int i)
    {
        inflator = LayoutInflater.from(context);
        array = as;
        initialValue = i;
    }

    public int getCount()
    {
        return array.length;
    }

    public Object getItem(int i)
    {
        return array[i];
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
            view = inflator.inflate(0x7f030044, null);
            viewholder.titleTextView = (TextView)view.findViewById(0x7f090236);
            viewholder.radioButton = (RadioButton)view.findViewById(0x7f090237);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.titleTextView.setText(array[i]);
        if (initialValue == i)
        {
            viewholder.radioButton.setChecked(true);
            return view;
        } else
        {
            viewholder.radioButton.setChecked(false);
            return view;
        }
    }
}

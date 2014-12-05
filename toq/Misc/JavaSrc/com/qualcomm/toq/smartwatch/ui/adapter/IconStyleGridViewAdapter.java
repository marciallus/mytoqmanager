// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.Utils;

public class IconStyleGridViewAdapter extends BaseAdapter
{
    class ViewHolder
    {

        ImageView iconStyleImageView;
        ImageView iconStyleSelected;
        TextView iconStyleTextView;
        final IconStyleGridViewAdapter this$0;

        ViewHolder()
        {
            this$0 = IconStyleGridViewAdapter.this;
            super();
        }
    }


    private Integer iconTypeImages[];
    private String iconTypeText[];
    private LayoutInflater layoutInflator;
    private String selectedIconStyle;

    public IconStyleGridViewAdapter(Context context, Integer ainteger[], String as[])
    {
        layoutInflator = LayoutInflater.from(context);
        iconTypeImages = ainteger;
        iconTypeText = as;
    }

    public int getCount()
    {
        return iconTypeImages.length;
    }

    public Object getItem(int i)
    {
        return iconTypeImages[i];
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public String getSelectedIconStyle()
    {
        return selectedIconStyle;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder = new ViewHolder();
        if (view == null)
        {
            view = layoutInflator.inflate(0x7f030031, null);
            viewholder.iconStyleImageView = (ImageView)view.findViewById(0x7f0901c8);
            viewholder.iconStyleTextView = (TextView)view.findViewById(0x7f0901ca);
            viewholder.iconStyleSelected = (ImageView)view.findViewById(0x7f0901c9);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.iconStyleImageView.setImageResource(iconTypeImages[i].intValue());
        viewholder.iconStyleTextView.setText(Utils.geIconStyleLocalName(iconTypeText[i]));
        if (selectedIconStyle == null)
            Log.e("MainActivity", "selectedIconStyle is NULL");
        if (getSelectedIconStyle() != null && iconTypeText != null && getSelectedIconStyle().equals(iconTypeText[i]))
        {
            viewholder.iconStyleSelected.setImageResource(0x7f020118);
            return view;
        } else
        {
            viewholder.iconStyleSelected.setImageResource(0x7f02013c);
            return view;
        }
    }

    public void setSelectedIconStyle(String s)
    {
        selectedIconStyle = s;
    }
}

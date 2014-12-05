// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import java.util.List;

public class MusicPlayersListDialogAdapter extends BaseAdapter
{
    class ViewHolder
    {

        ImageView icon;
        RadioButton radioButton;
        final MusicPlayersListDialogAdapter this$0;
        TextView titleTextView;

        ViewHolder()
        {
            this$0 = MusicPlayersListDialogAdapter.this;
            super();
        }
    }


    List appEntryList;
    LayoutInflater inflator;
    int initialValue;

    public MusicPlayersListDialogAdapter(Context context, List list, int i)
    {
        inflator = LayoutInflater.from(context);
        appEntryList = list;
        initialValue = i;
    }

    public void clearAdapter()
    {
        if (appEntryList != null)
            appEntryList.clear();
        appEntryList = null;
        inflator = null;
    }

    public int getCount()
    {
        return appEntryList.size();
    }

    public Object getItem(int i)
    {
        return appEntryList.get(i);
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
            view = inflator.inflate(0x7f03003c, null);
            viewholder.icon = (ImageView)view.findViewById(0x7f09020b);
            viewholder.titleTextView = (TextView)view.findViewById(0x7f09020c);
            viewholder.radioButton = (RadioButton)view.findViewById(0x7f09020d);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.titleTextView.setText(((com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry)appEntryList.get(i)).getLabel());
        if (((com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry)appEntryList.get(i)).getPackageName() != null)
        {
            PackageManager packagemanager = ToqApplication.getAppContext().getPackageManager();
            try
            {
                android.content.pm.ApplicationInfo applicationinfo = packagemanager.getApplicationInfo(((com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry)appEntryList.get(i)).getPackageName(), 0);
                viewholder.icon.setImageDrawable(packagemanager.getApplicationIcon(applicationinfo));
            }
            catch (Exception exception)
            {
                Log.e("MusicControlUtils", "!!! Exceptino in getting the app icon");
            }
        }
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

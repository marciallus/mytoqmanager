// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.ClockInfo;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

public class ClockSettingsGridViewAdapter extends BaseAdapter
{
    class ViewHolder
    {

        View clockBottomMargin;
        View clockOveralayImage;
        ImageView clockSettingsImageView;
        ImageView clockSettingsSelected;
        TextView clockSettingsTextView;
        final ClockSettingsGridViewAdapter this$0;

        ViewHolder()
        {
            this$0 = ClockSettingsGridViewAdapter.this;
            super();
        }
    }


    private HashMap clockSelectedHashMap;
    private Integer clockTypeImages[];
    private String clockTypeText[];
    private Context context;
    private boolean isLocalWeatherOverlay;
    private boolean isStockOverlay;
    private boolean isWorldClockOverlay;
    private LayoutInflater layoutInflator;

    public ClockSettingsGridViewAdapter(Context context1, Integer ainteger[], String as[])
    {
        layoutInflator = LayoutInflater.from(context1);
        clockTypeImages = ainteger;
        clockTypeText = as;
        context = context1;
    }

    public int getCount()
    {
        return clockTypeImages.length;
    }

    public HashMap getHashMapForClocks()
    {
        if (clockSelectedHashMap != null)
            return clockSelectedHashMap;
        else
            return new HashMap();
    }

    public Object getItem(int i)
    {
        return clockTypeImages[i];
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        viewholder = new ViewHolder();
        HashMap hashmap;
        ArrayList arraylist;
        String s;
        android.graphics.Bitmap bitmap;
        if (view == null)
        {
            view = layoutInflator.inflate(0x7f03001a, null);
            viewholder.clockSettingsImageView = (ImageView)view.findViewById(0x7f0900f8);
            viewholder.clockSettingsTextView = (TextView)view.findViewById(0x7f0900fb);
            viewholder.clockSettingsSelected = (ImageView)view.findViewById(0x7f0900fa);
            viewholder.clockOveralayImage = view.findViewById(0x7f0900f9);
            viewholder.clockBottomMargin = view.findViewById(0x7f0900fc);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.clockOveralayImage.setBackgroundResource(0x7f020012);
        if (clockTypeImages[i].intValue() != 0)
            break MISSING_BLOCK_LABEL_432;
        arraylist = (ArrayList)ObjectSerializer.deserialize(ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0).getString("clock_data", ObjectSerializer.serialize(new ArrayList())));
        s = "";
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_183;
        if (i < arraylist.size())
            s = ((ClockInfo)arraylist.get(i)).getIconName();
        if (s.isEmpty())
            break MISSING_BLOCK_LABEL_246;
        bitmap = BitmapFactory.decodeFile((new StringBuilder()).append(context.getFilesDir()).append("/Clocks").append("/").append(s).toString());
        if (bitmap != null)
            try
            {
                viewholder.clockSettingsImageView.setImageBitmap(bitmap);
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
_L1:
        viewholder.clockSettingsTextView.setText(clockTypeText[i]);
        if (clockSelectedHashMap == null)
            Log.e("MainActivity", "clockSelectedHashMap is NULL");
        hashmap = getHashMapForClocks();
        if (hashmap != null && clockTypeText != null && !hashmap.isEmpty() && ((Boolean)hashmap.get(clockTypeText[i])).booleanValue())
            viewholder.clockSettingsSelected.setImageResource(0x7f020118);
        else
            viewholder.clockSettingsSelected.setImageResource(0x7f02013c);
        if (clockTypeText[i].equals("Stocks"))
        {
            if (!isStockOverlay())
                viewholder.clockOveralayImage.setBackgroundColor(context.getResources().getColor(0x7f070013));
            else
                viewholder.clockOveralayImage.setBackgroundResource(0x7f020012);
        } else
        if (clockTypeText[i].equals("Weather Grid"))
        {
            if (!isLocalWeatherOverlay())
                viewholder.clockOveralayImage.setBackgroundColor(context.getResources().getColor(0x7f070013));
            else
                viewholder.clockOveralayImage.setBackgroundResource(0x7f020012);
        } else
        if (clockTypeText[i].equals("World Time"))
            if (!isWorldClockOverlay())
                viewholder.clockOveralayImage.setBackgroundColor(context.getResources().getColor(0x7f070013));
            else
                viewholder.clockOveralayImage.setBackgroundResource(0x7f020012);
        if (clockTypeText != null && i == -1 + clockTypeText.length)
        {
            viewholder.clockBottomMargin.setVisibility(0);
            return view;
        } else
        {
            viewholder.clockBottomMargin.setVisibility(8);
            return view;
        }
        viewholder.clockSettingsImageView.setImageResource(clockTypeImages[i].intValue());
          goto _L1
    }

    public boolean isLocalWeatherOverlay()
    {
        return isLocalWeatherOverlay;
    }

    public boolean isStockOverlay()
    {
        return isStockOverlay;
    }

    public boolean isWorldClockOverlay()
    {
        return isWorldClockOverlay;
    }

    public void setLocalWeatherOverlay(boolean flag)
    {
        isLocalWeatherOverlay = flag;
    }

    public void setStockOverlay(boolean flag)
    {
        isStockOverlay = flag;
    }

    public void setWorldClockOverlay(boolean flag)
    {
        isWorldClockOverlay = flag;
    }

    public void updateClocksHashMap(HashMap hashmap)
    {
        clockSelectedHashMap = hashmap;
    }
}

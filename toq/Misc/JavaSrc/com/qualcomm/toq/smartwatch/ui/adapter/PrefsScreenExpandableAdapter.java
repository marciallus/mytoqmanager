// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.ambient.StockAmbientInfo;
import com.qualcomm.toq.smartwatch.ambient.WeatherAmbientInfo;
import com.qualcomm.toq.smartwatch.controller.CalendarController;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.IOException;
import java.util.*;

public class PrefsScreenExpandableAdapter extends BaseExpandableListAdapter
{
    class ViewHolder
    {

        ImageView childItemsImage;
        TextView childItemsPartnerText;
        TextView childItemsSecondaryText;
        TextView childItemsText;
        ImageView groupIndicator;
        View groupItemBelowSpace;
        RelativeLayout groupItemsLayout;
        TextView groupItemsText;
        LinearLayout groupRootLayout;
        final PrefsScreenExpandableAdapter this$0;

        ViewHolder()
        {
            this$0 = PrefsScreenExpandableAdapter.this;
            super();
        }
    }


    private static final int SECONDARY_TEXT_TOTAL_PADDING = 85;
    private String TAG;
    private boolean mActivityMonitoring;
    private boolean mAlljoynState;
    private ArrayList mCitiesList;
    private DisplayMetrics mDisplayMetrics;
    private String mGroupItems[];
    private int mIconsArray[][];
    private LayoutInflater mLayoutInflater;
    private Resources mResources;
    private String mSelectedMusicPlayer;
    private ArrayList mStockList;
    private int mTitleTextArray[][];

    public PrefsScreenExpandableAdapter(Context context)
    {
        TAG = "PrefsScreenExpandableAdapter";
        mAlljoynState = false;
        mActivityMonitoring = false;
        mResources = null;
        mSelectedMusicPlayer = null;
        mCitiesList = null;
        mStockList = null;
        mLayoutInflater = LayoutInflater.from(context);
        mDisplayMetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(mDisplayMetrics);
        mResources = ToqApplication.getAppContext().getResources();
    }

    private float getSizeInPixels(float f, int i)
    {
        return TypedValue.applyDimension(i, f, mResources.getDisplayMetrics());
    }

    private boolean isTooLarge(TextView textview, String s)
    {
        float f = textview.getPaint().measureText(s);
        float f1 = getSizeInPixels((float)mDisplayMetrics.widthPixels - getSizeInPixels(85F, 1), 1);
        float f2 = getSizeInPixels(f, 2);
        Log.d(TAG, (new StringBuilder()).append("Comapairing ext :").append(s).toString());
        Log.d(TAG, (new StringBuilder()).append(f2).append("TEXT width in pixels").append(f1).toString());
        return f2 >= f1;
    }

    private void updateAmbientSecondaryText(TextView textview, ArrayList arraylist, String s)
    {
        StringBuilder stringbuilder;
        StringBuilder stringbuilder1;
        boolean flag;
        stringbuilder = new StringBuilder();
        stringbuilder1 = new StringBuilder();
        flag = true;
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        String s1;
        Iterator iterator;
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        boolean flag1 = false;
        if (sharedpreferences != null)
            flag1 = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", true);
        if (s != null && s.equalsIgnoreCase(mResources.getString(0x7f0a0165)) && flag1)
            stringbuilder.append(mResources.getString(0x7f0a0179));
        s1 = new String();
        iterator = arraylist.iterator();
_L6:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        String s2 = (String)iterator.next();
        if (s2 == null) goto _L6; else goto _L5
_L5:
        String as1[];
        if (s != null && s.equalsIgnoreCase(mResources.getString(0x7f0a0165)))
        {
            String as4[] = s2.split(",");
            if (as4 != null)
                s1 = as4[0];
        } else
        if (s != null && s.equalsIgnoreCase(mResources.getString(0x7f0a0168)))
            s1 = s2;
        as1 = stringbuilder.toString().split("\n");
        if (as1[-1 + as1.length] != null)
            stringbuilder1.append((new StringBuilder()).append(as1[-1 + as1.length]).append(s1).append(", ").toString());
        if (isTooLarge(textview, stringbuilder1.toString())) goto _L8; else goto _L7
_L7:
        stringbuilder.append((new StringBuilder()).append(s1.toString()).append(", ").toString());
_L26:
        stringbuilder1.delete(0, stringbuilder1.length());
        stringbuilder1.setLength(0);
          goto _L6
_L8:
        if (-1 + as1.length != 1) goto _L10; else goto _L9
_L9:
        int j;
        int k;
        j = 0;
        k = arraylist.indexOf(s2);
_L24:
        flag = false;
        if (k < 0) goto _L4; else goto _L11
_L11:
        int l;
        l = arraylist.size() - k;
        stringbuilder1.setLength(0);
        String as3[] = stringbuilder.toString().split("\n");
        stringbuilder1.append(as3[-1 + as3.length]);
        if (j <= 0) goto _L13; else goto _L12
_L12:
        Log.d(TAG, (new StringBuilder()).append("Ambient names length : ").append(((String)arraylist.get(k)).length()).toString());
        if (arraylist.size() <= 1 || arraylist.indexOf(s2) != 1 || !stringbuilder.toString().contains("\n")) goto _L15; else goto _L14
_L14:
        String s3;
        int i1;
        s3 = stringbuilder1.toString();
        i1 = -3 + stringbuilder.length();
_L19:
        flag = false;
        if (i1 <= 0) goto _L4; else goto _L16
_L16:
        stringbuilder1.setLength(0);
        stringbuilder1.append(s3);
        stringbuilder1.deleteCharAt(-3 + stringbuilder1.length());
        stringbuilder.deleteCharAt(i1);
        s3 = stringbuilder1.toString();
        stringbuilder1.append((new StringBuilder()).append(mResources.getString(0x7f0a017a)).append(arraylist.size() - arraylist.indexOf(s2)).append(mResources.getString(0x7f0a017b)).toString());
        if (isTooLarge(textview, stringbuilder1.toString())) goto _L18; else goto _L17
_L17:
        stringbuilder.replace(i1 - 3, i1, "...");
        stringbuilder.append((new StringBuilder()).append(mResources.getString(0x7f0a017a)).append(arraylist.size() - arraylist.indexOf(s2)).append(mResources.getString(0x7f0a017b)).toString());
_L4:
        String as[] = stringbuilder.toString().split("\n");
        if (-1 + as.length == 1 && as[-1 + as.length] != null)
        {
            stringbuilder1.setLength(0);
            stringbuilder1.append(as[-1 + as.length]);
            String as2[];
            int i;
            Exception exception2;
            try
            {
                if (as[-1 + as.length].charAt(0) == ' ')
                {
                    stringbuilder1.deleteCharAt(0);
                    stringbuilder.setLength(0);
                    stringbuilder.append((new StringBuilder()).append(as[0]).append("\n").append(stringbuilder1.toString()).toString());
                }
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(stringbuilder.toString().trim()))
            break MISSING_BLOCK_LABEL_1440;
        if (!flag)
            break MISSING_BLOCK_LABEL_844;
        stringbuilder.deleteCharAt(-1 + stringbuilder.length());
        stringbuilder.replace(-1 + stringbuilder.length(), stringbuilder.length(), ".");
        textview.setVisibility(0);
        textview.setText(stringbuilder.toString().trim());
_L31:
        stringbuilder.setLength(0);
        stringbuilder1.setLength(0);
_L2:
        return;
_L18:
        i1--;
          goto _L19
_L15:
        if (!stringbuilder1.toString().contains((CharSequence)arraylist.get(k))) goto _L21; else goto _L20
_L20:
        stringbuilder1.delete(stringbuilder1.length() - (2 + ((String)arraylist.get(k)).length()), stringbuilder1.length());
        stringbuilder.delete(stringbuilder.length() - (2 + ((String)arraylist.get(k)).length()), stringbuilder.length());
_L13:
        stringbuilder1.append((new StringBuilder()).append(mResources.getString(0x7f0a017a)).append(l).append(mResources.getString(0x7f0a017b)).toString());
        if (isTooLarge(textview, stringbuilder1.toString())) goto _L23; else goto _L22
_L22:
        stringbuilder.append((new StringBuilder()).append(mResources.getString(0x7f0a017a)).append(l).append(mResources.getString(0x7f0a017b)).toString());
        flag = false;
          goto _L4
_L21:
        try
        {
            stringbuilder1.delete(0, stringbuilder1.length());
            stringbuilder.delete(stringbuilder.length() - (3 + ((String)arraylist.get(k)).length()), stringbuilder.length());
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2)
        {
            exception2.printStackTrace();
            Log.d(TAG, (new StringBuilder()).append("Excetion in deleting the characters in the string builder").append(exception2.toString()).toString());
        }
          goto _L13
_L23:
        j++;
        k--;
          goto _L24
_L10:
        s1 = (new StringBuilder()).append(s1).append(", ").toString();
        stringbuilder1.setLength(0);
        stringbuilder1.append(as1[-1 + as1.length]);
        as2 = s1.split(" ");
        i = 0;
_L29:
        if (i >= as2.length) goto _L26; else goto _L25
_L25:
        if (isTooLarge(textview, stringbuilder1.append((new StringBuilder()).append(as2[i]).append(" ").toString()).toString())) goto _L28; else goto _L27
_L27:
        stringbuilder.append((new StringBuilder()).append(as2[i]).append(" ").toString());
_L30:
        i++;
          goto _L29
_L28:
label0:
        {
            stringbuilder1.setLength(0);
            stringbuilder1.append((new StringBuilder()).append(as2[i]).append(" ").toString());
            if (!stringbuilder.toString().contains("\n"))
                break label0;
            stringbuilder.replace(-2 + stringbuilder.length(), stringbuilder.length(), ", ");
        }
          goto _L26
        stringbuilder.append("\n");
        stringbuilder.append((new StringBuilder()).append(as2[i]).append(" ").toString());
          goto _L30
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L31
        textview.setVisibility(8);
          goto _L31
    }

    private void updateArraylistForStocks()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        int i;
        StockAmbientInfo stockambientinfo;
        if (mStockList != null)
            mStockList.clear();
        else
            mStockList = new ArrayList();
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_130;
        arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbols", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_130;
        i = 0;
_L1:
        if (i >= arraylist.size())
            break MISSING_BLOCK_LABEL_130;
        stockambientinfo = (StockAmbientInfo)arraylist.get(i);
        if (stockambientinfo == null)
            break MISSING_BLOCK_LABEL_103;
        mStockList.add(stockambientinfo.getCompanySymbol());
        i++;
          goto _L1
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    private void updateArraylistForWeather()
    {
        WeatherAmbientInfo weatherambientinfo;
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        int i;
        String as[];
        if (mCitiesList != null)
            mCitiesList.clear();
        else
            mCitiesList = new ArrayList();
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_193;
        arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_193;
        i = 0;
_L2:
        if (i >= arraylist.size())
            break MISSING_BLOCK_LABEL_193;
        weatherambientinfo = (WeatherAmbientInfo)arraylist.get(i);
        if (weatherambientinfo == null)
            break MISSING_BLOCK_LABEL_143;
        if (weatherambientinfo.getCityName() == null || !weatherambientinfo.getCityName().contains("Local City,Default Admin,Default Country"))
            break; /* Loop/switch isn't completed */
        as = weatherambientinfo.getCityName().split(",");
        if (mCitiesList != null)
            mCitiesList.add(as[0]);
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (mCitiesList == null) goto _L4; else goto _L3
_L3:
        mCitiesList.add(weatherambientinfo.getCityName());
          goto _L4
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    private void updateGroupsStateSharedPrefs(boolean flag, int i)
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("preferences_expandable_list_pref", 0);
        if (sharedpreferences != null)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            if (editor != null)
            {
                switch (i)
                {
                case 3: // '\003'
                    editor.putBoolean("preference_advanced_group_key", flag);
                    break;

                case 2: // '\002'
                    editor.putBoolean("preference_applet_group_key", flag);
                    break;

                case 1: // '\001'
                    editor.putBoolean("preference_notification_group_key", flag);
                    break;

                case 0: // '\0'
                    editor.putBoolean("preference_appearance_group_key", flag);
                    break;
                }
                editor.commit();
            }
        }
    }

    private void updateSecondaryTextForCalendar(TextView textview)
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        com.qualcomm.toq.smartwatch.controller.CalendarController.Calendars acalendars[] = CalendarController.getCalendarController().getAvailableCalendars(ToqApplication.getAppContext());
        if (textview == null)
            break MISSING_BLOCK_LABEL_324;
        textview.setWidth(-95 + mDisplayMetrics.widthPixels);
        if (acalendars != null && stringbuilder1 != null)
        {
            int i = 0;
            while (i < acalendars.length) 
            {
                if (acalendars[i].isChecked())
                {
                    String as[] = stringbuilder.toString().split("\n");
                    stringbuilder1.append((new StringBuilder()).append(as[-1 + as.length].toString()).append(acalendars[i].getCalendarName()).append(", ").toString());
                    if (!isTooLarge(textview, stringbuilder1.toString()))
                        stringbuilder.append((new StringBuilder()).append(acalendars[i].getCalendarName()).append(", ").toString());
                    else
                        stringbuilder.append((new StringBuilder()).append("\n").append(acalendars[i].getCalendarName()).append(", ").toString());
                    stringbuilder1.setLength(0);
                }
                i++;
            }
        }
        if (TextUtils.isEmpty(stringbuilder.toString().trim()))
            break MISSING_BLOCK_LABEL_318;
        if (mResources.getConfiguration().locale.equals(Locale.SIMPLIFIED_CHINESE))
            break MISSING_BLOCK_LABEL_288;
        stringbuilder.replace(-2 + stringbuilder.length(), stringbuilder.length(), ". ");
_L1:
        textview.setText(stringbuilder.toString().trim());
        return;
        try
        {
            stringbuilder.replace(-2 + stringbuilder.length(), stringbuilder.length(), "");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
          goto _L1
        textview.setVisibility(8);
    }

    public void clearAdapter()
    {
        mGroupItems = null;
        if (mCitiesList != null)
            mCitiesList.clear();
        mCitiesList = null;
        mIconsArray = (int[][])null;
        mSelectedMusicPlayer = null;
        if (mStockList != null)
            mStockList.clear();
        mStockList = null;
        mTitleTextArray = (int[][])null;
        mResources = null;
    }

    public Object getChild(int i, int j)
    {
        return Integer.valueOf(j);
    }

    public long getChildId(int i, int j)
    {
        return (long)j;
    }

    public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        Log.e(TAG, (new StringBuilder()).append("Get child view called ").append(i).append(" ").append(j).toString());
        ViewHolder viewholder;
        if (view == null)
        {
            Log.e(TAG, "convert view null");
            viewholder = new ViewHolder();
            view = mLayoutInflater.inflate(0x7f030046, null);
            viewholder.childItemsText = (TextView)view.findViewById(0x7f09023e);
            viewholder.childItemsImage = (ImageView)view.findViewById(0x7f09023d);
            viewholder.childItemsSecondaryText = (TextView)view.findViewById(0x7f090240);
            viewholder.childItemsPartnerText = (TextView)view.findViewById(0x7f09023f);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.childItemsSecondaryText.setVisibility(8);
        viewholder.childItemsPartnerText.setVisibility(8);
        if (mIconsArray != null)
            viewholder.childItemsImage.setImageResource(mIconsArray[i][j]);
        if (flag)
            view.findViewById(0x7f090241).setVisibility(4);
        else
            view.findViewById(0x7f090241).setVisibility(0);
        if (mTitleTextArray != null)
        {
            viewholder.childItemsText.setText(mTitleTextArray[i][j]);
            viewholder.childItemsText.setTextSize(20F);
            if (mResources.getString(0x7f0a016c).equalsIgnoreCase(mResources.getString(mTitleTextArray[i][j])))
            {
                Log.e(TAG, "Inside Communications");
                viewholder.childItemsSecondaryText.setVisibility(0);
                viewholder.childItemsSecondaryText.setText(mResources.getString(0x7f0a015f));
            } else
            {
                if (mResources.getString(0x7f0a016f).equalsIgnoreCase(mResources.getString(mTitleTextArray[i][j])))
                {
                    viewholder.childItemsSecondaryText.setVisibility(0);
                    viewholder.childItemsSecondaryText.setText((new StringBuilder()).append(mResources.getString(0x7f0a0160)).append(" ").append(mSelectedMusicPlayer).toString());
                    return view;
                }
                if (mResources.getString(0x7f0a0165).equalsIgnoreCase(mResources.getString(mTitleTextArray[i][j])))
                {
                    viewholder.childItemsText.setTextSize(18F);
                    viewholder.childItemsPartnerText.setVisibility(0);
                    viewholder.childItemsPartnerText.setText(mResources.getString(0x7f0a0173));
                    updateArraylistForWeather();
                    updateAmbientSecondaryText(viewholder.childItemsSecondaryText, mCitiesList, mResources.getString(0x7f0a0165));
                    return view;
                }
                if (mResources.getString(0x7f0a0168).equalsIgnoreCase(mResources.getString(mTitleTextArray[i][j])))
                {
                    viewholder.childItemsPartnerText.setVisibility(0);
                    viewholder.childItemsPartnerText.setText(mResources.getString(0x7f0a0174));
                    updateArraylistForStocks();
                    updateAmbientSecondaryText(viewholder.childItemsSecondaryText, mStockList, mResources.getString(0x7f0a0168));
                    return view;
                }
                if (mResources.getString(0x7f0a016d).equalsIgnoreCase(mResources.getString(mTitleTextArray[i][j])))
                {
                    viewholder.childItemsSecondaryText.setVisibility(0);
                    updateSecondaryTextForCalendar(viewholder.childItemsSecondaryText);
                    return view;
                }
                if (mResources.getString(0x7f0a0172).equalsIgnoreCase(mResources.getString(mTitleTextArray[i][j])))
                {
                    viewholder.childItemsSecondaryText.setVisibility(0);
                    TextView textview1 = viewholder.childItemsSecondaryText;
                    String s1;
                    if (mAlljoynState)
                        s1 = mResources.getString(0x7f0a0177);
                    else
                        s1 = mResources.getString(0x7f0a0178);
                    textview1.setText(s1);
                    return view;
                }
                if (mResources.getString(0x7f0a0169).equalsIgnoreCase(mResources.getString(mTitleTextArray[i][j])))
                {
                    viewholder.childItemsSecondaryText.setVisibility(0);
                    TextView textview = viewholder.childItemsSecondaryText;
                    String s;
                    if (mActivityMonitoring)
                        s = mResources.getString(0x7f0a0175);
                    else
                        s = mResources.getString(0x7f0a0176);
                    textview.setText(s);
                    return view;
                }
            }
        }
        return view;
    }

    public int getChildrenCount(int i)
    {
        if (mTitleTextArray != null && mTitleTextArray[i].length != 0)
            return mTitleTextArray[i].length;
        else
            return 0;
    }

    public Object getGroup(int i)
    {
        return Integer.valueOf(i);
    }

    public int getGroupCount()
    {
        if (mGroupItems != null)
            return mGroupItems.length;
        else
            return 0;
    }

    public long getGroupId(int i)
    {
        return (long)i;
    }

    public View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        if (view == null)
        {
            viewholder = new ViewHolder();
            view = mLayoutInflater.inflate(0x7f030045, null);
            viewholder.groupItemsText = (TextView)view.findViewById(0x7f09023a);
            viewholder.groupIndicator = (ImageView)view.findViewById(0x7f09023b);
            viewholder.groupItemsLayout = (RelativeLayout)view.findViewById(0x7f090239);
            viewholder.groupRootLayout = (LinearLayout)view.findViewById(0x7f090238);
            viewholder.groupItemBelowSpace = view.findViewById(0x7f09023c);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)viewholder.groupItemsLayout.getLayoutParams();
        if (layoutparams != null)
        {
            if (i == 0)
            {
                layoutparams.setMargins((int)getSizeInPixels(21F, 1), (int)getSizeInPixels(20F, 1), (int)getSizeInPixels(21F, 1), 0);
                viewholder.groupRootLayout.setBackgroundResource(0x7f0200a1);
            } else
            {
                layoutparams.setMargins((int)getSizeInPixels(21F, 1), (int)getSizeInPixels(30F, 1), (int)getSizeInPixels(21F, 1), 0);
                viewholder.groupRootLayout.setBackgroundResource(0x7f020115);
            }
            viewholder.groupItemsLayout.setLayoutParams(layoutparams);
        }
        if (flag)
        {
            viewholder.groupIndicator.setImageResource(0x7f020114);
            if (!mGroupItems[i].equalsIgnoreCase(mResources.getString(0x7f0a0163)));
        } else
        {
            if (mCitiesList != null)
            {
                mCitiesList.clear();
                mCitiesList = null;
            }
            viewholder.groupIndicator.setImageResource(0x7f020113);
        }
        if (mGroupItems != null)
            viewholder.groupItemsText.setText(mGroupItems[i]);
        viewholder.groupItemBelowSpace.setVisibility(8);
        if (mGroupItems != null && i == -1 + mGroupItems.length && !flag)
            viewholder.groupItemBelowSpace.setVisibility(0);
        return view;
    }

    public boolean hasStableIds()
    {
        return false;
    }

    public boolean isChildSelectable(int i, int j)
    {
        return true;
    }

    public void loadPrefsChildIcons(int ai[][])
    {
        if (ai != null && ai.length != 0)
            mIconsArray = ai;
    }

    public void loadPrefsChildText(int ai[][])
    {
        if (ai != null && ai.length != 0)
            mTitleTextArray = ai;
    }

    public void loadPrefsGroupItems(String as[])
    {
        if (as != null)
            mGroupItems = as;
    }

    public void loadSelectedActivityMonitoringState(boolean flag)
    {
        mActivityMonitoring = flag;
    }

    public void loadSelectedAlljoynState(boolean flag)
    {
        mAlljoynState = flag;
    }

    public void loadSelectedMusicPlayer(String s)
    {
        if (s != null)
            mSelectedMusicPlayer = s;
    }

    public void onGroupCollapsed(int i)
    {
        super.onGroupCollapsed(i);
        updateGroupsStateSharedPrefs(false, i);
    }

    public void onGroupExpanded(int i)
    {
        super.onGroupExpanded(i);
        updateGroupsStateSharedPrefs(true, i);
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.*;
import android.content.*;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.ClockSettingsController;
import com.qualcomm.toq.smartwatch.service.AmbientIntentService;
import com.qualcomm.toq.smartwatch.ui.adapter.ClockSettingsGridViewAdapter;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.IOException;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ui.activity:
//            StockListActivity, WeatherListActivity, ActivityMonitoringActivity

public class ClockSettingsActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{

    private static final String TAG = "ClockSettingsActivity";
    android.view.View.OnClickListener clockSettingsAcceptListener;
    android.widget.AdapterView.OnItemClickListener gridViewItemClickListener;
    private boolean isAnyChangeDoneClockSettings;
    private boolean isOpenActivityPrefButtonClicked;
    private boolean isOpenDegreePrefButtonClicked;
    private boolean isOpenStockPrefButtonClicked;
    private boolean isOpenWeatherPrefButtonClicked;
    private boolean isOpenWorldPrefButtonClicked;
    private Integer mClockImageDrawables[];
    private String mClockNames[];
    private LinearLayout mClockSettingsAcceptLayout;
    private ClockSettingsGridViewAdapter mClockSettingsAdapter;
    private GridView mClockSettingsGridView;
    private HashMap mClockSettingsSelectionMap;
    private Dialog mDialog;
    private DisplayMetrics mDisplayMetrics;
    private LinearLayout mMenuButton;
    private PopupWindow mPopUpWindow;
    private Resources mResources;
    private HashMap mTempHashMap;
    TextView maxSelctionPromptSecondaryTextView;
    TextView maxSelctionPromptTextView;
    LinearLayout maxSelectionPromptView;
    android.view.View.OnClickListener menuButtonListener;

    public ClockSettingsActivity()
    {
        isAnyChangeDoneClockSettings = false;
        isOpenWeatherPrefButtonClicked = false;
        isOpenStockPrefButtonClicked = false;
        isOpenWorldPrefButtonClicked = false;
        isOpenActivityPrefButtonClicked = false;
        isOpenDegreePrefButtonClicked = false;
        menuButtonListener = new android.view.View.OnClickListener() {

            final ClockSettingsActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f060007);
                    mPopUpWindow = (new PopUpWindowUtils(ClockSettingsActivity.this)).getPopUpWindow(as, ClockSettingsActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = ClockSettingsActivity.this;
                super();
            }
        }
;
        clockSettingsAcceptListener = new android.view.View.OnClickListener() {

            final ClockSettingsActivity this$0;

            public void onClick(View view)
            {
                if (mClockNames != null && mClockNames.length != 0)
                {
                    initiateDoneChanges();
                    return;
                } else
                {
                    finish();
                    return;
                }
            }

            
            {
                this$0 = ClockSettingsActivity.this;
                super();
            }
        }
;
        gridViewItemClickListener = new android.widget.AdapterView.OnItemClickListener() {

            final ClockSettingsActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                ImageView imageview = (ImageView)view.findViewById(0x7f0900fa);
                String s = mClockNames[i];
                if (!((Boolean)mClockSettingsSelectionMap.get(s)).booleanValue())
                {
                    if (s.equals("Weather Grid") && !isLocalWeatherEnabled())
                    {
                        showDialogForClockList(mResources.getString(0x7f0a0081), mResources.getString(0x7f0a008a), mResources.getString(0x7f0a0086));
                        mClockSettingsSelectionMap.put(s, Boolean.valueOf(false));
                        updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                        return;
                    }
                    if (s.equals("Stocks") && !isStockExists())
                    {
                        showDialogForClockList(mResources.getString(0x7f0a0082), mResources.getString(0x7f0a008b), mResources.getString(0x7f0a0087));
                        mClockSettingsSelectionMap.put(s, Boolean.valueOf(false));
                        updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                        return;
                    }
                    if (s.equals("World Time") && !isCitiesExists())
                    {
                        showDialogForClockList(mResources.getString(0x7f0a0083), mResources.getString(0x7f0a008c), mResources.getString(0x7f0a0088));
                        mClockSettingsSelectionMap.put(s, Boolean.valueOf(false));
                        updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                        return;
                    }
                    if (s.equals("Activity") && !isActivityOn())
                    {
                        showDialogForClockList(mResources.getString(0x7f0a0084), mResources.getString(0x7f0a008d), mResources.getString(0x7f0a0089));
                        mClockSettingsSelectionMap.put(s, Boolean.valueOf(false));
                        updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                        return;
                    }
                    if (s.equals("Degrees") && !isLocalWeatherEnabled())
                    {
                        showDialogForClockList(mResources.getString(0x7f0a0085), mResources.getString(0x7f0a008a), mResources.getString(0x7f0a0086));
                        mClockSettingsSelectionMap.put(s, Boolean.valueOf(false));
                        updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                        return;
                    } else
                    {
                        imageview.setImageResource(0x7f020118);
                        mClockSettingsSelectionMap.put(s, Boolean.valueOf(true));
                        updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                        return;
                    }
                } else
                {
                    imageview.setImageResource(0x7f02013c);
                    mClockSettingsSelectionMap.put(s, Boolean.valueOf(false));
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
            }

            
            {
                this$0 = ClockSettingsActivity.this;
                super();
            }
        }
;
    }

    private void createInitialClockSettings()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        android.content.SharedPreferences.Editor editor;
        editor = sharedpreferences.edit();
        mClockSettingsSelectionMap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
        if (mClockSettingsSelectionMap == null) goto _L2; else goto _L3
_L3:
        if (!mClockSettingsSelectionMap.isEmpty()) goto _L5; else goto _L4
_L4:
        Log.d("ClockSettingsActivity", "Clock hashmap is empty");
        int i1 = 0;
_L40:
        if (i1 >= mClockNames.length) goto _L7; else goto _L6
_L6:
        String s2 = mClockNames[i1];
        if (!s2.equals("Bold") && !s2.equals("Weather Grid") && !s2.equals("Prism") && !s2.equals("Agenda") && !s2.equals("Typographic")) goto _L9; else goto _L8
_L8:
        if (!s2.equals("Weather Grid")) goto _L11; else goto _L10
_L10:
        mClockSettingsSelectionMap.put("Weather Grid", Boolean.valueOf(isLocalWeatherEnabled()));
          goto _L12
_L11:
        mClockSettingsSelectionMap.put(s2, Boolean.valueOf(true));
          goto _L12
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
_L2:
        return;
_L9:
        mClockSettingsSelectionMap.put(s2, Boolean.valueOf(false));
          goto _L12
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
        return;
_L7:
        if (editor == null)
            break MISSING_BLOCK_LABEL_252;
        editor.putString("clock_settings_types", ObjectSerializer.serialize(mClockSettingsSelectionMap));
        editor.commit();
_L39:
        if (getSelectedClockCount(mClockSettingsSelectionMap) > 8)
        {
            Log.d("ClockSettingsActivity", "Selection count greater than 8, disabling discard changes");
            if (mMenuButton != null)
                mMenuButton.setVisibility(8);
        }
        updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
        return;
_L5:
        if (AndroidUtils.isAtleastOneClockSeleted(mClockSettingsSelectionMap)) goto _L14; else goto _L13
_L13:
        mClockSettingsSelectionMap.put("Bold", Boolean.valueOf(true));
        if (editor == null) goto _L14; else goto _L15
_L15:
        editor.putString("clock_settings_types", ObjectSerializer.serialize(mClockSettingsSelectionMap));
        editor.commit();
          goto _L14
_L41:
        int i;
        if (i >= mClockNames.length) goto _L17; else goto _L16
_L16:
        String s1 = mClockNames[i];
        if (!mClockSettingsSelectionMap.containsKey(s1)) goto _L19; else goto _L18
_L18:
        Log.d("ClockSettingsActivity", (new StringBuilder()).append("Entry for Clock exist in array").append(s1).append(" state ").append(mClockSettingsSelectionMap.get(s1)).toString());
        if (!s1.equals("Weather Grid")) goto _L21; else goto _L20
_L20:
        updateWeatherInfoInMap();
          goto _L22
_L21:
        if (!s1.equals("Stocks")) goto _L24; else goto _L23
_L23:
        updateStockInfoInMap();
          goto _L22
_L24:
        if (!s1.equals("World Time")) goto _L26; else goto _L25
_L25:
        updateWorldClockInfoInMap();
          goto _L22
_L26:
        if (!s1.equals("Activity")) goto _L28; else goto _L27
_L27:
        updateActivityInfoInMap();
          goto _L22
_L28:
        if (s1.equals("Degrees"))
            updateDegreeInfoInMap();
          goto _L22
_L19:
        Log.d("ClockSettingsActivity", (new StringBuilder()).append("Entry for Clock does not exist in array").append(s1).append(" adding in Map").toString());
        mClockSettingsSelectionMap.put(s1, Boolean.valueOf(false));
          goto _L22
_L17:
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = mClockSettingsSelectionMap.entrySet().iterator();
_L34:
        String s;
        if (!iterator.hasNext())
            break MISSING_BLOCK_LABEL_794;
        s = (String)((java.util.Map.Entry)iterator.next()).getKey();
        int k = 0;
_L42:
        int l = mClockNames.length;
        boolean flag = false;
        if (k >= l) goto _L30; else goto _L29
_L29:
        if (!mClockNames[k].equals(s)) goto _L32; else goto _L31
_L31:
        flag = true;
_L30:
        if (flag) goto _L34; else goto _L33
_L33:
        Log.d("ClockSettingsActivity", (new StringBuilder()).append("Entry for Clock does not exist in array").append(s).append(" removing from Map").toString());
        arraylist.add(s);
          goto _L34
_L37:
        int j;
        if (j >= arraylist.size()) goto _L36; else goto _L35
_L35:
        mClockSettingsSelectionMap.remove(arraylist.get(j));
        j++;
          goto _L37
_L36:
        if (editor == null) goto _L39; else goto _L38
_L38:
        editor.putString("clock_settings_types", ObjectSerializer.serialize(mClockSettingsSelectionMap));
        editor.commit();
          goto _L39
_L12:
        i1++;
          goto _L40
_L14:
        i = 0;
          goto _L41
_L22:
        i++;
          goto _L41
_L32:
        k++;
          goto _L42
        j = 0;
          goto _L37
    }

    private int getSelectedClockCount(HashMap hashmap)
    {
        int i = 0;
        if (hashmap != null)
        {
            Object aobj[] = hashmap.values().toArray();
            for (int j = 0; j < aobj.length; j++)
                if (((Boolean)aobj[j]).booleanValue())
                    i++;

        }
        return i;
    }

    private void initialise()
    {
        mClockSettingsGridView = (GridView)findViewById(0x7f0900f7);
        mClockSettingsAcceptLayout = (LinearLayout)findViewById(0x7f0900ed);
        mMenuButton = (LinearLayout)findViewById(0x7f0900f0);
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        ArrayList arraylist = new ArrayList();
        int i;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("clock_data", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (ClassNotFoundException classnotfoundexception1)
        {
            classnotfoundexception1.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        i = arraylist.size();
        mClockNames = new String[i];
        mClockImageDrawables = new Integer[i];
        for (int j = 0; j < i; j++)
        {
            String s = ((ClockInfo)arraylist.get(j)).getIconName();
            String s1 = ((ClockInfo)arraylist.get(j)).getDisplayName();
            if (s != null && !s.isEmpty() && s1 != null && !s1.isEmpty())
            {
                String s2 = s.replaceAll(".png", "");
                mClockImageDrawables[j] = Integer.valueOf(getResources().getIdentifier(s2, "drawable", getPackageName()));
                mClockNames[j] = s1;
                Log.d("ClockSettingsActivity", (new StringBuilder()).append("Id: ").append(j).append(" =").append(mClockImageDrawables[j]).append(" : ").append(mClockNames[j]).toString());
            }
        }

        mClockSettingsSelectionMap = new HashMap();
        if (mClockImageDrawables != null && mClockImageDrawables.length != 0)
            mClockSettingsAdapter = new ClockSettingsGridViewAdapter(ToqApplication.getAppContext(), mClockImageDrawables, mClockNames);
        if (mClockSettingsGridView != null && mClockSettingsAdapter != null)
            mClockSettingsGridView.setAdapter(mClockSettingsAdapter);
        mDialog = new Dialog(this);
        mDialog.getWindow().requestFeature(1);
        mDisplayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        mResources = ToqApplication.getAppContext().getResources();
        mClockSettingsGridView.setOnItemClickListener(gridViewItemClickListener);
        mClockSettingsAcceptLayout.setOnClickListener(clockSettingsAcceptListener);
        mMenuButton.setOnClickListener(menuButtonListener);
        maxSelectionPromptView = (LinearLayout)findViewById(0x7f0900f3);
        maxSelctionPromptTextView = (TextView)findViewById(0x7f0900f5);
        maxSelctionPromptSecondaryTextView = (TextView)findViewById(0x7f0900f6);
        try
        {
            mTempHashMap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
            return;
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
    }

    private void initiateDoneChanges()
    {
        if (maxSelectionPromptView.getVisibility() == 0)
        {
            int k = -8 + getSelectedClockCount(mClockSettingsSelectionMap);
            String s1;
            if (k == 1)
            {
                String s2 = getString(0x7f0a008f);
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf(k);
                s1 = String.format(s2, aobj1);
            } else
            {
                String s = getString(0x7f0a008e);
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(k);
                s1 = String.format(s, aobj);
            }
            Toast.makeText(getApplicationContext(), s1, 1).show();
            return;
        }
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        int i = 0;
label0:
        do
        {
label1:
            {
                int j = mClockNames.length;
                boolean flag = false;
                if (i < j)
                {
                    if (!((Boolean)mClockSettingsSelectionMap.get(mClockNames[i])).booleanValue())
                        break label1;
                    flag = true;
                }
                if (!flag)
                {
                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
                    builder.setTitle(mResources.getString(0x7f0a007f));
                    builder.setMessage(mResources.getString(0x7f0a0080));
                    builder.setCancelable(false);
                    builder.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                        final ClockSettingsActivity this$0;

                        public void onClick(DialogInterface dialoginterface, int l)
                        {
                            dialoginterface.dismiss();
                        }

            
            {
                this$0 = ClockSettingsActivity.this;
                super();
            }
                    }
);
                    builder.create().show();
                    return;
                }
                break label0;
            }
            i++;
        } while (true);
        if (sharedpreferences != null)
            try
            {
                if (sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())) != null && mTempHashMap != null && !mTempHashMap.isEmpty() && !mClockSettingsSelectionMap.equals(mTempHashMap))
                {
                    Log.d("ClockSettingsActivity", (new StringBuilder()).append("The current clocks settings list is compared with the clocks from the shared preference file").append(mTempHashMap).append("==").append(mClockSettingsSelectionMap).toString());
                    postTaskToIntentService("World Time");
                    postTaskToIntentService("Degrees");
                    postTaskToIntentService("Weather Grid");
                    postTaskToIntentService("Stocks");
                    setAnyChangeDoneClockSettings(true);
                }
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        if (sharedpreferences != null)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            try
            {
                editor.putString("clock_settings_types", ObjectSerializer.serialize(mClockSettingsSelectionMap));
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            if (mClockSettingsSelectionMap.containsKey("Weather Grid") && ((Boolean)mClockSettingsSelectionMap.get("Weather Grid")).booleanValue())
                editor.putBoolean("clock_weather_grid_state", true);
            else
                editor.putBoolean("clock_weather_grid_state", false);
            if (mClockSettingsSelectionMap.containsKey("Stocks") && ((Boolean)mClockSettingsSelectionMap.get("Stocks")).booleanValue())
                editor.putBoolean("clock_stock_state", true);
            else
                editor.putBoolean("clock_stock_state", false);
            if (mClockSettingsSelectionMap.containsKey("Degrees") && ((Boolean)mClockSettingsSelectionMap.get("Degrees")).booleanValue())
                editor.putBoolean("clock_degree_state", true);
            else
                editor.putBoolean("clock_degree_state", false);
            editor.commit();
            updateClockSettings();
        }
        finish();
    }

    private boolean isCitiesExists()
    {
        SharedPreferences sharedpreferences = getSharedPreferences("ambient__pref", 0);
        boolean flag = false;
        if (sharedpreferences != null)
        {
            boolean flag1;
            try
            {
                flag1 = ((ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())))).isEmpty();
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
                return false;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return false;
            }
            flag = false;
            if (!flag1)
                flag = true;
        }
        return flag;
    }

    private boolean isLocalWeatherEnabled()
    {
        SharedPreferences sharedpreferences;
        sharedpreferences = getSharedPreferences("ambient__pref", 0);
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_35;
        boolean flag = sharedpreferences.getBoolean("WeatherCurrentCityUpdate", true);
        if (flag)
            return true;
        break MISSING_BLOCK_LABEL_35;
        Exception exception;
        exception;
        exception.printStackTrace();
        return false;
    }

    private boolean isStockExists()
    {
        SharedPreferences sharedpreferences = getSharedPreferences("ambient__pref", 0);
        boolean flag = false;
        if (sharedpreferences != null)
        {
            boolean flag1;
            try
            {
                flag1 = ((ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbols", ObjectSerializer.serialize(new ArrayList())))).isEmpty();
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
                return false;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return false;
            }
            flag = false;
            if (!flag1)
                flag = true;
        }
        return flag;
    }

    private void postTaskToIntentService(String s)
    {
        boolean flag = mTempHashMap.containsKey(s);
        boolean flag1 = false;
        if (flag)
            flag1 = ((Boolean)mTempHashMap.get(s)).booleanValue();
        boolean flag2 = mClockSettingsSelectionMap.containsKey(s);
        boolean flag3 = false;
        if (flag2)
            flag3 = ((Boolean)mClockSettingsSelectionMap.get(s)).booleanValue();
        if (flag1 != flag3)
        {
            Log.d("ClockSettingsActivity", (new StringBuilder()).append(s).append(" Clock setting got changed").toString());
            String s1 = ClockUtils.getClockUtils().getClockInfo(s, "packageName");
            Intent intent = new Intent(this, com/qualcomm/toq/smartwatch/service/AmbientIntentService);
            intent.putExtra("service_task", "generate_world_clock_file");
            intent.putExtra("clock_type", s);
            intent.putExtra("clock_package_name", s1);
            startService(intent);
            return;
        } else
        {
            Log.d("ClockSettingsActivity", (new StringBuilder()).append("No change in  Clock settings for clock").append(s).toString());
            return;
        }
    }

    private void showDialogForClockList(final String dialogTitle, String s, String s1)
    {
        if (mDialog != null)
        {
            mDialog.setContentView(getLayoutInflater().inflate(0x7f03001b, null));
            mDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            TextView textview = (TextView)mDialog.findViewById(0x7f0900fd);
            TextView textview1 = (TextView)mDialog.findViewById(0x7f0900ff);
            TextView textview2 = (TextView)mDialog.findViewById(0x7f090101);
            View view = mDialog.findViewById(0x7f0900fe);
            Button button = (Button)mDialog.findViewById(0x7f090100);
            textview1.setVisibility(0);
            textview2.setVisibility(0);
            button.setVisibility(0);
            view.setVisibility(0);
            if (s != null)
                textview1.setText(s);
            if (dialogTitle != null)
                textview.setText(dialogTitle);
            if (s1 != null)
                textview2.setText(s1);
            if (ToqData.getInstance().getRegularTypeFace() != null)
                button.setTypeface(ToqData.getInstance().getRegularTypeFace());
            textview2.setOnClickListener(new android.view.View.OnClickListener() {

                final ClockSettingsActivity this$0;
                final String val$dialogTitle;

                public void onClick(View view1)
                {
                    if (dialogTitle.equalsIgnoreCase(mResources.getString(0x7f0a0082)))
                    {
                        Intent intent4 = new Intent(ClockSettingsActivity.this, com/qualcomm/toq/smartwatch/ui/activity/StockListActivity);
                        startActivity(intent4);
                        isOpenStockPrefButtonClicked = true;
                        mDialog.dismiss();
                    } else
                    {
                        if (dialogTitle.equalsIgnoreCase(mResources.getString(0x7f0a0081)))
                        {
                            Intent intent3 = new Intent(ClockSettingsActivity.this, com/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity);
                            startActivity(intent3);
                            isOpenWeatherPrefButtonClicked = true;
                            mDialog.dismiss();
                            return;
                        }
                        if (dialogTitle.equalsIgnoreCase(mResources.getString(0x7f0a0083)))
                        {
                            Intent intent2 = new Intent(ClockSettingsActivity.this, com/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity);
                            startActivity(intent2);
                            isOpenWorldPrefButtonClicked = true;
                            mDialog.dismiss();
                            return;
                        }
                        if (dialogTitle.equalsIgnoreCase(mResources.getString(0x7f0a0084)))
                        {
                            Intent intent1 = new Intent(ClockSettingsActivity.this, com/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity);
                            startActivity(intent1);
                            isOpenActivityPrefButtonClicked = true;
                            mDialog.dismiss();
                            return;
                        }
                        if (dialogTitle.equalsIgnoreCase(mResources.getString(0x7f0a0085)))
                        {
                            Intent intent = new Intent(ClockSettingsActivity.this, com/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity);
                            startActivity(intent);
                            isOpenDegreePrefButtonClicked = true;
                            mDialog.dismiss();
                            return;
                        }
                    }
                }

            
            {
                this$0 = ClockSettingsActivity.this;
                dialogTitle = s;
                super();
            }
            }
);
            mDialog.show();
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final ClockSettingsActivity this$0;

                public void onClick(View view1)
                {
                    mDialog.dismiss();
                }

            
            {
                this$0 = ClockSettingsActivity.this;
                super();
            }
            }
);
        }
    }

    private void unbindDrawables(View view)
    {
label0:
        {
            if (view.getBackground() != null)
                view.getBackground().setCallback(null);
            if (view instanceof ViewGroup)
            {
                for (int i = 0; i < ((ViewGroup)view).getChildCount(); i++)
                    unbindDrawables(((ViewGroup)view).getChildAt(i));

                if (!(view instanceof AdapterView))
                    break label0;
                ((AdapterView)view).removeAllViewsInLayout();
            }
            return;
        }
        ((ViewGroup)view).removeAllViews();
    }

    private void updateActivityInfoInMap()
    {
        if (!isActivityOn())
        {
            mClockSettingsSelectionMap.put("Activity", Boolean.valueOf(false));
            updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
        } else
        if (isOpenActivityPrefButtonClicked)
        {
            mClockSettingsSelectionMap.put("Activity", Boolean.valueOf(true));
            isOpenActivityPrefButtonClicked = false;
            updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
            return;
        }
    }

    private void updateClockSettings()
    {
        if (isAnyChangeDoneClockSettings())
            Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        if (ClockSettingsController.getClockSettingsController() != null)
        {
            Log.d("ClockSettingsActivity", "storeUpdateClockSettingsToFile() called from ClockSettingsActivity");
            ClockSettingsController.getClockSettingsController().sendClockSettingsToWD(ToqApplication.getAppContext());
            ClockSettingsController.getClockSettingsController().sendClockAppsZipToWD(ToqApplication.getAppContext());
        }
    }

    private void updateDegreeInfoInMap()
    {
        if (!isLocalWeatherEnabled())
        {
            mClockSettingsSelectionMap.put("Degrees", Boolean.valueOf(false));
            updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
        } else
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
            if (sharedpreferences != null)
            {
                if (!sharedpreferences.getBoolean("clock_degree_state", true))
                {
                    mClockSettingsSelectionMap.put("Degrees", Boolean.valueOf(false));
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
                if (isOpenDegreePrefButtonClicked)
                {
                    mClockSettingsSelectionMap.put("Degrees", Boolean.valueOf(true));
                    isOpenDegreePrefButtonClicked = false;
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
            }
        }
    }

    private void updateMaxClockSelectionPromptView(HashMap hashmap)
    {
        int i = getSelectedClockCount(hashmap);
        if (i > 8)
        {
            int j = i - 8;
            String s = getString(0x7f0a0090);
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(8);
            String s1 = String.format(s, aobj);
            StringBuilder stringbuilder = (new StringBuilder()).append(getString(0x7f0a0091)).append(" ").append(j).append(" ");
            String s2;
            if (j == 1)
                s2 = getString(0x7f0a0093);
            else
                s2 = getString(0x7f0a0092);
            String s3 = stringbuilder.append(s2).toString();
            maxSelctionPromptTextView.setText(s1);
            maxSelctionPromptSecondaryTextView.setText(s3);
            maxSelectionPromptView.setVisibility(0);
            return;
        } else
        {
            maxSelectionPromptView.setVisibility(8);
            return;
        }
    }

    private void updateStockInfoInMap()
    {
        if (!isStockExists())
        {
            mClockSettingsSelectionMap.put("Stocks", Boolean.valueOf(false));
            updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
        } else
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
            if (sharedpreferences != null)
            {
                if (!sharedpreferences.getBoolean("clock_stock_state", true))
                {
                    mClockSettingsSelectionMap.put("Stocks", Boolean.valueOf(false));
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
                if (isOpenStockPrefButtonClicked)
                {
                    mClockSettingsSelectionMap.put("Stocks", Boolean.valueOf(true));
                    isOpenStockPrefButtonClicked = false;
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
            }
        }
    }

    private void updateStockWeatherOverlayView()
    {
        if (!isStockExists())
        {
            if (mClockSettingsAdapter != null)
                mClockSettingsAdapter.setStockOverlay(false);
        } else
        if (mClockSettingsAdapter != null)
            mClockSettingsAdapter.setStockOverlay(true);
        if (!isLocalWeatherEnabled())
        {
            if (mClockSettingsAdapter != null)
                mClockSettingsAdapter.setLocalWeatherOverlay(false);
        } else
        if (mClockSettingsAdapter != null)
            mClockSettingsAdapter.setLocalWeatherOverlay(true);
        if (!isCitiesExists())
        {
            if (mClockSettingsAdapter != null)
                mClockSettingsAdapter.setWorldClockOverlay(false);
        } else
        if (mClockSettingsAdapter != null)
        {
            mClockSettingsAdapter.setWorldClockOverlay(true);
            return;
        }
    }

    private void updateWeatherInfoInMap()
    {
        if (!isLocalWeatherEnabled())
        {
            mClockSettingsSelectionMap.put("Weather Grid", Boolean.valueOf(false));
            updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
        } else
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
            if (sharedpreferences != null)
            {
                if (!sharedpreferences.getBoolean("clock_weather_grid_state", true))
                {
                    mClockSettingsSelectionMap.put("Weather Grid", Boolean.valueOf(false));
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
                if (isOpenWeatherPrefButtonClicked)
                {
                    mClockSettingsSelectionMap.put("Weather Grid", Boolean.valueOf(true));
                    isOpenWeatherPrefButtonClicked = false;
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
            }
        }
    }

    private void updateWorldClockInfoInMap()
    {
        if (!isCitiesExists())
        {
            mClockSettingsSelectionMap.put("World Time", Boolean.valueOf(false));
            updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
        } else
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
            if (sharedpreferences != null)
            {
                if (!sharedpreferences.getBoolean("clock_world_state", true))
                {
                    mClockSettingsSelectionMap.put("World Time", Boolean.valueOf(false));
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
                if (isOpenWorldPrefButtonClicked)
                {
                    mClockSettingsSelectionMap.put("World Time", Boolean.valueOf(true));
                    isOpenWorldPrefButtonClicked = false;
                    updateMaxClockSelectionPromptView(mClockSettingsSelectionMap);
                    return;
                }
            }
        }
    }

    protected boolean isActivityOn()
    {
        return ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0).getBoolean("activity_monitoring_settings_toggle_key", false);
    }

    public boolean isAnyChangeDoneClockSettings()
    {
        return isAnyChangeDoneClockSettings;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030019);
        initialise();
        createInitialClockSettings();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f0900eb));
        System.gc();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            if (mClockNames != null && mClockNames.length != 0)
                initiateDoneChanges();
            else
                finish();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onResume()
    {
        super.onResume();
        updateStockWeatherOverlayView();
        updateWeatherInfoInMap();
        updateStockInfoInMap();
        updateWorldClockInfoInMap();
        updateActivityInfoInMap();
        updateDegreeInfoInMap();
        if (mClockSettingsAdapter != null)
        {
            mClockSettingsAdapter.updateClocksHashMap(mClockSettingsSelectionMap);
            mClockSettingsAdapter.notifyDataSetChanged();
        }
        if (mClockSettingsGridView != null)
            mClockSettingsGridView.invalidateViews();
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("ClockSettingsActivity", "ClockSettingsActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("ClockSettingsActivity", "ClockSettingsActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        mPopUpWindow.dismiss();
        if (mResources.getString(0x7f0a0131).equals(s))
            finish();
    }

    public void setAnyChangeDoneClockSettings(boolean flag)
    {
        isAnyChangeDoneClockSettings = flag;
    }




/*
    static boolean access$102(ClockSettingsActivity clocksettingsactivity, boolean flag)
    {
        clocksettingsactivity.isOpenStockPrefButtonClicked = flag;
        return flag;
    }

*/








/*
    static boolean access$302(ClockSettingsActivity clocksettingsactivity, boolean flag)
    {
        clocksettingsactivity.isOpenWeatherPrefButtonClicked = flag;
        return flag;
    }

*/


/*
    static boolean access$402(ClockSettingsActivity clocksettingsactivity, boolean flag)
    {
        clocksettingsactivity.isOpenWorldPrefButtonClicked = flag;
        return flag;
    }

*/


/*
    static boolean access$502(ClockSettingsActivity clocksettingsactivity, boolean flag)
    {
        clocksettingsactivity.isOpenActivityPrefButtonClicked = flag;
        return flag;
    }

*/


/*
    static boolean access$602(ClockSettingsActivity clocksettingsactivity, boolean flag)
    {
        clocksettingsactivity.isOpenDegreePrefButtonClicked = flag;
        return flag;
    }

*/



/*
    static PopupWindow access$702(ClockSettingsActivity clocksettingsactivity, PopupWindow popupwindow)
    {
        clocksettingsactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/


}

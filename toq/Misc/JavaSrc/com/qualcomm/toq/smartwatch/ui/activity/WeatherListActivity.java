// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.ambient.*;
import com.qualcomm.toq.smartwatch.controller.AmbientController;
import com.qualcomm.toq.smartwatch.controller.ClockSettingsController;
import com.qualcomm.toq.smartwatch.ui.adapter.*;
import com.qualcomm.toq.smartwatch.utils.LinkMovementCustomMethod;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor;
import java.io.IOException;
import java.util.*;

public class WeatherListActivity extends Activity
    implements android.view.View.OnCreateContextMenuListener, android.widget.SearchView.OnCloseListener, android.widget.SearchView.OnQueryTextListener, com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef, com.qualcomm.toq.smartwatch.ui.adapter.WeatherListAdapter.AdapterInterface
{
    private class WeatherSearchAsyncTask extends AsyncTask
    {

        final WeatherListActivity this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient ArrayList doInBackground(String as[])
        {
            Log.i("Ambient", "WeatherListActivity ShowDialogAsyncTask  doInBackground");
            ArrayList arraylist = new ArrayList();
            String s = getAmbientController().getAutocompleteResponse(as[0]);
            if (s != null)
                getAmbientController().parseAutocompleteResponse(s, arraylist, mCityMap);
            return arraylist;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((ArrayList)obj);
        }

        protected void onPostExecute(ArrayList arraylist)
        {
            if (!isFinalzed)
                break MISSING_BLOCK_LABEL_184;
            if (arraylist == null)
                break MISSING_BLOCK_LABEL_107;
            if (arraylist.size() > 0)
            {
                mAutocityEntries = arraylist;
                mListAdapter.setItemsList(mAutocityEntries);
                mListAdapter.notifyDataSetChanged();
                mWeatherAutoCompListView.invalidate();
                mWeatherAutoCompListView.setClickable(true);
                mWeatherAutoCompListView.setOnItemClickListener(addItemListener);
                mWeatherAutoCompListView.setVisibility(0);
                return;
            }
            try
            {
                mListAdapter.setItemsList(null);
                mListAdapter.notifyDataSetChanged();
                mWeatherAutoCompListView.invalidate();
                mWeatherAutoCompListView.setClickable(true);
                mWeatherAutoCompListView.setOnItemClickListener(addItemListener);
                mWeatherAutoCompListView.setVisibility(8);
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            Log.i("Ambient", "WeatherListActivity  ShowDialogAsyncTask onPreExecute");
            if (mAutocityEntries != null)
                mAutocityEntries.clear();
        }

        private WeatherSearchAsyncTask()
        {
            this$0 = WeatherListActivity.this;
            super();
        }

    }


    private static final int SET_CACHE_COLOUR_HINT;
    private android.widget.AdapterView.OnItemClickListener addItemListener;
    private AmbientController ambientController;
    private boolean isCityAdded;
    private boolean isCitySortedDeleted;
    boolean isFinalzed;
    private boolean isTemperatureUnitChanged;
    private RelativeLayout localUpdateContainer;
    private View mActionBarDefaultLayout;
    private View mActionBarSearchLayout;
    private LinearLayout mAddButtonLayout;
    private android.view.View.OnClickListener mAddbuttonListener;
    private ArrayList mAutocityEntries;
    private ArrayList mCities;
    private HashMap mCityMap;
    android.view.View.OnClickListener mDoneClickListener;
    private LinearLayout mDoneView;
    private TextView mFooterBottomText;
    private TextView mFooterMiddleText;
    private TextView mFooterTopText;
    private InputMethodManager mInputMethodManager;
    private LinkMovementCustomMethod mLinkMovementCustomMethod;
    private AutoListAdapter mListAdapter;
    private TextView mLocalUpdateText;
    private CheckBox mLocalUpdateToggle;
    private ArrayList mOldCities;
    android.view.View.OnClickListener mOverflowMenuClickListener;
    private LinearLayout mOverflowMenuLayout;
    private PopupWindow mPopUpWindow;
    private SharedPreferences mPrefs;
    private SearchView mSearchView;
    private TextView mSearchViewText;
    private int mTempeartureUnitSelectedIndex;
    private Dialog mTemperatureUnitsChangeDialog;
    private boolean mToggleOnStartState;
    ListView mWeatherAutoCompListView;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener mWeatherDropListener;
    private ArrayList mWeatherList;
    private WeatherListAdapter mWeatherListAdapter;
    private TextView mWeatherListTitleView;
    private ListView mWeatherListView;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener mWeatherRemoveListener;
    WeatherSearchAsyncTask mWeatherSearchAsync;
    private String mWeatherTemperatureUnit;
    android.widget.AdapterView.OnItemClickListener weatherListener;

    public WeatherListActivity()
    {
        mWeatherList = null;
        isCityAdded = false;
        isCitySortedDeleted = false;
        isTemperatureUnitChanged = false;
        mWeatherSearchAsync = new WeatherSearchAsyncTask();
        mCityMap = new HashMap();
        mInputMethodManager = null;
        mWeatherTemperatureUnit = null;
        mTempeartureUnitSelectedIndex = 0;
        mPrefs = null;
        isFinalzed = false;
        mWeatherDropListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener() {

            final WeatherListActivity this$0;

            public void drop(int i, int j)
            {
                isCitySortedDeleted = true;
                Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity DropListener from = ").append(i).append("to = ").append(j).toString());
                moveListItem(i, j);
                mWeatherListAdapter.notifyDataSetChanged();
                mWeatherListView.invalidateViews();
                for (int k = 0; k < mCities.size(); k++)
                {
                    Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity ").append(String.valueOf(mCities.size())).toString());
                    WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)mCities.get(k);
                    String s = weatherambientinfo.getDestinationLocation();
                    String s1 = weatherambientinfo.getAppImageDestinationLocation();
                    Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity clockImageDestinationLocation: ").append(s).append(" appImageDestinationLocation:  ").append(s1).toString());
                    if (s != null && s1 != null)
                    {
                        String s2 = updateDestinationLocation(s, k);
                        String s3 = updateDestinationLocation(s1, k);
                        Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity Destination location is ").append(s2).append("\n").append(s3).toString());
                        weatherambientinfo.setDestinationLocation(s2);
                        weatherambientinfo.setAppImageDestinationLocation(s3);
                        mCities.remove(k);
                        mCities.add(k, weatherambientinfo);
                    }
                }

                android.content.SharedPreferences.Editor editor = getSharedPreferences("ambient__pref", 0).edit();
                try
                {
                    editor.putString("WeatherCitiesCopy", ObjectSerializer.serialize(mCities));
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
                editor.commit();
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
;
        mWeatherRemoveListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener() {

            final WeatherListActivity this$0;

            public void remove(int i)
            {
                isCitySortedDeleted = true;
                if (mCities != null && mWeatherList != null)
                {
                    mCities.remove(i);
                    mWeatherList.remove(i);
                    mCities.remove(i);
                    mWeatherList.remove(i);
                    mWeatherListView.invalidateViews();
                    android.content.SharedPreferences.Editor editor = getSharedPreferences("ambient__pref", 0).edit();
                    try
                    {
                        editor.putString("WeatherCitiesCopy", ObjectSerializer.serialize(mCities));
                    }
                    catch (IOException ioexception)
                    {
                        ioexception.printStackTrace();
                    }
                    editor.commit();
                }
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
;
        weatherListener = new android.widget.AdapterView.OnItemClickListener() {

            final WeatherListActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
;
        addItemListener = new android.widget.AdapterView.OnItemClickListener() {

            final WeatherListActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                String s;
                String as[];
                String s2;
                String s3;
                Log.i("Ambient", "WeatherListActivity onItemClick");
                if (mInputMethodManager != null && getCurrentFocus() != null)
                    mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                TextView textview = (TextView)view.findViewById(0x7f09010c);
                TextView textview1 = (TextView)view.findViewById(0x7f09010d);
                s = textview.getText().toString();
                String s1 = textview1.getText().toString();
                as = s1.split(",");
                s2 = (new StringBuilder()).append(s).append(",").append(s1).toString();
                s3 = (String)mCityMap.get(s2);
                mListAdapter.setItemsList(null);
                mListAdapter.notifyDataSetChanged();
                mWeatherAutoCompListView.invalidate();
                mWeatherAutoCompListView.setVisibility(8);
                isFinalzed = false;
                invalidateOptionsMenu();
                if (s2 == null || !s2.isEmpty()) goto _L2; else goto _L1
_L1:
                Utils.showErrorMessage(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0054));
_L4:
                return;
_L2:
                SharedPreferences sharedpreferences = getSharedPreferences("ambient__pref", 0);
                ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesCopy", ObjectSerializer.serialize(new ArrayList())));
                if (arraylist == null) goto _L4; else goto _L3
_L3:
                if (IsMaxLimitReached())
                    break MISSING_BLOCK_LABEL_722;
                int j = 0;
_L5:
                int k = arraylist.size();
                boolean flag;
                flag = false;
                if (j >= k)
                    break MISSING_BLOCK_LABEL_373;
                if (((WeatherAmbientInfo)arraylist.get(j)).getCityName() == null || !((WeatherAmbientInfo)arraylist.get(j)).getCityName().equalsIgnoreCase(s) || s3 == null)
                    break MISSING_BLOCK_LABEL_681;
                if (!s3.equals(((WeatherAmbientInfo)arraylist.get(j)).getKey()))
                    break MISSING_BLOCK_LABEL_681;
                flag = true;
                if (flag)
                    break MISSING_BLOCK_LABEL_687;
                IOException ioexception;
                WeatherAmbientInfo weatherambientinfo = new WeatherAmbientInfo();
                weatherambientinfo.setCityName(s);
                if (as.length >= 1)
                    weatherambientinfo.setStateName(as[0]);
                if (as.length == 2)
                    weatherambientinfo.setCountryName(as[1]);
                weatherambientinfo.setSearchKeyText(s2);
                weatherambientinfo.setKey(s3);
                addItem(weatherambientinfo);
                Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity Added City Entry : City name: ").append(weatherambientinfo.getCityName()).append("  Country: ").append(weatherambientinfo.getCountryName()).append("  State: ").append(weatherambientinfo.getStateName()).append(" key: ").append(weatherambientinfo.getKey()).toString());
                isCityAdded = true;
                mCities = loadItems();
                mWeatherList = createAdapterListFromAmbientInfo(mCities);
                mWeatherListAdapter.setLists(mWeatherList);
                mWeatherAutoCompListView.setVisibility(8);
                if (mWeatherListView != null)
                {
                    mWeatherListView.setAdapter(mWeatherListAdapter);
                    mWeatherListView.setCacheColorHint(0);
                }
                if (mInputMethodManager != null && getCurrentFocus() != null)
                {
                    mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                    return;
                }
                  goto _L4
                j++;
                  goto _L5
                try
                {
                    Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010b), 0).show();
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return;
                }
                catch (ClassNotFoundException classnotfoundexception)
                {
                    classnotfoundexception.printStackTrace();
                }
                return;
                  goto _L4
                Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010c), 0).show();
                return;
                  goto _L4
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
;
        mDoneClickListener = new android.view.View.OnClickListener() {

            final WeatherListActivity this$0;

            public void onClick(View view)
            {
                Log.d("Ambient", "WeatherListActivity processing done  changes");
                initiateDoneChanges();
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
;
        mOverflowMenuClickListener = new android.view.View.OnClickListener() {

            final WeatherListActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f060006);
                    mPopUpWindow = (new PopUpWindowUtils(WeatherListActivity.this)).getPopUpWindow(as, WeatherListActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
;
    }

    private boolean IsMaxLimitReached()
    {
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(mPrefs.getString("WeatherCitiesCopy", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_45;
        if (arraylist.size() < 5)
            return false;
        Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity ").append("Maximum 5 city can only be added as of now").toString());
        return true;
        IOException ioexception;
        ioexception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity IOException happened during add item").append(ioexception).toString());
_L2:
        return false;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity ClassNotFoundException happened during add item").append(classnotfoundexception).toString());
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity Exception happened during add item").append(exception).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean addItem(IAmbientInfo iambientinfo)
    {
        android.content.SharedPreferences.Editor editor = mPrefs.edit();
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(mPrefs.getString("WeatherCitiesCopy", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null || iambientinfo == null)
            break MISSING_BLOCK_LABEL_78;
        arraylist.add(iambientinfo);
        editor.putString("WeatherCitiesCopy", ObjectSerializer.serialize(arraylist));
        editor.commit();
        return true;
        Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity ").append("City Name already added in List").toString());
        return false;
        IOException ioexception;
        ioexception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity IOException happened during add item").append(ioexception).toString());
_L2:
        return false;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity ClassNotFoundException happened during add item").append(classnotfoundexception).toString());
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.e("Ambient", (new StringBuilder()).append("WeatherListActivity Exception happened during add item").append(exception).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    private ArrayList createAdapterListFromAmbientInfo(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        for (int i = 0; i < arraylist.size(); i++)
        {
            WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)arraylist.get(i);
            if (weatherambientinfo == null)
                continue;
            Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity ambientInfo.getStateName( )  ").append(weatherambientinfo.getStateName()).toString());
            Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity ambientInfo.getCountryName( )  ").append(weatherambientinfo.getCountryName()).toString());
            String s;
            if (weatherambientinfo.getStateName() == null)
                s = "--";
            else
                s = weatherambientinfo.getStateName();
            String s1;
            if (weatherambientinfo.getCountryName() == null)
                s1 = " --";
            else
                s1 = (new StringBuilder()).append(" ").append(weatherambientinfo.getCountryName()).toString();
            Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity State and Country:   ").append(s).append(" & ").append(s1).toString());
            String s2;
            if (weatherambientinfo.getCityName() != null)
            {
                String as[] = weatherambientinfo.getCityName().split(",");
                if (as[0] != null)
                    s2 = (new StringBuilder()).append(as[0]).append(",").append(s).append(",").append(s1).toString();
                else
                    s2 = (new StringBuilder()).append(weatherambientinfo.getCityName()).append(",").append(s).append(",").append(s1).toString();
            } else
            {
                s2 = (new StringBuilder()).append("--,").append(s).append(",").append(s1).toString();
            }
            arraylist1.add(s2);
        }

        return arraylist1;
    }

    private AmbientController getAmbientController()
    {
        if (ambientController == null)
            ambientController = AmbientController.getController("weather");
        return ambientController;
    }

    private TextView getFooterBottomText()
    {
        if (mFooterBottomText == null)
            mFooterBottomText = (TextView)findViewById(0x7f090097);
        return mFooterBottomText;
    }

    private TextView getFooterMiddleText()
    {
        if (mFooterMiddleText == null)
            mFooterMiddleText = (TextView)findViewById(0x7f090096);
        return mFooterMiddleText;
    }

    private TextView getFooterTopText()
    {
        if (mFooterTopText == null)
            mFooterTopText = (TextView)findViewById(0x7f090095);
        return mFooterTopText;
    }

    private Dialog getTemperatureUnitsChangeDialog()
    {
        if (mTemperatureUnitsChangeDialog == null)
        {
            mTemperatureUnitsChangeDialog = new Dialog(this);
            mTemperatureUnitsChangeDialog.getWindow().requestFeature(1);
            DisplayMetrics displaymetrics = new DisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            mTemperatureUnitsChangeDialog.setContentView(getLayoutInflater().inflate(0x7f03000c, null));
            mTemperatureUnitsChangeDialog.getWindow().setLayout(-50 + displaymetrics.widthPixels, -2);
        }
        return mTemperatureUnitsChangeDialog;
    }

    private void initViews()
    {
        mWeatherListAdapter = new WeatherListAdapter(ToqApplication.getAppContext(), this);
        mPrefs = getSharedPreferences("ambient__pref", 0);
        mInputMethodManager = (InputMethodManager)getSystemService("input_method");
        isCityAdded = false;
        isCitySortedDeleted = false;
        isTemperatureUnitChanged = false;
        getLocalUpdateContainer().setVisibility(0);
        SharedPreferences sharedpreferences = getSharedPreferences("ambient__pref", 0);
        getLocalUpdateToggle().setChecked(sharedpreferences.getBoolean("WeatherCurrentCityUpdate", true));
        mWeatherTemperatureUnit = sharedpreferences.getString("weather_temperature_unit", "Fahrenheit");
        mToggleOnStartState = getLocalUpdateToggle().isChecked();
        mWeatherListTitleView = (TextView)findViewById(0x7f09008d);
        if (mWeatherListTitleView != null)
            mWeatherListTitleView.setText(getResources().getString(0x7f0a0056));
        mWeatherListView = (ListView)findViewById(0x7f090092);
        ((TouchInterceptor)mWeatherListView).setDropListener(mWeatherDropListener);
        ((TouchInterceptor)mWeatherListView).setRemoveListener(mWeatherRemoveListener);
        mWeatherListView.setOnTouchListener(new android.view.View.OnTouchListener() {

            final WeatherListActivity this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    Log.d("Ambient", "WeatherListActivity Touch Listener for down");
                    refreshList();
                }
                return false;
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
);
        mWeatherAutoCompListView = (ListView)findViewById(0x7f090093);
        syncCityListtoCopy();
        mOldCities = loadItems();
        mActionBarDefaultLayout = getLayoutInflater().inflate(0x7f03002c, null);
        mAddButtonLayout = (LinearLayout)mActionBarDefaultLayout.findViewById(0x7f0901b3);
        mDoneView = (LinearLayout)mActionBarDefaultLayout.findViewById(0x7f0901af);
        mOverflowMenuLayout = (LinearLayout)mActionBarDefaultLayout.findViewById(0x7f0901b2);
        setUpDefaultActionBar();
        mAddbuttonListener = new android.view.View.OnClickListener() {

            final WeatherListActivity this$0;

            public void onClick(View view)
            {
                Log.i("Ambient", "WeatherListActivity  inside click");
                isFinalzed = true;
                invalidateOptionsMenu();
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
;
        mActionBarSearchLayout = getLayoutInflater().inflate(0x7f030001, null, false);
        mSearchView = (SearchView)mActionBarSearchLayout.findViewById(0x7f090015);
        mAddButtonLayout.setOnClickListener(mAddbuttonListener);
        mDoneView.setOnClickListener(mDoneClickListener);
        mSearchView.setOnCloseListener(this);
        mSearchView.setOnQueryTextListener(this);
        ((LinearLayout)mActionBarSearchLayout.findViewById(0x7f090014)).setOnClickListener(new android.view.View.OnClickListener() {

            final WeatherListActivity this$0;

            public void onClick(View view)
            {
                if (mWeatherSearchAsync != null)
                    mWeatherSearchAsync.cancel(true);
                mWeatherAutoCompListView.setVisibility(8);
                if (mInputMethodManager != null && getCurrentFocus() != null)
                    mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                isFinalzed = false;
                invalidateOptionsMenu();
            }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
        }
);
        mOverflowMenuLayout.setOnClickListener(mOverflowMenuClickListener);
    }

    private void initiateDoneChanges()
    {
        SharedPreferences sharedpreferences;
        android.content.SharedPreferences.Editor editor;
        Log.d("AmbientController", "initiate done changes called for weather");
        if (mWeatherList.equals(createAdapterListFromAmbientInfo(mOldCities)))
        {
            isCityAdded = false;
            isCitySortedDeleted = false;
        }
        sharedpreferences = getSharedPreferences("ambient__pref", 0);
        if (!sharedpreferences.getString("weather_temperature_unit", "Fahrenheit").equalsIgnoreCase(mWeatherTemperatureUnit))
            isTemperatureUnitChanged = true;
        editor = sharedpreferences.edit();
        editor.putString("WeatherCities", ObjectSerializer.serialize(mCities));
        editor.putString("weather_temperature_unit", mWeatherTemperatureUnit);
        editor.putBoolean("weather_cities_temp_unit_changed", isTemperatureUnitChanged);
        editor.putBoolean("current_city_temp_unit_changed", isTemperatureUnitChanged);
_L25:
        SharedPreferences sharedpreferences1;
        editor.commit();
        sharedpreferences1 = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        if (sharedpreferences1 == null) goto _L2; else goto _L1
_L1:
        android.content.SharedPreferences.Editor editor1;
        HashMap hashmap;
        boolean flag;
        boolean flag1;
        editor1 = sharedpreferences1.edit();
        hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences1.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
        flag = mToggleOnStartState;
        flag1 = getLocalUpdateToggle().isChecked();
        boolean flag2 = false;
        if (flag == flag1) goto _L4; else goto _L3
_L3:
        Log.d("Ambient", "WeatherListActivity Toggle State got changed");
        Log.d("AmbientController", "Toggle State got changed");
        if (hashmap == null) goto _L6; else goto _L5
_L5:
        if (!getLocalUpdateToggle().isChecked() && !hashmap.isEmpty())
        {
            hashmap.put("Weather Grid", Boolean.valueOf(false));
            hashmap.put("Degrees", Boolean.valueOf(false));
        }
        if (!getLocalUpdateToggle().isChecked()) goto _L8; else goto _L7
_L7:
        editor1.putBoolean("clock_weather_grid_state", true);
        editor1.putBoolean("clock_degree_state", true);
_L26:
        editor1.commit();
_L6:
        flag2 = true;
        android.content.SharedPreferences.Editor editor2 = sharedpreferences.edit();
        if (!getLocalUpdateToggle().isChecked()) goto _L10; else goto _L9
_L9:
        editor2.putBoolean("WeatherCurrentCityUpdate", true);
        editor2.commit();
        isCityAdded = true;
_L27:
        Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
_L4:
        if (mCities == null || !mCities.isEmpty() || isCityAdded) goto _L12; else goto _L11
_L11:
        flag2 = true;
        if (hashmap == null)
            break MISSING_BLOCK_LABEL_455;
        if (!hashmap.isEmpty())
            hashmap.put("World Time", Boolean.valueOf(false));
        editor1.putBoolean("clock_world_state", false);
        editor1.commit();
_L28:
        if (hashmap == null) goto _L2; else goto _L13
_L13:
        Iterator iterator = hashmap.entrySet().iterator();
_L15:
        boolean flag3 = iterator.hasNext();
        boolean flag4;
        flag4 = false;
        if (!flag3)
            break MISSING_BLOCK_LABEL_536;
        if (!((Boolean)((java.util.Map.Entry)iterator.next()).getValue()).booleanValue()) goto _L15; else goto _L14
_L14:
        flag4 = true;
        if (hashmap.isEmpty() || flag4)
            break MISSING_BLOCK_LABEL_562;
        hashmap.put("Bold", Boolean.valueOf(true));
        editor1.putString("clock_settings_types", ObjectSerializer.serialize(hashmap));
        editor1.commit();
        if (!flag2) goto _L2; else goto _L16
_L16:
        ClockSettingsController.getClockSettingsController().sendClockSettingsToWD(getApplicationContext());
_L2:
        if (isCityAdded || !isCitySortedDeleted && !isTemperatureUnitChanged) goto _L18; else goto _L17
_L17:
        Log.d("Ambient", "WeatherListActivity-initializeDoneChanges resync Ambinet images to WD");
        getAmbientController().processAmbientTask(3);
        if (false) goto _L18; else goto _L19
_L19:
        Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
_L18:
        if (isCityAdded)
        {
            Log.d("Ambient", "WeatherListActivity-initializeDoneChanges start weather manual poll");
            getAmbientController().processAmbientTask(2);
            AmbientController.getController("weather").resetPollingTimer();
            Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        }
        if (mOldCities.size() <= mCities.size()) goto _L21; else goto _L20
_L20:
        ArrayList arraylist;
        int i = mOldCities.size() - mCities.size();
        arraylist = new ArrayList(i);
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() != 3) goto _L21; else goto _L22
_L22:
        int j = 2 + mCities.size();
_L24:
        if (j >= 2 + mOldCities.size()) goto _L21; else goto _L23
_L23:
        Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity deleting fms entry: /ad/weather/").append(j).append(".img").toString());
        arraylist.add((new StringBuilder()).append("/apps/weather/").append(j).append(".img").toString());
        j++;
          goto _L24
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L25
        Exception exception;
        exception;
        exception.printStackTrace();
_L30:
        finish();
        return;
_L8:
        editor1.putBoolean("clock_weather_grid_state", false);
        editor1.putBoolean("clock_degree_state", false);
          goto _L26
_L10:
        Log.d("Ambient", "WeatherListActivity-InitiateDoneChanges currentCity disabled");
        editor2.putBoolean("WeatherCurrentCityUpdate", false);
        editor2.commit();
        isCitySortedDeleted = true;
        Log.d("Ambient", "WeatherListActivity AmbientIntentService intnet called for degrees clock");
          goto _L27
_L12:
        editor1.putBoolean("clock_world_state", true);
        editor1.commit();
          goto _L28
_L21:
        if (mCities.size() != 0 || getLocalUpdateToggle().isChecked()) goto _L30; else goto _L29
_L29:
        Log.d("Ambient", "WeatherListActivity-InitializeDoneChanges remove time stamp");
          goto _L30
    }

    private boolean isSearchBarDismissed()
    {
        if (isFinalzed)
        {
            if (mListAdapter != null && mWeatherAutoCompListView != null)
            {
                mListAdapter.setItemsList(null);
                mListAdapter.notifyDataSetChanged();
                mWeatherAutoCompListView.invalidate();
                mWeatherAutoCompListView.setClickable(true);
                mWeatherAutoCompListView.setOnItemClickListener(addItemListener);
                mWeatherAutoCompListView.setVisibility(8);
            }
            isFinalzed = false;
            invalidateOptionsMenu();
            return false;
        } else
        {
            return true;
        }
    }

    private ArrayList loadItems()
    {
        SharedPreferences sharedpreferences = getSharedPreferences("ambient__pref", 0);
        ArrayList arraylist;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCitiesCopy", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return null;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return arraylist;
    }

    private void moveListItem(int i, int j)
    {
        isCitySortedDeleted = true;
        this;
        JVM INSTR monitorenter ;
        int k = mCities.size();
        Exception exception;
        IAmbientInfo iambientinfo;
        String s;
        if (i >= k)
            i = k - 1;
        if (j >= k)
            j = k - 1;
          goto _L1
_L3:
        iambientinfo = (IAmbientInfo)mCities.get(i);
        mCities.remove(i);
        mCities.add(j, iambientinfo);
        s = (String)mWeatherList.get(i);
        mWeatherList.remove(i);
        mWeatherList.add(j, s);
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L1:
        if (true) goto _L3; else goto _L2
_L2:
    }

    private void setFooterViews()
    {
        mLinkMovementCustomMethod = new LinkMovementCustomMethod();
        getFooterTopText().setText(getResources().getText(0x7f0a0059));
        getFooterMiddleText().setText(Html.fromHtml(getResources().getText(0x7f0a0051).toString()));
        getFooterMiddleText().setMovementMethod(mLinkMovementCustomMethod);
        if (mPrefs != null)
        {
            String s = mPrefs.getString("weather_update_timestamp", "");
            getFooterBottomText().setText(s);
        }
    }

    private void setUpDefaultActionBar()
    {
        ActionBar actionbar = getActionBar();
        actionbar.setCustomView(mActionBarDefaultLayout);
        actionbar.setDisplayShowHomeEnabled(false);
        actionbar.setDisplayShowTitleEnabled(false);
        actionbar.setDisplayOptions(16);
        actionbar.show();
    }

    private void setUpSearchActionBar()
    {
        ActionBar actionbar = getActionBar();
        mSearchView.setIconified(false);
        mSearchView.setQuery("", false);
        mSearchView.setQueryHint(ToqApplication.getAppContext().getResources().getString(0x7f0a0053));
        int i = mSearchView.getContext().getResources().getIdentifier("android:id/search_src_text", null, null);
        mSearchViewText = (TextView)mSearchView.findViewById(i);
        if (mSearchViewText != null)
        {
            mSearchViewText.setTextColor(getResources().getColor(0x7f070010));
            mSearchViewText.setTextSize(16F);
            if (ToqData.getInstance().getRegularTypeFace() != null)
                mSearchViewText.setTypeface(ToqData.getInstance().getRegularTypeFace());
        }
        actionbar.setCustomView(mActionBarSearchLayout);
        actionbar.show();
        actionbar.setDisplayShowHomeEnabled(false);
        actionbar.setDisplayShowTitleEnabled(false);
        actionbar.setDisplayOptions(16);
    }

    private void showWeatherChangeUnitsDialog()
    {
        getTemperatureUnitsChangeDialog().findViewById(0x7f09006a).setVisibility(8);
        mTempeartureUnitSelectedIndex = Utils.getTemperatureUnitsListViewIndex(mWeatherTemperatureUnit);
        TextView textview = (TextView)getTemperatureUnitsChangeDialog().findViewById(0x7f090069);
        if (textview != null)
            textview.setText(getResources().getString(0x7f0a005a));
        Button button = (Button)getTemperatureUnitsChangeDialog().findViewById(0x7f090073);
        if (button != null)
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final WeatherListActivity this$0;

                public void onClick(View view)
                {
                    getTemperatureUnitsChangeDialog().dismiss();
                }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
            }
);
        Button button1 = (Button)getTemperatureUnitsChangeDialog().findViewById(0x7f090074);
        if (button1 != null)
            button1.setOnClickListener(new android.view.View.OnClickListener() {

                final WeatherListActivity this$0;

                public void onClick(View view)
                {
                    mWeatherTemperatureUnit = Utils.getTemperatureUnitFromIndex(mTempeartureUnitSelectedIndex);
                    getTemperatureUnitsChangeDialog().dismiss();
                }

            
            {
                this$0 = WeatherListActivity.this;
                super();
            }
            }
);
        final ListView weatherUnitsListView = (ListView)getTemperatureUnitsChangeDialog().findViewById(0x7f09006d);
        if (weatherUnitsListView != null)
        {
            weatherUnitsListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final WeatherListActivity this$0;
                final ListView val$weatherUnitsListView;

                public void onItemClick(AdapterView adapterview, View view, int i, long l)
                {
                    View view1 = weatherUnitsListView.getChildAt(mTempeartureUnitSelectedIndex);
                    if (view1 != null)
                        ((RadioButton)view1.findViewById(0x7f090237)).setChecked(false);
                    mTempeartureUnitSelectedIndex = i;
                    RadioButton radiobutton = (RadioButton)view.findViewById(0x7f090237);
                    if (radiobutton != null)
                        radiobutton.setChecked(true);
                }

            
            {
                this$0 = WeatherListActivity.this;
                weatherUnitsListView = listview;
                super();
            }
            }
);
            weatherUnitsListView.setAdapter(new AdvancedSettingsDialogListAdapter(ToqApplication.getAppContext(), getResources().getStringArray(0x7f06000a), mTempeartureUnitSelectedIndex));
        }
        getTemperatureUnitsChangeDialog().show();
    }

    private void syncCityListtoCopy()
    {
        SharedPreferences sharedpreferences = getSharedPreferences("ambient__pref", 0);
        try
        {
            ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("WeatherCities", ObjectSerializer.serialize(new ArrayList())));
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("WeatherCitiesCopy", ObjectSerializer.serialize(arraylist));
            editor.commit();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
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

    private String updateDestinationLocation(String s, int i)
    {
        String s1 = s;
        if (s != null)
            s = s.replaceAll(s1.substring(1 + s.lastIndexOf("/"), s.lastIndexOf(".")), String.valueOf(i + 2));
        return s;
    }

    public void deleteCity(int i)
    {
        Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity Size of list = ").append(mCities.size()).toString());
        if (mCities.size() == 0 || mWeatherList.size() == 0)
            return;
        String s = ((WeatherAmbientInfo)mCities.get(i)).getCityName();
        Log.d("Ambient", (new StringBuilder()).append("WeatherListActivityDeleting city is ").append(s).toString());
        if ((WeatherAmbientInfo)mCities.get(i) != null)
        {
            mWeatherList.remove(i);
            mCities.remove(i);
            for (int j = 0; j < mCities.size(); j++)
            {
                Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity ").append(String.valueOf(mCities.size())).toString());
                WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)mCities.get(j);
                String s1 = weatherambientinfo.getDestinationLocation();
                String s2 = weatherambientinfo.getAppImageDestinationLocation();
                if (s1 != null && s2 != null)
                {
                    String s3 = updateDestinationLocation(s1, j);
                    String s4 = updateDestinationLocation(s2, j);
                    Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity Destination location is ").append(s3).append("\n").append(s4).toString());
                    weatherambientinfo.setDestinationLocation(s3);
                    weatherambientinfo.setAppImageDestinationLocation(s4);
                    mCities.remove(j);
                    mCities.add(j, weatherambientinfo);
                }
            }

            android.content.SharedPreferences.Editor editor = getSharedPreferences("ambient__pref", 0).edit();
            try
            {
                editor.putString("WeatherCitiesCopy", ObjectSerializer.serialize(mCities));
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            editor.commit();
            Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity Size of list = ").append(mCities.size()).toString());
            mWeatherList = createAdapterListFromAmbientInfo(mCities);
            mWeatherListAdapter.setUpdateList(mWeatherList);
            mWeatherListAdapter.notifyDataSetChanged();
            mWeatherListView.invalidateViews();
            isCitySortedDeleted = true;
            return;
        } else
        {
            Log.d("Ambient", (new StringBuilder()).append("WeatherListActivity Unable to delete ").append(s).append("ambientController != null && weatherAmbientInfo != null").toString());
            return;
        }
    }

    public RelativeLayout getLocalUpdateContainer()
    {
        if (localUpdateContainer == null)
            localUpdateContainer = (RelativeLayout)findViewById(0x7f09008e);
        return localUpdateContainer;
    }

    public TextView getLocalUpdateText()
    {
        if (mLocalUpdateText == null)
            mLocalUpdateText = (TextView)findViewById(0x7f090090);
        return mLocalUpdateText;
    }

    public CheckBox getLocalUpdateToggle()
    {
        if (mLocalUpdateToggle == null)
            mLocalUpdateToggle = (CheckBox)findViewById(0x7f090091);
        return mLocalUpdateToggle;
    }

    protected boolean isAlwaysExpanded()
    {
        return false;
    }

    public void onBackPressed()
    {
        if (isSearchBarDismissed())
        {
            Log.d("Ambient", "WeatherListActivityOn Back Pressed");
            super.onBackPressed();
            initiateDoneChanges();
        }
    }

    public boolean onClose()
    {
        Log.i("Ambient", "WeatherListActivity onClose ");
        mWeatherAutoCompListView.setVisibility(8);
        if (mInputMethodManager != null && getCurrentFocus() != null)
            mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        isFinalzed = false;
        invalidateOptionsMenu();
        return true;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000f);
        initViews();
        setFooterViews();
        AmbientAppUpgradeUtils.isWeatherScreenActive = true;
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        Log.i("Ambient", "WeatherListActivity inside onCreateOptionsMenu");
        if (isFinalzed)
            setUpSearchActionBar();
        else
            setUpDefaultActionBar();
        return true;
    }

    public void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f09008c));
        AmbientAppUpgradeUtils.isWeatherScreenActive = false;
        System.gc();
    }

    protected void onPause()
    {
        super.onPause();
        if (mLinkMovementCustomMethod != null && mLinkMovementCustomMethod.isOnTouchEventEnabled())
            mLinkMovementCustomMethod.setOnTouchEventEnabled(false);
    }

    public boolean onQueryTextChange(String s)
    {
        if (mSearchViewText != null)
        {
            mSearchViewText.setTextColor(-1);
            mSearchViewText.setTextSize(18F);
        }
        Log.i("Ambient", "WeatherListActivity onQueryTextChange ");
        mWeatherAutoCompListView.setVisibility(0);
        if (mListAdapter == null)
            mListAdapter = new AutoListAdapter(ToqApplication.getAppContext());
        mWeatherAutoCompListView.setAdapter(mListAdapter);
        mWeatherAutoCompListView.setClickable(true);
        mListAdapter.setItemsList(null);
        mListAdapter.notifyDataSetChanged();
        mWeatherAutoCompListView.invalidate();
        Log.i("Ambient", (new StringBuilder()).append("WeatherListActivity Query = ").append(s).toString());
        if (s != null && s.length() > 0 && !"".equals(s.trim()))
            if (Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
            {
                Log.i("Ambient", "WeatherListActivity Internet available");
                if (mWeatherSearchAsync != null)
                {
                    mWeatherSearchAsync.cancel(true);
                    mWeatherSearchAsync = null;
                    mWeatherSearchAsync = new WeatherSearchAsyncTask();
                    mWeatherSearchAsync.execute(new String[] {
                        s
                    });
                }
                return true;
            } else
            {
                Utils.showErrorMessage(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010a));
                return true;
            }
        if (mWeatherSearchAsync != null)
            mWeatherSearchAsync.cancel(true);
        mListAdapter.setItemsList(null);
        mListAdapter.notifyDataSetChanged();
        mWeatherAutoCompListView.invalidate();
        mWeatherAutoCompListView.setVisibility(8);
        return true;
    }

    public boolean onQueryTextSubmit(String s)
    {
        Log.i("Ambient", "WeatherListActivity onQueryTextSubmit ");
        return false;
    }

    protected void onResume()
    {
        super.onResume();
        if (mLinkMovementCustomMethod != null && !mLinkMovementCustomMethod.isOnTouchEventEnabled())
            mLinkMovementCustomMethod.setOnTouchEventEnabled(true);
    }

    protected void onStart()
    {
        super.onStart();
        mCities = loadItems();
        mWeatherList = createAdapterListFromAmbientInfo(mCities);
        mWeatherListAdapter.setLists(mWeatherList);
        if (mWeatherListView != null)
        {
            mWeatherListView.setAdapter(mWeatherListAdapter);
            mWeatherListView.setCacheColorHint(0);
        }
        Log.printUsageLog("WeatherListActivity", "WeatherListActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("WeatherListActivity", "WeatherListActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
        else
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a005a).equals(s))
        {
            showWeatherChangeUnitsDialog();
            return;
        }
    }

    public void refreshList()
    {
        mWeatherListAdapter.notifyDataSetChanged();
        mWeatherListView.invalidate();
    }



/*
    static boolean access$102(WeatherListActivity weatherlistactivity, boolean flag)
    {
        weatherlistactivity.isCitySortedDeleted = flag;
        return flag;
    }

*/







/*
    static boolean access$1602(WeatherListActivity weatherlistactivity, boolean flag)
    {
        weatherlistactivity.isCityAdded = flag;
        return flag;
    }

*/







/*
    static PopupWindow access$2002(WeatherListActivity weatherlistactivity, PopupWindow popupwindow)
    {
        weatherlistactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/



/*
    static String access$2202(WeatherListActivity weatherlistactivity, String s)
    {
        weatherlistactivity.mWeatherTemperatureUnit = s;
        return s;
    }

*/



/*
    static int access$2302(WeatherListActivity weatherlistactivity, int i)
    {
        weatherlistactivity.mTempeartureUnitSelectedIndex = i;
        return i;
    }

*/





/*
    static ArrayList access$502(WeatherListActivity weatherlistactivity, ArrayList arraylist)
    {
        weatherlistactivity.mCities = arraylist;
        return arraylist;
    }

*/




/*
    static ArrayList access$702(WeatherListActivity weatherlistactivity, ArrayList arraylist)
    {
        weatherlistactivity.mWeatherList = arraylist;
        return arraylist;
    }

*/



/*
    static ArrayList access$802(WeatherListActivity weatherlistactivity, ArrayList arraylist)
    {
        weatherlistactivity.mAutocityEntries = arraylist;
        return arraylist;
    }

*/

}

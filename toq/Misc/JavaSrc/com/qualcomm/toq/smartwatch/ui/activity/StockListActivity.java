// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Html;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.ambient.*;
import com.qualcomm.toq.smartwatch.controller.AmbientController;
import com.qualcomm.toq.smartwatch.controller.ClockSettingsController;
import com.qualcomm.toq.smartwatch.ui.adapter.AutoListAdapter;
import com.qualcomm.toq.smartwatch.ui.adapter.StockListAdapter;
import com.qualcomm.toq.smartwatch.utils.LinkMovementCustomMethod;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor;
import java.io.IOException;
import java.util.*;

public class StockListActivity extends Activity
    implements android.view.View.OnCreateContextMenuListener, android.widget.SearchView.OnCloseListener, android.widget.SearchView.OnQueryTextListener, com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef, com.qualcomm.toq.smartwatch.ui.adapter.StockListAdapter.AdapterInterface
{
    private class StockSearchAsyncTask extends AsyncTask
    {

        final StockListActivity this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient ArrayList doInBackground(String as[])
        {
            Log.i("Ambient", "StockListActivityStockListActivity-ShowDialogAsyncTask  doInBackground");
            Log.i("Ambient", (new StringBuilder()).append("StockListActivityStockListActivity- params[0] :").append(as[0]).toString());
            ArrayList arraylist = new ArrayList();
            String s = getAmbientController().getAutocompleteResponse(as[0]);
            if (s != null)
                getAmbientController().parseAutocompleteResponse(s, arraylist, null);
            return arraylist;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((ArrayList)obj);
        }

        protected void onPostExecute(ArrayList arraylist)
        {
            Log.i("Ambient", "StockListActivityStockListActivity- onPostExecute");
            if (!isFinalzed)
                break MISSING_BLOCK_LABEL_149;
            if (arraylist == null)
                break MISSING_BLOCK_LABEL_108;
            if (arraylist.size() <= 0)
                break MISSING_BLOCK_LABEL_108;
            mAutoStockList = arraylist;
            mListAdapter.setItemsList(arraylist);
            mListAdapter.notifyDataSetChanged();
            mainListView.setVisibility(0);
_L2:
            mainListView.invalidate();
            mainListView.setClickable(true);
            mainListView.setOnItemClickListener(addItemListener);
            return;
            mListAdapter.setItemsList(null);
            mListAdapter.notifyDataSetChanged();
            mainListView.setVisibility(8);
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            exception.printStackTrace();
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            Log.i("Ambient", "StockListActivityStockListActivity-ShowDialogAsyncTask onPreExecute");
            if (mAutoStockList != null)
                mAutoStockList.clear();
        }

        private StockSearchAsyncTask()
        {
            this$0 = StockListActivity.this;
            super();
        }

    }


    private static final int SET_CACHE_COLOUR_HINT;
    private android.widget.AdapterView.OnItemClickListener addItemListener;
    public android.view.View.OnClickListener addbuttonListener;
    private AmbientController ambientController;
    private boolean isFinalzed;
    private boolean isStockAdded;
    private boolean isStockSortedDeleted;
    private View mActionBarDefaultLayout;
    private View mActionBarSearchLayout;
    private LinearLayout mAddButtonLayout;
    private ArrayList mAutoStockList;
    android.view.View.OnClickListener mDoneClickListener;
    private LinearLayout mDoneView;
    private TextView mFooterBottomText;
    private TextView mFooterMiddleText;
    private TextView mFooterTopText;
    private InputMethodManager mInputMethodManager;
    private LinkMovementCustomMethod mLinkMovementCustomMethod;
    private AutoListAdapter mListAdapter;
    private ArrayList mOldStockCodes;
    android.view.View.OnClickListener mOverflowMenuClickListener;
    private LinearLayout mOverflowMenuLayout;
    private PopupWindow mPopUpWindow;
    private SharedPreferences mPrefs;
    private SearchView mSearchView;
    private TextView mSearchViewText;
    private ArrayList mStockCodes;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener mStockDropListener;
    private ArrayList mStockList;
    private StockListAdapter mStockListAdapter;
    private TextView mStockListTitleView;
    private ListView mStockListView;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener mStockRemoveListener;
    StockSearchAsyncTask mStockSearchAsync;
    private ListView mainListView;

    public StockListActivity()
    {
        mStockList = null;
        isStockAdded = false;
        isStockSortedDeleted = false;
        mInputMethodManager = null;
        mPrefs = null;
        isFinalzed = false;
        mStockSearchAsync = new StockSearchAsyncTask();
        addItemListener = new android.widget.AdapterView.OnItemClickListener() {

            final StockListActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                String s2;
                Log.i("Ambient", "StockListActivityStockListActivity-onItemClick");
                if (mInputMethodManager != null)
                    mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                mListAdapter.setItemsList(null);
                mListAdapter.notifyDataSetChanged();
                mainListView.setVisibility(8);
                mainListView.invalidate();
                TextView textview = (TextView)view.findViewById(0x7f09010c);
                TextView textview1 = (TextView)view.findViewById(0x7f09010d);
                String s = textview.getText().toString();
                String s1 = textview1.getText().toString();
                s2 = (new StringBuilder()).append(s).append(",").append(s1).toString();
                isFinalzed = false;
                invalidateOptionsMenu();
                if (s2 == null || !s2.isEmpty()) goto _L2; else goto _L1
_L1:
                Utils.showErrorMessage(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0054));
_L4:
                return;
_L2:
                String as[];
                SharedPreferences sharedpreferences;
                as = s2.split(",");
                Log.d("Ambient", "StockListActivityStockListActivity- Adding in progress. Background synch will not happen during this time");
                sharedpreferences = getSharedPreferences("ambient__pref", 0);
                ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsCopy", ObjectSerializer.serialize(new ArrayList())));
                if (arraylist == null) goto _L4; else goto _L3
_L3:
                if (IsMaxLimitReached())
                    break MISSING_BLOCK_LABEL_643;
                int j = 0;
_L6:
                int k = arraylist.size();
                boolean flag;
                flag = false;
                if (j >= k)
                    break MISSING_BLOCK_LABEL_314;
                if (!((StockAmbientInfo)arraylist.get(j)).getCompanySymbol().equalsIgnoreCase(as[0]))
                    break MISSING_BLOCK_LABEL_602;
                flag = true;
                if (flag)
                    break; /* Loop/switch isn't completed */
                try
                {
                    StockAmbientInfo stockambientinfo = new StockAmbientInfo();
                    Log.d("Ambient", (new StringBuilder()).append("StockListActivitytokens[0] :").append(as[0]).toString());
                    Log.d("Ambient", (new StringBuilder()).append("StockListActivitytokens[1]:").append(as[1]).toString());
                    if (as[1] != null)
                        as[1] = as[1].trim();
                    stockambientinfo.setCompanySymbol(as[0]);
                    stockambientinfo.setSearchKeyText(as[0]);
                    stockambientinfo.setCompanyName(as[1]);
                    addItem(stockambientinfo);
                    mStockCodes = loadItems();
                    mStockList = createAdapterListFromAmbientInfo(mStockCodes);
                    mStockListAdapter.setLists(mStockList);
                    mainListView.setVisibility(8);
                    mainListView.setClickable(true);
                    if (mStockListView != null)
                    {
                        mStockListView.setAdapter(mStockListAdapter);
                        mStockListView.setCacheColorHint(0);
                    }
                    if (mInputMethodManager != null)
                        mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                    isStockAdded = true;
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
                }
                break MISSING_BLOCK_LABEL_642;
                j++;
                if (true) goto _L6; else goto _L5
_L5:
                Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0108), 0).show();
                return;
                return;
                Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0109), 0).show();
                return;
            }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
        }
;
        mStockDropListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener() {

            final StockListActivity this$0;

            public void drop(int i, int j)
            {
                Log.d("Ambient", (new StringBuilder()).append("StockListActivity DropListener from = ").append(i).append("to = ").append(j).toString());
                moveListItem(i, j);
                mStockListAdapter.notifyDataSetChanged();
                mStockListView.invalidateViews();
                for (int k = 0; k < mStockCodes.size(); k++)
                {
                    Log.d("Ambient", (new StringBuilder()).append("StockListActivity").append(String.valueOf(mStockCodes.size())).toString());
                    StockAmbientInfo stockambientinfo = (StockAmbientInfo)mStockCodes.get(k);
                    String s = stockambientinfo.getDestinationLocation();
                    String s1 = stockambientinfo.getAppImageDestinationLocation();
                    String s2 = stockambientinfo.getDarkImageDestinationLocation();
                    if (s != null && s1 != null)
                    {
                        String s3 = updateDestinationLocation(s, k);
                        String s4 = updateDestinationLocation(s1, k);
                        String s5 = updateDestinationLocation(s2, k);
                        Log.d("Ambient", (new StringBuilder()).append("StockListActivityDestination location is ").append(s3).toString());
                        stockambientinfo.setDestinationLocation(s3);
                        stockambientinfo.setDarkImageDestinationLocation(s5);
                        stockambientinfo.setAppImageDestinationLocation(s4);
                        mStockCodes.remove(k);
                        mStockCodes.add(k, stockambientinfo);
                    }
                }

                android.content.SharedPreferences.Editor editor = getSharedPreferences("ambient__pref", 0).edit();
                try
                {
                    editor.putString("StockSymbolsCopy", ObjectSerializer.serialize(mStockCodes));
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
                editor.commit();
            }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
        }
;
        mStockRemoveListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener() {

            final StockListActivity this$0;

            public void remove(int i)
            {
                if (mStockCodes != null && mStockList != null)
                {
                    mStockCodes.remove(i);
                    mStockList.remove(i);
                    isStockSortedDeleted = true;
                    mStockCodes.remove(i);
                    mStockList.remove(i);
                    mStockListView.invalidateViews();
                    android.content.SharedPreferences.Editor editor = getSharedPreferences("ambient__pref", 0).edit();
                    try
                    {
                        editor.putString("StockSymbolsCopy", ObjectSerializer.serialize(mStockCodes));
                    }
                    catch (IOException ioexception)
                    {
                        ioexception.printStackTrace();
                    }
                    editor.commit();
                }
            }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
        }
;
        mOverflowMenuClickListener = new android.view.View.OnClickListener() {

            final StockListActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f060007);
                    mPopUpWindow = (new PopUpWindowUtils(StockListActivity.this)).getPopUpWindow(as, StockListActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
        }
;
        mDoneClickListener = new android.view.View.OnClickListener() {

            final StockListActivity this$0;

            public void onClick(View view)
            {
                initiateDoneChanges();
            }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
        }
;
    }

    private boolean IsMaxLimitReached()
    {
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(mPrefs.getString("StockSymbolsCopy", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_45;
        if (arraylist.size() < 5)
            return false;
        Log.d("Ambient", (new StringBuilder()).append("StockListActivity ").append("Maximum 5 stock can only be added as of now").toString());
        return true;
        IOException ioexception;
        ioexception;
        Log.e("Ambient", (new StringBuilder()).append("StockListActivityIOException happened during add item").append(ioexception).toString());
_L2:
        return false;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        Log.e("Ambient", (new StringBuilder()).append("StockListActivityClassNotFoundException happened during add item").append(classnotfoundexception).toString());
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.e("Ambient", (new StringBuilder()).append("StockListActivityException happened during add item").append(exception).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean addItem(IAmbientInfo iambientinfo)
    {
        android.content.SharedPreferences.Editor editor = mPrefs.edit();
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(mPrefs.getString("StockSymbolsCopy", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null)
            break MISSING_BLOCK_LABEL_96;
        if (arraylist.contains(iambientinfo) || iambientinfo == null)
            break MISSING_BLOCK_LABEL_96;
        if (arraylist.size() >= 5)
            break MISSING_BLOCK_LABEL_96;
        arraylist.add(iambientinfo);
        editor.putString("StockSymbolsCopy", ObjectSerializer.serialize(arraylist));
        editor.commit();
        return true;
        Log.d("Ambient", (new StringBuilder()).append("StockListActivity ").append("Stock Name already added in List").toString());
        return false;
        IOException ioexception;
        ioexception;
        Log.e("Ambient", (new StringBuilder()).append("StockListActivityIOException happened during add item").append(ioexception).toString());
_L2:
        return false;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        Log.e("Ambient", (new StringBuilder()).append("StockListActivityClassNotFoundException happened during add item").append(classnotfoundexception).toString());
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.e("Ambient", (new StringBuilder()).append("StockListActivityException happened during add item").append(exception).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    private ArrayList createAdapterListFromAmbientInfo(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        for (int i = 0; i < arraylist.size(); i++)
        {
            StockAmbientInfo stockambientinfo = (StockAmbientInfo)arraylist.get(i);
            if (stockambientinfo == null)
                continue;
            Log.d("Ambient", (new StringBuilder()).append("StockListActivity getCompanySymbol  : ").append(stockambientinfo.getCompanySymbol()).toString());
            Log.d("Ambient", (new StringBuilder()).append("StockListActivitygetCompanyName : ").append(stockambientinfo.getCompanyName()).toString());
            StringBuilder stringbuilder = (new StringBuilder()).append(stockambientinfo.getCompanySymbol()).append(",");
            String s;
            if (stockambientinfo.getCompanyName() == null)
                s = "";
            else
                s = stockambientinfo.getCompanyName();
            arraylist1.add(stringbuilder.append(s).toString());
        }

        return arraylist1;
    }

    private AmbientController getAmbientController()
    {
        if (ambientController == null)
            ambientController = (StockController)AmbientController.getController("stock");
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

    private void initViews()
    {
        mStockListAdapter = new StockListAdapter(ToqApplication.getAppContext(), this);
        mInputMethodManager = (InputMethodManager)getSystemService("input_method");
        mPrefs = getSharedPreferences("ambient__pref", 0);
        syncStocksToCopy();
        mStockCodes = loadItems();
        mOldStockCodes = loadItems();
        mStockListTitleView = (TextView)findViewById(0x7f09008d);
        if (mStockListTitleView != null)
            mStockListTitleView.setText(getResources().getString(0x7f0a0055));
        mStockListView = (ListView)findViewById(0x7f090092);
        if (mStockListView != null)
        {
            mStockListView.setAdapter(mStockListAdapter);
            mStockListView.setCacheColorHint(0);
            mStockListView.setOnTouchListener(new android.view.View.OnTouchListener() {

                final StockListActivity this$0;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if (motionevent.getAction() == 0)
                    {
                        Log.d("Ambient", "StockListActivityTouch Listener for down");
                        refreshList();
                    }
                    return false;
                }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
            }
);
            ((TouchInterceptor)mStockListView).setDropListener(mStockDropListener);
            ((TouchInterceptor)mStockListView).setRemoveListener(mStockRemoveListener);
        }
        isStockAdded = false;
        isStockSortedDeleted = false;
        mStockList = createAdapterListFromAmbientInfo(mStockCodes);
        mStockListAdapter.setLists(mStockList);
        mainListView = (ListView)findViewById(0x7f090093);
        mActionBarDefaultLayout = getLayoutInflater().inflate(0x7f03002c, null);
        setUpDefaultActionBar();
        mAddButtonLayout = (LinearLayout)mActionBarDefaultLayout.findViewById(0x7f0901b3);
        mDoneView = (LinearLayout)mActionBarDefaultLayout.findViewById(0x7f0901af);
        mOverflowMenuLayout = (LinearLayout)mActionBarDefaultLayout.findViewById(0x7f0901b2);
        addbuttonListener = new android.view.View.OnClickListener() {

            final StockListActivity this$0;

            public void onClick(View view)
            {
                Log.i("Ambient", "StockListActivity inside click");
                isFinalzed = true;
                invalidateOptionsMenu();
            }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
        }
;
        mAddButtonLayout.setOnClickListener(addbuttonListener);
        mOverflowMenuLayout.setOnClickListener(mOverflowMenuClickListener);
        mDoneView.setOnClickListener(mDoneClickListener);
        mActionBarSearchLayout = getLayoutInflater().inflate(0x7f030001, null, false);
        mSearchView = (SearchView)mActionBarSearchLayout.findViewById(0x7f090015);
        mSearchView.setOnCloseListener(this);
        mSearchView.setOnQueryTextListener(this);
        ((LinearLayout)mActionBarSearchLayout.findViewById(0x7f090014)).setOnClickListener(new android.view.View.OnClickListener() {

            final StockListActivity this$0;

            public void onClick(View view)
            {
                if (mStockSearchAsync != null)
                    mStockSearchAsync.cancel(true);
                findViewById(0x7f090093).setVisibility(8);
                if (mInputMethodManager != null && getCurrentFocus() != null)
                    mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                isFinalzed = false;
                invalidateOptionsMenu();
            }

            
            {
                this$0 = StockListActivity.this;
                super();
            }
        }
);
    }

    private void initiateDoneChanges()
    {
        android.content.SharedPreferences.Editor editor;
        Log.d("AmbientController", "initiate done changes called for Stock");
        editor = getSharedPreferences("ambient__pref", 0).edit();
        SharedPreferences sharedpreferences;
        editor.putString("StockSymbols", ObjectSerializer.serialize(mStockCodes));
        editor.commit();
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        HashMap hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
        if (hashmap == null) goto _L2; else goto _L3
_L3:
        Iterator iterator;
        if (mStockCodes != null && mStockCodes.isEmpty() && !hashmap.isEmpty())
            hashmap.put("Stocks", Boolean.valueOf(false));
        iterator = hashmap.entrySet().iterator();
_L5:
        boolean flag = iterator.hasNext();
        boolean flag1;
        flag1 = false;
        if (!flag)
            break MISSING_BLOCK_LABEL_191;
        if (!((Boolean)((java.util.Map.Entry)iterator.next()).getValue()).booleanValue()) goto _L5; else goto _L4
_L4:
        flag1 = true;
        if (hashmap.isEmpty() || flag1)
            break MISSING_BLOCK_LABEL_217;
        hashmap.put("Bold", Boolean.valueOf(true));
        android.content.SharedPreferences.Editor editor1;
        editor1 = sharedpreferences.edit();
        editor1.putString("clock_settings_types", ObjectSerializer.serialize(hashmap));
        if (mStockCodes == null || !mStockCodes.isEmpty()) goto _L7; else goto _L6
_L6:
        editor1.putBoolean("clock_stock_state", false);
_L8:
        editor1.commit();
        ClockSettingsController.getClockSettingsController().sendClockSettingsToWD(this);
          goto _L2
_L7:
        editor1.putBoolean("clock_stock_state", true);
          goto _L8
        ioexception;
        ioexception.printStackTrace();
          goto _L2
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
_L2:
        if (mStockList.equals(createAdapterListFromAmbientInfo(mOldStockCodes)))
        {
            isStockAdded = false;
            isStockSortedDeleted = false;
        }
        if (isStockSortedDeleted && !isStockAdded)
        {
            getAmbientController().processAmbientTask(3);
            if (true)
                Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        }
        if (isStockAdded)
        {
            Log.d("Ambient", "StockListActivityStockListActivity-initializeDoneChanges new stock added");
            getAmbientController().processAmbientTask(2);
            AmbientController.getController("stock").resetPollingTimer();
            Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        }
        if (mOldStockCodes.size() <= mStockCodes.size())
            break MISSING_BLOCK_LABEL_728;
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() == 3)
        {
            ArrayList arraylist = new ArrayList(3 * (mOldStockCodes.size() - mStockCodes.size()));
            ClassNotFoundException classnotfoundexception;
            IOException ioexception;
            for (int i = 1 + mStockCodes.size(); i < 1 + mOldStockCodes.size(); i++)
            {
                String s = (new StringBuilder()).append("/apps/stock/").append(i).append(".img").toString();
                String s1 = (new StringBuilder()).append("/ad/stock/").append(i).append("_A").append(".img").toString();
                String s2 = (new StringBuilder()).append("/ad/stock/").append(i).append("_B").append(".img").toString();
                Log.d("Ambient", (new StringBuilder()).append("StockListActivity-initializeDoneChanges deleting Stock files:  ").append(s).append("\n").append(s1).append("\n").append(s2).toString());
                arraylist.add(s);
                arraylist.add(s1);
                arraylist.add(s2);
            }

            Log.d("Ambient", "StockListActivity-initializeDoneChanges wd stock files");
        }
        if (mStockCodes.size() == 0)
            Log.d("Ambient", "StockListActivity-initializgeDoneChanges stock size =0");
        finish();
        return;
          goto _L8
    }

    private boolean isSearchBarDismissed()
    {
        if (isFinalzed)
        {
            if (mListAdapter != null && mainListView != null)
            {
                mListAdapter.setItemsList(null);
                mListAdapter.notifyDataSetChanged();
                mainListView.invalidate();
                mainListView.setClickable(true);
                mainListView.setOnItemClickListener(addItemListener);
                mainListView.setVisibility(8);
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
        ArrayList arraylist = null;
        if (sharedpreferences != null)
            try
            {
                arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbolsCopy", ObjectSerializer.serialize(new ArrayList())));
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
        this;
        JVM INSTR monitorenter ;
        int k;
        isStockSortedDeleted = true;
        k = mStockCodes.size();
        Exception exception;
        IAmbientInfo iambientinfo;
        String s;
        if (i >= k)
            i = k - 1;
        if (j >= k)
            j = k - 1;
          goto _L1
_L3:
        iambientinfo = (IAmbientInfo)mStockCodes.get(i);
        mStockCodes.remove(i);
        mStockCodes.add(j, iambientinfo);
        s = (String)mStockList.get(i);
        mStockList.remove(i);
        mStockList.add(j, s);
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
        getFooterTopText().setText(getResources().getText(0x7f0a0057));
        getFooterMiddleText().setText(Html.fromHtml(getResources().getText(0x7f0a0050).toString()));
        getFooterMiddleText().setMovementMethod(mLinkMovementCustomMethod);
        if (mPrefs != null)
        {
            String s = mPrefs.getString("stock_update_timestamp", "");
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
        mSearchView.setQueryHint(ToqApplication.getAppContext().getResources().getString(0x7f0a0052));
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

    private void syncStocksToCopy()
    {
        SharedPreferences sharedpreferences;
        sharedpreferences = getSharedPreferences("ambient__pref", 0);
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_71;
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("StockSymbols", ObjectSerializer.serialize(new ArrayList())));
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("StockSymbolsCopy", ObjectSerializer.serialize(arraylist));
        editor.commit();
        return;
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
        String s1;
label0:
        {
            s1 = s;
            if (s != null)
            {
                if (!s.contains("_"))
                    break label0;
                s = s.replaceAll(s1.substring(1 + s.lastIndexOf("/"), s.lastIndexOf("_")), String.valueOf(i + 1));
            }
            return s;
        }
        return s.replaceAll(s1.substring(1 + s.lastIndexOf("/"), s.lastIndexOf(".")), String.valueOf(i + 1));
    }

    public void deleteStock(int i)
    {
        Log.d("Ambient", (new StringBuilder()).append("StockListActivitySize of list = ").append(mStockCodes.size()).toString());
        if (mStockCodes.size() == 0 || mStockList.size() == 0)
            return;
        StockAmbientInfo stockambientinfo = (StockAmbientInfo)mStockCodes.get(i);
        if (stockambientinfo != null)
        {
            String s = stockambientinfo.getCompanySymbol();
            Log.d("Ambient", (new StringBuilder()).append("StockListActivityDeleting symbol is ").append(s).toString());
            mStockList.remove(i);
            mStockCodes.remove(i);
            for (int j = 0; j < mStockCodes.size(); j++)
            {
                Log.d("Ambient", (new StringBuilder()).append("StockListActivity").append(String.valueOf(mStockCodes.size())).toString());
                StockAmbientInfo stockambientinfo1 = (StockAmbientInfo)mStockCodes.get(j);
                String s1 = stockambientinfo1.getDestinationLocation();
                String s2 = stockambientinfo1.getAppImageDestinationLocation();
                String s3 = stockambientinfo1.getDarkImageDestinationLocation();
                if (s1 != null && s2 != null && s3 != null)
                {
                    String s4 = updateDestinationLocation(s1, j);
                    String s5 = updateDestinationLocation(s2, j);
                    String s6 = updateDestinationLocation(s3, j);
                    Log.d("Ambient", (new StringBuilder()).append("StockListActivityDestination location is ").append(s4).toString());
                    stockambientinfo1.setDestinationLocation(s4);
                    stockambientinfo1.setDarkImageDestinationLocation(s6);
                    stockambientinfo1.setAppImageDestinationLocation(s5);
                    mStockCodes.remove(j);
                    mStockCodes.add(j, stockambientinfo1);
                }
            }

            android.content.SharedPreferences.Editor editor = mPrefs.edit();
            try
            {
                editor.putString("StockSymbolsCopy", ObjectSerializer.serialize(mStockCodes));
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            editor.commit();
            Log.d("Ambient", (new StringBuilder()).append("StockListActivitySize of list = ").append(mStockCodes.size()).toString());
            mStockCodes = loadItems();
            mStockList = createAdapterListFromAmbientInfo(mStockCodes);
            mStockListAdapter.setUpdateList(mStockList);
            mStockListAdapter.notifyDataSetChanged();
            isStockSortedDeleted = true;
            return;
        } else
        {
            Log.d("Ambient", "stockAmbientInfo is null during deleting stock");
            return;
        }
    }

    public void onBackPressed()
    {
        if (isSearchBarDismissed())
        {
            Log.d("Ambient", "StockListActivityStockListActivity-onBackPressed On Back Pressed");
            super.onBackPressed();
            initiateDoneChanges();
        }
    }

    public boolean onClose()
    {
        Log.i("Ambient", "StockListActivityStockListActivity-onClose ");
        mainListView.setVisibility(8);
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
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
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
        Log.i("Ambient", "StockListActivityStockListActivity-onQueryTextChange ");
        findViewById(0x7f090093).setVisibility(0);
        if (mListAdapter == null)
            mListAdapter = new AutoListAdapter(ToqApplication.getAppContext());
        mainListView.setAdapter(mListAdapter);
        mainListView.setClickable(true);
        mListAdapter.setItemsList(null);
        mListAdapter.notifyDataSetChanged();
        mainListView.invalidate();
        Log.i("Ambient", (new StringBuilder()).append("StockListActivityStockListActivity-onQueryTextChange Query = ").append(s).toString());
        if (s != null && s.length() > 0 && !"".equals(s.trim()))
            if (Utils.isNetworkConnectivityAvailable(ToqApplication.getAppContext()))
            {
                Log.i("Ambient", "StockListActivityStockListActivity-onQueryTextChange Internet available");
                if (mStockSearchAsync != null)
                {
                    mStockSearchAsync.cancel(true);
                    mStockSearchAsync = null;
                    mStockSearchAsync = new StockSearchAsyncTask();
                    mStockSearchAsync.execute(new String[] {
                        s
                    });
                }
                return true;
            } else
            {
                Utils.showErrorMessage(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010a));
                return true;
            }
        if (mStockSearchAsync != null)
            mStockSearchAsync.cancel(true);
        mainListView.setVisibility(8);
        mainListView.setAdapter(mListAdapter);
        mainListView.setClickable(true);
        mListAdapter.setItemsList(null);
        mListAdapter.notifyDataSetChanged();
        mainListView.invalidate();
        return true;
    }

    public boolean onQueryTextSubmit(String s)
    {
        Log.i("Ambient", "StockListActivityStockListActivity-onQueryTextSubmit ");
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
        Log.printUsageLog("StockListActivity", "StockListActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("StockListActivity", "StockListActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
    }

    public void refreshList()
    {
        mStockListAdapter.notifyDataSetChanged();
        mStockListView.invalidate();
    }




/*
    static ArrayList access$1002(StockListActivity stocklistactivity, ArrayList arraylist)
    {
        stocklistactivity.mStockCodes = arraylist;
        return arraylist;
    }

*/


/*
    static ArrayList access$102(StockListActivity stocklistactivity, ArrayList arraylist)
    {
        stocklistactivity.mAutoStockList = arraylist;
        return arraylist;
    }

*/




/*
    static ArrayList access$1202(StockListActivity stocklistactivity, ArrayList arraylist)
    {
        stocklistactivity.mStockList = arraylist;
        return arraylist;
    }

*/





/*
    static boolean access$1602(StockListActivity stocklistactivity, boolean flag)
    {
        stocklistactivity.isStockAdded = flag;
        return flag;
    }

*/




/*
    static boolean access$1902(StockListActivity stocklistactivity, boolean flag)
    {
        stocklistactivity.isStockSortedDeleted = flag;
        return flag;
    }

*/




/*
    static PopupWindow access$2002(StockListActivity stocklistactivity, PopupWindow popupwindow)
    {
        stocklistactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/




/*
    static boolean access$302(StockListActivity stocklistactivity, boolean flag)
    {
        stocklistactivity.isFinalzed = flag;
        return flag;
    }

*/






}

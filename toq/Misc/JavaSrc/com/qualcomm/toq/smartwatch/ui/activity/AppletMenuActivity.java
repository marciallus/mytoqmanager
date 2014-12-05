// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PopUpWindowUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;
import com.qualcomm.toq.smartwatch.ui.adapter.AppletMenuAdapter;
import com.qualcomm.toq.smartwatch.utils.AppletDetails;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor;
import java.io.IOException;
import java.util.*;

public class AppletMenuActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef, com.qualcomm.toq.smartwatch.ui.adapter.AppletMenuAdapter.AppletMenuAdapterInterface
{
    private class AppletInstallationListenerImpl
        implements com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager.AppletInstallationListener
    {

        final AppletMenuActivity this$0;

        public void onAppletInstall(String s)
        {
            Log.d("AppletMenuActivity", (new StringBuilder()).append("MoreAppletsActivity.AppletInstallationListenerImpl.onAppletInstall - packageName: ").append(s).toString());
            if (mAppDetailList != null && mAppletMenuInstalledPackageList != null)
            {
                mAppletMenuInstalledPackageList.add(s);
                mAppDetailList.add(new AppletDetails(s, true));
            }
            updateList();
        }

        public void onAppletUninstall(String s)
        {
            Log.d("AppletMenuActivity", (new StringBuilder()).append("MoreAppletsActivity.AppletInstallationListenerImpl.onAppletUninstall - packageName: ").append(s).toString());
            if (!isAppListItemDeletedFromList)
            {
                if (mAppDetailList != null && mAppletMenuInstalledPackageList != null)
                {
                    int i = mAppletMenuInstalledPackageList.indexOf(s);
                    if (mAppletMenuInstalledPackageList.contains(s))
                    {
                        mAppletMenuInstalledPackageList.remove(s);
                        mAppDetailList.remove(i);
                    }
                }
                updateList();
            }
        }

        public void onAppletUpdate(String s)
        {
        }

        private AppletInstallationListenerImpl()
        {
            this$0 = AppletMenuActivity.this;
            super();
        }

    }


    private static final String TAG = "AppletMenuActivity";
    android.view.View.OnClickListener appletMenuScreenListener;
    private boolean isAppListItemDeletedFromList;
    private boolean isAppletMenuPrefUpdated;
    private List mAppDetailList;
    private ListView mAppMenuListView;
    private AppletInstallationListenerImpl mAppletInstallationListener;
    private ArrayList mAppletMenuInstalledPackageList;
    private View mAppletMenuInstrTitleDivider;
    private TextView mAppletMenuInstructionText;
    private AppletMenuAdapter mAppletMenuListAdapter;
    private SharedPreferences mAppletMenuPref;
    private ArrayList mAppletMenuUninstallPackagesList;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener mDropListener;
    private PopupWindow mPopupWindow;
    private com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener mRemoveListener;

    public AppletMenuActivity()
    {
        isAppListItemDeletedFromList = false;
        mAppletMenuPref = null;
        isAppletMenuPrefUpdated = false;
        mDropListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.DropListener() {

            final AppletMenuActivity this$0;

            public void drop(int i, int j)
            {
                moveListItem(i, j);
                if (mAppDetailList != null && mAppletMenuListAdapter != null)
                {
                    mAppletMenuListAdapter.updateAppletMenuList(mAppDetailList);
                    mAppletMenuListAdapter.notifyDataSetChanged();
                }
            }

            
            {
                this$0 = AppletMenuActivity.this;
                super();
            }
        }
;
        mRemoveListener = new com.qualcomm.toq.smartwatch.utils.quickreplylistview.TouchInterceptor.RemoveListener() {

            final AppletMenuActivity this$0;

            public void remove(int i)
            {
                if (mAppDetailList != null && mAppletMenuInstalledPackageList != null)
                {
                    mAppDetailList.remove(i);
                    mAppletMenuInstalledPackageList.remove(i);
                    if (mAppletMenuListAdapter != null)
                    {
                        mAppletMenuListAdapter.updateAppletMenuList(mAppDetailList);
                        mAppletMenuListAdapter.notifyDataSetChanged();
                    }
                }
            }

            
            {
                this$0 = AppletMenuActivity.this;
                super();
            }
        }
;
        appletMenuScreenListener = new android.view.View.OnClickListener() {

            final AppletMenuActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296690: 
                    getPopUpWindow().showAsDropDown(view, 0, 0);
                    return;

                case 2131296687: 
                    initiateDoneChanges();
                    return;

                case 2131296688: 
                case 2131296689: 
                default:
                    return;
                }
            }

            
            {
                this$0 = AppletMenuActivity.this;
                super();
            }
        }
;
    }

    private TextView getAppletMenuInstructionText()
    {
        if (mAppletMenuInstructionText == null)
            mAppletMenuInstructionText = (TextView)findViewById(0x7f0900a9);
        return mAppletMenuInstructionText;
    }

    private ListView getAppletMenuListView()
    {
        if (mAppMenuListView == null)
            mAppMenuListView = (ListView)findViewById(0x7f0900ab);
        return mAppMenuListView;
    }

    private void getInstalledAppDetails()
    {
        LocalDeckOfCardsManager localdeckofcardsmanager;
        ArrayList arraylist;
        String as[];
        int i;
        int j;
        ArrayList arraylist1;
        int k;
        String s;
        String s1;
        try
        {
            localdeckofcardsmanager = LocalDeckOfCardsManager.getInstance();
            arraylist = new ArrayList();
        }
        catch (DeckOfCardsException deckofcardsexception)
        {
            Log.e("AppletMenuActivity", "TOQAppsActivity.getRegisteredAppDetails Error getting deck of cards manager to get registered app details", deckofcardsexception);
            return;
        }
        if (localdeckofcardsmanager == null) goto _L2; else goto _L1
_L1:
        as = localdeckofcardsmanager.getExternalInstalledAppletPackageNames();
        if (as == null) goto _L4; else goto _L3
_L3:
        if (as.length <= 0) goto _L4; else goto _L5
_L5:
        i = 0;
_L11:
        if (i >= as.length) goto _L4; else goto _L6
_L6:
        if (localdeckofcardsmanager.isInstalled(as[i]))
            arraylist.add(as[i]);
          goto _L7
_L12:
        if (j >= arraylist.size()) goto _L2; else goto _L8
_L8:
        s1 = (String)arraylist.get(j);
        if (s1 == null) goto _L10; else goto _L9
_L9:
        if (s1.length() > 0 && !mAppletMenuInstalledPackageList.contains(s1) && !mAppletMenuUninstallPackagesList.contains(s1))
            mAppletMenuInstalledPackageList.add(s1);
          goto _L10
_L2:
        if (mAppDetailList != null && mAppDetailList.size() > 0)
            mAppDetailList.clear();
        arraylist1 = new ArrayList(mAppletMenuInstalledPackageList);
        k = 0;
_L13:
        if (k >= arraylist1.size())
            break MISSING_BLOCK_LABEL_285;
        Log.d("AppletMenuActivity", (new StringBuilder()).append("The arraylist for packages").append(arraylist1).toString());
        s = (String)arraylist1.get(k);
        if (arraylist.contains(s))
        {
            mAppDetailList.add(new AppletDetails(s, true));
            break MISSING_BLOCK_LABEL_313;
        }
        mAppletMenuInstalledPackageList.remove(s);
        break MISSING_BLOCK_LABEL_313;
        arraylist.clear();
        arraylist1.clear();
        return;
_L7:
        i++;
          goto _L11
_L4:
        j = 0;
          goto _L12
_L10:
        j++;
          goto _L12
        k++;
          goto _L13
    }

    private PopupWindow getPopUpWindow()
    {
        if (mPopupWindow == null)
        {
            String as[] = getResources().getStringArray(0x7f060007);
            mPopupWindow = (new PopUpWindowUtils(this)).getPopUpWindow(as, this);
        }
        return mPopupWindow;
    }

    private void initializeAppletMenu()
    {
        View view = findViewById(0x7f0900a7);
        ((LinearLayout)view.findViewById(0x7f0901af)).setOnClickListener(appletMenuScreenListener);
        ((LinearLayout)view.findViewById(0x7f0901b2)).setOnClickListener(appletMenuScreenListener);
        view.findViewById(0x7f0901b3).setVisibility(8);
        mAppletMenuListAdapter = new AppletMenuAdapter(this, this);
        mAppletInstallationListener = new AppletInstallationListenerImpl();
        mAppDetailList = new ArrayList();
        mAppletMenuUninstallPackagesList = new ArrayList();
        try
        {
            LocalDeckOfCardsManager.getInstance().addAppletInstallationListener(mAppletInstallationListener);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        mAppletMenuPref = ToqApplication.getAppContext().getSharedPreferences("applet_menu_pref", 0);
        if (mAppletMenuPref == null)
            break MISSING_BLOCK_LABEL_161;
        mAppletMenuInstalledPackageList = (ArrayList)ObjectSerializer.deserialize(mAppletMenuPref.getString("applet_menu_app_details", ObjectSerializer.serialize(new ArrayList())));
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    private void initiateDoneChanges()
    {
        android.content.SharedPreferences.Editor editor;
        DeckOfCardsException deckofcardsexception;
        LocalDeckOfCardsManager localdeckofcardsmanager;
        Iterator iterator;
        String s;
        boolean flag;
        DeckOfCardsException deckofcardsexception1;
        try
        {
            if (mAppletMenuPref != null && mAppletMenuInstalledPackageList != null && !((ArrayList)ObjectSerializer.deserialize(mAppletMenuPref.getString("applet_menu_app_details", ObjectSerializer.serialize(new ArrayList())))).equals(mAppletMenuInstalledPackageList))
                Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getString(0x7f0a00fa), 0).show();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        if (mAppletMenuUninstallPackagesList == null || mAppletMenuUninstallPackagesList.isEmpty())
            break MISSING_BLOCK_LABEL_167;
        localdeckofcardsmanager = LocalDeckOfCardsManager.getInstance();
        iterator = mAppletMenuUninstallPackagesList.iterator();
_L1:
        do
        {
            if (!iterator.hasNext())
                break MISSING_BLOCK_LABEL_167;
            s = (String)iterator.next();
            flag = mAppletMenuInstalledPackageList.contains(s);
        } while (flag);
        localdeckofcardsmanager.manualUninstall(s);
          goto _L1
        deckofcardsexception1;
        deckofcardsexception1.printStackTrace();
          goto _L1
        deckofcardsexception;
        deckofcardsexception.printStackTrace();
        if (mAppletMenuPref != null)
        {
            editor = mAppletMenuPref.edit();
            try
            {
                editor.putString("applet_menu_app_details", ObjectSerializer.serialize(mAppletMenuInstalledPackageList));
                editor.commit();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        finish();
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

    private void updateAppletMenuListView()
    {
        if (mAppletMenuInstalledPackageList != null)
            if (mAppletMenuInstalledPackageList.isEmpty())
            {
                getAppletMenuInstructionText().setText(Html.fromHtml(getResources().getString(0x7f0a0202)));
                getAppletMenuInstrTitleDivider().setVisibility(8);
            } else
            {
                getAppletMenuInstructionText().setText(getResources().getString(0x7f0a0201));
                getAppletMenuInstrTitleDivider().setVisibility(0);
            }
        if (mAppletMenuListAdapter != null && mAppDetailList != null)
            mAppletMenuListAdapter.updateAppletMenuList(mAppDetailList);
        refreshAppletMenuList();
    }

    private void updateList()
    {
        runOnUiThread(new Runnable() {

            final AppletMenuActivity this$0;

            public void run()
            {
                updateAppletMenuListView();
            }

            
            {
                this$0 = AppletMenuActivity.this;
                super();
            }
        }
);
    }

    public void deleteAppFromTheList(int i)
    {
        isAppListItemDeletedFromList = true;
        if (mAppDetailList != null)
        {
            String s = ((AppletDetails)mAppDetailList.get(i)).getPackageName();
            if (s != null && mAppletMenuUninstallPackagesList != null)
                mAppletMenuUninstallPackagesList.add(s);
            if (mAppletMenuInstalledPackageList != null && mAppDetailList != null && s != null && mAppletMenuInstalledPackageList.contains(s))
            {
                mAppletMenuInstalledPackageList.remove(i);
                mAppDetailList.remove(i);
            }
            updateAppletMenuListView();
        }
    }

    public View getAppletMenuInstrTitleDivider()
    {
        if (mAppletMenuInstrTitleDivider == null)
            mAppletMenuInstrTitleDivider = findViewById(0x7f0900aa);
        return mAppletMenuInstrTitleDivider;
    }

    public void moveListItem(int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        if (mAppDetailList == null || mAppletMenuInstalledPackageList == null) goto _L2; else goto _L1
_L1:
        int k = mAppDetailList.size();
        Exception exception;
        AppletDetails appletdetails;
        String s;
        if (i >= k)
            i = k - 1;
        if (j >= k)
            j = k - 1;
          goto _L3
_L5:
        appletdetails = (AppletDetails)mAppDetailList.get(i);
        mAppDetailList.remove(i);
        mAppDetailList.add(j, appletdetails);
        s = (String)mAppletMenuInstalledPackageList.get(i);
        mAppletMenuInstalledPackageList.remove(i);
        mAppletMenuInstalledPackageList.add(j, s);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L3:
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onBackPressed()
    {
        Log.d("AppletMenuActivity", "On Back Pressed");
        super.onBackPressed();
        initiateDoneChanges();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030013);
        initializeAppletMenu();
        if (mAppletMenuListAdapter != null)
            getAppletMenuListView().setAdapter(mAppletMenuListAdapter);
        ((TouchInterceptor)getAppletMenuListView()).setDropListener(mDropListener);
        ((TouchInterceptor)getAppletMenuListView()).setRemoveListener(mRemoveListener);
        getAppletMenuListView().setCacheColorHint(0);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f0900a6));
        mAppDetailList = null;
        mAppletMenuListAdapter = null;
        mAppMenuListView = null;
        try
        {
            LocalDeckOfCardsManager localdeckofcardsmanager = LocalDeckOfCardsManager.getInstance();
            if (mAppletInstallationListener != null)
                localdeckofcardsmanager.removeAppletInstallationListener(mAppletInstallationListener);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        mAppletInstallationListener = null;
        if (mAppletMenuUninstallPackagesList != null)
            mAppletMenuUninstallPackagesList.clear();
        mAppletMenuUninstallPackagesList = null;
        if (mAppletMenuInstalledPackageList != null)
            mAppletMenuInstalledPackageList.clear();
        mAppletMenuInstalledPackageList = null;
        mAppletMenuInstrTitleDivider = null;
        mAppletMenuInstructionText = null;
        mPopupWindow = null;
    }

    protected void onResume()
    {
        super.onResume();
        getInstalledAppDetails();
        updateAppletMenuListView();
        if (isAppletMenuPrefUpdated || mAppletMenuPref == null)
            break MISSING_BLOCK_LABEL_65;
        android.content.SharedPreferences.Editor editor = mAppletMenuPref.edit();
        editor.putString("applet_menu_app_details", ObjectSerializer.serialize(mAppletMenuInstalledPackageList));
        editor.commit();
        isAppletMenuPrefUpdated = true;
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    public void processPopUpItemClick(String s)
    {
        getPopUpWindow().dismiss();
        if (s.equalsIgnoreCase(getResources().getString(0x7f0a0131)))
            finish();
    }

    public void refreshAppletMenuList()
    {
        if (mAppletMenuListAdapter != null)
            mAppletMenuListAdapter.notifyDataSetChanged();
        getAppletMenuListView().invalidateViews();
    }








}

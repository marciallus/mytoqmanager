// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.UserSettingsController;
import com.qualcomm.toq.smartwatch.ui.adapter.IconStyleGridViewAdapter;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;

public class IconStyleActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{

    private static final String TAG = "IconStyleActivity";
    private String DEFAULT_ICON_STYLE;
    private android.widget.AdapterView.OnItemClickListener gridViewItemClickListener;
    private android.view.View.OnClickListener iconStyleAcceptListener;
    private Integer mIconImageDrawables[];
    private IconStyleGridViewAdapter mIconStyleAdapter;
    private GridView mIconStyleGridView;
    private LinearLayout mIconStyleLayout;
    private LinearLayout mMenuButtonLayout;
    private PopupWindow mPopUpWindow;
    private String mSelectedIconStyle;
    private android.view.View.OnClickListener menuButtonListener;

    public IconStyleActivity()
    {
        DEFAULT_ICON_STYLE = "Optima";
        menuButtonListener = new android.view.View.OnClickListener() {

            final IconStyleActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f06000e);
                    mPopUpWindow = (new PopUpWindowUtils(IconStyleActivity.this)).getPopUpWindow(as, IconStyleActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = IconStyleActivity.this;
                super();
            }
        }
;
        iconStyleAcceptListener = new android.view.View.OnClickListener() {

            final IconStyleActivity this$0;

            public void onClick(View view)
            {
                initiateDoneChanges();
            }

            
            {
                this$0 = IconStyleActivity.this;
                super();
            }
        }
;
        gridViewItemClickListener = new android.widget.AdapterView.OnItemClickListener() {

            final IconStyleActivity this$0;

            private void deSelectPreviousSelectedIcon(int i)
            {
                View view = mIconStyleGridView.getChildAt(i);
                if (view != null)
                    ((ImageView)view.findViewById(0x7f0901c9)).setImageResource(0x7f02013c);
            }

            private int retreiveIndexOfPreviousSelection(String s)
            {
                for (int i = 0; i < Constants.iconImagesText.length; i++)
                    if (s.equals(Constants.iconImagesText[i]))
                        return i;

                return -1;
            }

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
label0:
                {
                    ((ImageView)view.findViewById(0x7f0901c9)).setImageResource(0x7f020118);
                    String s = Constants.iconImagesText[i];
                    if (!s.equals(mSelectedIconStyle))
                    {
                        int j = retreiveIndexOfPreviousSelection(mSelectedIconStyle);
                        Log.d("IconStyleActivity", (new StringBuilder()).append("Previous Selected Icon ").append(mSelectedIconStyle).append(" Position :: ").append(j).toString());
                        if (j == -1)
                            break label0;
                        deSelectPreviousSelectedIcon(j);
                        mSelectedIconStyle = s;
                        Log.d("IconStyleActivity", (new StringBuilder()).append("Current Selected Icon ").append(mSelectedIconStyle).toString());
                    }
                    return;
                }
                Log.d("IconStyleActivity", (new StringBuilder()).append("Invalid Icon position retreived for prev selected Icon ").append(mSelectedIconStyle).toString());
            }

            
            {
                this$0 = IconStyleActivity.this;
                super();
            }
        }
;
    }

    private void initialise()
    {
        mIconStyleGridView = (GridView)findViewById(0x7f0901c7);
        mIconStyleLayout = (LinearLayout)findViewById(0x7f0901c1);
        mMenuButtonLayout = (LinearLayout)findViewById(0x7f0901c4);
        Integer ainteger[] = new Integer[6];
        ainteger[0] = Integer.valueOf(0x7f0200e1);
        ainteger[1] = Integer.valueOf(0x7f0200e0);
        ainteger[2] = Integer.valueOf(0x7f0200e2);
        ainteger[3] = Integer.valueOf(0x7f0200e3);
        ainteger[4] = Integer.valueOf(0x7f0200de);
        ainteger[5] = Integer.valueOf(0x7f0200df);
        mIconImageDrawables = ainteger;
        PhubPreference phubpreference = PhubPreference.getPhubPreference(this);
        if (phubpreference != null)
            mSelectedIconStyle = phubpreference.getString("icon_theme_key_v1", DEFAULT_ICON_STYLE);
        if (mIconImageDrawables != null && mIconImageDrawables.length != 0 && mSelectedIconStyle != null)
        {
            mIconStyleAdapter = new IconStyleGridViewAdapter(ToqApplication.getAppContext(), mIconImageDrawables, Constants.iconImagesText);
            mIconStyleAdapter.setSelectedIconStyle(mSelectedIconStyle);
        }
    }

    private void initiateDoneChanges()
    {
        PhubPreference phubpreference = PhubPreference.getPhubPreference(this);
        String s = null;
        if (phubpreference != null)
        {
            s = phubpreference.getString("icon_theme_key_v1", DEFAULT_ICON_STYLE);
            phubpreference.putString("icon_theme_key_v1", mSelectedIconStyle);
            Log.d("IconStyleActivity", (new StringBuilder()).append("Updating Icon Style in Preference:  ").append(mSelectedIconStyle).toString());
            if (UserSettingsController.getUserSettingsController() != null)
            {
                Log.d("IconStyleActivity", "storeUpdateUserSettingsToFile() called from IconStyleActivity");
                UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
            }
        }
        if (s != null && !s.equals(mSelectedIconStyle))
            Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        finish();
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

    public void onBackPressed()
    {
        super.onBackPressed();
        initiateDoneChanges();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030030);
        initialise();
        if (mIconStyleGridView != null && mIconStyleAdapter != null)
            mIconStyleGridView.setAdapter(mIconStyleAdapter);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f0900eb));
        System.gc();
    }

    protected void onResume()
    {
        super.onResume();
        if (mIconStyleLayout != null)
            mIconStyleLayout.setOnClickListener(iconStyleAcceptListener);
        if (mMenuButtonLayout != null)
            mMenuButtonLayout.setOnClickListener(menuButtonListener);
        if (mIconStyleAdapter != null)
        {
            mIconStyleAdapter.setSelectedIconStyle(mSelectedIconStyle);
            mIconStyleAdapter.notifyDataSetChanged();
        }
        if (mIconStyleGridView != null)
        {
            mIconStyleGridView.setOnItemClickListener(gridViewItemClickListener);
            mIconStyleGridView.invalidateViews();
        }
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("IconStyleActivity", "IconStyleActivity is started");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("IconStyleActivity", "IconStyleActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
    }



/*
    static PopupWindow access$002(IconStyleActivity iconstyleactivity, PopupWindow popupwindow)
    {
        iconstyleactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/




/*
    static String access$202(IconStyleActivity iconstyleactivity, String s)
    {
        iconstyleactivity.mSelectedIconStyle = s;
        return s;
    }

*/

}

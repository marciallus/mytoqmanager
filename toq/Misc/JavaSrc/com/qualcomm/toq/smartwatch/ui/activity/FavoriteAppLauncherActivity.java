// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.FavoriteAppsController;
import com.qualcomm.toq.smartwatch.ui.adapter.AppletGridViewAdapter;
import com.qualcomm.toq.smartwatch.ui.adapter.ScreenSlidePagerAdapter;
import com.qualcomm.toq.smartwatch.utils.AppletInfo;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IllegalFormatException;

public class FavoriteAppLauncherActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{

    private static final int NUM_PAGES = 7;
    public static final String TAG = "FavoriteAppLauncherActivity";
    private ArrayList carouselViewsAppInfoList;
    private android.view.View.OnClickListener deleteIconListener;
    private Dialog dialog;
    private android.view.View.OnClickListener favAppAcceptListener;
    private android.view.View.OnClickListener favAppDialogListener;
    private int gridItemIndicatorPosition;
    private android.widget.AdapterView.OnItemClickListener gridViewListener;
    private boolean isFavAppletPageScrolled;
    private GridView mAppletGridView;
    private Context mContext;
    private ImageView mDeleteIconImageView;
    private LinearLayout mDeleteIconLayout;
    private Button mDialogAcceptButton;
    private Button mDialogDeclineButton;
    private DisplayMetrics mDisplayMetrics;
    private LinearLayout mFavAppAcceptLayout;
    private AppletGridViewAdapter mGridViewAdapter;
    private int mHomeAppPosition;
    private int mHomePosOnLaunch;
    private LinearLayout mOverFlowMenuLayout;
    private ViewPager mPager;
    private ScreenSlidePagerAdapter mPagerAdapter;
    private PopupWindow mPopUpWindow;
    private android.view.View.OnClickListener overFlowMenuListener;
    private ArrayList paginationImageList;
    private ArrayList selectionList;
    private Toast toast;
    private View toastView;
    private android.support.v4.view.ViewPager.OnPageChangeListener viewPagerListener;

    public FavoriteAppLauncherActivity()
    {
        toast = null;
        mAppletGridView = null;
        mDeleteIconImageView = null;
        mDeleteIconLayout = null;
        mOverFlowMenuLayout = null;
        mHomeAppPosition = 5;
        mHomePosOnLaunch = 5;
        isFavAppletPageScrolled = false;
        deleteIconListener = new android.view.View.OnClickListener() {

            final FavoriteAppLauncherActivity this$0;

            public void onClick(View view)
            {
                removeApplet();
            }

            
            {
                this$0 = FavoriteAppLauncherActivity.this;
                super();
            }
        }
;
        gridViewListener = new android.widget.AdapterView.OnItemClickListener() {

            final FavoriteAppLauncherActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("Clicked").append(i).toString());
                if (mPagerAdapter != null && mPager != null && ((RelativeLayout)mPagerAdapter.getCarouselViewList().get(1 + mPager.getCurrentItem())).getTag() != null)
                {
                    int j = ((Integer)((RelativeLayout)mPagerAdapter.getCarouselViewList().get(1 + mPager.getCurrentItem())).getTag()).intValue();
                    int k = Constants.appletImageNames.length;
                    if (j == i || j >= k)
                        break MISSING_BLOCK_LABEL_268;
                    if (j >= 0)
                    {
                        View view1 = adapterview.getChildAt(j);
                        setSelection(8, view1, j);
                    }
                }
                setSelection(0, view, i);
                removeIndicatorFrom(gridItemIndicatorPosition);
                gridItemIndicatorPosition = i;
                loadViewToCarousel(i);
                if (mGridViewAdapter == null)
                    break MISSING_BLOCK_LABEL_268;
                String s = ToqApplication.getAppContext().getResources().getString(0x7f0a00fd);
                Object aobj[] = new Object[1];
                aobj[0] = Utils.getFavouriteAppLocalName(mGridViewAdapter.getAppletNameAt(i));
                String s1 = String.format(s, aobj);
                showCustomToast(s1);
                return;
                IllegalFormatException illegalformatexception;
                illegalformatexception;
                illegalformatexception.printStackTrace();
                return;
                Exception exception;
                exception;
                exception.printStackTrace();
                return;
            }

            
            {
                this$0 = FavoriteAppLauncherActivity.this;
                super();
            }
        }
;
        overFlowMenuListener = new android.view.View.OnClickListener() {

            final FavoriteAppLauncherActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow != null && mPopUpWindow.isShowing())
                    mPopUpWindow.dismiss();
                else
                if (mPager != null && mPagerAdapter != null && !isFavAppletPageScrolled && ((RelativeLayout)mPagerAdapter.getCarouselViewList().get(1 + mPager.getCurrentItem())).getTag() != null)
                {
                    if (((Integer)((RelativeLayout)mPagerAdapter.getCarouselViewList().get(1 + mPager.getCurrentItem())).getTag()).intValue() != -1)
                    {
                        if (1 + mPager.getCurrentItem() == mHomeAppPosition)
                        {
                            String as2[] = getResources().getStringArray(0x7f06000b);
                            mPopUpWindow = (new PopUpWindowUtils(FavoriteAppLauncherActivity.this)).getPopUpWindow(as2, FavoriteAppLauncherActivity.this);
                        } else
                        {
                            String as1[] = getResources().getStringArray(0x7f060009);
                            mPopUpWindow = (new PopUpWindowUtils(FavoriteAppLauncherActivity.this)).getPopUpWindow(as1, FavoriteAppLauncherActivity.this);
                        }
                    } else
                    {
                        String as[] = getResources().getStringArray(0x7f06000b);
                        mPopUpWindow = (new PopUpWindowUtils(FavoriteAppLauncherActivity.this)).getPopUpWindow(as, FavoriteAppLauncherActivity.this);
                    }
                    if (mPopUpWindow != null)
                    {
                        mPopUpWindow.showAsDropDown(view, 0, 2);
                        return;
                    }
                }
            }

            
            {
                this$0 = FavoriteAppLauncherActivity.this;
                super();
            }
        }
;
        viewPagerListener = new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final FavoriteAppLauncherActivity this$0;

            public void onPageScrollStateChanged(int i)
            {
                Log.d("FavoriteAppLauncherActivity", (new StringBuilder()).append(" View pager scroll state --> ").append(i).toString());
                if (i == 1)
                {
                    if (mPopUpWindow != null && mPopUpWindow.isShowing())
                        mPopUpWindow.dismiss();
                    isFavAppletPageScrolled = true;
                    return;
                } else
                {
                    isFavAppletPageScrolled = false;
                    return;
                }
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("On Page Selected ").append(i).toString());
                if (i >= 5)
                {
                    if (mPager != null)
                        mPager.setCurrentItem(4);
                } else
                {
                    TextView textview = (TextView)findViewById(0x7f0901ac);
                    if (paginationImageList != null)
                    {
                        for (int k = 0; k < paginationImageList.size(); k++)
                        {
                            if (k != i)
                            {
                                if (k != -1 + mHomeAppPosition)
                                    ((ImageView)paginationImageList.get(k)).setImageResource(0x7f0200f5);
                                else
                                    ((ImageView)paginationImageList.get(k)).setImageResource(0x7f0200f3);
                                continue;
                            }
                            if (k != -1 + mHomeAppPosition)
                                ((ImageView)paginationImageList.get(k)).setImageResource(0x7f0200f6);
                            else
                                ((ImageView)paginationImageList.get(k)).setImageResource(0x7f0200f4);
                        }

                    }
                    removeIndicatorFrom(gridItemIndicatorPosition);
                    if (i >= 4)
                    {
                        if (textview != null)
                            textview.setVisibility(0);
                        if (mAppletGridView != null)
                            mAppletGridView.setEnabled(false);
                        deActivateDeleteIcon();
                    } else
                    {
                        if (textview != null && textview.getVisibility() != 8)
                        {
                            textview.setVisibility(8);
                            if (mAppletGridView != null)
                                mAppletGridView.setEnabled(true);
                        }
                        if (mPagerAdapter != null && ((RelativeLayout)mPagerAdapter.getCarouselViewList().get(i + 1)).getTag() != null)
                            if (((Integer)((RelativeLayout)mPagerAdapter.getCarouselViewList().get(i + 1)).getTag()).intValue() != -1)
                                enableDeleteIcon();
                            else
                                deActivateDeleteIcon();
                    }
                    if (mPagerAdapter != null && mAppletGridView != null && ((RelativeLayout)mPagerAdapter.getCarouselViewList().get(i + 1)).getTag() != null)
                    {
                        gridItemIndicatorPosition = ((Integer)((RelativeLayout)mPagerAdapter.getCarouselViewList().get(i + 1)).getTag()).intValue();
                        int j = Constants.appletImageNames.length;
                        if (gridItemIndicatorPosition >= 0 && gridItemIndicatorPosition < j)
                        {
                            updateSelectionBackground(gridItemIndicatorPosition, true);
                            return;
                        }
                    }
                }
            }

            
            {
                this$0 = FavoriteAppLauncherActivity.this;
                super();
            }
        }
;
        favAppAcceptListener = new android.view.View.OnClickListener() {

            final FavoriteAppLauncherActivity this$0;

            public void onClick(View view)
            {
                initiateDoneChangesForFavouriteApps();
            }

            
            {
                this$0 = FavoriteAppLauncherActivity.this;
                super();
            }
        }
;
        favAppDialogListener = new android.view.View.OnClickListener() {

            final FavoriteAppLauncherActivity this$0;

            public void onClick(View view)
            {
                SharedPreferences sharedpreferences;
                switch (view.getId())
                {
                default:
                    return;

                case 2131296522: 
                    if (dialog != null)
                        dialog.dismiss();
                    finish();
                    return;

                case 2131296523: 
                    sharedpreferences = mContext.getSharedPreferences("favorite_apps_pref", 0);
                    break;
                }
                if (carouselViewsAppInfoList != null && mHomeAppPosition <= carouselViewsAppInfoList.size())
                    ((AppletInfo)carouselViewsAppInfoList.get(-1 + mHomeAppPosition)).setHomeTitle(true);
                Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append("ArrayList =").append(carouselViewsAppInfoList).toString());
                if (sharedpreferences == null)
                    break MISSING_BLOCK_LABEL_218;
                if (sharedpreferences.getString("favorite_apps_types", ObjectSerializer.serialize(new ArrayList())) != null)
                {
                    android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                    editor.putString("favorite_apps_types", ObjectSerializer.serialize(carouselViewsAppInfoList));
                    editor.commit();
                }
                updateFavoriteApps();
                if (dialog != null)
                    dialog.dismiss();
                if (mContext != null)
                    Toast.makeText(mContext, ToqApplication.getAppContext().getResources().getString(0x7f0a00fe), 1).show();
                finish();
                return;
                Exception exception;
                exception;
                Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append("Exception").append(exception).toString());
                exception.printStackTrace();
                return;
            }

            
            {
                this$0 = FavoriteAppLauncherActivity.this;
                super();
            }
        }
;
    }

    private void createInitialViews()
    {
        SharedPreferences sharedpreferences = handleAppletDeletion(mContext.getSharedPreferences("favorite_apps_pref", 0));
        ArrayList arraylist = null;
        int i;
        if (sharedpreferences != null)
            try
            {
                arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("favorite_apps_types", ObjectSerializer.serialize(new ArrayList())));
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                arraylist = null;
            }
        i = 0;
        do
        {
            if (i < 7)
            {
                if (i == 5)
                {
                    RelativeLayout relativelayout4 = (RelativeLayout)getLayoutInflater().inflate(0x7f030012, null);
                    if (relativelayout4 != null)
                    {
                        relativelayout4.setBackgroundColor(getResources().getColor(0x7f070017));
                        relativelayout4.setTag(Integer.valueOf(50));
                    }
                    if (mPagerAdapter != null)
                        mPagerAdapter.addInitialViews(relativelayout4);
                } else
                if (i > 5 || i == 0)
                {
                    RelativeLayout relativelayout = getCarouselView();
                    if (relativelayout != null)
                        relativelayout.setBackgroundColor(Color.parseColor("#2F3234"));
                    if (mPagerAdapter != null)
                        mPagerAdapter.addInitialViews(relativelayout);
                } else
                if (arraylist != null)
                    if (arraylist.isEmpty())
                    {
                        RelativeLayout relativelayout3 = getCarouselNoAppletView();
                        if (relativelayout3 != null)
                            relativelayout3.setTag(Integer.valueOf(-1));
                        if (mPagerAdapter != null)
                            mPagerAdapter.addInitialViews(relativelayout3);
                        AppletInfo appletinfo1 = new AppletInfo();
                        appletinfo1.setTagIndex(-1);
                        appletinfo1.setHomeTitle(false);
                        if (carouselViewsAppInfoList != null)
                            carouselViewsAppInfoList.add(appletinfo1);
                        deActivateDeleteIcon();
                        Log.d("FavoriteAppLauncherActivity", (new StringBuilder()).append("View No Applet View ").append(i).toString());
                    } else
                    {
                        Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("ArrayList retrieved =").append(arraylist).toString());
                        int j = 0;
                        if (arraylist != null)
                            j = ((AppletInfo)arraylist.get(i - 1)).getTagIndex();
                        Log.d("FavoriteAppLauncherActivity", (new StringBuilder()).append(j).append(" at pos ").append(i).toString());
                        AppletInfo appletinfo;
                        if (j >= 0)
                        {
                            RelativeLayout relativelayout2 = getCarouselView();
                            ImageView imageview = (ImageView)relativelayout2.findViewById(0x7f0900a4);
                            if (imageview != null)
                                imageview.setImageResource(mGridViewAdapter.getAppletImageAt(j));
                            if (relativelayout2 != null)
                                relativelayout2.setTag(Integer.valueOf(j));
                            if (mPagerAdapter != null)
                                mPagerAdapter.addInitialViews(relativelayout2);
                            if (i == 4)
                            {
                                enableDeleteIcon();
                                gridItemIndicatorPosition = j;
                            }
                        } else
                        {
                            if (i == 4)
                                deActivateDeleteIcon();
                            RelativeLayout relativelayout1 = getCarouselNoAppletView();
                            if (relativelayout1 != null)
                                relativelayout1.setTag(Integer.valueOf(-1));
                            if (mPagerAdapter != null)
                                mPagerAdapter.addInitialViews(relativelayout1);
                            Log.d("FavoriteAppLauncherActivity", (new StringBuilder()).append("View No Applet View 2").append(i).toString());
                        }
                        if (((AppletInfo)arraylist.get(i - 1)).isHomeTitle())
                        {
                            mHomeAppPosition = i;
                            mHomePosOnLaunch = i;
                            Log.d("FavoriteAppLauncherActivity", (new StringBuilder()).append("Home =").append(i).toString());
                        }
                        appletinfo = new AppletInfo();
                        appletinfo.setTagIndex(j);
                        appletinfo.setHomeTitle(false);
                        if (carouselViewsAppInfoList != null)
                            carouselViewsAppInfoList.add(appletinfo);
                    }
            } else
            {
                Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("ArrayList=").append(mPagerAdapter.getCarouselViewList()).toString());
                Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("ArrayList TagList=").append(carouselViewsAppInfoList).toString());
                return;
            }
            i++;
        } while (true);
    }

    private void deActivateDeleteIcon()
    {
        if (mDeleteIconImageView != null)
            mDeleteIconImageView.setImageResource(0x7f02000d);
    }

    private void enableDeleteIcon()
    {
        if (mDeleteIconImageView != null)
            mDeleteIconImageView.setImageResource(0x7f020001);
    }

    private RelativeLayout getCarouselNoAppletView()
    {
        return (RelativeLayout)getLayoutInflater().inflate(0x7f030017, null);
    }

    private RelativeLayout getCarouselView()
    {
        RelativeLayout relativelayout = (RelativeLayout)getLayoutInflater().inflate(0x7f030018, null);
        if (relativelayout != null)
            relativelayout.setBackgroundColor(getResources().getColor(0x7f070012));
        return relativelayout;
    }

    private View getToastView()
    {
        if (toastView == null)
            toastView = getLayoutInflater().inflate(0x7f03001e, (ViewGroup)findViewById(0x7f09010e));
        return toastView;
    }

    private SharedPreferences handleAppletDeletion(SharedPreferences sharedpreferences)
    {
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        ArrayList arraylist;
        int i;
        int j;
        try
        {
            arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("favorite_apps_types", ObjectSerializer.serialize(new ArrayList())));
        }
        catch (Exception exception)
        {
            Log.e("FavoriteAppLauncherActivity", "Exception");
            exception.printStackTrace();
            return sharedpreferences;
        }
        if (arraylist == null) goto _L2; else goto _L3
_L3:
        i = 0;
_L10:
        if (i >= arraylist.size()) goto _L2; else goto _L4
_L4:
        if (((AppletInfo)arraylist.get(i)).getTagIndex() < Constants.appletImageNames.length) goto _L6; else goto _L5
_L5:
        Log.e("FavoriteAppLauncherActivity", "Version Mismatch..Clearing the preference");
        j = 0;
_L8:
        if (j >= arraylist.size())
            break; /* Loop/switch isn't completed */
        ((AppletInfo)arraylist.get(j)).setTagIndex(-1);
        ((AppletInfo)arraylist.get(j)).setHomeTitle(false);
        j++;
        if (true) goto _L8; else goto _L7
_L7:
        editor.putString("favorite_apps_types", ObjectSerializer.serialize(arraylist));
        editor.commit();
_L2:
        return sharedpreferences;
_L6:
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private void initializeAdapters()
    {
        mPagerAdapter = new ScreenSlidePagerAdapter();
        mGridViewAdapter = new AppletGridViewAdapter(mContext);
    }

    private void initializeSelectionList()
    {
        selectionList = new ArrayList();
        if (carouselViewsAppInfoList != null)
        {
            int i = carouselViewsAppInfoList.size();
            for (int j = 0; j < i; j++)
                selectionList.add(Integer.valueOf(((AppletInfo)carouselViewsAppInfoList.get(j)).getTagIndex()));

            if (((AppletInfo)carouselViewsAppInfoList.get(3)).getTagIndex() != -1)
            {
                mGridViewAdapter.setBacgroundImageIndex(((AppletInfo)carouselViewsAppInfoList.get(3)).getTagIndex());
                return;
            }
        }
    }

    private void initializeUI()
    {
        mDisplayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        dialog = null;
        paginationImageList = new ArrayList();
        carouselViewsAppInfoList = new ArrayList();
        mPager = (ViewPager)findViewById(0x7f0901a2);
        mAppletGridView = (GridView)findViewById(0x7f0901ab);
        mDeleteIconImageView = (ImageView)findViewById(0x7f09019f);
        mDeleteIconLayout = (LinearLayout)findViewById(0x7f09019e);
        mOverFlowMenuLayout = (LinearLayout)findViewById(0x7f09019c);
        mFavAppAcceptLayout = (LinearLayout)findViewById(0x7f090199);
    }

    private void initiateDoneChangesForFavouriteApps()
    {
        SharedPreferences sharedpreferences;
        boolean flag;
        boolean flag1;
        sharedpreferences = mContext.getSharedPreferences("favorite_apps_pref", 0);
        Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("Home=").append(mHomeAppPosition).toString());
        flag = false;
        flag1 = false;
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("favorite_apps_types", ObjectSerializer.serialize(new ArrayList())));
        flag = false;
        flag1 = false;
        if (arraylist == null) goto _L2; else goto _L3
_L3:
        ArrayList arraylist1 = carouselViewsAppInfoList;
        flag = false;
        flag1 = false;
        if (arraylist1 == null) goto _L2; else goto _L4
_L4:
        boolean flag2 = arraylist.isEmpty();
        flag = false;
        flag1 = false;
        if (flag2)
            break MISSING_BLOCK_LABEL_616;
        ArrayList arraylist2;
        ArrayList arraylist3;
        arraylist2 = new ArrayList();
        arraylist3 = new ArrayList();
        int i = 0;
_L18:
        int j = carouselViewsAppInfoList.size();
        flag = false;
        flag1 = false;
        if (i >= j) goto _L6; else goto _L5
_L5:
        int k = arraylist.size();
        flag = false;
        flag1 = false;
        if (k <= i)
            break MISSING_BLOCK_LABEL_210;
        int l = ((AppletInfo)arraylist.get(i)).getTagIndex();
        flag = false;
        flag1 = false;
        if (l == -1)
            break MISSING_BLOCK_LABEL_210;
        arraylist2.add(arraylist.get(i));
        int i1 = ((AppletInfo)carouselViewsAppInfoList.get(i)).getTagIndex();
        flag = false;
        flag1 = false;
        if (i1 == -1) goto _L8; else goto _L7
_L7:
        arraylist3.add(carouselViewsAppInfoList.get(i));
          goto _L8
_L6:
        if (arraylist2.size() == arraylist3.size()) goto _L10; else goto _L9
_L9:
        flag = true;
_L16:
        int j1;
        int k1;
        j1 = mHomePosOnLaunch;
        k1 = mHomeAppPosition;
        if (j1 != k1)
            flag = true;
          goto _L2
_L10:
        int l1 = 0;
_L19:
        i2 = arraylist2.size();
        flag1 = false;
        flag = false;
        if (l1 >= i2) goto _L12; else goto _L11
_L11:
        if (((AppletInfo)arraylist2.get(l1)).getTagIndex() == ((AppletInfo)arraylist3.get(l1)).getTagIndex()) goto _L14; else goto _L13
_L13:
        flag = true;
          goto _L12
_L17:
        k2 = carouselViewsAppInfoList.size();
        flag = false;
        flag1 = false;
        int j2;
        if (j2 >= k2) goto _L16; else goto _L15
_L15:
        l2 = ((AppletInfo)carouselViewsAppInfoList.get(j2)).getTagIndex();
label0:
        {
            if (l2 == -1)
                break label0;
            flag = true;
            flag1 = false;
        }
          goto _L16
        j2++;
          goto _L17
        exception;
        Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append("Exception in initiateDoneChanges :").append(exception).toString());
        exception.printStackTrace();
_L2:
        Exception exception;
        int i2;
        int k2;
        int l2;
        if (flag)
        {
            showFavAppExitDialog();
            return;
        }
        if (!flag1)
            break MISSING_BLOCK_LABEL_578;
        if (carouselViewsAppInfoList != null && mHomeAppPosition <= carouselViewsAppInfoList.size())
            ((AppletInfo)carouselViewsAppInfoList.get(-1 + mHomeAppPosition)).setHomeTitle(true);
        Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append("ArrayList =").append(carouselViewsAppInfoList).toString());
        if (sharedpreferences != null)
            try
            {
                if (sharedpreferences.getString("favorite_apps_types", ObjectSerializer.serialize(new ArrayList())) != null)
                {
                    android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                    editor.putString("favorite_apps_types", ObjectSerializer.serialize(carouselViewsAppInfoList));
                    editor.commit();
                }
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        finish();
        return;
_L8:
        i++;
          goto _L18
_L12:
        flag1 = false;
        if (!flag)
            flag1 = true;
          goto _L16
_L14:
        l1++;
          goto _L19
        j2 = 0;
          goto _L17
    }

    private void loadPaginationViews()
    {
label0:
        {
            if (paginationImageList != null)
            {
                paginationImageList.add((ImageView)findViewById(0x7f0901a4));
                paginationImageList.add((ImageView)findViewById(0x7f0901a5));
                paginationImageList.add((ImageView)findViewById(0x7f0901a6));
                paginationImageList.add((ImageView)findViewById(0x7f0901a7));
                paginationImageList.add((ImageView)findViewById(0x7f0901a8));
                if (mHomeAppPosition == 4)
                    break label0;
                ((ImageView)paginationImageList.get(3)).setImageResource(0x7f0200f6);
                ((ImageView)paginationImageList.get(-1 + mHomeAppPosition)).setImageResource(0x7f0200f3);
            }
            return;
        }
        ((ImageView)paginationImageList.get(3)).setImageResource(0x7f0200f4);
    }

    private void loadViewToCarousel(int i)
    {
        RelativeLayout relativelayout;
        relativelayout = getCarouselView();
        ImageView imageview = (ImageView)relativelayout.findViewById(0x7f0900a4);
        if (imageview != null)
            imageview.setImageResource(mGridViewAdapter.getAppletImageAt(i));
        if (relativelayout != null)
            relativelayout.setTag(Integer.valueOf(i));
        if (mPagerAdapter == null || carouselViewsAppInfoList == null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L8:
        if (j >= 5) goto _L4; else goto _L3
_L3:
        Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("tag at list pos  ").append(j).append(" = ").append(((RelativeLayout)mPagerAdapter.getCarouselViewList().get(j)).getTag()).toString());
        if (((RelativeLayout)mPagerAdapter.getCarouselViewList().get(j)).getTag() == null || ((Integer)((RelativeLayout)mPagerAdapter.getCarouselViewList().get(j)).getTag()).intValue() != i) goto _L6; else goto _L5
_L5:
        Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("Position match at").append(i).toString());
        RelativeLayout relativelayout1 = getCarouselNoAppletView();
        relativelayout1.setTag(Integer.valueOf(-1));
        mPagerAdapter.addViews(relativelayout1, j);
        ((AppletInfo)carouselViewsAppInfoList.get(j - 1)).setTagIndex(-1);
        selectionList.remove(j - 1);
        selectionList.add(j - 1, Integer.valueOf(-1));
        if (j == mHomeAppPosition)
            setAppLauncherAsHome(false);
_L4:
        mPagerAdapter.addViews(relativelayout, 1 + mPager.getCurrentItem());
        ((AppletInfo)carouselViewsAppInfoList.get(mPager.getCurrentItem())).setTagIndex(i);
        selectionList.remove(mPager.getCurrentItem());
        selectionList.add(mPager.getCurrentItem(), Integer.valueOf(i));
        updateSelectionBackground(i, true);
_L2:
        enableDeleteIcon();
        Log.i("FavoriteAppLauncherActivity", (new StringBuilder()).append("Tag ArrayList = ").append(carouselViewsAppInfoList).toString());
        return;
_L6:
        j++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void removeApplet()
    {
label0:
        {
            ViewPager viewpager = mPager;
            int i = 0;
            if (viewpager != null)
                i = 1 + mPager.getCurrentItem();
            if (mPagerAdapter != null && mAppletGridView != null && carouselViewsAppInfoList != null && i < -2 + mPagerAdapter.getCarouselViewList().size())
            {
                if (((RelativeLayout)mPagerAdapter.getCarouselViewList().get(i)).getTag() != null)
                {
                    int j = ((Integer)((RelativeLayout)mPagerAdapter.getCarouselViewList().get(i)).getTag()).intValue();
                    int k = Constants.appletImageNames.length;
                    if (j < 0 || j >= k)
                        break label0;
                    updateSelectionList(i - 1, false);
                    removeIndicatorFrom(j);
                    deActivateDeleteIcon();
                }
                RelativeLayout relativelayout = getCarouselNoAppletView();
                relativelayout.setTag(Integer.valueOf(-1));
                mPagerAdapter.addViews(relativelayout, i);
                ((AppletInfo)carouselViewsAppInfoList.get(i - 1)).setTagIndex(-1);
                if (i == mHomeAppPosition)
                {
                    setAppLauncherAsHome(true);
                    return;
                }
            }
            return;
        }
        Log.i("FavoriteAppLauncherActivity", "Empty Applet.No need to delete");
    }

    private void removeIndicatorFrom(int i)
    {
        updateSelectionBackground(i, false);
    }

    private void setAppLauncherAsHome(boolean flag)
    {
        if (paginationImageList != null)
        {
            if (flag)
                ((ImageView)paginationImageList.get(-1 + mHomeAppPosition)).setImageResource(0x7f0200f6);
            else
                ((ImageView)paginationImageList.get(-1 + mHomeAppPosition)).setImageResource(0x7f0200f5);
            mHomeAppPosition = 5;
            ((ImageView)paginationImageList.get(-1 + mHomeAppPosition)).setImageResource(0x7f0200f3);
        }
    }

    private void setSelection(int i, View view, int j)
    {
        boolean flag;
        if (i == 0)
            flag = true;
        else
            flag = false;
        updateSelectionList(j, flag);
    }

    private void showCustomToast(String s)
    {
        if (toast == null)
        {
            toast = new Toast(mContext);
            toast.setGravity(16, 0, -20);
            toast.setDuration(0);
            toast.setView(getToastView());
        }
        ((TextView)getToastView().findViewById(0x7f09010f)).setText(s);
        if (toast != null)
            toast.show();
    }

    private void showFavAppExitDialog()
    {
        if (toast != null)
            toast.cancel();
        if (dialog == null)
        {
            dialog = new Dialog(this);
            dialog.getWindow().requestFeature(1);
            LinearLayout linearlayout = (LinearLayout)getLayoutInflater().inflate(0x7f03001c, null);
            linearlayout.setBackgroundColor(getResources().getColor(0x7f070012));
            dialog.setContentView(linearlayout);
            dialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            mDialogAcceptButton = (Button)dialog.findViewById(0x7f09010b);
            mDialogAcceptButton.setBackgroundResource(0x7f02009d);
            mDialogDeclineButton = (Button)dialog.findViewById(0x7f09010a);
            mDialogDeclineButton.setBackgroundResource(0x7f02009d);
            if (ToqData.getInstance().getRegularTypeFace() != null)
            {
                mDialogAcceptButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
                mDialogDeclineButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
            }
            mDialogAcceptButton.setOnClickListener(favAppDialogListener);
            mDialogDeclineButton.setOnClickListener(favAppDialogListener);
        }
        if (dialog != null)
            dialog.show();
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

    private void updateFavoriteApps()
    {
        if (FavoriteAppsController.getFavoriteAppsController() != null)
        {
            Log.d("FavoriteAppLauncherActivity", "storeUpdateFavoriteAppsToFile() called from FavoriteAppLauncherActivity");
            FavoriteAppsController.getFavoriteAppsController().sendFavoriteAppListToWD(mContext);
        }
    }

    private void updateSelectionBackground(int i, boolean flag)
    {
        Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append(" UpdateSelectionBackground  index=").append(i).toString());
        if (flag)
            mGridViewAdapter.setBacgroundImageIndex(i);
        else
            mGridViewAdapter.setBacgroundImageIndex(-1);
        mGridViewAdapter.notifyDataSetChanged();
    }

    private void updateSelectionList(int i, boolean flag)
    {
        Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append(" UpdateSelectionList index=").append(i).append("isSelected =").append(flag).toString());
        for (int j = 0; j < selectionList.size(); j++)
            Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append(" Before selectionList i=").append(j).append(" val=").append(selectionList.get(j)).toString());

        if (mPager == null)
        {
            Log.e("FavoriteAppLauncherActivity", " UpdateSelectionList mPager= null");
        } else
        {
            int k = mPager.getCurrentItem();
            Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append(" UpdateSelectionList mPager.getCurrentItem()=").append(mPager.getCurrentItem()).toString());
            if (k >= 0 && k < selectionList.size())
            {
                if (flag)
                {
                    selectionList.remove(k);
                    selectionList.add(k, Integer.valueOf(i));
                } else
                {
                    selectionList.remove(k);
                    selectionList.add(k, Integer.valueOf(-1));
                }
                mGridViewAdapter.setSelictionList(selectionList);
                mGridViewAdapter.notifyDataSetChanged();
            } else
            {
                Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append(" UpdateSelectionList invalid index=").append(k).toString());
            }
            for (int l = 0; l < selectionList.size(); l++)
                Log.e("FavoriteAppLauncherActivity", (new StringBuilder()).append(" After selectionList i=").append(l).append(" val=").append(selectionList.get(l)).toString());

        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f03002a);
        mContext = getApplicationContext();
        initializeUI();
        initializeAdapters();
        createInitialViews();
        initializeSelectionList();
        if (mGridViewAdapter != null)
        {
            mGridViewAdapter.setCarouselViewsAppInfoList(carouselViewsAppInfoList);
            mGridViewAdapter.setSelictionList(selectionList);
        }
        if (mAppletGridView != null)
            mAppletGridView.setAdapter(mGridViewAdapter);
        if (mPager != null)
        {
            mPager.setAdapter(mPagerAdapter);
            mPager.setCurrentItem(3);
            mPager.setOffscreenPageLimit(6);
            mPager.setPageMargin(7);
        }
        loadPaginationViews();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (paginationImageList != null)
            paginationImageList.clear();
        paginationImageList = null;
        if (carouselViewsAppInfoList != null)
            carouselViewsAppInfoList.clear();
        carouselViewsAppInfoList = null;
        if (mPagerAdapter != null)
            mPagerAdapter.clearAdapter();
        mPagerAdapter = null;
        if (mGridViewAdapter != null)
            mGridViewAdapter.clearAdapter();
        mGridViewAdapter = null;
        unbindDrawables(findViewById(0x7f090197));
        System.gc();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            initiateDoneChangesForFavouriteApps();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onResume()
    {
        super.onResume();
        Log.d("FavoriteAppLauncherActivity", "Onresume is called");
        if (mAppletGridView != null)
            mAppletGridView.setOnItemClickListener(gridViewListener);
        if (mDeleteIconLayout != null)
            mDeleteIconLayout.setOnClickListener(deleteIconListener);
        if (mOverFlowMenuLayout != null)
            mOverFlowMenuLayout.setOnClickListener(overFlowMenuListener);
        if (mPager != null)
            mPager.setOnPageChangeListener(viewPagerListener);
        if (mFavAppAcceptLayout != null)
            mFavAppAcceptLayout.setOnClickListener(favAppAcceptListener);
    }

    public void processPopUpItemClick(String s)
    {
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0132).equals(s))
        {
            if (paginationImageList != null && mPager != null)
            {
                ((ImageView)paginationImageList.get(-1 + mHomeAppPosition)).setImageResource(0x7f0200f5);
                mHomeAppPosition = 1 + mPager.getCurrentItem();
                ((ImageView)paginationImageList.get(-1 + mHomeAppPosition)).setImageResource(0x7f0200f4);
            }
            showCustomToast(ToqApplication.getAppContext().getResources().getString(0x7f0a00fc));
        } else
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
        {
            finish();
            return;
        }
    }





/*
    static boolean access$1002(FavoriteAppLauncherActivity favoriteapplauncheractivity, boolean flag)
    {
        favoriteapplauncheractivity.isFavAppletPageScrolled = flag;
        return flag;
    }

*/
















/*
    static int access$402(FavoriteAppLauncherActivity favoriteapplauncheractivity, int i)
    {
        favoriteapplauncheractivity.gridItemIndicatorPosition = i;
        return i;
    }

*/







/*
    static PopupWindow access$902(FavoriteAppLauncherActivity favoriteapplauncheractivity, PopupWindow popupwindow)
    {
        favoriteapplauncheractivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.ActionBar;
import android.content.*;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.AsyncTaskLoader;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.notification.NotificationUtils;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.File;
import java.io.IOException;
import java.text.Collator;
import java.util.*;

public class NotificationSettingsActivity extends FragmentActivity
    implements android.support.v4.app.LoaderManager.LoaderCallbacks, android.view.View.OnCreateContextMenuListener, android.widget.SearchView.OnCloseListener, android.widget.SearchView.OnQueryTextListener, com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{
    public static class AppEntry
    {

        private boolean isChecked;
        private final File mApkFile;
        private Drawable mIcon;
        private final ApplicationInfo mInfo;
        private String mLabel;
        private final AppListLoader mLoader;
        private boolean mMounted;
        private String mPackageName;

        public ApplicationInfo getApplicationInfo()
        {
            return mInfo;
        }

        public boolean getCheckBox()
        {
            return isChecked;
        }

        public Drawable getIcon()
        {
label0:
            {
                if (mIcon == null)
                {
                    if (mApkFile.exists())
                    {
                        mIcon = mInfo.loadIcon(mLoader.mPm);
                        return mIcon;
                    }
                    mMounted = false;
                } else
                {
                    if (mMounted)
                        break label0;
                    if (mApkFile.exists())
                    {
                        mMounted = true;
                        mIcon = mInfo.loadIcon(mLoader.mPm);
                        return mIcon;
                    }
                }
                return mLoader.getContext().getResources().getDrawable(0x7f0200d9);
            }
            return mIcon;
        }

        public String getLabel()
        {
            return mLabel;
        }

        public String getPackageName()
        {
            return mPackageName;
        }

        void loadLabel(Context context)
        {
label0:
            {
                if (mLabel == null || !mMounted)
                {
                    if (mApkFile.exists())
                        break label0;
                    mMounted = false;
                    mLabel = mInfo.packageName;
                    mPackageName = mInfo.packageName;
                }
                return;
            }
            mMounted = true;
            CharSequence charsequence = mInfo.loadLabel(context.getPackageManager());
            String s;
            if (charsequence != null)
                s = charsequence.toString();
            else
                s = mInfo.packageName;
            mLabel = s;
            mPackageName = mInfo.packageName;
        }

        public void setCheckBox(Boolean boolean1)
        {
            isChecked = boolean1.booleanValue();
        }

        public String toString()
        {
            return mLabel;
        }

        public AppEntry(AppListLoader applistloader, ApplicationInfo applicationinfo)
        {
            isChecked = false;
            mLoader = applistloader;
            mInfo = applicationinfo;
            mApkFile = new File(applicationinfo.sourceDir);
        }
    }

    public static class AppListAdapter extends ArrayAdapter
        implements Filterable
    {

        private static final String REGEX_ENGLISH_PATTERN = "^[A-Za-z0-9!@#$%^&*()-+_={}<>:';\"?/|\\,. ]+$";
        private List allAppsList;
        private ArrayList filteredAppsList;
        private Locale locale;
        private Filter mAppsFilter;
        private final LayoutInflater mInflater;

        public List getAllAppsList()
        {
            if (allAppsList != null)
                return allAppsList;
            else
                return null;
        }

        public Filter getFilter()
        {
            if (mAppsFilter == null)
                mAppsFilter = new Filter() {

                    final AppListAdapter this$0;

                    protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
                    {
                        android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
                        if (!TextUtils.isEmpty(charsequence) && getAllAppsList() != null)
                        {
                            if (filteredAppsList != null && !filteredAppsList.isEmpty())
                                filteredAppsList.clear();
                            else
                                filteredAppsList = new ArrayList();
                            for (int i = 0; i < getAllAppsList().size(); i++)
                            {
                                AppEntry appentry = (AppEntry)getAllAppsList().get(i);
                                if (appentry != null && !TextUtils.isEmpty(appentry.getLabel()) && appentry.getLabel().toLowerCase(locale).startsWith(charsequence.toString().toLowerCase(locale)))
                                    filteredAppsList.add(appentry);
                            }

                            Log.d("NotificationSettingsActivity", (new StringBuilder()).append("Filtered List").append(filteredAppsList).toString());
                            filterresults.values = filteredAppsList;
                            filterresults.count = filteredAppsList.size();
                        } else
                        if (getAllAppsList() != null)
                        {
                            filterresults.values = getAllAppsList();
                            filterresults.count = getAllAppsList().size();
                            return filterresults;
                        }
                        return filterresults;
                    }

                    protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
                    {
                        if (filterresults != null)
                        {
                            setAppsList((List)filterresults.values);
                            notifyDataSetChanged();
                        }
                    }

            
            {
                this$0 = AppListAdapter.this;
                super();
            }
                }
;
            return mAppsFilter;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            ViewHolder viewholder;
            if (view == null)
            {
                viewholder = new ViewHolder();
                view = mInflater.inflate(0x7f030040, null);
                viewholder.textView = (TextView)view.findViewById(0x7f09022d);
                viewholder.checkBox = (CheckBox)view.findViewById(0x7f09022e);
                viewholder.imageView = (ImageView)view.findViewById(0x7f09022c);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            AppEntry appentry = (AppEntry)getItem(i);
            String s = appentry.getLabel();
            if (s != null && !s.matches("^[A-Za-z0-9!@#$%^&*()-+_={}<>:';\"?/|\\,. ]+$"))
            {
                Typeface typeface = Typeface.createFromAsset(ToqApplication.getAppContext().getAssets(), ToqApplication.getAppContext().getResources().getString(0x7f0a0065));
                viewholder.textView.setTypeface(typeface);
            }
            viewholder.textView.setText(s);
            if (NotificationSettingsActivity.mNotificationsSettingsListMap != null && NotificationSettingsActivity.mNotificationsSettingsListMap.containsKey(appentry.getPackageName()))
                viewholder.checkBox.setChecked(((Boolean)NotificationSettingsActivity.mNotificationsSettingsListMap.get(appentry.getPackageName())).booleanValue());
            else
                viewholder.checkBox.setChecked(appentry.getCheckBox());
            viewholder.imageView.setImageDrawable(appentry.getIcon());
            if (appentry.getCheckBox())
            {
                viewholder.checkBox.setEnabled(false);
                return view;
            } else
            {
                viewholder.checkBox.setEnabled(true);
                return view;
            }
        }

        public void setAllAppsList(List list)
        {
            if (list != null)
                allAppsList = list;
        }

        public void setAppsList(List list)
        {
            clear();
            if (list != null)
                addAll(list);
        }



/*
        static ArrayList access$502(AppListAdapter applistadapter, ArrayList arraylist)
        {
            applistadapter.filteredAppsList = arraylist;
            return arraylist;
        }

*/


        public AppListAdapter(Context context)
        {
            super(context, 0x7f030040);
            locale = Locale.ENGLISH;
            mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
        }
    }

    class AppListAdapter.ViewHolder
    {

        CheckBox checkBox;
        ImageView imageView;
        TextView textView;
        final AppListAdapter this$0;

        AppListAdapter.ViewHolder()
        {
            this$0 = AppListAdapter.this;
            super();
        }
    }

    public static class AppListLoader extends AsyncTaskLoader
    {

        List mApps;
        final InterestingConfigChanges mLastConfig = new InterestingConfigChanges();
        PackageIntentReceiver mPackageObserver;
        final PackageManager mPm = getContext().getPackageManager();

        public volatile void deliverResult(Object obj)
        {
            deliverResult((List)obj);
        }

        public void deliverResult(List list)
        {
            if (isReset() && list != null)
                onReleaseResources(list);
            mApps = list;
            if (isStarted())
                super.deliverResult(list);
            if (list != null)
                onReleaseResources(list);
        }

        public volatile Object loadInBackground()
        {
            return loadInBackground();
        }

        public List loadInBackground()
        {
            Object obj = mPm.getInstalledApplications(8704);
            if (obj == null)
                obj = new ArrayList();
            Log.d("NotificationSettingsActivity", (new StringBuilder()).append("apps.size() = ").append(((List) (obj)).size()).toString());
            Context context = getContext();
            ArrayList arraylist = new ArrayList(((List) (obj)).size());
            ArrayList arraylist1 = new ArrayList();
            for (int i = 0; i < ((List) (obj)).size(); i++)
            {
                AppEntry appentry = new AppEntry(this, (ApplicationInfo)((List) (obj)).get(i));
                appentry.loadLabel(context);
                if (mPm.getLaunchIntentForPackage(appentry.getPackageName()) == null || appentry.getPackageName().equalsIgnoreCase(ToqApplication.getAppContext().getPackageName()))
                    continue;
                if (NotificationSettingsActivity.mNotificationsSettingsListMap != null && NotificationSettingsActivity.mNotificationsSettingsListMap.containsKey(appentry.getPackageName()))
                {
                    appentry.setCheckBox((Boolean)NotificationSettingsActivity.mNotificationsSettingsListMap.get(appentry.getPackageName()));
                    arraylist1.add(appentry);
                } else
                {
                    arraylist.add(appentry);
                }
            }

            Collections.sort(arraylist, NotificationSettingsActivity.ALPHA_COMPARATOR);
            Collections.sort(arraylist1, NotificationSettingsActivity.ALPHA_COMPARATOR);
            arraylist1.addAll(arraylist);
            return arraylist1;
        }

        public volatile void onCanceled(Object obj)
        {
            onCanceled((List)obj);
        }

        public void onCanceled(List list)
        {
            super.onCanceled(list);
            onReleaseResources(list);
        }

        protected void onReleaseResources(List list)
        {
        }

        protected void onReset()
        {
            super.onReset();
            onStopLoading();
            if (mApps != null)
            {
                onReleaseResources(mApps);
                mApps = null;
            }
            if (mPackageObserver != null)
            {
                getContext().unregisterReceiver(mPackageObserver);
                mPackageObserver = null;
            }
        }

        protected void onStartLoading()
        {
            if (NotificationSettingsActivity.sNotificationsMenuImageLayout != null && NotificationSettingsActivity.sNotificationsSearchImageLayout != null)
            {
                NotificationSettingsActivity.sNotificationsMenuImageLayout.setVisibility(8);
                NotificationSettingsActivity.sNotificationsSearchImageLayout.setVisibility(8);
            }
            if (mApps != null)
                deliverResult(mApps);
            if (mPackageObserver == null)
                mPackageObserver = new PackageIntentReceiver(this);
            boolean flag = mLastConfig.applyNewConfig(getContext().getResources());
            if (takeContentChanged() || mApps == null || flag)
                forceLoad();
        }

        protected void onStopLoading()
        {
            cancelLoad();
        }

        public AppListLoader(Context context)
        {
            super(context);
        }
    }

    public static class InterestingConfigChanges
    {

        final Configuration mLastConfiguration = new Configuration();
        int mLastDensity;

        boolean applyNewConfig(Resources resources)
        {
            boolean flag1;
label0:
            {
                int i = mLastConfiguration.updateFrom(resources.getConfiguration());
                boolean flag;
                if (mLastDensity != resources.getDisplayMetrics().densityDpi)
                    flag = true;
                else
                    flag = false;
                if (!flag)
                {
                    int j = i & 0x304;
                    flag1 = false;
                    if (j == 0)
                        break label0;
                }
                mLastDensity = resources.getDisplayMetrics().densityDpi;
                flag1 = true;
            }
            return flag1;
        }

    }

    public static class PackageIntentReceiver extends BroadcastReceiver
    {

        final AppListLoader mLoader;

        public void onReceive(Context context, Intent intent)
        {
            Log.d("NotificationSettingsActivity", "Inside on receive");
            String s = intent.getData().getSchemeSpecificPart();
            if (s != null)
                NotificationUtils.updateHashMapOnAppPackageUpdate(s);
            mLoader.onContentChanged();
        }

        public PackageIntentReceiver(AppListLoader applistloader)
        {
            mLoader = applistloader;
            IntentFilter intentfilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentfilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentfilter.addAction("android.intent.action.PACKAGE_CHANGED");
            intentfilter.addDataScheme("package");
            mLoader.getContext().registerReceiver(this, intentfilter);
            IntentFilter intentfilter1 = new IntentFilter();
            intentfilter1.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
            intentfilter1.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
            mLoader.getContext().registerReceiver(this, intentfilter1);
        }
    }


    public static final Comparator ALPHA_COMPARATOR = new Comparator() {

        private final Collator sCollator = Collator.getInstance();

        public int compare(AppEntry appentry, AppEntry appentry1)
        {
            return sCollator.compare(appentry.getLabel(), appentry1.getLabel());
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((AppEntry)obj, (AppEntry)obj1);
        }

    }
;
    private static final String TAG = "NotificationSettingsActivity";
    private static Handler mHandler;
    private static HashMap mNotificationsSettingsListMap;
    private static SharedPreferences prefs = null;
    private static LinearLayout sNotificationsMenuImageLayout;
    private static LinearLayout sNotificationsSearchImageLayout;
    android.view.View.OnClickListener actionBarButtonsListener;
    private boolean isAnyChangeDoneInNotifications;
    private boolean isAppLoadingComplete;
    private boolean isAppsListHidden;
    private boolean isAppsSearchViewShown;
    private LinearLayout mAccessibilityPromptLayout;
    private TextView mAccessibilityPromptSubHeader;
    AppListAdapter mAdapter;
    private InputMethodManager mInputMethodManager;
    private LinearLayout mListForegroundBlurLayout;
    private LinearLayout mLoadingLayout;
    private ProgressBar mLoadingProgrees;
    private TextView mLoadingText;
    private RelativeLayout mNotificationDefaultActionBar;
    private Button mNotificationOnButton;
    private TextView mNotificationOnSubTextView;
    private TextView mNotificationOnTextView;
    private RelativeLayout mNotificationSearchActionBar;
    private SearchView mNotificationSearchView;
    private LinearLayout mNotificationSettingsDoneLayout;
    private ListView mNotificationSettingsListView;
    private ImageView mNotificationsSearchImage;
    private PopupWindow mPopUpWindow;
    private Resources mResources;
    private LinearLayout mSearchBackImageLayout;
    private TextView mSearchViewText;
    android.widget.AdapterView.OnItemClickListener notificationItemsClickListener;
    android.view.View.OnClickListener notificationSettingsScreenListeners;
    android.view.View.OnClickListener overFlowImageListener;

    public NotificationSettingsActivity()
    {
        mResources = null;
        isAppsSearchViewShown = false;
        mInputMethodManager = null;
        isAppsListHidden = false;
        isAppLoadingComplete = false;
        isAnyChangeDoneInNotifications = false;
        notificationItemsClickListener = new android.widget.AdapterView.OnItemClickListener() {

            final NotificationSettingsActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                AppEntry appentry = (AppEntry)mAdapter.getItem(i);
                CheckBox checkbox = (CheckBox)view.findViewById(0x7f09022e);
                if (Boolean.valueOf(checkbox.isChecked()).booleanValue())
                {
                    appentry.setCheckBox(Boolean.valueOf(false));
                    String s = appentry.getPackageName();
                    if (NotificationSettingsActivity.mNotificationsSettingsListMap != null && NotificationSettingsActivity.mNotificationsSettingsListMap.containsKey(s))
                    {
                        NotificationSettingsActivity.mNotificationsSettingsListMap.put(appentry.getPackageName(), Boolean.valueOf(false));
                        NotificationSettingsActivity.mNotificationsSettingsListMap.remove(s);
                    }
                    checkbox.setChecked(false);
                } else
                {
                    appentry.setCheckBox(Boolean.valueOf(true));
                    if (NotificationSettingsActivity.mNotificationsSettingsListMap != null)
                        NotificationSettingsActivity.mNotificationsSettingsListMap.put(appentry.getPackageName(), Boolean.valueOf(true));
                    checkbox.setChecked(true);
                }
                view.postInvalidate();
            }

            
            {
                this$0 = NotificationSettingsActivity.this;
                super();
            }
        }
;
        overFlowImageListener = new android.view.View.OnClickListener() {

            final NotificationSettingsActivity this$0;

            public void onClick(View view)
            {
                String as[];
                if (android.os.Build.VERSION.SDK_INT >= 18)
                {
                    if (NotificationUtils.isNotificationListenerServiceEnabled(NotificationSettingsActivity.this))
                        as = getResources().getStringArray(0x7f06000c);
                    else
                        as = getResources().getStringArray(0x7f06000d);
                } else
                if (isPhubAccessibilityServiceEnabled())
                    as = getResources().getStringArray(0x7f06000c);
                else
                    as = getResources().getStringArray(0x7f06000d);
                mPopUpWindow = (new PopUpWindowUtils(NotificationSettingsActivity.this)).getPopUpWindow(as, NotificationSettingsActivity.this);
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = NotificationSettingsActivity.this;
                super();
            }
        }
;
        notificationSettingsScreenListeners = new android.view.View.OnClickListener() {

            final NotificationSettingsActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296687: 
                    initiateDoneChanges();
                    return;
                }
            }

            
            {
                this$0 = NotificationSettingsActivity.this;
                super();
            }
        }
;
        actionBarButtonsListener = new android.view.View.OnClickListener() {

            final NotificationSettingsActivity this$0;

            public void onClick(View view)
            {
                int i = view.getId();
                if (i == 0x7f0901b3)
                    isAppsSearchViewShown = true;
                else
                if (i == 0x7f090014)
                {
                    if (mInputMethodManager != null && getCurrentFocus() != null)
                        mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                    isAppsSearchViewShown = false;
                }
                invalidateOptionsMenu();
            }

            
            {
                this$0 = NotificationSettingsActivity.this;
                super();
            }
        }
;
    }

    private void createInitialNotificationSettings()
    {
        if (prefs == null)
            break MISSING_BLOCK_LABEL_35;
        mNotificationsSettingsListMap = (HashMap)ObjectSerializer.deserialize(prefs.getString("notification_settings_key", ObjectSerializer.serialize(new HashMap())));
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        classnotfoundexception.printStackTrace();
        return;
    }

    private void disableNotificationViews()
    {
        getAccessibilityPromptLayout().setVisibility(0);
        getListForegroundBlurLayout().setVisibility(0);
        mNotificationSettingsListView.setClickable(false);
        mNotificationSettingsListView.setEnabled(false);
        sNotificationsMenuImageLayout.setVisibility(8);
        sNotificationsSearchImageLayout.setVisibility(8);
    }

    private void enableNotificationViews()
    {
        getAccessibilityPromptLayout().setVisibility(8);
        getListForegroundBlurLayout().setVisibility(8);
        if (isAppLoadingComplete)
        {
            sNotificationsMenuImageLayout.setVisibility(0);
            sNotificationsSearchImageLayout.setVisibility(0);
        }
        mNotificationSettingsListView.setClickable(true);
        mNotificationSettingsListView.setEnabled(true);
    }

    private LinearLayout getAccessibilityPromptLayout()
    {
        if (mAccessibilityPromptLayout == null)
            mAccessibilityPromptLayout = (LinearLayout)findViewById(0x7f090223);
        return mAccessibilityPromptLayout;
    }

    private TextView getAccessibilityPromptSubHeader()
    {
        if (mAccessibilityPromptSubHeader == null)
            mAccessibilityPromptSubHeader = (TextView)findViewById(0x7f090225);
        return mAccessibilityPromptSubHeader;
    }

    private LinearLayout getListForegroundBlurLayout()
    {
        if (mListForegroundBlurLayout == null)
            mListForegroundBlurLayout = (LinearLayout)findViewById(0x7f09022b);
        return mListForegroundBlurLayout;
    }

    private LinearLayout getNotificationSearchBackImage()
    {
        if (mSearchBackImageLayout == null && mNotificationSearchActionBar != null)
            mSearchBackImageLayout = (LinearLayout)mNotificationSearchActionBar.findViewById(0x7f090014);
        return mSearchBackImageLayout;
    }

    private void initialiseNotificationScreen()
    {
        if (mResources == null)
            mResources = ToqApplication.getAppContext().getResources();
        mNotificationSettingsListView = (ListView)findViewById(0x7f09022a);
        mNotificationsSettingsListMap = new HashMap();
        mNotificationDefaultActionBar = (RelativeLayout)getLayoutInflater().inflate(0x7f03002c, null);
        mNotificationSettingsDoneLayout = (LinearLayout)mNotificationDefaultActionBar.findViewById(0x7f0901af);
        sNotificationsMenuImageLayout = (LinearLayout)mNotificationDefaultActionBar.findViewById(0x7f0901b2);
        sNotificationsSearchImageLayout = (LinearLayout)mNotificationDefaultActionBar.findViewById(0x7f0901b3);
        mNotificationsSearchImage = (ImageView)mNotificationDefaultActionBar.findViewById(0x7f0901b4);
        mNotificationsSearchImage.setBackgroundResource(0x7f020133);
        mNotificationSearchActionBar = (RelativeLayout)getLayoutInflater().inflate(0x7f030001, null);
        mNotificationSearchView = (SearchView)mNotificationSearchActionBar.findViewById(0x7f090015);
        mNotificationSearchView.setOnCloseListener(this);
        mNotificationSearchView.setOnQueryTextListener(this);
        if (sNotificationsSearchImageLayout != null && sNotificationsMenuImageLayout != null && getNotificationSearchBackImage() != null)
        {
            sNotificationsSearchImageLayout.setOnClickListener(actionBarButtonsListener);
            sNotificationsMenuImageLayout.setOnClickListener(overFlowImageListener);
            getNotificationSearchBackImage().setOnClickListener(actionBarButtonsListener);
        }
        if (mNotificationSettingsDoneLayout != null && mNotificationSettingsListView != null)
        {
            mNotificationSettingsDoneLayout.setOnClickListener(notificationSettingsScreenListeners);
            mNotificationSettingsListView.setOnItemClickListener(notificationItemsClickListener);
        }
        mInputMethodManager = (InputMethodManager)getSystemService("input_method");
        mLoadingLayout = (LinearLayout)findViewById(0x7f090227);
        mLoadingProgrees = (ProgressBar)findViewById(0x7f090228);
        mLoadingText = (TextView)findViewById(0x7f090229);
        prefs = ToqApplication.getAppContext().getSharedPreferences("notification_settings_pref", 0);
        mNotificationOnTextView = (TextView)findViewById(0x7f090224);
        mNotificationOnSubTextView = (TextView)findViewById(0x7f090225);
        mNotificationOnButton = (Button)findViewById(0x7f090226);
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            mNotificationOnTextView.setText(getString(0x7f0a006f));
            mNotificationOnSubTextView.setText(getString(0x7f0a0070));
            mNotificationOnButton.setText(getString(0x7f0a0071));
        }
        if (prefs != null)
            try
            {
                mNotificationsSettingsListMap = (HashMap)ObjectSerializer.deserialize(prefs.getString("notification_settings_key", ObjectSerializer.serialize(new HashMap())));
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
            }
        mHandler = new Handler();
    }

    private void initiateDoneChanges()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("notification_settings_pref", 0);
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        if (sharedpreferences.getString("notification_settings_key", ObjectSerializer.serialize(new HashMap())) == null) goto _L2; else goto _L3
_L3:
        HashMap hashmap = mNotificationsSettingsListMap;
        if (hashmap == null) goto _L2; else goto _L4
_L4:
        HashMap hashmap1 = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("notification_settings_key", ObjectSerializer.serialize(new HashMap())));
        if (hashmap1 == null)
            break MISSING_BLOCK_LABEL_129;
        if (!mNotificationsSettingsListMap.equals(hashmap1))
        {
            Log.d("NotificationSettingsActivity", (new StringBuilder()).append("The current notification settings list is compared with the notifications list from the shared preference").append(hashmap1).append("==").append(mNotificationsSettingsListMap).toString());
            setAnyChangeDoneInNotifications(true);
        }
_L5:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("notification_settings_key", ObjectSerializer.serialize(mNotificationsSettingsListMap));
        editor.commit();
_L2:
        if (isAnyChangeDoneInNotifications())
            Toast.makeText(getApplicationContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        finish();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L5
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L2
    }

    private boolean isSearchBarDismissed()
    {
        if (isAppsSearchViewShown)
        {
            if (mAdapter != null)
                mAdapter.getFilter().filter("");
            isAppsSearchViewShown = false;
            invalidateOptionsMenu();
            return false;
        } else
        {
            return true;
        }
    }

    private void selectORClearAllTheAppListItems(final boolean value)
    {
        if (mHandler != null)
            mHandler.post(new Runnable() {

                final NotificationSettingsActivity this$0;
                final boolean val$value;

                public void run()
                {
                    if (NotificationSettingsActivity.mNotificationsSettingsListMap != null)
                        NotificationSettingsActivity.mNotificationsSettingsListMap.clear();
                    for (int i = 0; i < mAdapter.getCount(); i++)
                    {
                        AppEntry appentry = (AppEntry)mAdapter.getItem(i);
                        if (value)
                        {
                            appentry.setCheckBox(Boolean.valueOf(value));
                            if (NotificationSettingsActivity.mNotificationsSettingsListMap != null)
                                NotificationSettingsActivity.mNotificationsSettingsListMap.put(appentry.getPackageName(), Boolean.valueOf(value));
                        } else
                        {
                            appentry.setCheckBox(Boolean.valueOf(false));
                        }
                    }

                    mAdapter.notifyDataSetChanged();
                }

            
            {
                this$0 = NotificationSettingsActivity.this;
                value = flag;
                super();
            }
            }
);
    }

    private void setUpDefaultActionBar()
    {
        ActionBar actionbar = getActionBar();
        actionbar.setCustomView(mNotificationDefaultActionBar);
        actionbar.setDisplayShowHomeEnabled(false);
        actionbar.setDisplayShowTitleEnabled(false);
        actionbar.setDisplayOptions(16);
        actionbar.show();
    }

    private void setUpSearchActionBar()
    {
        ActionBar actionbar = getActionBar();
        mNotificationSearchView.setIconified(false);
        mNotificationSearchView.setQuery("", false);
        mNotificationSearchView.setQueryHint(mResources.getString(0x7f0a0068));
        int i = mNotificationSearchView.getContext().getResources().getIdentifier("android:id/search_src_text", null, null);
        mSearchViewText = (TextView)mNotificationSearchView.findViewById(i);
        if (mSearchViewText != null)
        {
            mSearchViewText.setTextColor(getResources().getColor(0x7f070010));
            mSearchViewText.setTextSize(16F);
            if (ToqData.getInstance().getRegularTypeFace() != null)
                mSearchViewText.setTypeface(ToqData.getInstance().getRegularTypeFace());
        }
        actionbar.setCustomView(mNotificationSearchActionBar);
        actionbar.show();
        actionbar.setDisplayShowHomeEnabled(false);
        actionbar.setDisplayShowTitleEnabled(false);
        actionbar.setDisplayOptions(16);
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

    public boolean isAnyChangeDoneInNotifications()
    {
        return isAnyChangeDoneInNotifications;
    }

    public boolean isPhubAccessibilityServiceEnabled()
    {
label0:
        {
label1:
            {
                int i = 0;
                String s = (new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append("/").append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.service.NotificationAccessibilityService").toString();
                android.text.TextUtils.SimpleStringSplitter simplestringsplitter;
                String s1;
                String s2;
                try
                {
                    i = android.provider.Settings.Secure.getInt(ToqApplication.getAppContext().getContentResolver(), "accessibility_enabled");
                    Log.d("NotificationSettingsActivity", (new StringBuilder()).append("ACCESSIBILITY: ").append(i).toString());
                }
                catch (android.provider.Settings.SettingNotFoundException settingnotfoundexception)
                {
                    Log.d("NotificationSettingsActivity", (new StringBuilder()).append("Error finding setting, default accessibility to not found: ").append(settingnotfoundexception.getMessage()).toString());
                }
                simplestringsplitter = new android.text.TextUtils.SimpleStringSplitter(':');
                if (i != 1)
                    break label0;
                s1 = android.provider.Settings.Secure.getString(getContentResolver(), "enabled_accessibility_services");
                Log.d("NotificationSettingsActivity", "***ACCESSIBILIY IS ENABLED***: ");
                Log.d("NotificationSettingsActivity", (new StringBuilder()).append("Setting: ").append(s1).toString());
                if (s1 == null)
                    break label1;
                simplestringsplitter.setString(s1);
                do
                {
                    if (!simplestringsplitter.hasNext())
                        break label1;
                    s2 = simplestringsplitter.next();
                    Log.d("NotificationSettingsActivity", (new StringBuilder()).append("Setting: ").append(s2).toString());
                } while (!s2.equalsIgnoreCase(s));
                Log.d("NotificationSettingsActivity", "We've found the correct setting - accessibility is switched on!");
                return true;
            }
            Log.d("NotificationSettingsActivity", "***END***");
            return false;
        }
        Log.d("NotificationSettingsActivity", "***ACCESSIBILIY IS DISABLED***");
        return false;
    }

    public void launchAccessibilitySettings(View view)
    {
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            Intent intent1 = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
            intent1.addFlags(0x40000000);
            intent1.addFlags(0x10000000);
            startActivity(intent1);
            return;
        } else
        {
            Intent intent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
            intent.addFlags(0x40000000);
            intent.addFlags(0x10000000);
            startActivity(intent);
            return;
        }
    }

    public void onBackPressed()
    {
        if (isSearchBarDismissed())
        {
            Log.d("NotificationSettingsActivity", "On Back Pressed");
            super.onBackPressed();
            initiateDoneChanges();
        }
    }

    public boolean onClose()
    {
        Log.d("NotificationSettingsActivity", "Inside on close");
        if (mInputMethodManager != null && getCurrentFocus() != null)
            mInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        if (mNotificationSettingsListView != null && mAdapter != null)
        {
            mAdapter.notifyDataSetChanged();
            mNotificationSettingsListView.invalidateViews();
        }
        isAppsSearchViewShown = false;
        invalidateOptionsMenu();
        return true;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03003f);
        initialiseNotificationScreen();
        mAdapter = new AppListAdapter(ToqApplication.getAppContext());
        getSupportLoaderManager().initLoader(0, null, this);
        Typeface typeface = Typeface.createFromAsset(getAssets(), getResources().getString(0x7f0a0066));
        if (typeface != null)
            AndroidUtils.getAndroidUtils().changeTypeFace(mResources.getString(0x7f0a0073), typeface, getAccessibilityPromptSubHeader());
        setUpDefaultActionBar();
    }

    public Loader onCreateLoader(int i, Bundle bundle)
    {
        Log.d("NotificationSettingsActivity", "Notification Settings....");
        return new AppListLoader(this);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        Log.d("NotificationSettingsActivity", "Inside on create options menu");
        if (isAppsSearchViewShown)
            setUpSearchActionBar();
        else
            setUpDefaultActionBar();
        return true;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        sNotificationsMenuImageLayout = null;
        sNotificationsSearchImageLayout = null;
        if (mAdapter != null)
        {
            mAdapter.clear();
            mAdapter = null;
        }
        if (prefs != null)
            prefs = null;
        if (mNotificationsSettingsListMap != null)
        {
            mNotificationsSettingsListMap.clear();
            mNotificationsSettingsListMap = null;
        }
        if (mNotificationSettingsListView != null)
            mNotificationSettingsListView = null;
        unbindDrawables(findViewById(0x7f090220));
        System.gc();
    }

    public volatile void onLoadFinished(Loader loader, Object obj)
    {
        onLoadFinished(loader, (List)obj);
    }

    public void onLoadFinished(Loader loader, List list)
    {
        if (mLoadingProgrees != null)
        {
            mLoadingProgrees.setVisibility(8);
            mLoadingProgrees = null;
        }
        if (mLoadingText != null)
        {
            mLoadingText.setVisibility(8);
            mLoadingText = null;
        }
        if (mLoadingLayout != null)
        {
            mLoadingLayout.setVisibility(8);
            mLoadingLayout = null;
        }
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            if (NotificationUtils.isNotificationListenerServiceEnabled(ToqApplication.getAppContext()))
                isAppsListHidden = false;
            else
                isAppsListHidden = true;
        } else
        if (isPhubAccessibilityServiceEnabled())
            isAppsListHidden = false;
        else
            isAppsListHidden = true;
        isAppLoadingComplete = true;
        if (sNotificationsMenuImageLayout != null && sNotificationsSearchImageLayout != null && !isAppsListHidden)
        {
            sNotificationsMenuImageLayout.setVisibility(0);
            sNotificationsSearchImageLayout.setVisibility(0);
        } else
        if (sNotificationsMenuImageLayout != null)
        {
            sNotificationsMenuImageLayout.setVisibility(8);
            sNotificationsSearchImageLayout.setVisibility(8);
        }
        createInitialNotificationSettings();
        mAdapter.setAppsList(list);
        mAdapter.setAllAppsList(list);
        if (mNotificationSettingsListView != null)
            mNotificationSettingsListView.setAdapter(mAdapter);
    }

    public void onLoaderReset(Loader loader)
    {
        mAdapter.setAppsList(null);
    }

    public boolean onQueryTextChange(String s)
    {
        Log.d("NotificationSettingsActivity", (new StringBuilder()).append("Inside on query text change ").append(s).toString());
        if (mSearchViewText != null)
        {
            mSearchViewText.setTextColor(-1);
            mSearchViewText.setTextSize(18F);
        }
        if (mNotificationSettingsListView != null && mAdapter != null)
        {
            mAdapter.getFilter().filter(s);
            mAdapter.notifyDataSetChanged();
            mNotificationSettingsListView.invalidateViews();
        }
        return true;
    }

    public boolean onQueryTextSubmit(String s)
    {
        Log.i("NotificationSettingsActivity", "Inside on Query Text Submit ");
        return false;
    }

    protected void onResume()
    {
        super.onResume();
        if (android.os.Build.VERSION.SDK_INT >= 18)
            if (NotificationUtils.isNotificationListenerServiceEnabled(this))
            {
                enableNotificationViews();
                return;
            } else
            {
                Log.d("NotificationSettingsActivity", (new StringBuilder()).append("PreferencesListActivity - api: ").append(android.os.Build.VERSION.SDK_INT).append(", launch settings for NotificationListenerService...").toString());
                disableNotificationViews();
                return;
            }
        if (isPhubAccessibilityServiceEnabled())
        {
            enableNotificationViews();
            return;
        } else
        {
            disableNotificationViews();
            return;
        }
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("NotificationSettingsActivity", "NotificationSettingsActivity is started");
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        Log.d("NotificationSettingsActivity", "OnStart");
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("NotificationSettingsActivity", "NotificationSettingsActivity is stopped");
    }

    public void processPopUpItemClick(String s)
    {
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0133).equals(s))
        {
            selectORClearAllTheAppListItems(true);
        } else
        {
            if (ToqApplication.getAppContext().getResources().getString(0x7f0a0134).equals(s))
            {
                selectORClearAllTheAppListItems(false);
                return;
            }
            if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            {
                finish();
                return;
            }
        }
    }

    public void setAnyChangeDoneInNotifications(boolean flag)
    {
        isAnyChangeDoneInNotifications = flag;
    }





/*
    static PopupWindow access$102(NotificationSettingsActivity notificationsettingsactivity, PopupWindow popupwindow)
    {
        notificationsettingsactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/



/*
    static boolean access$302(NotificationSettingsActivity notificationsettingsactivity, boolean flag)
    {
        notificationsettingsactivity.isAppsSearchViewShown = flag;
        return flag;
    }

*/



}

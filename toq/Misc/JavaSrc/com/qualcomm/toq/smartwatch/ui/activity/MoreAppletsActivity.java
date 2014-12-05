// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Dialog;
import android.app.ListActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.*;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ToqData;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.AppletDetails;
import java.util.ArrayList;
import java.util.List;

public class MoreAppletsActivity extends ListActivity
{
    private class AppletArrayAdapter extends ArrayAdapter
    {

        private LayoutInflater inflater;
        final MoreAppletsActivity this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            View view1 = view;
            if (view1 == null)
                view1 = inflater.inflate(0x7f03003b, null);
            AppletDetails appletdetails = (AppletDetails)getItem(i);
            ((TextView)view1.findViewById(0x7f090208)).setText(appletdetails.getAppName());
            ((ImageView)view1.findViewById(0x7f090207)).setImageDrawable(appletdetails.getAppIcon());
            CheckBox checkbox = (CheckBox)view1.findViewById(0x7f09020a);
            checkbox.setOnClickListener(new CheckBoxClickListener(appletdetails));
            TextView textview = (TextView)view1.findViewById(0x7f090209);
            if (appletdetails.isInstalled())
            {
                textview.setText(getString(0x7f0a00e6));
                checkbox.setChecked(true);
                return view1;
            } else
            {
                textview.setText(getString(0x7f0a00e7));
                checkbox.setChecked(false);
                return view1;
            }
        }

        private AppletArrayAdapter(List list)
        {
            this$0 = MoreAppletsActivity.this;
            super(MoreAppletsActivity.this, 0x7f03003b, list);
            inflater = (LayoutInflater)getSystemService("layout_inflater");
        }

    }

    private class AppletArrayAdapter.CheckBoxClickListener
        implements android.view.View.OnClickListener
    {

        private AppletDetails appletDetails;
        final AppletArrayAdapter this$1;

        public void onClick(View view)
        {
            String s = appletDetails.getPackageName();
            if (((CheckBox)view).isChecked())
            {
                Log.d("DeckOfCards", "MoreAppletsActivity.AppletArrayAdapter.checkBoxClickListener.onClick - isChecked, install...");
                ((CheckBox)view).setChecked(false);
                Intent intent = new Intent();
                intent.setAction("com.qualcomm.toq.smartwatch.install.applet");
                intent.setPackage(s);
                sendBroadcast(intent);
                return;
            } else
            {
                Log.d("DeckOfCards", "MoreAppletsActivity.AppletArrayAdapter.checkBoxClickListener.onClick - !isChecked, uninstall...");
                ((CheckBox)view).setChecked(true);
                showUninstallDialog(s);
                return;
            }
        }

        private AppletArrayAdapter.CheckBoxClickListener(AppletDetails appletdetails)
        {
            this$1 = AppletArrayAdapter.this;
            super();
            appletDetails = appletdetails;
        }

    }

    private class AppletInstallationListenerImpl
        implements com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager.AppletInstallationListener
    {

        final MoreAppletsActivity this$0;

        public void onAppletInstall(String s)
        {
            Log.d("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.AppletInstallationListenerImpl.onAppletInstall - packageName: ").append(s).toString());
            updateList();
        }

        public void onAppletUninstall(String s)
        {
            Log.d("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.AppletInstallationListenerImpl.onAppletUninstall - packageName: ").append(s).toString());
            updateList();
        }

        public void onAppletUpdate(String s)
        {
        }

        private AppletInstallationListenerImpl()
        {
            this$0 = MoreAppletsActivity.this;
            super();
        }

    }

    private class DialogInstallOnClickListener
        implements android.view.View.OnClickListener
    {

        private String packageName;
        final MoreAppletsActivity this$0;

        public void onClick(View view)
        {
            int i = view.getId();
            boolean flag = false;
            switch (i)
            {
            case 2131296523: 
                getCustomDialog().dismiss();
                flag = true;
                break;

            case 2131296522: 
                getCustomDialog().dismiss();
                flag = false;
                break;
            }
            installApplet(packageName, flag);
        }

        private DialogInstallOnClickListener(String s)
        {
            this$0 = MoreAppletsActivity.this;
            super();
            packageName = s;
        }

    }

    private class DialogUninstallOnClickListener
        implements android.view.View.OnClickListener
    {

        private String packageName;
        final MoreAppletsActivity this$0;

        public void onClick(View view)
        {
            switch (view.getId())
            {
            case 2131296523: 
                getCustomDialog().dismiss();
                uninstallApplet(packageName);
                return;

            case 2131296522: 
                getCustomDialog().dismiss();
                return;
            }
        }

        private DialogUninstallOnClickListener(String s)
        {
            this$0 = MoreAppletsActivity.this;
            super();
            packageName = s;
        }

    }


    private static final String INSTALL_ERROR_DIALOG = "install_error_dialog";
    public static final String PACKAGE_NAME = "packageName";
    private static final String UNINSTALL_ERROR_DIALOG = "uninstall_error_dialog";
    private AppletArrayAdapter appletArrayAdapter;
    private Dialog dialog;
    private com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager.AppletInstallationListener listener;
    private DisplayMetrics mDisplayMetrics;


    private Dialog getCustomDialog()
    {
        if (dialog == null)
        {
            dialog = new Dialog(this);
            dialog.getWindow().requestFeature(1);
            LinearLayout linearlayout = (LinearLayout)getLayoutInflater().inflate(0x7f03001c, null);
            linearlayout.setBackgroundColor(getResources().getColor(0x7f07001b));
            dialog.setContentView(linearlayout);
            dialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            dialog.findViewById(0x7f090103).setBackgroundColor(getResources().getColor(0x7f070015));
        }
        return dialog;
    }

    private void installApplet(String s, boolean flag)
    {
        try
        {
            LocalDeckOfCardsManager.getInstance().completeInstallationRequest(s, flag);
            return;
        }
        catch (DeckOfCardsException deckofcardsexception)
        {
            Log.e("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.installApplet - error handling installation request for packageName: ").append(s).toString(), deckofcardsexception);
        }
        showErrorDialog("install_error_dialog");
    }

    private void showErrorDialog(String s)
    {
        dialog = null;
        TextView textview = (TextView)getCustomDialog().findViewById(0x7f090102);
        TextView textview1 = (TextView)getCustomDialog().findViewById(0x7f090108);
        textview1.setTextColor(getResources().getColor(0x7f07001a));
        getCustomDialog().findViewById(0x7f090104).setVisibility(8);
        if (s.equalsIgnoreCase("install_error_dialog"))
        {
            textview.setText(getString(0x7f0a00d8));
            textview1.setText(getString(0x7f0a00dc));
        } else
        {
            textview.setText(getString(0x7f0a00d9));
            textview1.setText(getString(0x7f0a00df));
        }
        Button button = (Button)getCustomDialog().findViewById(0x7f09010a);
        button.setText(getString(0x7f0a00e4));
        button.setBackgroundResource(0x7f02009d);
        getCustomDialog().findViewById(0x7f09010b).setVisibility(8);
        if (ToqData.getInstance().getRegularTypeFace() != null)
            button.setTypeface(ToqData.getInstance().getRegularTypeFace());
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final MoreAppletsActivity this$0;

            public void onClick(View view)
            {
                getCustomDialog().dismiss();
            }

            
            {
                this$0 = MoreAppletsActivity.this;
                super();
            }
        }
);
        getCustomDialog().show();
    }

    private void showInstallDialog(String s)
    {
        ((TextView)getCustomDialog().findViewById(0x7f090102)).setText(getString(0x7f0a00da));
        AndroidUtils androidutils = AndroidUtils.getAndroidUtils();
        Drawable drawable = androidutils.getAndroidAppIcon(s);
        String s1 = androidutils.getAndroidAppName(s);
        if (s1 != null)
        {
            ImageView imageview = (ImageView)getCustomDialog().findViewById(0x7f090105);
            ((TextView)getCustomDialog().findViewById(0x7f090106)).setText(s1);
            if (drawable != null)
            {
                imageview.setVisibility(0);
                imageview.setImageDrawable(drawable);
            } else
            {
                imageview.setVisibility(8);
            }
            getCustomDialog().findViewById(0x7f090104).setVisibility(0);
        } else
        {
            getCustomDialog().findViewById(0x7f090104).setVisibility(4);
        }
        TextView textview = (TextView)getCustomDialog().findViewById(0x7f090108);
        textview.setTextColor(getResources().getColor(0x7f07001a));
        textview.setText(getString(0x7f0a00db));
        Button button = (Button)getCustomDialog().findViewById(0x7f09010a);
        button.setBackgroundResource(0x7f02009d);
        button.setText(getString(0x7f0a00e3));
        button.setVisibility(0);
        Button button1 = (Button)getCustomDialog().findViewById(0x7f09010b);
        button1.setBackgroundResource(0x7f02009d);
        button1.setText(getString(0x7f0a00e1));
        button1.setVisibility(0);
        if (ToqData.getInstance().getRegularTypeFace() != null)
        {
            button.setTypeface(ToqData.getInstance().getRegularTypeFace());
            button1.setTypeface(ToqData.getInstance().getRegularTypeFace());
        }
        DialogInstallOnClickListener dialoginstallonclicklistener = new DialogInstallOnClickListener(s);
        button.setOnClickListener(dialoginstallonclicklistener);
        button1.setOnClickListener(dialoginstallonclicklistener);
        if (getCustomDialog() != null)
            getCustomDialog().show();
    }

    private void showUninstallDialog(String s)
    {
        ((TextView)getCustomDialog().findViewById(0x7f090102)).setText(getString(0x7f0a00dd));
        AndroidUtils androidutils = AndroidUtils.getAndroidUtils();
        Drawable drawable = androidutils.getAndroidAppIcon(s);
        String s1 = androidutils.getAndroidAppName(s);
        if (s1 != null)
        {
            ImageView imageview = (ImageView)getCustomDialog().findViewById(0x7f090105);
            ((TextView)getCustomDialog().findViewById(0x7f090106)).setText(s1);
            if (drawable != null)
            {
                imageview.setVisibility(0);
                imageview.setImageDrawable(drawable);
            } else
            {
                imageview.setVisibility(8);
            }
            getCustomDialog().findViewById(0x7f090104).setVisibility(0);
        } else
        {
            getCustomDialog().findViewById(0x7f090104).setVisibility(4);
        }
        TextView textview = (TextView)getCustomDialog().findViewById(0x7f090108);
        textview.setTextColor(getResources().getColor(0x7f07001a));
        textview.setText(getString(0x7f0a00de));
        Button button = (Button)getCustomDialog().findViewById(0x7f09010a);
        button.setBackgroundResource(0x7f02009d);
        button.setText(getString(0x7f0a00e3));
        button.setVisibility(0);
        Button button1 = (Button)getCustomDialog().findViewById(0x7f09010b);
        button1.setBackgroundResource(0x7f02009d);
        button1.setText(getString(0x7f0a00e2));
        button1.setVisibility(0);
        if (ToqData.getInstance().getRegularTypeFace() != null)
        {
            button.setTypeface(ToqData.getInstance().getRegularTypeFace());
            button1.setTypeface(ToqData.getInstance().getRegularTypeFace());
        }
        DialogUninstallOnClickListener dialoguninstallonclicklistener = new DialogUninstallOnClickListener(s);
        button.setOnClickListener(dialoguninstallonclicklistener);
        button1.setOnClickListener(dialoguninstallonclicklistener);
        if (getCustomDialog() != null)
            getCustomDialog().show();
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

    private void uninstallApplet(String s)
    {
        try
        {
            LocalDeckOfCardsManager.getInstance().manualUninstall(s);
            return;
        }
        catch (DeckOfCardsException deckofcardsexception)
        {
            Log.e("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.uninstallApplet - error handling uninstallation request for packageName: ").append(s).toString(), deckofcardsexception);
        }
        showErrorDialog("uninstall_error_dialog");
    }

    private void updateAppletList()
    {
        LocalDeckOfCardsManager localdeckofcardsmanager;
        String as[];
        appletArrayAdapter.clear();
        localdeckofcardsmanager = LocalDeckOfCardsManager.getInstance();
        as = localdeckofcardsmanager.getExternalInstalledAppletPackageNames();
        if (as == null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L9:
        if (j >= as.length) goto _L2; else goto _L3
_L3:
        String s1 = as[j];
        if (!TextUtils.isEmpty(s1))
        {
            AppletDetails appletdetails1 = new AppletDetails(s1, true);
            appletArrayAdapter.add(appletdetails1);
            Log.d("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.updateAppletList - adding external installed app details: ").append(appletdetails1).toString());
        }
          goto _L4
_L2:
        String as1[] = localdeckofcardsmanager.getExternalNotInstalledAppletPackageNames();
        if (as1 == null) goto _L6; else goto _L5
_L5:
        int i = 0;
_L7:
        if (i >= as1.length)
            break; /* Loop/switch isn't completed */
        String s = as1[i];
        if (!TextUtils.isEmpty(s))
        {
            AppletDetails appletdetails = new AppletDetails(s, false);
            appletArrayAdapter.add(appletdetails);
            Log.d("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.updateAppletList - adding external not installed app details: ").append(appletdetails).toString());
        }
        i++;
        if (true) goto _L7; else goto _L6
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        Log.e("DeckOfCards", "MoreAppletsActivity.updateAppletList - error getting app details", deckofcardsexception);
_L6:
        TextView textview = (TextView)findViewById(0x7f090204);
        TextView textview1 = (TextView)findViewById(0x7f090205);
        TextView textview2 = (TextView)findViewById(0x7f090206);
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f090200);
        if (appletArrayAdapter.isEmpty())
        {
            textview.setVisibility(0);
            linearlayout.setVisibility(8);
        } else
        {
            textview.setVisibility(8);
            textview1.setVisibility(8);
            textview2.setVisibility(8);
            linearlayout.setVisibility(0);
        }
        appletArrayAdapter.notifyDataSetChanged();
        return;
_L4:
        j++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void updateList()
    {
        runOnUiThread(new Runnable() {

            final MoreAppletsActivity this$0;

            public void run()
            {
                updateAppletList();
            }

            
            {
                this$0 = MoreAppletsActivity.this;
                super();
            }
        }
);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.d("DeckOfCards", "MoreAppletsActivity.onCreate...");
        setContentView(0x7f03003a);
        mDisplayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        appletArrayAdapter = new AppletArrayAdapter(new ArrayList());
        setListAdapter(appletArrayAdapter);
        listener = new AppletInstallationListenerImpl();
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            String s = bundle1.getString("packageName");
            Log.d("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.onCreate - packageName: ").append(s).toString());
            if (!TextUtils.isEmpty(s))
                showInstallDialog(s);
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
        unbindDrawables(findViewById(0x7f0901fb));
        appletArrayAdapter = null;
        listener = null;
        mDisplayMetrics = null;
        dialog = null;
        LocalDeckOfCardsManager localdeckofcardsmanager;
        Handler handler;
        try
        {
            localdeckofcardsmanager = LocalDeckOfCardsManager.getInstance();
            handler = localdeckofcardsmanager.getRemoteCallbackHandler();
        }
        catch (DeckOfCardsException deckofcardsexception)
        {
            Log.e("DeckOfCards", "Unable to quit the remoteCallbackThread looper");
            deckofcardsexception.printStackTrace();
            return;
        }
        if (handler == null)
            break MISSING_BLOCK_LABEL_61;
        handler.post(new Runnable() {

            final MoreAppletsActivity this$0;

            public void run()
            {
                Log.d("DeckOfCards", "Quitting the remoteCallbackThread Looper");
                Looper.myLooper().quit();
            }

            
            {
                this$0 = MoreAppletsActivity.this;
                super();
            }
        }
);
        localdeckofcardsmanager.setRemoteCallbackThread(null);
        localdeckofcardsmanager.setRemoteCallbackHandler(null);
        return;
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        Log.d("DeckOfCards", "MoreAppletsActivity.onNewIntent...");
        Bundle bundle = intent.getExtras();
        if (bundle != null)
        {
            String s = bundle.getString("packageName");
            Log.d("DeckOfCards", (new StringBuilder()).append("MoreAppletsActivity.onNewIntent - packageName: ").append(s).toString());
            if (!TextUtils.isEmpty(s))
                showInstallDialog(s);
        }
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        ((LinearLayout)findViewById(0x7f0901fd)).setOnClickListener(new android.view.View.OnClickListener() {

            final MoreAppletsActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = MoreAppletsActivity.this;
                super();
            }
        }
);
    }

    protected void onStart()
    {
        super.onStart();
        updateAppletList();
        try
        {
            LocalDeckOfCardsManager.getInstance().addAppletInstallationListener(listener);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onStop()
    {
        super.onStop();
        try
        {
            LocalDeckOfCardsManager.getInstance().removeAppletInstallationListener(listener);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }






}

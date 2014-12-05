// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.addon.receiver;

import android.content.*;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.earpiece.utils.EarpiecePreference;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;
import com.qualcomm.toq.smartwatch.notification.NotificationUtils;
import com.qualcomm.toq.smartwatch.utils.ClockUtils;
import com.qualcomm.toq.smartwatch.utils.MusicControlUtils;
import java.io.File;

public class AddOnInstallationReceiver extends BroadcastReceiver
{

    private static final String TAG = "AddOnInstallationReceiver";


    public void onReceive(Context context, Intent intent)
    {
        Bundle bundle;
        Log.d("AddOnInstallationReceiver", intent.getAction());
        bundle = intent.getExtras();
        if (!intent.getAction().equals("android.intent.action.PACKAGE_ADDED") && !intent.getAction().equals("android.intent.action.PACKAGE_REPLACED") && !intent.getAction().equals("android.intent.action.PACKAGE_CHANGED") && !intent.getAction().equals("android.intent.action.PACKAGE_INSTALL") && !intent.getAction().equals("android.intent.action.PACKAGE_REMOVED"))
            break MISSING_BLOCK_LABEL_482;
        if (!intent.getAction().equals("android.intent.action.PACKAGE_REPLACED")) goto _L2; else goto _L1
_L1:
        String s3 = context.getPackageManager().getPackagesForUid(bundle.getInt("android.intent.extra.UID"))[0];
        Log.d("AddOnInstallationReceiver", (new StringBuilder()).append("Package Name  :-- ").append(s3).toString());
        if (s3.equalsIgnoreCase(Constants.APPLICATION_PACKAGE_NAME))
        {
            File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/config.properties").toString());
            if (file.exists())
            {
                boolean flag2 = file.delete();
                Log.d("AddOnInstallationReceiver", (new StringBuilder()).append("config.properties file deletion result: ").append(flag2).toString());
            }
            Log.d("AddOnInstallationReceiver", "Inside android.intent.action.PACKAGE_REPLACED Setting Current buildType");
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("app_pref", 0).edit();
            editor.putBoolean("stockClean", true);
            editor.putBoolean("appUpgrade", true);
            editor.commit();
            EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString("last_status_checked", "true");
            ClockUtils.getClockUtils().deleteOldClockImageFiles();
            ClockUtils.getClockUtils().parseClockInfoFromAssests();
            ClockUtils.getClockUtils().updateClockStylesPreferenceOnAppUpgrade();
        }
_L4:
        String s2 = intent.getData().getEncodedSchemeSpecificPart();
        MusicControlUtils.getInstance().onPackageChanged(s2);
        return;
_L2:
        if (!intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) goto _L4; else goto _L3
_L3:
        String s;
        boolean flag;
        s = intent.getData().getEncodedSchemeSpecificPart();
        flag = intent.hasExtra("android.intent.extra.REPLACING");
        boolean flag1 = false;
        String s1;
        if (flag)
            try
            {
                flag1 = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
            }
            catch (Exception exception)
            {
                Log.e("AddOnInstallationReceiver", (new StringBuilder()).append("Exception in AddOnInstallationReceiver: ").append(exception.toString()).toString());
                exception.printStackTrace();
                return;
            }
        if (flag1)
            break MISSING_BLOCK_LABEL_454;
        Log.d("AddOnInstallationReceiver", (new StringBuilder()).append("PACKAGE_REMOVED - removing packageName: ").append(s).toString());
        LocalDeckOfCardsManager.getInstance().onPackageRemoved(s);
        s1 = intent.getData().getSchemeSpecificPart();
        if (s1 == null) goto _L4; else goto _L5
_L5:
        NotificationUtils.updateHashMapOnAppPackageUpdate(s1);
          goto _L4
        Log.d("AddOnInstallationReceiver", (new StringBuilder()).append("PACKAGE_REMOVED - replacing only, do nothing, packageName: ").append(s).toString());
          goto _L4
    }
}

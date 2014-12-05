// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.Context;
import android.content.SharedPreferences;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.AppletInfo;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            FMSController

public class FavoriteAppsController extends DefaultController
{

    private static final String TAG = "FavoriteAppsController";
    public static final String appName = "FAVOURITE_APPS_CONTROLLER";
    private static FavoriteAppsController mInstance = null;
    private boolean isHomeTileSelected;

    public FavoriteAppsController()
    {
        isHomeTileSelected = false;
    }

    public static FavoriteAppsController getFavoriteAppsController()
    {
        if (mInstance == null)
            mInstance = new FavoriteAppsController();
        return mInstance;
    }

    private SharedPreferences handleAppletDeletion(SharedPreferences sharedpreferences)
    {
        {
            if (sharedpreferences == null)
                break MISSING_BLOCK_LABEL_145;
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
                Log.e("FavoriteAppsController", "Exception");
                exception.printStackTrace();
                return sharedpreferences;
            }
            i = 0;
        }
        if (i >= arraylist.size())
            break MISSING_BLOCK_LABEL_145;
        if (((AppletInfo)arraylist.get(i)).getTagIndex() < Constants.appletImageNames.length)
            break MISSING_BLOCK_LABEL_147;
        Log.e("FavoriteAppsController", "Version Mismatch..Clearing the preference");
        j = 0;
_L2:
        if (j >= arraylist.size())
            break; /* Loop/switch isn't completed */
        ((AppletInfo)arraylist.get(j)).setTagIndex(-1);
        ((AppletInfo)arraylist.get(j)).setHomeTitle(false);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        editor.putString("favorite_apps_types", ObjectSerializer.serialize(arraylist));
        editor.commit();
        return sharedpreferences;
        i++;
        if (false)
            ;
        else
            break MISSING_BLOCK_LABEL_40;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private int synchFavoriteApps(String s)
    {
        int i = -1;
        if (FMSController.getFmsController() != null)
            i = FMSController.getFmsController().fmsSyncFile(1, new ByteArrayInputStream(s.getBytes()), "/settings/app_list.jsn", -1);
        return i;
    }

    public JSONObject createFavoriteAppsJson(Context context)
    {
        JSONObject jsonobject;
        SharedPreferences sharedpreferences;
        jsonobject = new JSONObject();
        isHomeTileSelected = false;
        sharedpreferences = handleAppletDeletion(context.getSharedPreferences("favorite_apps_pref", 0));
        if (sharedpreferences == null) goto _L2; else goto _L1
_L1:
        if (sharedpreferences.getString("favorite_apps_types", ObjectSerializer.serialize(new ArrayList())) == null) goto _L2; else goto _L3
_L3:
        JSONArray jsonarray = new JSONArray();
        ArrayList arraylist = (ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("favorite_apps_types", ObjectSerializer.serialize(new ArrayList())));
        if (arraylist == null) goto _L5; else goto _L4
_L4:
        if (arraylist.size() == 0) goto _L5; else goto _L6
_L6:
        Log.d("FavoriteAppsController", (new StringBuilder()).append("favoriteAppsArrayList.size() = ").append(arraylist.size()).toString());
        int i = 0;
        Iterator iterator = arraylist.iterator();
_L10:
        if (!iterator.hasNext()) goto _L8; else goto _L7
_L7:
        AppletInfo appletinfo;
        JSONObject jsonobject2;
        int j;
        appletinfo = (AppletInfo)iterator.next();
        jsonobject2 = new JSONObject();
        j = appletinfo.getTagIndex();
        if (j == -1) goto _L10; else goto _L9
_L9:
        i++;
        jsonobject2.put("TileName", Constants.appletWDNames[j]);
        if (!appletinfo.isHomeTitle()) goto _L12; else goto _L11
_L11:
        jsonobject2.put("IsHomeTile", true);
        isHomeTileSelected = true;
_L15:
        jsonarray.put(jsonobject2);
          goto _L10
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        Log.e("FavoriteAppsController", (new StringBuilder()).append("Exception in KEY_FAVORITE_APP_TYPES Shared Preference logic: ").append(exception1.toString()).toString());
_L17:
        JSONObject jsonobject1;
        jsonobject1 = new JSONObject();
        jsonobject1.put("TileName", "AppLauncher");
        if (!isHomeTileSelected) goto _L14; else goto _L13
_L13:
        jsonobject1.put("IsHomeTile", false);
_L18:
        jsonarray.put(jsonobject1);
        jsonobject.put("Records", jsonarray);
        Log.i("FavoriteAppsController", jsonobject.toString());
_L2:
        return jsonobject;
_L12:
        jsonobject2.put("IsHomeTile", false);
          goto _L15
_L8:
        Log.d("FavoriteAppsController", (new StringBuilder()).append("favoriteAppsList count = ").append(i).toString());
        if (i != 0) goto _L17; else goto _L16
_L16:
        Log.d("FavoriteAppsController", "return empty JSON as the current state of app_list.jsn is default");
        return jsonobject;
_L5:
        Log.d("FavoriteAppsController", "return empty JSON as the current state of app_list.jsn is default");
        return jsonobject;
_L14:
        jsonobject1.put("IsHomeTile", true);
          goto _L18
        Exception exception;
        exception;
        exception.printStackTrace();
        Log.d("FavoriteAppsController", (new StringBuilder()).append("Exception ").append(exception).toString());
        return jsonobject;
          goto _L15
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendFavoriteAppListToWD(Context context)
    {
        JSONObject jsonobject = createFavoriteAppsJson(context);
        if (jsonobject == null)
            break MISSING_BLOCK_LABEL_74;
        if (jsonobject.length() != 0)
            break MISSING_BLOCK_LABEL_74;
        Log.d("FavoriteAppsController", "Empty favoriteAppsDataStore time to delete app_list.jsn in FMS");
        if (FMSController.getFmsController() == null)
            break MISSING_BLOCK_LABEL_111;
        Log.d("FavoriteAppsController", "Delete request for app_list.jsn file in fMS");
        if (FMSController.getFmsController().fmsRemoveFile(1, "/settings/app_list.jsn") == 1)
        {
            Log.e("FavoriteAppsController", "Delete request for app_list.jsn file in fMS failed");
            return;
        }
        try
        {
            Log.d("FavoriteAppsController", "Delete request for app_list.jsn file in fMS success");
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return;
        Log.d("FavoriteAppsController", (new StringBuilder()).append("sendFavoriteAppListToWD() called: \n").append(jsonobject.toString()).toString());
        synchFavoriteApps(jsonobject.toString());
    }

}

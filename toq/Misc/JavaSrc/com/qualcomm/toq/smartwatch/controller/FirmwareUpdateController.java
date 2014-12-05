// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import java.io.*;
import java.util.Locale;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            FMSController

public class FirmwareUpdateController extends DefaultController
{

    private static final String TAG = "FirmwareUpdateController";
    public static final String appName = "FIRMWARE_UPDATE_CONTROLLER";
    private static FirmwareUpdateController mInstance = null;
    public Context context;

    private FirmwareUpdateController(Context context1)
    {
        context = null;
        context = context1;
    }

    private InputStream getCustomBuildInputStream()
        throws FileNotFoundException
    {
        File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/PHUB/firmware/").toString());
        boolean flag = file.exists();
        FileInputStream fileinputstream = null;
        if (flag)
        {
            File afile[] = file.listFiles(new FilenameFilter() {

                final FirmwareUpdateController this$0;

                public boolean accept(File file1, String s)
                {
                    return s.toLowerCase(Locale.US).endsWith(".zip");
                }

            
            {
                this$0 = FirmwareUpdateController.this;
                super();
            }
            }
);
            fileinputstream = null;
            if (afile != null)
            {
                int i = afile.length;
                fileinputstream = null;
                if (i == 1)
                    fileinputstream = new FileInputStream(afile[0]);
            }
        }
        return fileinputstream;
    }

    public static FirmwareUpdateController getFirmwareUpdateController(Context context1)
    {
        if (mInstance == null)
            mInstance = new FirmwareUpdateController(context1);
        return mInstance;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
    }

    public boolean pushCustomFirmwareUpdateToWD()
    {
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        InputStream inputstream = getCustomBuildInputStream();
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_74;
        if (FMSController.getFmsController() == null)
            break MISSING_BLOCK_LABEL_74;
        FMSController.getFmsController().fmsSyncFile(2, inputstream, "/firmware/1234.zip", -1);
        return true;
        Exception exception;
        exception;
        Log.e("FirmwareUpdateController", (new StringBuilder()).append("Failed to copy asset file details: ").append(exception.toString()).toString());
        return false;
    }

    public boolean pushFirmwareUpdateToWD(String s)
    {
        int j;
        String s1;
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        AssetManager assetmanager = context.getAssets();
        String as[];
        String as1[];
        int i;
        String as2[];
        try
        {
            as2 = assetmanager.list("");
        }
        catch (IOException ioexception)
        {
            Log.e("FirmwareUpdateController", (new StringBuilder()).append("Failed to get asset file list: ").append(ioexception.toString()).toString());
            as = null;
            continue; /* Loop/switch isn't completed */
        }
        as = as2;
_L5:
        if (as == null)
            break MISSING_BLOCK_LABEL_207;
        as1 = as;
        i = as1.length;
        j = 0;
_L3:
        if (j >= i) goto _L2; else goto _L1
_L1:
        s1 = as1[j];
        Log.d("FirmwareUpdateController", (new StringBuilder()).append("Asset file: ").append(s1).toString());
        if (!s1.equalsIgnoreCase(s) || FMSController.getFmsController() == null)
            continue; /* Loop/switch isn't completed */
        FMSController.getFmsController().fmsSyncFile(2, assetmanager.open(s1), "/firmware/1234.zip", -1);
        return true;
        Exception exception;
        exception;
        Log.e("FirmwareUpdateController", (new StringBuilder()).append("Failed to copy asset file: ").append(s1).append(" details: ").append(exception.toString()).toString());
        j++;
          goto _L3
_L2:
        return false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (i == 0 && ConnectionFactory.getConnectionFactory().getEndPointVersionState(i) == 1 || i != 0)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

}

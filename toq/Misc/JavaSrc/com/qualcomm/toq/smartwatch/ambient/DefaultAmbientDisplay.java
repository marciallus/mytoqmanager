// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import java.io.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            IAmbientDisplay, IAmbientInfo

public abstract class DefaultAmbientDisplay
    implements IAmbientDisplay
{

    private static final String TAG = "DefaultAmbientDisplay";
    private IAmbientInfo mAmbientInfo;
    private String mAmbientUrl;
    private Context mContext;


    public native void convertImage(Bitmap bitmap, Bitmap bitmap1);

    public IAmbientInfo getAmbientInfo()
    {
        return mAmbientInfo;
    }

    public Context getContext()
    {
        return ToqApplication.getAppContext();
    }

    public String getUrl()
    {
        return mAmbientUrl;
    }

    public abstract IAmbientInfo retreiveDataFromStream(String s, IAmbientInfo iambientinfo, String s1);

    public void setAmbientInfo(IAmbientInfo iambientinfo)
    {
        mAmbientInfo = iambientinfo;
    }

    public void setContext(Context context)
    {
        mContext = ToqApplication.getAppContext();
    }

    public void setUrl(String s)
    {
        mAmbientUrl = s;
    }

    public byte[] writeBitmapinIMGFormat(Bitmap bitmap, boolean flag)
    {
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        byte[] _tmp = new byte[6];
        byte abyte0[];
        if (flag)
            abyte0 = new byte[16 + 2 * (i * j)];
        else
            abyte0 = new byte[16 + i * j];
        byte abyte1[] = (new String("MSOL  ")).getBytes();
        for (int k = 0; k < 6; k++)
            abyte0[k] = abyte1[k];

        if (flag)
            abyte0[6] = -128;
        else
            abyte0[6] = 0;
        abyte0[7] = 8;
        abyte0[8] = (byte)(i & 0xff);
        abyte0[9] = (byte)(i >> 8);
        abyte0[10] = (byte)(j & 0xff);
        abyte0[11] = (byte)(j >> 8);
        for (int l = 12; l < 16; l++)
            abyte0[l] = 0;

        for (int i1 = 0; i1 < j; i1++)
        {
            for (int j1 = 0; j1 < i; j1++)
            {
                int k1 = bitmap.getPixel(j1, i1);
                int l1;
                if (flag)
                    l1 = 16 + (i * (i1 * 2) + j1 * 2);
                else
                    l1 = 16 + (j1 + i1 * i);
                int i2 = Color.red(k1) >> 6;
                int j2 = Color.green(k1) >> 6;
                int k2 = Color.blue(k1) >> 6;
                abyte0[l1] = (byte)(3 + ((i2 << 6) + (j2 << 4) + (k2 << 2)));
                if (flag)
                    abyte0[l1 + 1] = (byte)Color.alpha(k1);
            }

        }

        return abyte0;
    }

    public void writeBytesToFile(byte abyte0[], File file)
    {
        FileOutputStream fileoutputstream;
        FileOutputStream fileoutputstream1;
        String s = file.getAbsolutePath();
        if (file.exists())
            file.delete();
        File file1 = new File(s);
        try
        {
            file1.createNewFile();
        }
        catch (IOException ioexception)
        {
            Log.d("DefaultAmbientDisplay", (new StringBuilder()).append("IOException").append(ioexception).toString());
        }
        fileoutputstream = null;
        fileoutputstream1 = new FileOutputStream(file1);
        fileoutputstream1.write(abyte0);
        fileoutputstream1.close();
        if (true)
            break MISSING_BLOCK_LABEL_66;
        null.close();
_L2:
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L7:
        Log.d("DefaultAmbientDisplay", (new StringBuilder()).append("FileNotFoundException").append(filenotfoundexception).toString());
        if (fileoutputstream == null) goto _L2; else goto _L1
_L1:
        Exception exception;
        IOException ioexception1;
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (Exception exception2)
        {
            return;
        }
        ioexception1;
_L6:
        Log.d("DefaultAmbientDisplay", (new StringBuilder()).append("IOException").append(ioexception1).toString());
        if (fileoutputstream == null) goto _L2; else goto _L3
_L3:
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (Exception exception3)
        {
            return;
        }
        exception;
_L5:
        Exception exception4;
        if (fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch (Exception exception1) { }
        throw exception;
        exception4;
        return;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        ioexception1;
        fileoutputstream = fileoutputstream1;
          goto _L6
        filenotfoundexception;
        fileoutputstream = fileoutputstream1;
          goto _L7
    }

    public abstract Bitmap writeClockDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception;

    public abstract Bitmap writeDataOntoBitmap(IAmbientInfo iambientinfo)
        throws Exception;

    static 
    {
        System.loadLibrary("cp4_1");
    }
}

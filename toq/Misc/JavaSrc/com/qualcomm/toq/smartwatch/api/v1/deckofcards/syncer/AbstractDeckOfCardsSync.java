// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.ambient.DefaultAmbientDisplay;
import com.qualcomm.toq.smartwatch.ambient.IAmbientInfo;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.DeckOfCardsUtils;
import java.io.File;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer:
//            DeckOfCardsSync

public abstract class AbstractDeckOfCardsSync
    implements DeckOfCardsSync
{
    private static class DummyAmbientDisplay extends DefaultAmbientDisplay
    {

        public IAmbientInfo retreiveDataFromStream(String s, IAmbientInfo iambientinfo, String s1)
        {
            return null;
        }

        public Bitmap writeClockDataOntoBitmap(IAmbientInfo iambientinfo)
            throws Exception
        {
            return null;
        }

        public Bitmap writeDataOntoBitmap(IAmbientInfo iambientinfo)
            throws Exception
        {
            return null;
        }

        private DummyAmbientDisplay()
        {
        }

    }


    private static final String APP_IMAGES_DIR_NAME = "images";
    private static final String APP_ZIP_DIR_NAME = "app";
    private static final String LOCAL_ROOT_DIR = "/toq/apps";
    protected Context context;

    public AbstractDeckOfCardsSync()
        throws DeckOfCardsException
    {
        context = ToqApplication.getAppContext();
        setupRootFileSystem(context);
    }

    private void convertImage(Bitmap bitmap, Bitmap bitmap1)
    {
        (new DummyAmbientDisplay()).convertImage(bitmap, bitmap1);
    }

    private File setupRootFileSystem(Context context1)
        throws DeckOfCardsException
    {
        if (!DeckOfCardsUtils.isStorageMounted())
            throw new DeckOfCardsException("storage is not mounted");
        File file;
        try
        {
            file = DeckOfCardsUtils.createStorageDirectory(context1, "/toq/apps");
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException("Unable to create root dir", exception);
        }
        return file;
    }

    private byte[] writeBitmapinIMGFormat(Bitmap bitmap, boolean flag)
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

    public byte[] convertPNGBitmap(Bitmap bitmap)
        throws DeckOfCardsException
    {
        byte abyte0[];
        try
        {
            Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            convertImage(bitmap, bitmap1);
            abyte0 = writeBitmapinIMGFormat(bitmap1, true);
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException("An error occurred converting the PNG bitmap", exception);
        }
        return abyte0;
    }

    File createLocalAppDir(String s)
        throws DeckOfCardsException
    {
        String s1 = (new StringBuilder()).append("/toq/apps").append(File.separator).append(s).toString();
        File file;
        try
        {
            file = DeckOfCardsUtils.createStorageDirectory(context, s1);
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException("Unable to create app dir", exception);
        }
        return file;
    }

    File createLocalAppImagesDir(String s)
        throws DeckOfCardsException
    {
        String s1 = (new StringBuilder()).append("/toq/apps").append(File.separator).append(s).append(File.separator).append("images").toString();
        File file;
        try
        {
            file = DeckOfCardsUtils.createStorageDirectory(context, s1);
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException("Unable to create app images dir", exception);
        }
        return file;
    }

    File createLocalAppZipDir(String s)
        throws DeckOfCardsException
    {
        String s1 = (new StringBuilder()).append("/toq/apps").append(File.separator).append(s).append(File.separator).append("app").toString();
        File file;
        try
        {
            file = DeckOfCardsUtils.createStorageDirectory(context, s1);
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException("Unable to create app zip dir", exception);
        }
        return file;
    }

    void deleteFile(File file)
    {
        if (!DeckOfCardsUtils.isStorageMounted())
            throw new IllegalStateException("Can not create directory: storage is not mounted");
        if (file.exists())
        {
            DeckOfCardsUtils.recursiveFileDelete(file);
            return;
        } else
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("AbstractDeckOfCardsSync.deleteFile - file does not exist: ").append(file).toString());
            return;
        }
    }

    public abstract String getWDAppRoot(String s);

    boolean isFileExist(File file)
    {
        if (!DeckOfCardsUtils.isStorageMounted())
            throw new IllegalStateException("Can not create directory: storage is not mounted");
        else
            return file.exists();
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.util;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.os.Environment;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PhubBluetoothDeviceBondInfo;
import java.io.File;
import java.util.*;

public final class DeckOfCardsUtils
{

    private static boolean isUseExternalStorage = false;

    private DeckOfCardsUtils()
    {
    }

    private static File createDirOrDirPath(Context context, String s)
    {
        File file = context.getFilesDir();
        for (Iterator iterator = (new ArrayList(Arrays.asList(s.split(File.separator)))).iterator(); iterator.hasNext();)
        {
            File file1 = new File(file, (String)iterator.next());
            if (!file1.exists())
                file1.mkdir();
            file = file1;
        }

        return file;
    }

    public static File createStorageDirectory(Context context, String s)
    {
        if (!isStorageMounted())
            throw new IllegalStateException("Can not create directory: storage is not mounted");
        File file;
        if (isUseExternalStorage)
            file = new File(context.getExternalFilesDir(null), s);
        else
            file = createDirOrDirPath(context, s);
        if (!file.exists())
        {
            file.mkdirs();
            Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsUtils.createStorageDirectory - created storage dir: ").append(file).toString());
        }
        return file;
    }

    public static boolean isBluetoothEnabled()
    {
        BluetoothAdapter bluetoothadapter = BluetoothAdapter.getDefaultAdapter();
        return bluetoothadapter != null && bluetoothadapter.isEnabled();
    }

    public static boolean isStorageMounted()
    {
        if (isUseExternalStorage)
            return Environment.getExternalStorageState().equals("mounted");
        else
            return true;
    }

    public static boolean isValidWDState()
    {
        if (PhubBluetoothDeviceBondInfo.getInstance().getWDState() == 3)
        {
            ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
            if (connectionfactory != null && connectionfactory.getEndPoint(0) != null)
                return true;
        }
        return false;
    }

    public static void recursiveFileDelete(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
                recursiveFileDelete(afile[j]);

        }
        file.delete();
    }

}

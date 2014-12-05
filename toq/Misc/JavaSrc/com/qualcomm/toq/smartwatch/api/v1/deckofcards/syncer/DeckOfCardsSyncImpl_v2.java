// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm.lua.LuaMessageTranslator;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalDeckOfCards;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalNotifyTextCard;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.io.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource.CardImage;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource.DeckOfCardsLauncherIcon;
import java.io.*;
import java.util.*;
import java.util.zip.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.syncer:
//            AbstractDeckOfCardsSync

public final class DeckOfCardsSyncImpl_v2 extends AbstractDeckOfCardsSync
{

    private static final String APP_ZIP_COLOR_ICON_FILE_NAME = "color.img";
    private static final String APP_ZIP_FILE_NAME = "app.zip";
    private static final String APP_ZIP_MANIFEST_LUA_FILE_NAME = "manifest.lua";
    private static final String APP_ZIP_TEMPLATE_NAME = "deckofcards_app.zip";
    private static final String APP_ZIP_WHITE_ICON_FILE_NAME = "white.img";
    private static final String DATA_FILE_NAME = "cards.dat";
    private static final String NAME_TOKEN = "%NAME%";
    private static final String WD_ROOT_DIR = "/packages";
    private static DeckOfCardsSyncImpl_v2 inst;

    private DeckOfCardsSyncImpl_v2()
        throws DeckOfCardsException
    {
    }

    private void copyDirectoryIntoZip(File file, ZipOutputStream zipoutputstream, String s)
        throws IOException
    {
        String as[] = file.list();
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s1 = as[j];
            ZipEntry zipentry;
            if (!file.getName().equals(s) && file.getAbsolutePath().contains(s))
            {
                String s2 = file.getAbsolutePath();
                int l = 1 + (s2.lastIndexOf(s) + s.length());
                String s3 = (new StringBuilder()).append(s2.substring(l)).append(File.separator).append(s1).toString();
                zipentry = new ZipEntry(s3);
            } else
            {
                zipentry = new ZipEntry(s1);
            }
            zipoutputstream.putNextEntry(zipentry);
            File file1 = new File(file, s1);
            if (file1.isDirectory())
            {
                if (!file1.exists())
                    file1.mkdirs();
                copyDirectoryIntoZip(file1, zipoutputstream, s);
                continue;
            }
            File file2 = file1.getParentFile();
            if (file2 != null && !file2.exists())
                file2.mkdirs();
            FileInputStream fileinputstream = new FileInputStream(file1);
            BufferedInputStream bufferedinputstream = new BufferedInputStream(fileinputstream);
            byte abyte0[] = new byte[1024];
            do
            {
                int k = bufferedinputstream.read(abyte0);
                if (k == -1)
                    break;
                zipoutputstream.write(abyte0, 0, k);
            } while (true);
            bufferedinputstream.close();
            zipoutputstream.flush();
            zipoutputstream.closeEntry();
        }

    }

    private void copyFromAssets(String s, File file)
        throws DeckOfCardsException
    {
        BufferedInputStream bufferedinputstream;
        BufferedOutputStream bufferedoutputstream;
        bufferedinputstream = null;
        bufferedoutputstream = null;
        BufferedInputStream bufferedinputstream1;
        BufferedOutputStream bufferedoutputstream1;
        Exception exception;
        IOException ioexception1;
        byte abyte0[];
        int i;
        try
        {
            bufferedinputstream1 = new BufferedInputStream(context.getAssets().open(s));
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            bufferedinputstream = null;
            bufferedoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(file));
        abyte0 = new byte[1024];
_L3:
        i = bufferedinputstream1.read(abyte0);
        if (i == -1) goto _L2; else goto _L1
_L1:
        bufferedoutputstream1.write(abyte0, 0, i);
          goto _L3
        ioexception1;
        bufferedoutputstream = bufferedoutputstream1;
        bufferedinputstream = bufferedinputstream1;
_L7:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred copying the file from the assets to storage: ").append(s).append(", localFile: ").append(file).toString(), ioexception1);
        exception;
_L5:
        if (bufferedinputstream == null)
            break MISSING_BLOCK_LABEL_134;
        bufferedinputstream.close();
        if (bufferedoutputstream != null)
            try
            {
                bufferedoutputstream.close();
            }
            catch (IOException ioexception) { }
        throw exception;
_L2:
        bufferedoutputstream1.flush();
        if (bufferedinputstream1 != null)
            try
            {
                bufferedinputstream1.close();
            }
            catch (IOException ioexception2)
            {
                return;
            }
        if (bufferedoutputstream1 == null)
            break MISSING_BLOCK_LABEL_172;
        bufferedoutputstream1.close();
        return;
        exception;
        bufferedinputstream = bufferedinputstream1;
        bufferedoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        bufferedinputstream = bufferedinputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        break MISSING_BLOCK_LABEL_25;
        ioexception1;
        bufferedinputstream = bufferedinputstream1;
        bufferedoutputstream = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void copyLuaTemplateFromAssets(String s, File file)
        throws DeckOfCardsException
    {
        ZipInputStream zipinputstream = null;
        ZipInputStream zipinputstream1 = new ZipInputStream(context.getAssets().open(s));
_L5:
        ZipEntry zipentry = zipinputstream1.getNextEntry();
        if (zipentry == null) goto _L2; else goto _L1
_L1:
        String s1;
        File file1;
        s1 = zipentry.getName();
        file1 = new File(file, s1);
        if (!file1.isDirectory()) goto _L4; else goto _L3
_L3:
        if (!file1.exists())
            file1.mkdirs();
          goto _L5
        Exception exception1;
        exception1;
        zipinputstream = zipinputstream1;
_L7:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred copying the app template from the assets to storage, templateZipName: ").append(s).append(", localAppZipDir: ").append(file).toString(), exception1);
        Exception exception;
        exception;
_L8:
        File file2;
        BufferedOutputStream bufferedoutputstream;
        byte abyte0[];
        int i;
        IOException ioexception1;
        if (zipinputstream != null)
            try
            {
                zipinputstream.close();
            }
            catch (IOException ioexception) { }
        throw exception;
_L4:
        file2 = file1.getParentFile();
        if (file2 == null)
            break MISSING_BLOCK_LABEL_160;
        if (!file2.exists())
            file2.mkdirs();
        if (!s1.contains(".lua"))
            break MISSING_BLOCK_LABEL_266;
        Log.d("DeckOfCards", (new StringBuilder()).append(" zipEntry.getName(): ").append(s1).toString());
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file1));
        abyte0 = new byte[1024];
_L6:
        i = zipinputstream1.read(abyte0);
        if (i == -1)
            break MISSING_BLOCK_LABEL_248;
        bufferedoutputstream.write(abyte0, 0, i);
          goto _L6
        bufferedoutputstream.flush();
        bufferedoutputstream.close();
        zipinputstream1.closeEntry();
          goto _L5
        Log.d("DeckOfCards", (new StringBuilder()).append(" this is not a lua file: ").append(s1).toString());
          goto _L5
_L2:
        if (zipinputstream1 == null)
            break MISSING_BLOCK_LABEL_304;
        zipinputstream1.close();
        return;
        ioexception1;
        return;
        exception1;
        zipinputstream = null;
          goto _L7
        exception;
        zipinputstream = zipinputstream1;
          goto _L8
    }

    private void copyTemplateAppFromAssets(String s, File file)
        throws DeckOfCardsException
    {
        ZipInputStream zipinputstream = null;
        ZipInputStream zipinputstream1 = new ZipInputStream(context.getAssets().open(s));
_L5:
        ZipEntry zipentry = zipinputstream1.getNextEntry();
        if (zipentry == null) goto _L2; else goto _L1
_L1:
        File file1 = new File(file, zipentry.getName());
        if (!file1.isDirectory()) goto _L4; else goto _L3
_L3:
        if (!file1.exists())
            file1.mkdirs();
          goto _L5
        Exception exception1;
        exception1;
        zipinputstream = zipinputstream1;
_L7:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred copying the app template from the assets to storage, templateZipName: ").append(s).append(", localAppZipDir: ").append(file).toString(), exception1);
        Exception exception;
        exception;
_L8:
        File file2;
        BufferedOutputStream bufferedoutputstream;
        byte abyte0[];
        int i;
        IOException ioexception1;
        if (zipinputstream != null)
            try
            {
                zipinputstream.close();
            }
            catch (IOException ioexception) { }
        throw exception;
_L4:
        file2 = file1.getParentFile();
        if (file2 == null)
            break MISSING_BLOCK_LABEL_156;
        if (!file2.exists())
            file2.mkdirs();
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file1));
        abyte0 = new byte[1024];
_L6:
        i = zipinputstream1.read(abyte0);
        if (i == -1)
            break MISSING_BLOCK_LABEL_209;
        bufferedoutputstream.write(abyte0, 0, i);
          goto _L6
        bufferedoutputstream.flush();
        bufferedoutputstream.close();
        zipinputstream1.closeEntry();
          goto _L5
_L2:
        if (zipinputstream1 == null)
            break MISSING_BLOCK_LABEL_237;
        zipinputstream1.close();
        return;
        ioexception1;
        return;
        exception1;
        zipinputstream = null;
          goto _L7
        exception;
        zipinputstream = zipinputstream1;
          goto _L8
    }

    private void debugZipFile(File file)
    {
        BufferedInputStream bufferedinputstream;
        ZipInputStream zipinputstream;
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.debugZipFile - zipFile: ").append(file).toString());
        bufferedinputstream = null;
        zipinputstream = null;
        BufferedInputStream bufferedinputstream1;
        ZipInputStream zipinputstream1;
        Exception exception1;
        ZipInputStream zipinputstream2;
        BufferedInputStream bufferedinputstream2;
        ZipEntry zipentry;
        try
        {
            bufferedinputstream1 = new BufferedInputStream(new FileInputStream(file));
        }
        catch (Exception exception3)
        {
            bufferedinputstream2 = null;
            zipinputstream2 = null;
            continue; /* Loop/switch isn't completed */
        }
        zipinputstream1 = new ZipInputStream(bufferedinputstream1);
_L3:
        zipentry = zipinputstream1.getNextEntry();
        if (zipentry == null) goto _L2; else goto _L1
_L1:
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.debugZipFile - zipEntry: ").append(zipentry.getName()).append(" [").append(zipentry.getCompressedSize()).append("/").append(zipentry.getCompressedSize()).append("]").toString());
        zipinputstream1.closeEntry();
          goto _L3
        exception1;
        zipinputstream2 = zipinputstream1;
        bufferedinputstream2 = bufferedinputstream1;
_L7:
        Exception exception;
        IOException ioexception;
        IOException ioexception2;
        if (zipinputstream2 != null)
            try
            {
                zipinputstream2.close();
            }
            catch (IOException ioexception1)
            {
                return;
            }
        if (bufferedinputstream2 == null)
            break MISSING_BLOCK_LABEL_165;
        bufferedinputstream2.close();
        return;
_L2:
        if (zipinputstream1 != null)
            try
            {
                zipinputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2)
            {
                return;
            }
        if (bufferedinputstream1 == null)
            break MISSING_BLOCK_LABEL_186;
        bufferedinputstream1.close();
        return;
        exception;
_L5:
        if (zipinputstream == null)
            break MISSING_BLOCK_LABEL_200;
        zipinputstream.close();
        if (bufferedinputstream != null)
            try
            {
                bufferedinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
        throw exception;
        exception;
        bufferedinputstream = bufferedinputstream1;
        zipinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        zipinputstream = zipinputstream1;
        bufferedinputstream = bufferedinputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        break MISSING_BLOCK_LABEL_45;
        Exception exception2;
        exception2;
        bufferedinputstream2 = bufferedinputstream1;
        zipinputstream2 = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void generateAppZip(File file, File file1)
        throws DeckOfCardsException
    {
        BufferedOutputStream bufferedoutputstream;
        ZipOutputStream zipoutputstream;
        bufferedoutputstream = null;
        zipoutputstream = null;
        boolean flag = file1.exists();
        bufferedoutputstream = null;
        zipoutputstream = null;
        if (flag) goto _L2; else goto _L1
_L1:
        file1.createNewFile();
_L8:
        BufferedOutputStream bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(file1));
        ZipOutputStream zipoutputstream1;
        try
        {
            zipoutputstream1 = new ZipOutputStream(bufferedoutputstream1);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            bufferedoutputstream = bufferedoutputstream1;
            zipoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        copyDirectoryIntoZip(file, zipoutputstream1, file.getName());
        Exception exception;
        IOException ioexception;
        Exception exception1;
        if (zipoutputstream1 != null)
            try
            {
                zipoutputstream1.close();
            }
            catch (IOException ioexception1)
            {
                return;
            }
        if (bufferedoutputstream1 == null)
            break MISSING_BLOCK_LABEL_85;
        bufferedoutputstream1.close();
        return;
_L2:
        file1.delete();
        file1.createNewFile();
        continue; /* Loop/switch isn't completed */
        exception1;
_L6:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred creating the app zip, localAppZipFile: ").append(file1).toString(), exception1);
        exception;
_L4:
        if (zipoutputstream == null)
            break MISSING_BLOCK_LABEL_142;
        zipoutputstream.close();
        if (bufferedoutputstream != null)
            try
            {
                bufferedoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
        throw exception;
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        zipoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        zipoutputstream = zipoutputstream1;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_54;
        exception1;
        zipoutputstream = zipoutputstream1;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void generateDataFile(String s, File file)
        throws DeckOfCardsException
    {
        FileWriter filewriter;
        BufferedWriter bufferedwriter;
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.generateDataFile - localAppDataFile: ").append(file).append(", lua:\n").append(s).toString());
        filewriter = null;
        bufferedwriter = null;
        FileWriter filewriter1 = new FileWriter(file);
        BufferedWriter bufferedwriter1;
        try
        {
            bufferedwriter1 = new BufferedWriter(filewriter1);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            filewriter = filewriter1;
            bufferedwriter = null;
            continue; /* Loop/switch isn't completed */
        }
        bufferedwriter1.write(s);
        bufferedwriter1.flush();
        IOException ioexception;
        Exception exception;
        IOException ioexception1;
        if (bufferedwriter1 != null)
            try
            {
                bufferedwriter1.close();
            }
            catch (IOException ioexception2)
            {
                return;
            }
        if (filewriter1 == null)
            break MISSING_BLOCK_LABEL_90;
        filewriter1.close();
        return;
        ioexception;
_L4:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred creating the app data file, localAppDataFile: ").append(file).toString(), ioexception);
        exception;
_L2:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_135;
        bufferedwriter.close();
        if (filewriter != null)
            try
            {
                filewriter.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1) { }
        throw exception;
        exception;
        filewriter = filewriter1;
        bufferedwriter = null;
        continue; /* Loop/switch isn't completed */
        exception;
        bufferedwriter = bufferedwriter1;
        filewriter = filewriter1;
        if (true) goto _L2; else goto _L1
_L1:
        break MISSING_BLOCK_LABEL_59;
        ioexception;
        bufferedwriter = bufferedwriter1;
        filewriter = filewriter1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static DeckOfCardsSyncImpl_v2 getInstance()
        throws DeckOfCardsException
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new DeckOfCardsSyncImpl_v2();
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private File getLocalAppDataFile(File file, String s)
    {
        return new File(file, (new StringBuilder()).append(File.separator).append(s).toString());
    }

    private File getLocalAppZipFile(File file, String s)
    {
        return new File(file, (new StringBuilder()).append(File.separator).append(s).toString());
    }

    private String getWDAppDataFile(String s, String s1)
    {
        return (new StringBuilder()).append(getWDAppRoot(s)).append("/").append(s1).toString();
    }

    private String getWDAppImageFile(String s, String s1)
    {
        return (new StringBuilder()).append(getWDAppRoot(s)).append("/").append(s1).toString();
    }

    private String getWDAppZipFile(String s, String s1)
    {
        return (new StringBuilder()).append(getWDAppRoot(s)).append("/").append(s1).toString();
    }

    private void installDeckOfCardsAppZip(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.installDeckOfCardsAppZip - deckOfCards: ").append(deckofcards).append(", resourceStore: ").append(resourcestore).toString());
        String s = deckofcards.getId();
        File file = createLocalAppDir(s);
        File file1 = createLocalAppZipDir(s);
        copyTemplateAppFromAssets("deckofcards_app.zip", file1);
        parseAppManifest(file1, deckofcards.getName());
        parseLauncherIcons(file1, deckofcards, resourcestore);
        File file2 = getLocalAppZipFile(file, "app.zip");
        generateAppZip(file1, file2);
        String s1 = getWDAppZipFile(s, "app.zip");
        FileManager.getInstance().sendAppletFile(new FileRecord(file2, s1));
    }

    private void installInternalDeckOfCardsAppZip(InternalDeckOfCards internaldeckofcards)
        throws DeckOfCardsException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.installInternalDeckOfCardsAppZip - internalDeckOfCards: ").append(internaldeckofcards).toString());
        String s = internaldeckofcards.getId();
        File file = createLocalAppDir(s);
        String s1 = internaldeckofcards.getAppZipFileName();
        File file1 = getLocalAppZipFile(file, s1);
        copyFromAssets(s1, file1);
        String s2 = getWDAppZipFile(s, "app.zip");
        FileManager.getInstance().sendAppletFile(new FileRecord(file1, s2));
    }

    private void parseAppManifest(File file, String s)
        throws DeckOfCardsException
    {
        try
        {
            File file1 = new File(file, "manifest.lua");
            writeFile(file1, (new String(readFile(file1), "UTF-8")).replaceAll("%NAME%", s).getBytes("UTF-8"));
            return;
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException((new StringBuilder()).append("An error occurred parsing the manifest.lua for the deckOfCards: ").append(s).toString(), exception);
        }
    }

    private void parseLauncherIcons(File file, DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException
    {
        DeckOfCardsLauncherIcon adeckofcardslaunchericon[] = deckofcards.getLauncherIcons(resourcestore);
        if (adeckofcardslaunchericon == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L7:
        if (i >= adeckofcardslaunchericon.length) goto _L2; else goto _L3
_L3:
        byte abyte0[] = convertPNGBitmap(adeckofcardslaunchericon[i].getIcon());
        adeckofcardslaunchericon[i].getType();
        JVM INSTR tableswitch 1 2: default 68
    //                   1 182
    //                   2 208;
           goto _L4 _L5 _L6
_L4:
        Exception exception1;
        throw new DeckOfCardsException((new StringBuilder()).append("Unable to create handle launcher icon, unknown type: ").append(adeckofcardslaunchericon[i].getType()).toString());
        Exception exception;
        exception;
        Log.w("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.parseLauncherIcons - an error occurred getting the icons for the deckOfCards: ").append(deckofcards).append("[").append(exception.getMessage()).append("]").toString());
_L2:
        return;
_L5:
        String s = "white.img";
_L8:
        try
        {
            writeFile(new File(file, s), abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            throw new DeckOfCardsException((new StringBuilder()).append("An error occurred parsing the launcher icons for the deckOfCards: ").append(deckofcards).toString(), exception1);
        }
        i++;
          goto _L7
_L6:
        s = "color.img";
          goto _L8
    }

    private byte[] readFile(File file)
        throws DeckOfCardsException
    {
        BufferedInputStream bufferedinputstream;
        ByteArrayOutputStream bytearrayoutputstream;
        bufferedinputstream = null;
        bytearrayoutputstream = null;
        BufferedInputStream bufferedinputstream1;
        ByteArrayOutputStream bytearrayoutputstream1;
        Exception exception;
        IOException ioexception1;
        byte abyte0[];
        int i;
        try
        {
            bufferedinputstream1 = new BufferedInputStream(new FileInputStream(file));
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            bytearrayoutputstream = null;
            bufferedinputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        bytearrayoutputstream1 = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L3:
        i = bufferedinputstream1.read(abyte0);
        if (i == -1) goto _L2; else goto _L1
_L1:
        bytearrayoutputstream1.write(abyte0, 0, i);
          goto _L3
        ioexception1;
        bytearrayoutputstream = bytearrayoutputstream1;
        bufferedinputstream = bufferedinputstream1;
_L7:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred reading the file: ").append(file).toString(), ioexception1);
        exception;
_L5:
        if (bufferedinputstream == null)
            break MISSING_BLOCK_LABEL_113;
        bufferedinputstream.close();
        if (bytearrayoutputstream != null)
            try
            {
                bytearrayoutputstream.close();
            }
            catch (IOException ioexception) { }
        throw exception;
_L2:
        bytearrayoutputstream1.flush();
        if (bufferedinputstream1 == null)
            break MISSING_BLOCK_LABEL_139;
        bufferedinputstream1.close();
        if (bytearrayoutputstream1 != null)
            try
            {
                bytearrayoutputstream1.close();
            }
            catch (IOException ioexception2) { }
        return bytearrayoutputstream1.toByteArray();
        exception;
        bufferedinputstream = bufferedinputstream1;
        bytearrayoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        bytearrayoutputstream = bytearrayoutputstream1;
        bufferedinputstream = bufferedinputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        break MISSING_BLOCK_LABEL_21;
        ioexception1;
        bufferedinputstream = bufferedinputstream1;
        bytearrayoutputstream = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private File storeCardImage(File file, Bitmap bitmap, String s)
        throws DeckOfCardsException
    {
        byte abyte0[] = convertPNGBitmap(bitmap);
        File file1 = new File(file, s);
        writeFile(file1, abyte0);
        return file1;
    }

    private void updateDeckOfCardsData(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException
    {
        String s;
        ArrayList arraylist;
        File file1;
        File file2;
        StringBuilder stringbuilder;
        Iterator iterator;
        s = deckofcards.getId();
        arraylist = new ArrayList();
        File file = createLocalAppDir(s);
        file1 = createLocalAppImagesDir(s);
        file2 = getLocalAppDataFile(file, "cards.dat");
        stringbuilder = new StringBuilder();
        iterator = deckofcards.getListCard().iterator();
_L5:
        InternalNotifyTextCard internalnotifytextcard;
        CardImage cardimage;
        if (!iterator.hasNext())
            break MISSING_BLOCK_LABEL_370;
        Card card = (Card)iterator.next();
        String s4;
        File file3;
        FileRecord filerecord1;
        CardImage cardimage1;
        if (card instanceof InternalNotifyTextCard)
            internalnotifytextcard = (InternalNotifyTextCard)card;
        else
        if (card instanceof SimpleTextCard)
        {
            internalnotifytextcard = InternalNotifyTextCard.getSimpleTextCardInstance((SimpleTextCard)card);
        } else
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.updateDeckOfCardsData - dropping card that isn't instance of InternalNotifyTextCard or SimpleTextCard: ").append(card).toString());
            continue; /* Loop/switch isn't completed */
        }
        if (internalnotifytextcard.getCardImageId() == null) goto _L2; else goto _L1
_L1:
        cardimage1 = internalnotifytextcard.getCardImage(resourcestore);
        cardimage = cardimage1;
_L3:
        Exception exception;
        if (cardimage != null)
            try
            {
                s4 = (new StringBuilder()).append(cardimage.getId()).append(".img").toString();
                file3 = storeCardImage(file1, cardimage.getImage(), s4);
                filerecord1 = new FileRecord(file3, getWDAppImageFile(s, s4));
                arraylist.add(filerecord1);
                internalnotifytextcard.setCardImageURI((new StringBuilder()).append("fms:/").append(s4).toString());
            }
            catch (Exception exception1)
            {
                DeckOfCardsException deckofcardsexception = new DeckOfCardsException((new StringBuilder()).append("An error occurred parsing the card image for the card: ").append(internalnotifytextcard).toString(), exception1);
                throw deckofcardsexception;
            }
_L2:
        stringbuilder.append(LuaMessageTranslator.getInstance().generateNotifyMessage(internalnotifytextcard));
        continue; /* Loop/switch isn't completed */
        exception;
        Log.w("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.updateDeckOfCardsData - an error occurred getting the card image for the card: ").append(internalnotifytextcard).append("[").append(exception.getMessage()).append("]").toString());
        cardimage = null;
          goto _L3
        String s1 = stringbuilder.toString();
        if (s1.length() == 0)
        {
            Log.w("DeckOfCards", "DeckOfCardsSyncImpl_v2.updateDeckOfCardsData - lua is 0 bytes length, removing cards.dat");
            deleteFile(file2);
            String s3 = getWDAppDataFile(s, "cards.dat");
            FileManager.getInstance().removeFile(s3);
            return;
        }
        generateDataFile(s1, file2);
        String s2 = getWDAppDataFile(s, "cards.dat");
        FileManager filemanager = FileManager.getInstance();
        FileRecord filerecord = new FileRecord(file2, s2);
        FileTransaction filetransaction = new FileTransaction(filerecord, (FileRecord[])arraylist.toArray(new FileRecord[arraylist.size()]));
        filemanager.sendAppletFiles(filetransaction);
        return;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void writeFile(File file, byte abyte0[])
        throws DeckOfCardsException
    {
        BufferedOutputStream bufferedoutputstream = null;
        BufferedOutputStream bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(file));
        bufferedoutputstream1.write(abyte0);
        bufferedoutputstream1.flush();
        bufferedoutputstream1.close();
        if (bufferedoutputstream1 == null)
            break MISSING_BLOCK_LABEL_45;
        bufferedoutputstream1.close();
        return;
        Exception exception;
        exception;
_L4:
        throw new DeckOfCardsException((new StringBuilder()).append("An error occurred writing the file: ").append(file).toString(), exception);
        Exception exception1;
        exception1;
_L2:
        IOException ioexception1;
        if (bufferedoutputstream != null)
            try
            {
                bufferedoutputstream.close();
            }
            catch (IOException ioexception) { }
        throw exception1;
        ioexception1;
        return;
        exception1;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String getWDAppRoot(String s)
    {
        return (new StringBuilder()).append("/packages/").append(s).toString();
    }

    public void installDeckOfCards(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.installDeckOfCards - deckOfCards: ").append(deckofcards).append(", resourceStore: ").append(resourcestore).toString());
        if (deckofcards instanceof InternalDeckOfCards)
        {
            InternalDeckOfCards internaldeckofcards = (InternalDeckOfCards)deckofcards;
            if (internaldeckofcards.isNewAppZip())
            {
                Log.d("DeckOfCards", "DeckOfCardsSyncImpl_v2.installDeckOfCards - internal deck of cards is new, installing app.zip...");
                installInternalDeckOfCardsAppZip(internaldeckofcards);
                internaldeckofcards.setNewAppZip(false);
            } else
            {
                Log.w("DeckOfCards", "DeckOfCardsSyncImpl_v2.installDeckOfCards - internal deck of cards, but not installing app.zip (pre-installed in firmware?)");
            }
        } else
        {
            installDeckOfCardsAppZip(deckofcards, resourcestore);
        }
        updateDeckOfCardsData(deckofcards, resourcestore);
    }

    public void uninstallDeckOfCards(String s, String s1)
        throws DeckOfCardsException
    {
        if (s1 == null)
            s1 = "app.zip";
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.uninstallDeckOfCards - packageName: ").append(s).append(", appZipFileName: ").append(s1).toString());
        File file = createLocalAppDir(s);
        deleteFile(getLocalAppZipFile(file, s1));
        String s2 = getWDAppZipFile(s, "app.zip");
        FileManager.getInstance().removeFile(s2);
        deleteFile(getLocalAppDataFile(file, "cards.dat"));
        String s3 = getWDAppDataFile(s, "cards.dat");
        FileManager.getInstance().removeFile(s3);
        deleteFile(createLocalAppZipDir(s));
        File afile[] = createLocalAppImagesDir(s).listFiles();
        int i = afile.length;
        for (int j = 0; j < i; j++)
        {
            File file1 = afile[j];
            FileManager.getInstance().removeFile(getWDAppImageFile(s, file1.getName()));
        }

        deleteFile(createLocalAppImagesDir(s));
    }

    public void updateDeckOfCards(DeckOfCards deckofcards, ResourceStore resourcestore)
        throws DeckOfCardsException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.updateDeckOfCards - deckOfCards: ").append(deckofcards).append(", resourceStore: ").append(resourcestore).toString());
        if (deckofcards instanceof InternalDeckOfCards)
        {
            InternalDeckOfCards internaldeckofcards = (InternalDeckOfCards)deckofcards;
            if (internaldeckofcards.isNewAppZip())
            {
                Log.d("DeckOfCards", "DeckOfCardsSyncImpl_v2.updateDeckOfCards - internal deck of cards is potentially new, re-installing app.zip...");
                installInternalDeckOfCardsAppZip(internaldeckofcards);
                internaldeckofcards.setNewAppZip(false);
            }
        }
        updateDeckOfCardsData(deckofcards, resourcestore);
    }

    public void updateDeckOfCardsAppZip(String s)
        throws DeckOfCardsException
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - packageName: ").append(s).toString());
        try
        {
            String s1 = context.getPackageManager().getApplicationInfo(s, 0).loadLabel(context.getPackageManager()).toString();
            Log.d("DeckOfCards", (new StringBuilder()).append("DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - deckOfCardsName: ").append(s1).toString());
            File file = createLocalAppDir(s);
            File file1 = createLocalAppZipDir(s);
            copyLuaTemplateFromAssets("deckofcards_app.zip", file1);
            parseAppManifest(file1, s1);
            File file2 = getLocalAppZipFile(file, "app.zip");
            generateAppZip(file1, file2);
            String s2 = getWDAppZipFile(s, "app.zip");
            FileManager.getInstance().sendAppletFile(new FileRecord(file2, s2));
            Log.d("DeckOfCards", "DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - updated app.zip sent to WD");
            return;
        }
        catch (Exception exception)
        {
            Log.e("DeckOfCards", "DeckOfCardsSyncImpl_v2.updateDeckOfCardsAppZip - exception while upgrading the app.zip", exception);
        }
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import android.graphics.Bitmap;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            ImageCreatorFactory, DefaultAmbientDisplay, StockAmbientDisplay, WeatherAmbientDisplay, 
//            CurrentCityWeatherAmbientInfo, WeatherAmbientInfo, CityClockImageRepo, StockAmbientInfo, 
//            IAmbientDisplay, IAmbientInfo

public class AmbientImageCreator
{

    private static final int APP_IMAGE = 6;
    private static final int BLUE_IMAGE = 0;
    private static final int CLOCK_IMAGE_DARK = 5;
    private static final int CLOCK_IMAGE_WHITE = 4;
    private static final int DARK_IMAGE = 1;
    private static final String IMAGE_TAG = "images";
    private static final int WHITE_IMAGE = 2;
    private IAmbientDisplay ambientDisplay;

    public AmbientImageCreator(String s)
    {
        ambientDisplay = ImageCreatorFactory.getInstance().getImageCreator(s);
    }

    private String generateZipEntry(String s, String s1)
    {
        return s.substring(1 + s1.length(), s.length());
    }

    public int createAmbientImageAndUpdateImagePaths(IAmbientInfo iambientinfo)
        throws Exception
    {
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
                        Log.d("Ambient", "AmbientImageCreator-createAmbientImageAndUpdateImagePaths");
                        DefaultAmbientDisplay defaultambientdisplay = (DefaultAmbientDisplay)ambientDisplay;
                        if (ambientDisplay instanceof StockAmbientDisplay)
                        {
                            StockAmbientDisplay stockambientdisplay = (StockAmbientDisplay)ambientDisplay;
                            Bitmap bitmap4 = stockambientdisplay.writeClockDataOntoBitmap(iambientinfo, 2);
                            if (bitmap4 != null)
                            {
                                byte abyte2[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap4, false);
                                File file7 = AndroidUtils.getAmbientDirectory("stock");
                                if (file7 != null)
                                {
                                    writeFileForSourceLocation(defaultambientdisplay, abyte2, file7, iambientinfo, 4);
                                    Bitmap bitmap5 = stockambientdisplay.writeClockDataOntoBitmap(iambientinfo, 0);
                                    Log.d("Ambient", "AmbientImageCreator- AmbientImageCreator-Clock Image is created successfully");
                                    if (bitmap5 != null)
                                    {
                                        byte abyte3[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap5, false);
                                        File file8 = AndroidUtils.getAmbientDirectory("stock");
                                        if (file8 != null)
                                        {
                                            writeFileForSourceLocation(defaultambientdisplay, abyte3, file8, iambientinfo, 5);
                                            Bitmap bitmap6 = stockambientdisplay.writeDataOntoBitmap(iambientinfo);
                                            Log.d("Ambient", "AmbientImageCreator-Clock Image is created successfully");
                                            if (bitmap6 != null)
                                            {
                                                byte abyte4[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap6, false);
                                                File file9 = AndroidUtils.getAmbientAppImageDirectory("stock");
                                                if (file9 != null)
                                                {
                                                    writeFileForSourceLocation(defaultambientdisplay, abyte4, file9, iambientinfo, 6);
                                                } else
                                                {
                                                    Log.d("Ambient", "AmbientImageCreator-Can not write File on Sd Card ,Media not mounted");
                                                    return -1;
                                                }
                                            } else
                                            {
                                                Log.e("Ambient", "AmbientImageCreator-Returning Bitmap is null File not written");
                                                return -1;
                                            }
                                        } else
                                        {
                                            Log.d("Ambient", "AmbientImageCreator-Can not write File on Sd Card ,Media not mounted");
                                            return -1;
                                        }
                                    } else
                                    {
                                        Log.e("Ambient", "AmbientImageCreator-AmbientImageCreator-Returning Bitmap is null File not written");
                                        return -1;
                                    }
                                } else
                                {
                                    Log.d("Ambient", "AmbientImageCreator-Can not write File on Sd Card ,Media not mounted");
                                    return -1;
                                }
                            } else
                            {
                                Log.e("Ambient", "AmbientImageCreator- Returning Bitmap is null File not written");
                                return -1;
                            }
                        } else
                        if (ambientDisplay instanceof WeatherAmbientDisplay)
                        {
                            long l = System.currentTimeMillis();
                            Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator-createAmbientImageAndUpdateImagePaths timer start").append(new Date(l)).toString());
                            WeatherAmbientDisplay weatherambientdisplay = (WeatherAmbientDisplay)ambientDisplay;
                            if (iambientinfo instanceof CurrentCityWeatherAmbientInfo)
                                if ("push_online_image".equals(((WeatherAmbientInfo)iambientinfo).getPushImageType()))
                                {
                                    Log.d("Ambient", "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Processing CurrentCityAmbientInfo Images");
                                    CityClockImageRepo cityclockimagerepo = weatherambientdisplay.writeCurrentCityDataOntoBitmap(iambientinfo);
                                    if (cityclockimagerepo != null && cityclockimagerepo.getWeatherConditionImage().length == 3 && cityclockimagerepo.getWeatherHourTempImage().length == 3)
                                    {
                                        Log.d("Ambient", "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Repo got created for CurrentCity Ambient Info");
                                        for (int i = 0; i < 3; i++)
                                        {
                                            Bitmap bitmap2 = cityclockimagerepo.getWeatherHourTempImage()[i];
                                            Bitmap bitmap3 = cityclockimagerepo.getWeatherConditionImage()[i];
                                            if (bitmap2 != null && bitmap3 != null)
                                                createBitmapSourceLocation(defaultambientdisplay, bitmap2, bitmap3, iambientinfo, i);
                                            cityclockimagerepo.getWeatherHourTempImage()[i] = null;
                                            cityclockimagerepo.getWeatherConditionImage()[i] = null;
                                        }

                                        File file4 = AndroidUtils.getAmbientDirectory("weather");
                                        if (file4 != null)
                                        {
                                            File file5 = new File((new StringBuilder()).append(file4).append(File.separator).append("CurrentCityWeather").toString());
                                            if (file5.exists())
                                            {
                                                File file6 = new File((new StringBuilder()).append(file4).append(File.separator).append("ClockThree.zip").toString());
                                                if (!file6.exists())
                                                {
                                                    file6.createNewFile();
                                                } else
                                                {
                                                    file6.delete();
                                                    file6.createNewFile();
                                                }
                                                Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreatorcreateAmbientImageAndUpdateImagePaths -ZIp Destination Location : ").append(file6.getAbsolutePath()).toString());
                                                ArrayList arraylist = new ArrayList();
                                                generateSourceFileList(file5, file5.getAbsolutePath(), arraylist);
                                                Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator-createAmbientImageAndUpdateImagePaths List of files").append(arraylist).toString());
                                                createClockZipFile(file6.getAbsolutePath(), file5.getAbsolutePath(), arraylist);
                                                ((CurrentCityWeatherAmbientInfo)iambientinfo).setClockZipSourceLocation(file6.getAbsolutePath());
                                            }
                                        }
                                    }
                                } else
                                {
                                    File file2 = AndroidUtils.getAmbientDirectory("weather");
                                    if (file2 != null)
                                    {
                                        File file3 = new File((new StringBuilder()).append(file2).append(File.separator).append("ClockThree.zip").toString());
                                        if (file3 != null)
                                            ((CurrentCityWeatherAmbientInfo)iambientinfo).setClockZipSourceLocation(file3.getAbsolutePath());
                                    }
                                }
                            Bitmap bitmap = weatherambientdisplay.writeClockDataOntoBitmap(iambientinfo);
                            if (bitmap == null)
                                break label0;
                            byte abyte0[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap, false);
                            File file = AndroidUtils.getAmbientDirectory("weather");
                            if (file == null)
                                break label1;
                            writeFileForSourceLocation(defaultambientdisplay, abyte0, file, iambientinfo, 4);
                            Bitmap bitmap1 = weatherambientdisplay.writeDataOntoBitmap(iambientinfo);
                            if (bitmap1 == null)
                                break label2;
                            byte abyte1[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap1, false);
                            File file1 = AndroidUtils.getAmbientAppImageDirectory("weather");
                            if (file1 == null)
                                break label3;
                            writeFileForSourceLocation(defaultambientdisplay, abyte1, file1, iambientinfo, 6);
                        }
                        return 0;
                    }
                    Log.d("Ambient", "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Can not write File on Sd Card ,Media not mounted");
                    return -1;
                }
                Log.e("Ambient", "AmbientImageCreatorcreateAmbientImageAndUpdateImagePaths -Returning Bitmap is null File not written");
                return -1;
            }
            Log.d("Ambient", "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Can not write File on Sd Card ,Media not mounted");
            return -1;
        }
        Log.e("Ambient", "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Returning Bitmap is null File not written");
        return -1;
    }

    public void createBitmapSourceLocation(DefaultAmbientDisplay defaultambientdisplay, Bitmap bitmap, Bitmap bitmap1, IAmbientInfo iambientinfo, int i)
    {
        String s = null;
        String s1 = null;
        switch (i)
        {
        case 2: // '\002'
            s = "white_temperature";
            s1 = "white_graphic";
            break;

        case 1: // '\001'
            s = "dark_temperature";
            s1 = "dark_graphic";
            break;

        case 0: // '\0'
            s = "blue_temperature";
            s1 = "blue_graphic";
            break;
        }
        byte abyte0[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap, true);
        byte abyte1[] = defaultambientdisplay.writeBitmapinIMGFormat(bitmap1, true);
        File file = AndroidUtils.getAmbientDirectory("weather");
        if (file != null)
        {
            File file1 = new File(file, "CurrentCityWeather/images");
            if (!file1.exists() && !file1.mkdirs())
                Log.e("Ambient", "AmbientImageCreator-Error Creating currentCityWeatherPath folder on SD Card");
            WeatherAmbientDisplay weatherambientdisplay = (WeatherAmbientDisplay)defaultambientdisplay;
            WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
            File file2 = new File((new StringBuilder()).append(file1).append(File.separator).append(s).append(".img").toString());
            File file3 = new File((new StringBuilder()).append(file1).append(File.separator).append(s1).append(".img").toString());
            defaultambientdisplay.writeBytesToFile(abyte0, file2);
            defaultambientdisplay.writeBytesToFile(abyte1, file3);
            weatherambientdisplay.setAmbientInfo(weatherambientinfo);
            Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator-File written ").append(file2.getPath()).append(" Weather Cond file").append(file3.getPath()).toString());
            return;
        } else
        {
            Log.d("Ambient", "AmbientImageCreator-parent directory returned as null");
            return;
        }
    }

    public void createClockZipFile(String s, String s1, List list)
    {
        byte abyte0[];
        FileInputStream fileinputstream;
        ZipOutputStream zipoutputstream;
        abyte0 = new byte[1024];
        fileinputstream = null;
        zipoutputstream = null;
        FileOutputStream fileoutputstream = new FileOutputStream(s);
        ZipOutputStream zipoutputstream1 = new ZipOutputStream(fileoutputstream);
        Iterator iterator = list.iterator();
_L6:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        String s2 = (String)iterator.next();
        Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator-File Added : ").append(s2).toString());
        zipoutputstream1.putNextEntry(new ZipEntry(s2));
        fileinputstream = new FileInputStream((new StringBuilder()).append(s1).append(File.separator).append(s2).toString());
_L5:
        int i = fileinputstream.read(abyte0);
        if (i <= 0) goto _L4; else goto _L3
_L3:
        zipoutputstream1.write(abyte0, 0, i);
          goto _L5
        IOException ioexception1;
        ioexception1;
        zipoutputstream = zipoutputstream1;
_L9:
        ioexception1.printStackTrace();
        IOException ioexception3;
        if (fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
                return;
            }
        if (zipoutputstream == null)
            break MISSING_BLOCK_LABEL_196;
        zipoutputstream.close();
        return;
_L4:
        fileinputstream.close();
        fileinputstream = null;
        zipoutputstream1.flush();
        zipoutputstream1.closeEntry();
          goto _L6
_L2:
        zipoutputstream1.close();
        Log.d("Ambient", "AmbientImageCreator-Zipping Done");
        if (true)
            break MISSING_BLOCK_LABEL_239;
        null.close();
        if (true)
            break MISSING_BLOCK_LABEL_247;
        null.close();
        return;
        ioexception3;
_L10:
        ioexception3.printStackTrace();
        return;
        Exception exception;
        exception;
_L8:
        if (fileinputstream == null)
            break MISSING_BLOCK_LABEL_276;
        fileinputstream.close();
        if (zipoutputstream != null)
            try
            {
                zipoutputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw exception;
        exception;
        fileinputstream = null;
        zipoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        zipoutputstream = zipoutputstream1;
        continue; /* Loop/switch isn't completed */
        exception;
        zipoutputstream = zipoutputstream1;
        fileinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        fileinputstream = null;
        zipoutputstream = null;
        if (true) goto _L8; else goto _L7
_L7:
        ioexception1;
        fileinputstream = null;
        zipoutputstream = null;
          goto _L9
        ioexception1;
        fileinputstream = null;
        zipoutputstream = null;
          goto _L9
        ioexception1;
        zipoutputstream = zipoutputstream1;
        fileinputstream = null;
          goto _L9
        ioexception1;
        fileinputstream = null;
        zipoutputstream = null;
          goto _L9
        ioexception3;
          goto _L10
    }

    public void generateSourceFileList(File file, String s, List list)
    {
        if (file.isFile())
            list.add(generateZipEntry(file.getAbsoluteFile().toString(), s));
        if (file.isDirectory())
        {
            Log.d("Ambient", "AmbientImageCreator-Insise a directory");
            String as[] = file.list();
            int i = as.length;
            for (int j = 0; j < i; j++)
                generateSourceFileList(new File(file, as[j]), s, list);

        }
    }

    public IAmbientDisplay getAmbinetDispaly()
    {
        return ambientDisplay;
    }

    public void writeFileForSourceLocation(DefaultAmbientDisplay defaultambientdisplay, byte abyte0[], File file, IAmbientInfo iambientinfo, int i)
    {
        if (defaultambientdisplay instanceof StockAmbientDisplay)
        {
            StockAmbientDisplay stockambientdisplay = (StockAmbientDisplay)ambientDisplay;
            StockAmbientInfo stockambientinfo = (StockAmbientInfo)iambientinfo;
            String s3 = stockambientinfo.getCompanySymbol().replaceAll("[%*!@$^()?,.;=/ ]", "");
            File file2;
            if (i == 4)
            {
                file2 = new File((new StringBuilder()).append(file).append(File.separator).append("WHITE_").append(s3).append(".img").toString());
                defaultambientdisplay.writeBytesToFile(abyte0, file2);
                stockambientinfo.setSourceLocation(file2.getPath());
            } else
            if (i == 5)
            {
                file2 = new File((new StringBuilder()).append(file).append(File.separator).append("DARK_").append(s3).append(".img").toString());
                defaultambientdisplay.writeBytesToFile(abyte0, file2);
                stockambientinfo.setDarkImageSourceLocation(file2.getPath());
            } else
            {
                file2 = null;
                if (i == 6)
                {
                    file2 = new File((new StringBuilder()).append(file).append(File.separator).append(s3).append(".img").toString());
                    defaultambientdisplay.writeBytesToFile(abyte0, file2);
                    stockambientinfo.setAppImageSourceLocation(file2.getPath());
                }
            }
            stockambientdisplay.setAmbientInfo(stockambientinfo);
            if (file2 != null)
                Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator- stock File written ").append(file2.getPath()).toString());
            Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator- stock Android Path ").append(stockambientinfo.getSourceLocation()).toString());
            Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator- stock WD Path ").append(stockambientinfo.getDestinationLocation()).toString());
        } else
        if (defaultambientdisplay instanceof WeatherAmbientDisplay)
        {
            WeatherAmbientDisplay weatherambientdisplay = (WeatherAmbientDisplay)defaultambientdisplay;
            WeatherAmbientInfo weatherambientinfo = (WeatherAmbientInfo)iambientinfo;
            String s = weatherambientinfo.getKey();
            String s1;
            if (s != null)
                s1 = s;
            else
                s1 = (new StringBuilder()).append(weatherambientinfo.getCityName()).append(weatherambientinfo.getStateName()).append(weatherambientinfo.getCountryName()).toString();
            String s2 = s1.replaceAll("[%*!@$^()?,.;=/ ]", "");
            File file1;
            if (weatherambientinfo instanceof CurrentCityWeatherAmbientInfo)
                file1 = new File((new StringBuilder()).append(file).append(File.separator).append("CC.").append(s2).append(".img").toString());
            else
                file1 = new File((new StringBuilder()).append(file).append(File.separator).append(s2).append(".img").toString());
            defaultambientdisplay.writeBytesToFile(abyte0, file1);
            if (i == 4)
                weatherambientinfo.setSourceLocation(file1.getPath());
            else
            if (i == 6)
                weatherambientinfo.setAppImageSourceLocation(file1.getPath());
            weatherambientdisplay.setAmbientInfo(weatherambientinfo);
            Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator- weather File written ").append(file1.getPath()).toString());
            Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator-weather Android Path ").append(weatherambientinfo.getSourceLocation()).toString());
            Log.d("Ambient", (new StringBuilder()).append("AmbientImageCreator-weather WD Path ").append(weatherambientinfo.getDestinationLocation()).toString());
            return;
        }
    }
}

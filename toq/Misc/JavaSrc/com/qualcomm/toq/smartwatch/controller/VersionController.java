// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.os.Environment;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.database.FMSDatabaseAdapter;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.io.*;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            FMSController, FirmwareUpdateController

public class VersionController extends DefaultController
{

    private static final String TAG = "VersionController";
    public static final String appName = "VERSION_CONTROLLER";
    private static VersionController mInstance = null;

    private VersionController()
    {
    }

    private void deleteFMSFirmwareEntry()
    {
        try
        {
            if (FMSController.getFmsController() != null && FMSController.getFmsController().getFmsDatabaseAdapter() != null && FMSController.getFmsController().getFmsDatabaseAdapter().isFMSEntryAvailable("/firmware/1234.zip"))
                FMSController.getFmsController().getFmsDatabaseAdapter().deleteFMSEntry("/firmware/1234.zip");
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("VersionController", (new StringBuilder()).append("Exception in deleteFMSFirmwareEntry(): ").append(exception).toString());
            return;
        }
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

                final VersionController this$0;

                public boolean accept(File file1, String s)
                {
                    return s.toLowerCase(Locale.US).endsWith(".zip");
                }

            
            {
                this$0 = VersionController.this;
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

    public static VersionController getVersionController()
    {
        if (mInstance == null)
            mInstance = new VersionController();
        return mInstance;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        j;
        JVM INSTR tableswitch 0 0: default 20
    //                   0 21;
           goto _L1 _L2
_L1:
        return;
_L2:
        SharedPreferences sharedpreferences;
        String s;
        String s1;
        String s2;
        String s3;
        Log.printUsageLog("VersionController", (new StringBuilder()).append("Received VersionInd from ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).toString());
        if (obj == null)
        {
            Log.e("VersionController", "VersionInd payload is null");
            return;
        }
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        sharedpreferences = null;
        if (connectionfactory != null)
        {
            Context context = ConnectionFactory.getConnectionFactory().getContext();
            sharedpreferences = null;
            if (context != null)
                sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("watch_details_pref", 0);
        }
        Log.d("VersionController", (new StringBuilder()).append("Received VersionInd: ").append(obj.toString()).toString());
        Utils.printAlohaVersionIndicationPayload(obj);
        s = null;
        s1 = null;
        s2 = "";
        s3 = "";
        JSONObject jsonobject;
        String s4;
        String s5;
        jsonobject = new JSONObject(obj.toString());
        s4 = jsonobject.getString("AlohaVersion");
        s5 = jsonobject.getString("SoftwareRelease");
        if (!s4.equalsIgnoreCase("1.0")) goto _L4; else goto _L3
_L3:
        Constants.OPP_UUID_BASE = "0000110500001000800000805f9b34fb";
        Log.d("VersionController", (new StringBuilder()).append("Aloha Version 1.0 - OPP UUID = ").append(Constants.OPP_UUID_BASE).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("Aloha Version 1.0 - OPP UUID = ").append(Constants.OPP_UUID_BASE).toString());
_L34:
        boolean flag = jsonobject.isNull("SoftwareRevision");
        String s6 = null;
        if (flag) goto _L6; else goto _L5
_L5:
        s6 = jsonobject.getString("SoftwareRevision");
_L6:
        String s7;
        String s8;
        s7 = jsonobject.getString("ProductModel");
        s8 = jsonobject.getString("HardwareRevision");
        String s9;
        String s10;
        s9 = "";
        s10 = "";
        if (!s4.equalsIgnoreCase("1.0") && !s4.equalsIgnoreCase("1.1")) goto _L8; else goto _L7
_L7:
        String s11;
        Log.d("VersionController", "Aloha Version = 1.0 or 1.1");
        s11 = jsonobject.getString("ProductName");
_L37:
        if (!s4.equalsIgnoreCase("1.0") && !s4.equalsIgnoreCase("1.1") && !s4.equalsIgnoreCase("1.2") && !s4.equalsIgnoreCase("1.3") && !s4.equalsIgnoreCase("1.4") && !s4.equalsIgnoreCase("1.5")) goto _L10; else goto _L9
_L9:
        ToqConnectionHandlerImpl.getConnectionHandler().setEndPointEnableTFTPMode(0, false);
        Log.d("VersionController", "Aloha Version < 1.6: OPP transfer enabled");
_L40:
        if (sharedpreferences == null) goto _L12; else goto _L11
_L11:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.remove((new StringBuilder()).append("device_name").append(l).toString());
        editor.remove((new StringBuilder()).append("hardware_revision").append(l).toString());
        editor.remove((new StringBuilder()).append("model_number").append(l).toString());
        editor.remove((new StringBuilder()).append("software_revision").append(l).toString());
        editor.remove((new StringBuilder()).append("software_release").append(l).toString());
        editor.remove((new StringBuilder()).append("serial_number").append(l).toString());
        editor.remove((new StringBuilder()).append("build_target").append(l).toString());
        editor.commit();
        editor.putString((new StringBuilder()).append("device_name").append(l).toString(), s7);
        editor.putString((new StringBuilder()).append("hardware_revision").append(l).toString(), s8);
        editor.putString((new StringBuilder()).append("model_number").append(l).toString(), s11);
        editor.putString((new StringBuilder()).append("software_revision").append(l).toString(), s6);
        editor.putString((new StringBuilder()).append("software_release").append(l).toString(), s5);
        editor.putString((new StringBuilder()).append("serial_number").append(l).toString(), s9);
        editor.putString((new StringBuilder()).append("build_target").append(l).toString(), s10);
        editor.commit();
_L12:
        if (!s4.equalsIgnoreCase("1.0") && !s4.equalsIgnoreCase("1.1")) goto _L14; else goto _L13
_L13:
        if (!s7.equalsIgnoreCase("qt2_devboard3")) goto _L16; else goto _L15
_L15:
        s2 = "a3.zip";
_L42:
        AssetManager assetmanager;
        Log.d("VersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" Info file name in Assets folder: ").append(s2).toString());
        assetmanager = ConnectionFactory.getConnectionFactory().getContext().getAssets();
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getContext() == null) goto _L1; else goto _L17
_L17:
        Log.d("VersionController", (new StringBuilder()).append("VersionInd from ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("VersionInd from ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).toString());
        String as[];
        int i1;
        as = assetmanager.list("");
        i1 = as.length;
        int j1;
        ZipInputStream zipinputstream;
        j1 = 0;
        zipinputstream = null;
_L68:
        if (j1 >= i1) goto _L19; else goto _L18
_L18:
        String s12 = as[j1];
        Log.d("VersionController", (new StringBuilder()).append("Asset file: ").append(s12).toString());
        if (!s12.equalsIgnoreCase(s2)) goto _L21; else goto _L20
_L20:
        InputStream inputstream = assetmanager.open(s12);
        if (!ConnectionFactory.getConnectionFactory().getCustomsBuildFlag()) goto _L23; else goto _L22
_L22:
        InputStream inputstream1 = getCustomBuildInputStream();
        if (inputstream == null) goto _L25; else goto _L24
_L24:
        inputstream.close();
          goto _L25
_L23:
        if (inputstream != null) goto _L27; else goto _L26
_L26:
        Log.e("VersionController", "Asset inputstream is null");
_L27:
        ZipInputStream zipinputstream1 = new ZipInputStream(inputstream);
_L31:
        ZipEntry zipentry = zipinputstream1.getNextEntry();
        if (zipentry == null) goto _L29; else goto _L28
_L28:
        if (!zipentry.getName().contains("wd.info")) goto _L31; else goto _L30
_L30:
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        InputStreamReader inputstreamreader = new InputStreamReader(zipinputstream1);
        bufferedreader = new BufferedReader(inputstreamreader);
        String s13 = bufferedreader.readLine();
_L33:
        if (s13 == null)
            break; /* Loop/switch isn't completed */
        String s14;
        stringbuilder.append(s13);
        s14 = bufferedreader.readLine();
        s13 = s14;
        if (true) goto _L33; else goto _L32
_L4:
        try
        {
            Constants.OPP_UUID_BASE = "00000001476D42C4BD119D377C456950";
            Log.d("VersionController", (new StringBuilder()).append("Aloha Version >= 1.1 - OPP UUID = ").append(Constants.OPP_UUID_BASE).toString());
            Log.printUsageLog("VersionController", (new StringBuilder()).append("Aloha Version >= 1.1 - OPP UUID = ").append(Constants.OPP_UUID_BASE).toString());
        }
        catch (Exception exception)
        {
            Log.e("VersionController", (new StringBuilder()).append("Exception in VersionInd: ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
          goto _L34
_L8:
        if (!s4.equalsIgnoreCase("1.2")) goto _L36; else goto _L35
_L35:
        Log.d("VersionController", "Aloha Version = 1.2");
        s11 = jsonobject.getString("ProductId");
        s9 = jsonobject.getString("CCA_Id");
          goto _L37
_L36:
        s11 = jsonobject.getString("ProductId");
        s9 = jsonobject.getString("CCA_Id");
        s10 = jsonobject.getString("BuildTarget");
        Log.d("VersionController", (new StringBuilder()).append("Aloha Version >= 1.3 ccaId = ").append(s9).toString());
          goto _L37
_L10:
        if (jsonobject.isNull("TransportProtocol") || !jsonobject.getString("TransportProtocol").equalsIgnoreCase("TFTP")) goto _L39; else goto _L38
_L38:
        ToqConnectionHandlerImpl.getConnectionHandler().setEndPointEnableTFTPMode(0, true);
        Log.d("VersionController", "Aloha Version >= 1.6: TFTP transfer enabled");
          goto _L40
_L39:
        ToqConnectionHandlerImpl.getConnectionHandler().setEndPointEnableTFTPMode(0, false);
        Log.d("VersionController", "Aloha Version >= 1.6: OPP transfer enabled");
          goto _L40
_L16:
        if (!s7.equalsIgnoreCase("wd_ffa_p1")) goto _L42; else goto _L41
_L41:
        s2 = "p1.zip";
          goto _L42
_L14:
        if (!s4.equalsIgnoreCase("1.2")) goto _L44; else goto _L43
_L43:
        if (!s8.equalsIgnoreCase("A3") && !s8.equalsIgnoreCase("P0")) goto _L46; else goto _L45
_L46:
        if (!s8.equalsIgnoreCase("P1") && !s8.equalsIgnoreCase("P2") && !s8.equalsIgnoreCase("P3") && !s8.equalsIgnoreCase("Pilot") && !s8.equalsIgnoreCase("MP")) goto _L42; else goto _L47
_L44:
        if (!s10.equalsIgnoreCase("qt2_devboard3")) goto _L49; else goto _L48
_L48:
        s2 = "a3.zip";
          goto _L42
_L49:
        if (!s10.equalsIgnoreCase("wd_ffa_p1")) goto _L51; else goto _L50
_L50:
        s2 = "p1.zip";
          goto _L42
_L51:
        if (!s10.equalsIgnoreCase("wd_kairos_sb_p1") && !s10.equalsIgnoreCase("wd_kairos_p0")) goto _L53; else goto _L52
_L53:
        if (!s10.equalsIgnoreCase("wd_toes_1")) goto _L55; else goto _L54
_L54:
        s2 = "wd_toes_1.zip";
          goto _L42
_L55:
        if (!s10.equalsIgnoreCase("toq2_2")) goto _L57; else goto _L56
_L56:
        s2 = "toq2_2.zip";
          goto _L42
_L57:
        if (!s10.equalsIgnoreCase("toq2_3")) goto _L59; else goto _L58
_L58:
        s2 = "toq2_3.zip";
          goto _L42
_L59:
        Log.d("VersionController", "Unsupported build target/variant indicated by SmartWatch");
          goto _L42
_L32:
        bufferedreader.close();
        bufferedreader = null;
        JSONObject jsonobject1;
        String s15 = stringbuilder.toString();
        jsonobject1 = new JSONObject(s15);
        s = jsonobject1.getString("Software");
        s1 = s;
        s1 = s1.substring(0, s.lastIndexOf("_"));
        s3 = jsonobject1.getString("Date");
        Log.i("VersionController", (new StringBuilder()).append("App Firmware software Release = ").append(s1).toString());
        Log.i("VersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" Firmware software Release = ").append(s5).toString());
        s = s.substring(1 + s.lastIndexOf("_"));
        Log.d("VersionController", (new StringBuilder()).append("App Firmware Version of ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" in APK = ").append(s).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("App Firmware Version of ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" in APK = ").append(s).toString());
        Log.i("VersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" current Firmware version = ").append(s6).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" current Firmware version = ").append(s6).toString());
_L29:
        bufferedreader = null;
        if (inputstream == null) goto _L61; else goto _L60
_L60:
        inputstream.close();
_L61:
        bufferedreader = null;
        if (zipinputstream1 == null) goto _L63; else goto _L62
_L62:
        zipinputstream1.close();
        zipinputstream1 = null;
_L63:
        bufferedreader = null;
        if (true)
            break MISSING_BLOCK_LABEL_2071;
        null.close();
_L96:
        if (true) goto _L65; else goto _L64
_L64:
        null.close();
_L65:
        if (zipinputstream1 == null) goto _L67; else goto _L66
_L66:
        zipinputstream1.close();
        zipinputstream1 = null;
_L67:
        j1++;
        zipinputstream = zipinputstream1;
          goto _L68
        Exception exception3;
        exception3;
        bufferedreader = null;
        zipinputstream1 = zipinputstream;
_L95:
        exception3.printStackTrace();
        Log.e("VersionController", (new StringBuilder()).append("Failed to copy asset file: ").append(s12).append(" details: ").append(exception3.toString()).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("Failed to copy asset file: ").append(s12).append(" details: ").append(exception3.toString()).toString());
        if (bufferedreader == null)
            continue; /* Loop/switch isn't completed */
        bufferedreader.close();
        if (zipinputstream1 == null) goto _L1; else goto _L69
_L69:
        zipinputstream1.close();
        return;
_L94:
        if (bufferedreader == null) goto _L71; else goto _L70
_L70:
        bufferedreader.close();
_L71:
        if (zipinputstream1 == null) goto _L73; else goto _L72
_L72:
        zipinputstream1.close();
_L73:
        Exception exception2;
        throw exception2;
        Exception exception1;
        exception1;
_L93:
        exception1.printStackTrace();
        Log.e("VersionController", (new StringBuilder()).append("Failed to get asset file list: ").append(exception1.toString()).toString());
_L97:
        Intent intent;
        intent = new Intent();
        intent.setAction(Constants.ACTION_VERSION_INFO);
        intent.putExtra("endpointtype", l);
        ConnectionFactory.getConnectionFactory().setEndPointFirmwareVersion(l, s);
        ConnectionFactory.getConnectionFactory().setEndPointFirmwareDate(l, s3);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeFileName(l, s2);
        if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            AndroidUtils.getAndroidUtils().loadWDSupportedLanguages(s2);
        if (ToqConnectionHandlerImpl.getConnectionHandler().getEndPointCheckCompatibilityMode(l)) goto _L75; else goto _L74
_L74:
        ConnectionFactory.getConnectionFactory().setEndPointVersionState(l, 1);
        intent.putExtra("version_mode", 1);
        intent.putExtra("version_message", (new StringBuilder()).append("Compatibility Check is set to FALSE. Android App version = ").append(s).append(" and ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" version = ").append(s6).append(". Communication will continue to work").toString());
        if (s5 == null || s1 == null) goto _L77; else goto _L76
_L76:
        if (!s5.equalsIgnoreCase(s1) || s6 == null || s == null) goto _L77; else goto _L78
_L78:
        if (Integer.parseInt(s) != Integer.parseInt(s6)) goto _L77; else goto _L79
_L79:
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, false);
        intent.putExtra("firmware_file_name", "");
        deleteFMSFirmwareEntry();
_L82:
        intent.putExtra("_inbuilt_version", s);
        intent.putExtra("_sent_version", s6);
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(l) != 1) goto _L81; else goto _L80
_L80:
        sendAlohaContinueMessage(k, l);
        ToqConnectionHandlerImpl.getConnectionHandler().initialSync();
_L92:
        ConnectionFactory.getConnectionFactory().getContext().sendBroadcast(intent);
        Log.d("VersionController", "ACTION_VERSION_INFO broadcast sent");
        return;
_L77:
        intent.putExtra("firmware_file_name", s2);
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L82
_L75:
        if (s5 == null || s1 == null)
            break MISSING_BLOCK_LABEL_3044;
        if (!s5.equalsIgnoreCase(s1))
            break MISSING_BLOCK_LABEL_3044;
        if (s6 == null || s == null) goto _L84; else goto _L83
_L83:
        if (Integer.parseInt(s) != Integer.parseInt(s6)) goto _L86; else goto _L85
_L85:
        intent.putExtra("version_mode", 1);
        intent.putExtra("version_message", (new StringBuilder()).append("Android App and ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" have same version = ").append(s).append(". Communication will continue to work").toString());
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, false);
        ConnectionFactory.getConnectionFactory().setEndPointVersionState(l, 1);
        deleteFMSFirmwareEntry();
          goto _L82
_L86:
        if (Integer.parseInt(s) <= Integer.parseInt(s6)) goto _L88; else goto _L87
_L87:
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Android App version: ").append(s).append(" is higher than the ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" version = ").append(s6).append(". Please upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware").toString());
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L82
_L88:
        if (Integer.parseInt(s) >= Integer.parseInt(s6)) goto _L82; else goto _L89
_L89:
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Android App version = ").append(s).append(" is lower than the ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" version = ").append(s6).append(". Please upgrade Android App to match the ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" version, else upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware to communicate").toString());
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L82
_L84:
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Unable to fetch Version Info, Please upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware").toString());
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L82
        intent.putExtra("version_mode", 2);
        intent.putExtra("version_message", (new StringBuilder()).append("Software Release type differs between App and ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(", Please upgrade ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[l]).append(" firmware").toString());
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeState(l, true);
          goto _L82
_L81:
        ConnectionFactory.getConnectionFactory().setEndPointUpgradeFileName(l, s2);
        ConnectionFactory.getConnectionFactory().setEndPointVersionState(l, 2);
        sendAlohaWaitUpdateMessage(k, l);
        if (ConnectionFactory.getConnectionFactory().getCustomsBuildFlag()) goto _L91; else goto _L90
_L90:
        if (ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l).equalsIgnoreCase("a3.zip") || ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l).equalsIgnoreCase("p1.zip") || ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l).equalsIgnoreCase("p0_kairos.zip") || ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l).equalsIgnoreCase("wd_toes_1.zip") || ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l).equalsIgnoreCase("toq2_2.zip") || ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l).equalsIgnoreCase("toq2_3.zip"))
        {
            boolean flag2 = FirmwareUpdateController.getFirmwareUpdateController(ConnectionFactory.getConnectionFactory().getContext()).pushFirmwareUpdateToWD(ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l));
            Log.d("VersionController", (new StringBuilder()).append("").append(ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l)).append(" Firmware push result: ").append(flag2).toString());
            Log.printUsageLog("VersionController", (new StringBuilder()).append("").append(ConnectionFactory.getConnectionFactory().getEndPointUpgradeFileName(l)).append(" Firmware push result: ").append(flag2).toString());
        }
          goto _L92
_L91:
        boolean flag1 = FirmwareUpdateController.getFirmwareUpdateController(ConnectionFactory.getConnectionFactory().getContext()).pushCustomFirmwareUpdateToWD();
        Log.d("VersionController", (new StringBuilder()).append("Firmware push result: ").append(flag1).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("Firmware push result: ").append(flag1).toString());
          goto _L92
        exception1;
        zipinputstream;
          goto _L93
        exception2;
        bufferedreader = null;
          goto _L94
        exception2;
          goto _L94
        exception3;
        bufferedreader = null;
          goto _L95
        exception3;
          goto _L95
_L21:
        zipinputstream1 = zipinputstream;
          goto _L96
_L25:
        inputstream = inputstream1;
          goto _L23
_L45:
        s2 = "a3.zip";
          goto _L42
_L47:
        s2 = "p1.zip";
          goto _L42
_L52:
        s2 = "p0_kairos.zip";
          goto _L42
        exception2;
        zipinputstream1 = zipinputstream;
        bufferedreader = null;
          goto _L94
_L19:
        zipinputstream;
          goto _L97
    }

    public void sendAlohaContinueMessage(int i, int j)
    {
        SharedPreferences sharedpreferences;
        android.content.SharedPreferences.Editor editor;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append('{');
        stringbuilder.append("\"PhoneType\"");
        stringbuilder.append(":");
        stringbuilder.append("\"Android\"");
        stringbuilder.append(',');
        stringbuilder.append("\"SoftwareRelease\"");
        stringbuilder.append(":");
        stringbuilder.append("\"");
        stringbuilder.append(android.os.Build.VERSION.RELEASE);
        stringbuilder.append("\"");
        stringbuilder.append('}');
        Log.printUsageLog("VersionController", "Sending VersionContinueInd to WD");
        sendControllerMessageData(j, 0, 0, stringbuilder.toString(), 1, i);
        Log.d("VersionController", (new StringBuilder()).append("sent VersionContinueInd Indication: ").append(stringbuilder.toString()).append(" for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
        Log.printUsageLog("VersionController", (new StringBuilder()).append("sent VersionContinueInd Indication: ").append(stringbuilder.toString()).append(" for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("app_pref", 0);
        editor = sharedpreferences.edit();
        if (!sharedpreferences.getBoolean("firmwareUpgrade", false))
            break MISSING_BLOCK_LABEL_365;
        editor.putBoolean("firmwareUpgrade", false);
        editor.commit();
        String s = ToqApplication.getAppContext().getPackageManager().getPackageInfo(ToqApplication.getAppContext().getPackageName(), 0).versionName;
        if (!sharedpreferences.getString("versionName", "1.0.0").equals(s))
        {
            editor.putString("versionName", s);
            editor.commit();
            Intent intent = new Intent(Constants.ACTION_SMARTWATCH_APP_UPDATED);
            intent.putExtra("appupgrade", true);
            intent.putExtra("appversionname", s);
            ToqApplication.getAppContext().sendBroadcast(intent);
            Log.printUsageLog("VersionController", "Broadcast ACTION_SMARTWATCH_APP_UPDATED sent");
        }
_L6:
        AudioManager audiomanager = (AudioManager)ConnectionFactory.getConnectionFactory().getContext().getSystemService("audio");
        if (audiomanager.getRingerMode() == 1) goto _L2; else goto _L1
_L1:
        int l = audiomanager.getRingerMode();
        int k = 0;
        if (l != 0) goto _L3; else goto _L2
_L3:
        JSONObject jsonobject;
        Exception exception2;
        try
        {
            jsonobject = new JSONObject();
        }
        catch (Exception exception)
        {
            Log.e("VersionController", (new StringBuilder()).append("Exception in sendAlohaContinueMessage(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
        try
        {
            jsonobject.put("silence_mode", k);
        }
        catch (Exception exception1) { }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject, 32769, ConnectionFactory.getConnectionFactory().createTransactionID());
            Log.d("VersionController", (new StringBuilder()).append("SilencePhoneInd: ").append(jsonobject).toString());
            return;
        }
        break; /* Loop/switch isn't completed */
        exception2;
        exception2.printStackTrace();
        Log.e("VersionController", exception2.toString());
        continue; /* Loop/switch isn't completed */
_L2:
        k = 1;
        if (true) goto _L3; else goto _L4
_L4:
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void sendAlohaWaitUpdateMessage(int i, int j)
    {
        try
        {
            android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("app_pref", 0).edit();
            editor.putBoolean("firmwareUpgrade", true);
            editor.commit();
            Log.d("VersionController", (new StringBuilder()).append("Sending VersionWaitUpdateInd to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            Log.printUsageLog("VersionController", (new StringBuilder()).append("Sending VersionWaitUpdateInd to ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            sendControllerMessageData(j, 0, 0, "{ }", 2, i);
            Log.d("VersionController", (new StringBuilder()).append("sent VersionWaitUpdateInd Indication: ").append("{ }".toString()).append(" for device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[j]).toString());
            return;
        }
        catch (Exception exception)
        {
            Log.e("VersionController", (new StringBuilder()).append("Exception in sendAlohaWaitUpdateMessage(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

}

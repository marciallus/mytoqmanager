// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.alljoyn.demo.controlpanel;

import android.content.*;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.wifi.SupplicantState;
import android.os.AsyncTask;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.alljoyn.AllJoynBusHandler;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalDeckOfCards;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalDeckOfCardsEventListener;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade;
import com.qualcomm.toq.smartwatch.controller.AppMessagingController;
import com.qualcomm.toq.smartwatch.controller.FMSController;
import java.io.*;
import java.net.URL;
import java.util.*;
import java.util.concurrent.*;
import org.alljoyn.bus.BusException;
import org.alljoyn.services.common.BusObjectDescription;
import org.alljoyn.services.common.utils.TransportUtil;

// Referenced classes of package com.qualcomm.toq.smartwatch.alljoyn.demo.controlpanel:
//            AllJoynDevice, AllJoynDeviceResponse

public class AllJoynDeviceManager
{
    private class AJStateListenerImpl
        implements com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade.StateListener
    {

        final AllJoynDeviceManager this$0;

        public void onBluetoothDisabled()
        {
        }

        public void onBluetoothEnabled()
        {
        }

        public void onWatchConnected()
        {
        }

        public void onWatchDisconnected()
        {
        }

        public void onWatchPaired()
        {
            if (AllJoynBusHandler.getInstance().isAlljoynRunning())
            {
                Log.d("AllJoynDeviceManager", "AJStateListenerImpl.onWatchPaired - Installing AllJoyn");
                init();
                AllJoynDevice alljoyndevice;
                for (Iterator iterator = getDevices().iterator(); iterator.hasNext(); m_ImageCacheManager.addNewDeviceToQueue(alljoyndevice.getId()))
                    alljoyndevice = (AllJoynDevice)iterator.next();

            }
        }

        public void onWatchUnpaired()
        {
        }

        private AJStateListenerImpl()
        {
            this$0 = AllJoynDeviceManager.this;
            super();
        }

    }

    private class DeckOfCardsEventListenerImpl
        implements InternalDeckOfCardsEventListener
    {

        private AllJoynDevice selectedDevice;
        final AllJoynDeviceManager this$0;

        public void onCardClosed(String s)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ControlPanel.DeckOfCardsEventListenerImpl.onCardClosed - cardId: ").append(s).toString());
        }

        public void onCardInvisible(String s)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ControlPanel.DeckOfCardsEventListenerImpl.onCardInvisible - cardId: ").append(s).toString());
        }

        public void onCardOpen(String s)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ControlPanel.DeckOfCardsEventListenerImpl.onCardOpen - cardId: ").append(s).toString());
        }

        public void onCardVisible(String s)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ControlPanel.DeckOfCardsEventListenerImpl.onCardVisible - cardId: ").append(s).toString());
        }

        public void onMenuOptionSelected(String s, String s1)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ControlPanel.DeckOfCardsEventListenerImpl.onMenuOptionSelected - cardId: ").append(s).append(", menuOption: ").append(s1).toString());
        }

        public void onMenuOptionSelected(String s, String s1, String s2)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ControlPanel.DeckOfCardsEventListenerImpl.onMenuOptionSelected - cardId: ").append(s).append(", menuOption: ").append(s1).append(", quickReplyOption: ").append(s2).toString());
        }

        public void onReceivedMessage(byte abyte0[])
        {
label0:
            {
                Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ControlPanel.DeckOfCardsEventListenerImpl.onReceivedMessage - message.length: ").append(abyte0.length).toString());
                String s = new String(abyte0);
                if (!s.startsWith("Event"))
                    break label0;
                HashMap hashmap = new HashMap();
                String as[] = s.substring(1 + s.indexOf("{"), -1 + s.indexOf("}")).split(",");
                for (int i = 0; i < as.length; i++)
                {
                    String as1[] = as[i].split("=");
                    if (as1.length >= 2)
                        hashmap.put(as1[0].trim(), as1[1].trim().replace("\"", ""));
                }

                String s1 = (String)hashmap.get("event");
                if (s1.equals("opened"))
                {
                    String s2 = (String)hashmap.get("id");
                    Log.d("AllJoynDeviceManager", (new StringBuilder()).append("Looking for: ").append(s2).toString());
                    Iterator iterator = getDevices().iterator();
                    AllJoynDevice alljoyndevice;
                    do
                    {
                        if (!iterator.hasNext())
                            break label0;
                        alljoyndevice = (AllJoynDevice)iterator.next();
                        Log.d("AllJoynDeviceManager", (new StringBuilder()).append("Device: ").append(alljoyndevice.getId().equals(UUID.fromString(s2))).toString());
                    } while (!alljoyndevice.getId().equals(UUID.fromString(s2)));
                    alljoyndevice.requestControlPanels(false);
                    selectedDevice = alljoyndevice;
                } else
                {
                    if (s1.equals("closed"))
                    {
                        if (selectedDevice != null)
                            selectedDevice.stopControlPanelSession();
                        selectedDevice = null;
                        return;
                    }
                    if (s1.equals("clicked") && selectedDevice != null)
                    {
                        selectedDevice.handleButtonAction((String)hashmap.get("id"));
                        return;
                    }
                    if ((s1.equals("up") || s1.equals("down")) && selectedDevice != null)
                    {
                        selectedDevice.handleSliderAction((String)hashmap.get("id"), s1.equals("up"));
                        return;
                    }
                    if (s1.equals("changed") && selectedDevice != null)
                    {
                        selectedDevice.handlePicklistAction((String)hashmap.get("id"), Integer.parseInt((String)hashmap.get("data")));
                        return;
                    }
                }
            }
        }

        private DeckOfCardsEventListenerImpl()
        {
            this$0 = AllJoynDeviceManager.this;
            super();
            selectedDevice = null;
        }

    }

    private class ImageCacheManger
    {

        private final int MAX_ATTEMPTS = 2;
        private Map m_UUIDtoImageCacheObject;
        private BlockingQueue m_imageDownloadQueue;
        private Thread m_imageThread;
        private boolean m_isRunning;
        final AllJoynDeviceManager this$0;

        public void addNewDeviceToQueue(UUID uuid)
        {
            ImageCacheObject imagecacheobject = (ImageCacheObject)m_UUIDtoImageCacheObject.get(uuid);
            if (imagecacheobject == null)
            {
                imagecacheobject = new ImageCacheObject(uuid);
                m_UUIDtoImageCacheObject.put(uuid, imagecacheobject);
            } else
            {
                imagecacheobject.m_iconAttempts = 0;
                imagecacheobject.m_ImageCacheObjectState = ImageCacheObjectState.GET_ICON;
            }
            if (!isInQueue(uuid))
                m_imageDownloadQueue.add(imagecacheobject);
        }

        public void init()
        {
            this;
            JVM INSTR monitorenter ;
            if (m_imageThread == null) goto _L2; else goto _L1
_L1:
            boolean flag = m_imageThread.isAlive();
            if (!flag) goto _L2; else goto _L3
_L3:
            this;
            JVM INSTR monitorexit ;
            return;
_L2:
            m_isRunning = true;
            m_imageThread = new Thread("ImageCacheMangerThread") {

                final ImageCacheManger this$1;

                public void run()
                {
_L2:
                    if (!m_isRunning)
                        break; /* Loop/switch isn't completed */
                    ImageCacheManger.ImageCacheObject imagecacheobject;
                    AllJoynDevice alljoyndevice;
                    imagecacheobject = (ImageCacheManger.ImageCacheObject)m_imageDownloadQueue.take();
                    alljoyndevice = getDevice(imagecacheobject.m_UUID);
                    if (alljoyndevice == null)
                        continue; /* Loop/switch isn't completed */
                    InterruptedException interruptedexception;
                    if (imagecacheobject.m_ImageCacheObjectState == ImageCacheObjectState.ICON_STORED)
                        continue; /* Loop/switch isn't completed */
                    Log.d("AllJoynDeviceManager", (new StringBuilder()).append("ImageCacheManger - Retrieving the icon for ").append(imagecacheobject.m_UUID).toString());
                    if (sendIconToWD(alljoyndevice.getId()))
                    {
                        imagecacheobject.m_ImageCacheObjectState = ImageCacheObjectState.ICON_STORED;
                        Log.d("AllJoynDeviceManager", "ImageCacheManger - Successfully retrieved icon");
                        continue; /* Loop/switch isn't completed */
                    }
                    imagecacheobject.m_iconAttempts = 1 + imagecacheobject.m_iconAttempts;
                    if (imagecacheobject.m_iconAttempts < 2)
                    {
                        m_imageDownloadQueue.add(imagecacheobject);
                        Log.d("AllJoynDeviceManager", "ImageCacheManger - Re-attempting to retrieving the icon");
                        continue; /* Loop/switch isn't completed */
                    }
                    try
                    {
                        imagecacheobject.m_ImageCacheObjectState = ImageCacheObjectState.ICON_STORED;
                        Log.d("AllJoynDeviceManager", "ImageCacheManger - Using the default icon");
                    }
                    // Misplaced declaration of an exception variable
                    catch (InterruptedException interruptedexception)
                    {
                        Log.logException("AllJoynDeviceManager", interruptedexception, "ImageCacheMangerThread");
                    }
                    if (true) goto _L2; else goto _L1
_L1:
                }

            
            {
                this$1 = ImageCacheManger.this;
                super(s);
            }
            }
;
            m_imageThread.start();
            if (true) goto _L3; else goto _L4
_L4:
            Exception exception;
            exception;
            throw exception;
        }

        public boolean isInQueue(UUID uuid)
        {
            ImageCacheObject imagecacheobject = (ImageCacheObject)m_UUIDtoImageCacheObject.get(uuid);
            if (imagecacheobject != null)
                return m_imageDownloadQueue.contains(imagecacheobject);
            else
                return false;
        }

        public void removeDeviceFromUUUIDList(UUID uuid)
        {
            m_UUIDtoImageCacheObject.remove(uuid);
        }

        public void stopImageThread()
        {
            this;
            JVM INSTR monitorenter ;
            m_isRunning = false;
            m_imageThread = null;
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }



        public ImageCacheManger()
        {
            this$0 = AllJoynDeviceManager.this;
            super();
            m_isRunning = true;
            m_imageThread = null;
            m_UUIDtoImageCacheObject = new HashMap();
            m_imageDownloadQueue = new ArrayBlockingQueue(100);
            Log.i("AllJoynDeviceManager", "ImageCacheManger Constructor");
        }
    }

    private class ImageCacheManger.ImageCacheObject
    {

        public ImageCacheObjectState m_ImageCacheObjectState;
        public long m_LastTimeTried;
        public UUID m_UUID;
        public int m_iconAttempts;
        final ImageCacheManger this$1;

        public ImageCacheManger.ImageCacheObject(UUID uuid)
        {
            this$1 = ImageCacheManger.this;
            super();
            m_UUID = uuid;
            m_LastTimeTried = 0L;
            m_iconAttempts = 0;
            m_ImageCacheObjectState = ImageCacheObjectState.GET_ICON;
        }
    }

    private static final class ImageCacheObjectState extends Enum
    {

        private static final ImageCacheObjectState $VALUES[];
        public static final ImageCacheObjectState GET_ICON;
        public static final ImageCacheObjectState ICON_STORED;

        public static ImageCacheObjectState valueOf(String s)
        {
            return (ImageCacheObjectState)Enum.valueOf(com/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState, s);
        }

        public static ImageCacheObjectState[] values()
        {
            return (ImageCacheObjectState[])$VALUES.clone();
        }

        static 
        {
            GET_ICON = new ImageCacheObjectState("GET_ICON", 0);
            ICON_STORED = new ImageCacheObjectState("ICON_STORED", 1);
            ImageCacheObjectState aimagecacheobjectstate[] = new ImageCacheObjectState[2];
            aimagecacheobjectstate[0] = GET_ICON;
            aimagecacheobjectstate[1] = ICON_STORED;
            $VALUES = aimagecacheobjectstate;
        }

        private ImageCacheObjectState(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String ABOUT_ICON_DEFAULT_URL = "local://defaultURL";
    public static final String ABOUT_ICON_LOCAL_PREFIX_URL = "local://DeviceContent/";
    private static final String APP_NAME = "AllJoyn";
    private static final String APP_PACKAGE_NAME = "com.qualcomm.qce.alljoyn";
    private static final String APP_ZIP_FILE = "alljoyn_app.zip";
    private static final String DATA_FILE_NAME = "devices.dat";
    private static final String FMS_DIR = "/packages/com.qualcomm.qce.alljoyn/";
    private static AllJoynDeviceManager m_current;
    private final String TAG = "AllJoynDeviceManager";
    private BroadcastReceiver broadcastReceiver;
    private InternalDeckOfCards deckOfCards;
    private LocalDeckOfCardsManager localDeckOfCardsManager;
    private ImageCacheManger m_ImageCacheManager;
    Map m_deviceList;

    protected AllJoynDeviceManager()
    {
        m_ImageCacheManager = null;
        broadcastReceiver = null;
        StateListenerFacade.getInstance().addStateListener(new AJStateListenerImpl());
    }

    private void clearDeviceList()
    {
        if (m_deviceList != null)
            m_deviceList.clear();
    }

    private ArrayList getAllDevices()
    {
        if (m_deviceList != null)
            return new ArrayList(m_deviceList.values());
        else
            return new ArrayList();
    }

    private Map getDeviceList()
    {
        if (m_deviceList == null)
            m_deviceList = new ConcurrentHashMap();
        return m_deviceList;
    }

    public static AllJoynDeviceManager getInstance()
    {
        if (m_current == null)
            m_current = new AllJoynDeviceManager();
        return m_current;
    }

    public boolean contains(UUID uuid)
    {
        return getDeviceList().containsKey(uuid.toString());
    }

    protected void generateDatFile()
    {
        this;
        JVM INSTR monitorenter ;
        FileWriter filewriter;
        BufferedWriter bufferedwriter;
        File file;
        String s;
        filewriter = null;
        bufferedwriter = null;
        file = null;
        s = "";
        ArrayList arraylist;
        arraylist = new ArrayList(getDevices());
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            AllJoynDevice alljoyndevice = (AllJoynDevice)iterator.next();
            s = (new StringBuilder()).append(s).append(alljoyndevice.getLuaString()).append("\n").toString();
        }

        boolean flag = arraylist.isEmpty();
        if (!flag) goto _L2; else goto _L1
_L1:
        removeFileFMS("devices.dat");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        Log.logException("AllJoynDeviceManager", deckofcardsexception);
          goto _L3
        Exception exception;
        exception;
_L14:
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        FileWriter filewriter1;
        file = File.createTempFile("devices", ".dat");
        filewriter1 = new FileWriter(file);
        BufferedWriter bufferedwriter1 = new BufferedWriter(filewriter1);
        bufferedwriter1.write(s);
        bufferedwriter1.flush();
        if (bufferedwriter1 == null)
            break MISSING_BLOCK_LABEL_182;
        bufferedwriter1.close();
        if (filewriter1 == null) goto _L5; else goto _L4
_L4:
        filewriter1.close();
_L5:
        if (file == null) goto _L3; else goto _L6
_L6:
        Log.d("AllJoynDeviceManager", "generateDatFile - sending devices.dat");
        sendFileFMS(file, "devices.dat");
          goto _L3
        IOException ioexception3;
        ioexception3;
        Log.logException("AllJoynDeviceManager", ioexception3);
          goto _L5
        IOException ioexception1;
        ioexception1;
_L13:
        Log.logException("AllJoynDeviceManager", ioexception1);
        if (bufferedwriter == null) goto _L8; else goto _L7
_L7:
        bufferedwriter.close();
_L8:
        if (filewriter == null) goto _L5; else goto _L9
_L9:
        filewriter.close();
          goto _L5
        IOException ioexception2;
        ioexception2;
        Log.logException("AllJoynDeviceManager", ioexception2);
          goto _L5
        Exception exception1;
        exception1;
_L12:
        if (bufferedwriter == null)
            break MISSING_BLOCK_LABEL_275;
        bufferedwriter.close();
        if (filewriter == null)
            break MISSING_BLOCK_LABEL_283;
        filewriter.close();
_L10:
        throw exception1;
        IOException ioexception;
        ioexception;
        Log.logException("AllJoynDeviceManager", ioexception);
          goto _L10
        exception1;
        filewriter = filewriter1;
        bufferedwriter = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        bufferedwriter = bufferedwriter1;
        filewriter = filewriter1;
        if (true) goto _L12; else goto _L11
_L11:
        ioexception1;
        filewriter = filewriter1;
        bufferedwriter = null;
          goto _L13
        ioexception1;
        bufferedwriter = bufferedwriter1;
        filewriter = filewriter1;
          goto _L13
        exception;
          goto _L14
    }

    public AllJoynDevice getDevice(UUID uuid)
    {
        if (uuid == null)
            return null;
        else
            return (AllJoynDevice)getDeviceList().get(uuid.toString());
    }

    protected AllJoynDevice getDeviceByServiceName(String s)
    {
        ArrayList arraylist = getAllDevices();
        if (arraylist == null)
            return null;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            AllJoynDevice alljoyndevice = (AllJoynDevice)iterator.next();
            if (alljoyndevice.getServiceName() != null && alljoyndevice.getServiceName().equals(s))
                return alljoyndevice;
        }

        return null;
    }

    public ArrayList getDevices()
    {
label0:
        {
            ArrayList arraylist;
            if (m_deviceList == null)
            {
                arraylist = new ArrayList();
            } else
            {
                Iterator iterator = getAllDevices().iterator();
                if (iterator == null)
                    break label0;
                arraylist = new ArrayList();
                do
                {
                    if (!iterator.hasNext())
                        break;
                    AllJoynDevice alljoyndevice = (AllJoynDevice)iterator.next();
                    if (alljoyndevice.getStatus() != AllJoynDevice.DeviceStatus.GONE)
                        arraylist.add(alljoyndevice);
                } while (true);
            }
            return arraylist;
        }
        return new ArrayList();
    }

    public Bitmap getIconUsingContent(UUID uuid)
    {
        Log.d("AllJoynDeviceManager", (new StringBuilder()).append("getIconUsingContent - Device: ").append(uuid).toString());
        AllJoynDevice alljoyndevice = getDevice(uuid);
        if (alljoyndevice == null)
            return null;
        byte abyte0[] = alljoyndevice.getIconContent();
        Bitmap bitmap = null;
        if (abyte0 != null)
        {
            Log.d("AllJoynDeviceManager", "getIconUsingContent - Successfully retrieved icon content");
            Bitmap bitmap1 = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
            if (alljoyndevice.getIconMimeType().equalsIgnoreCase("image/png"))
            {
                bitmap = bitmap1;
            } else
            {
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                bitmap1.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
                bitmap = BitmapFactory.decodeStream(new ByteArrayInputStream(bytearrayoutputstream.toByteArray()));
                try
                {
                    bytearrayoutputstream.close();
                }
                catch (IOException ioexception)
                {
                    Log.logException("AllJoynDeviceManager", ioexception);
                }
                bitmap1.recycle();
            }
        }
        if (bitmap == null)
        {
            Log.d("AllJoynDeviceManager", "getIconUsingContent - Null icon");
            alljoyndevice.setIsUsingDefaultIcon(true);
        } else
        {
            Log.d("AllJoynDeviceManager", "getIconUsingContent - Successfully retrieved icon");
            alljoyndevice.setIsUsingDefaultIcon(false);
        }
        return bitmap;
    }

    public Bitmap getIconUsingURL(UUID uuid)
    {
        AllJoynDevice alljoyndevice;
        Bitmap bitmap;
        String s;
        Log.d("AllJoynDeviceManager", (new StringBuilder()).append("getIconUsingURL - Device: ").append(uuid).toString());
        alljoyndevice = getDevice(uuid);
        if (alljoyndevice == null)
            return null;
        AllJoynDeviceResponse alljoyndeviceresponse = alljoyndevice.getIconUrl();
        AllJoynDeviceResponse.ResponseCode responsecode = alljoyndeviceresponse.getStatus();
        AllJoynDeviceResponse.ResponseCode responsecode1 = AllJoynDeviceResponse.ResponseCode.Status_OK;
        bitmap = null;
        if (responsecode != responsecode1)
            break MISSING_BLOCK_LABEL_170;
        Log.d("AllJoynDeviceManager", "getIconUsingURL - Successfully retrieved icon url");
        s = alljoyndeviceresponse.getMsg();
        bitmap = null;
        if (s == null)
            break MISSING_BLOCK_LABEL_170;
        boolean flag = s.isEmpty();
        bitmap = null;
        if (flag)
            break MISSING_BLOCK_LABEL_170;
        alljoyndevice.setStoredIconUrl(s);
        InputStream inputstream = (InputStream)(new URL(s)).getContent();
        if (inputstream == null)
            return null;
        Bitmap bitmap1;
        bitmap1 = BitmapFactory.decodeStream(inputstream);
        inputstream.close();
        if (bitmap1 == null)
            return null;
        boolean flag1 = alljoyndevice.getIconMimeType().equalsIgnoreCase("image/png");
        if (flag1)
            bitmap = bitmap1;
        else
            try
            {
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                bitmap1.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
                bitmap = BitmapFactory.decodeStream(new ByteArrayInputStream(bytearrayoutputstream.toByteArray()));
                bytearrayoutputstream.close();
                bitmap1.recycle();
            }
            catch (Exception exception)
            {
                Log.logException("AllJoynDeviceManager", exception);
            }
        if (bitmap == null)
        {
            Log.d("AllJoynDeviceManager", "getIconUsingURL - Null icon");
            alljoyndevice.setIsUsingDefaultIcon(true);
        } else
        {
            Log.d("AllJoynDeviceManager", "getIconUsingURL - Successfully retrieved icon");
            alljoyndevice.setIsUsingDefaultIcon(false);
        }
        return bitmap;
    }

    public void init()
    {
        getDeviceList();
        if (m_ImageCacheManager == null)
            m_ImageCacheManager = new ImageCacheManger();
        m_ImageCacheManager.init();
        try
        {
            if (localDeckOfCardsManager == null)
                localDeckOfCardsManager = LocalDeckOfCardsManager.getInstance();
        }
        catch (Exception exception)
        {
            Log.e("AllJoynDeviceManager", "init - an error occurred getting reference to the local deck of cards manager", exception);
        }
        if (deckOfCards == null)
            deckOfCards = new InternalDeckOfCards("com.qualcomm.qce.alljoyn", "AllJoyn", "alljoyn_app.zip");
        deckOfCards.setNewAppZip(true);
        if (localDeckOfCardsManager.isInstalled(deckOfCards.getId())) goto _L2; else goto _L1
_L1:
        localDeckOfCardsManager.installInternalDeckOfCards(deckOfCards);
_L3:
        Log.d("AllJoynDeviceManager", "init - removing devices.dat");
        removeFileFMS("devices.dat");
_L4:
        AppMessagingController.getAppMessagingController().removeInternalEventListener("com.qualcomm.qce.alljoyn");
        AppMessagingController.getAppMessagingController().addInternalEventListener("com.qualcomm.qce.alljoyn", new DeckOfCardsEventListenerImpl());
        return;
_L2:
        localDeckOfCardsManager.updateInternalDeckOfCards(deckOfCards);
          goto _L3
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        Log.e("AllJoynDeviceManager", "init - an error occured installing/updating the deck of cards on the WD", deckofcardsexception);
          goto _L4
    }

    public Bitmap invertBitmap(Bitmap bitmap)
    {
        Bitmap bitmap1 = bitmap.copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        int i = bitmap1.getWidth();
        int j = bitmap1.getHeight();
        int k = i * j;
        int ai[] = new int[k];
        bitmap1.getPixels(ai, 0, i, 0, 0, i, j);
        for (int l = 0; l < k; l++)
            ai[l] = 0xffffff ^ ai[l];

        bitmap1.setPixels(ai, 0, i, 0, 0, i, j);
        return bitmap1;
    }

    public boolean isDeviceUsingDefaultImage(UUID uuid)
    {
        AllJoynDevice alljoyndevice = getDevice(uuid);
        if (alljoyndevice != null)
            return alljoyndevice.getIsUsingDefaultIcon();
        else
            return true;
    }

    public void onAnnouncement(String s, short word0, BusObjectDescription abusobjectdescription[], Map map)
    {
        Map map2 = TransportUtil.fromVariantMap(map);
        Map map1 = map2;
_L2:
        if (map1 == null)
            return;
        break; /* Loop/switch isn't completed */
        BusException busexception;
        busexception;
        busexception.printStackTrace();
        map1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        final UUID uniqueId = (UUID)map1.get("AppId");
        if (uniqueId == null)
        {
            Log.e("AllJoynDeviceManager", "onAnnouncement: received null device uuid!! ignoring.");
            return;
        }
        String s1 = String.valueOf(map1.get("DeviceName"));
        String s2 = String.valueOf(map1.get("DefaultLanguage"));
        String s3 = (String)map1.get("SupportUrl");
        Log.i("AllJoynDeviceManager", (new StringBuilder()).append("onAnnouncement: Receive announcment from device ").append(uniqueId).append("Name = ").append(s1).toString());
        boolean flag = false;
        AllJoynDevice alljoyndevice = getDevice(uniqueId);
        AllJoynDevice alljoyndevice1;
        AllJoynDevice.DeviceStatus devicestatus;
        AllJoynDevice.DeviceStatus devicestatus1;
        boolean flag1;
        if (alljoyndevice != null)
            alljoyndevice.stopControlPanelSession();
        else
            flag = true;
        alljoyndevice1 = new AllJoynDevice(s, uniqueId);
        getDeviceList().put(uniqueId.toString(), alljoyndevice1);
        alljoyndevice1.setServiceName(s);
        alljoyndevice1.setAbout(map1);
        alljoyndevice1.setFriendlyName(s1);
        alljoyndevice1.setInterfaces(abusobjectdescription);
        alljoyndevice1.setDirty();
        alljoyndevice1.setPort(word0);
        alljoyndevice1.setDefaultLanguage(s2);
        alljoyndevice1.setHelpUrl(s3);
        devicestatus = alljoyndevice1.getStatus();
        devicestatus1 = AllJoynDevice.DeviceStatus.GONE;
        flag1 = false;
        if (devicestatus == devicestatus1)
            flag1 = true;
        alljoyndevice1.setStatus(AllJoynDevice.DeviceStatus.AVAILABLE);
        if (flag1 || flag)
            generateDatFile();
        (new AsyncTask() {

            final AllJoynDeviceManager this$0;
            final UUID val$uniqueId;

            protected transient Object doInBackground(Object aobj[])
            {
                AllJoynDevice alljoyndevice2 = getDevice(uniqueId);
                if (alljoyndevice2 != null)
                    alljoyndevice2.requestControlPanels();
                return null;
            }

            protected void onPreExecute()
            {
            }

            
            {
                this$0 = AllJoynDeviceManager.this;
                uniqueId = uuid;
                super();
            }
        }
).execute(new Object[0]);
        m_ImageCacheManager.addNewDeviceToQueue(alljoyndevice1.getId());
        return;
    }

    public void onDeviceAlive(String s)
    {
        AllJoynDevice alljoyndevice = getDeviceByServiceName(s);
        StringBuilder stringbuilder = (new StringBuilder()).append("onDeviceAlive busName = ").append(s);
        String s1;
        if (alljoyndevice != null)
            s1 = (new StringBuilder()).append(", friendly name = ").append(alljoyndevice.getFriendlyName()).toString();
        else
            s1 = " device not found";
        Log.d("AllJoynDeviceManager", stringbuilder.append(s1).toString());
        if (alljoyndevice != null)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("onDeviceAlive device is alive busName = ").append(s).append(", friendly name = ").append(alljoyndevice.getFriendlyName()).toString());
            alljoyndevice.setStatus(AllJoynDevice.DeviceStatus.AVAILABLE);
            m_deviceList.put(alljoyndevice.getId().toString(), alljoyndevice);
            generateDatFile();
            return;
        } else
        {
            Log.w("AllJoynDeviceManager", (new StringBuilder()).append("onDeviceAlive found no device for busName: ").append(s).toString());
            return;
        }
    }

    public void onDeviceFound(String s)
    {
        onDeviceAlive(s);
    }

    public void onDeviceLost(String s)
    {
        AllJoynDevice alljoyndevice = getDeviceByServiceName(s);
        StringBuilder stringbuilder = (new StringBuilder()).append("onDeviceLost busName = ").append(s);
        String s1;
        if (alljoyndevice != null)
            s1 = (new StringBuilder()).append(", friendly name = ").append(alljoyndevice.getFriendlyName()).toString();
        else
            s1 = " device not found";
        Log.d("AllJoynDeviceManager", stringbuilder.append(s1).toString());
        if (alljoyndevice != null)
        {
            Log.d("AllJoynDeviceManager", (new StringBuilder()).append("onDeviceLost verified. busName = ").append(s).append(", friendly name = ").append(alljoyndevice.getFriendlyName()).toString());
            UUID uuid = alljoyndevice.getId();
            Log.d("AllJoynDeviceManager", "lost an unpinned device. Deleting the device");
            try
            {
                removeFileFMS(alljoyndevice.getIconFileName());
            }
            catch (DeckOfCardsException deckofcardsexception)
            {
                Log.logException("AllJoynDeviceManager", deckofcardsexception);
            }
            removeDevice(uuid);
            generateDatFile();
        }
    }

    public void registerReceiverForWifiConnectionChanged()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        if (broadcastReceiver == null)
            broadcastReceiver = new BroadcastReceiver() {

                final AllJoynDeviceManager this$0;
                private boolean turnedOnAllJoyn;

                private void turnOffAllJoyn()
                {
                    Log.e("AllJoynDeviceManager", "turnOffAllJoyn");
                    AllJoynBusHandler.stopAllJoyn(false);
                    android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("alljoyn_notification_settings_pref", 0).edit();
                    editor.putBoolean("alljoyn_notification_settings_toggle_key", false);
                    editor.commit();
                    generateDatFile();
                }

                private void turnOnAllJoyn()
                {
                    Log.d("AllJoynDeviceManager", "turnOnAllJoyn");
                    clearDeviceList();
                    init();
                    AllJoynBusHandler.startAllJoyn(true);
                    android.content.SharedPreferences.Editor editor = ToqApplication.getAppContext().getSharedPreferences("alljoyn_notification_settings_pref", 0).edit();
                    editor.putBoolean("alljoyn_notification_settings_toggle_key", true);
                    editor.commit();
                    generateDatFile();
                }

                public void onReceive(Context context, Intent intent)
                {
                    this;
                    JVM INSTR monitorenter ;
                    if (!"android.net.wifi.supplicant.STATE_CHANGE".equals(intent.getAction())) goto _L2; else goto _L1
_L1:
                    SupplicantState supplicantstate;
                    supplicantstate = (SupplicantState)intent.getParcelableExtra("newState");
                    Log.d("AllJoynDeviceManager", (new StringBuilder()).append("supplicant state: ").append(supplicantstate).toString());
                    if (!SupplicantState.DISCONNECTED.equals(supplicantstate)) goto _L4; else goto _L3
_L3:
                    turnOffAllJoyn();
                    turnedOnAllJoyn = false;
_L2:
                    this;
                    JVM INSTR monitorexit ;
                    return;
_L4:
                    if (!SupplicantState.ASSOCIATING.equals(supplicantstate) && !SupplicantState.ASSOCIATED.equals(supplicantstate))
                        break MISSING_BLOCK_LABEL_119;
                    if (!turnedOnAllJoyn)
                    {
                        turnOnAllJoyn();
                        turnedOnAllJoyn = true;
                    }
                      goto _L2
                    Exception exception;
                    exception;
                    throw exception;
                    turnedOnAllJoyn = false;
                      goto _L2
                }

            
            {
                this$0 = AllJoynDeviceManager.this;
                super();
                turnedOnAllJoyn = false;
            }
            }
;
        ToqApplication.getAppContext().registerReceiver(broadcastReceiver, intentfilter);
    }

    public AllJoynDevice removeDevice(UUID uuid)
    {
        if (uuid == null)
            return null;
        AllJoynDevice alljoyndevice = getDevice(uuid);
        if (alljoyndevice != null)
            try
            {
                alljoyndevice.setStatus(AllJoynDevice.DeviceStatus.GONE);
                removeFileFMS(alljoyndevice.getIconFileName());
            }
            catch (DeckOfCardsException deckofcardsexception)
            {
                Log.logException("AllJoynDeviceManager", deckofcardsexception);
            }
        return (AllJoynDevice)getDeviceList().remove(uuid.toString());
    }

    void removeFileFMS(String s)
        throws DeckOfCardsException
    {
        FMSController fmscontroller;
        String s1;
        fmscontroller = FMSController.getFmsController();
        if (fmscontroller == null)
            break MISSING_BLOCK_LABEL_124;
        s1 = (new StringBuilder()).append("/packages/com.qualcomm.qce.alljoyn/").append(s).toString();
        int i = fmscontroller.fmsRemoveFile(1, s1);
        if (i == 0)
        {
            try
            {
                Log.d("AllJoynDeviceManager", (new StringBuilder()).append("removeFileFMS - Success, wdFile: ").append(s1).append(", result: ").append(i).toString());
                return;
            }
            catch (Exception exception)
            {
                Log.logException("AllJoynDeviceManager", exception);
            }
            break MISSING_BLOCK_LABEL_124;
        }
        Log.w("AllJoynDeviceManager", (new StringBuilder()).append("removeFileFMS - Failed, wdFile: ").append(s1).append(", result: ").append(i).toString());
        return;
    }

    void sendFileFMS(File file, String s)
    {
        FMSController fmscontroller;
        String s1;
        fmscontroller = FMSController.getFmsController();
        if (fmscontroller == null)
            break MISSING_BLOCK_LABEL_159;
        s1 = (new StringBuilder()).append("/packages/com.qualcomm.qce.alljoyn/").append(s).toString();
        int i = fmscontroller.fmsSyncFile(1, file.getAbsolutePath(), s1, -1);
        if (i == 0)
        {
            try
            {
                Log.d("AllJoynDeviceManager", (new StringBuilder()).append("sendFileFMS - Success, localFile: ").append(file.getAbsolutePath()).append(", wdFile: ").append(s1).append(", result: ").append(i).toString());
                return;
            }
            catch (Exception exception)
            {
                Log.logException("AllJoynDeviceManager", exception);
            }
            break MISSING_BLOCK_LABEL_159;
        }
        Log.w("AllJoynDeviceManager", (new StringBuilder()).append("sendFileFMS - Failed, localFile: ").append(file.getAbsolutePath()).append(", wdFile: ").append(s1).append(", result: ").append(i).toString());
        return;
    }

    public boolean sendIconToWD(UUID uuid)
    {
        AllJoynDevice alljoyndevice;
        Bitmap bitmap;
        File file;
        BufferedOutputStream bufferedoutputstream;
        Log.d("AllJoynDeviceManager", (new StringBuilder()).append("sendIconToWD - Device: ").append(uuid).toString());
        alljoyndevice = getDevice(uuid);
        if (alljoyndevice == null)
            return false;
        bitmap = getIconUsingURL(uuid);
        if (bitmap == null)
        {
            bitmap = getIconUsingContent(uuid);
            if (bitmap == null)
            {
                alljoyndevice.setIsUsingDefaultIcon(true);
                return false;
            }
        }
        file = null;
        bufferedoutputstream = null;
        byte abyte0[];
        BufferedOutputStream bufferedoutputstream1;
        abyte0 = localDeckOfCardsManager.convertPNGIcon(Bitmap.createScaledBitmap(invertBitmap(bitmap), 48, 48, false));
        file = File.createTempFile((new StringBuilder()).append(alljoyndevice.getId().toString().substring(0, 5)).append("Icon").toString(), ".img");
        bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(file));
        bufferedoutputstream1.write(abyte0);
        bufferedoutputstream1.flush();
        bufferedoutputstream1.close();
        Log.d("AllJoynDeviceManager", (new StringBuilder()).append("sendIconToWD - IconFileName: ").append(alljoyndevice.getIconFileName()).toString());
        sendFileFMS(file, alljoyndevice.getIconFileName());
        generateDatFile();
        boolean flag;
        flag = true;
        if (file != null)
            file.delete();
        if (bufferedoutputstream1 != null)
            try
            {
                bufferedoutputstream1.close();
            }
            catch (IOException ioexception2)
            {
                Log.logException("AllJoynDeviceManager", ioexception2);
            }
_L2:
        Log.d("AllJoynDeviceManager", (new StringBuilder()).append("sendIconToWD - Result: ").append(flag).toString());
        return flag;
        Exception exception1;
        exception1;
_L5:
        Log.logException("AllJoynDeviceManager", exception1);
        if (file != null)
            file.delete();
        flag = false;
        if (bufferedoutputstream == null) goto _L2; else goto _L1
_L1:
        bufferedoutputstream.close();
        flag = false;
          goto _L2
        IOException ioexception1;
        ioexception1;
        Log.logException("AllJoynDeviceManager", ioexception1);
        flag = false;
          goto _L2
        Exception exception;
        exception;
_L4:
        if (file != null)
            file.delete();
        if (bufferedoutputstream != null)
            try
            {
                bufferedoutputstream.close();
            }
            catch (IOException ioexception)
            {
                Log.logException("AllJoynDeviceManager", ioexception);
            }
        throw exception;
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L4; else goto _L3
_L3:
        exception1;
        bufferedoutputstream = bufferedoutputstream1;
          goto _L5
    }

    public void shutdown()
    {
        Log.d("AllJoynDeviceManager", "Going to shutdown and should remove the alljoyn deck of cards");
        DeckOfCardsException deckofcardsexception;
        localDeckOfCardsManager.uninstallInternalDeckOfCards(deckOfCards);
        m_ImageCacheManager.stopImageThread();
        for (Iterator iterator = getDevices().iterator(); iterator.hasNext(); removeFileFMS(((AllJoynDevice)iterator.next()).getIconFileName()));
          goto _L1
_L3:
        AppMessagingController.getAppMessagingController().removeInternalEventListener("com.qualcomm.qce.alljoyn");
        return;
_L1:
        try
        {
            clearDeviceList();
        }
        // Misplaced declaration of an exception variable
        catch (DeckOfCardsException deckofcardsexception)
        {
            Log.e("AllJoynDeviceManager", "shutdown - an error occured uninstalling the deck of cards on the WD", deckofcardsexception);
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void unregisterReceiverForWifiConnectionChanged()
    {
        if (broadcastReceiver != null)
        {
            ToqApplication.getAppContext().unregisterReceiver(broadcastReceiver);
            broadcastReceiver = null;
        }
    }

    protected void updateTheUi(String s)
    {
        updateTheUi(s, null, null);
    }

    protected void updateTheUi(String s, String s1, UUID uuid)
    {
        String s2 = "";
        AllJoynDevice alljoyndevice = getDevice(uuid);
        if (alljoyndevice != null)
            s2 = alljoyndevice.getFriendlyName();
        StringBuilder stringbuilder = (new StringBuilder()).append("Send intent: Action = ").append(s);
        String s3;
        if (uuid != null)
            s3 = (new StringBuilder()).append(" UUID = ").append(uuid).toString();
        else
            s3 = "";
        StringBuilder stringbuilder1 = stringbuilder.append(s3);
        String s4;
        if (!s2.isEmpty())
            s4 = (new StringBuilder()).append(" device name = ").append(s2).toString();
        else
            s4 = "";
        StringBuilder stringbuilder2 = stringbuilder1.append(s4);
        String s5;
        if (s1 != null && !s1.isEmpty())
            s5 = (new StringBuilder()).append(" msg = ").append(s1).toString();
        else
            s5 = "";
        Log.i("AllJoynDeviceManager", stringbuilder2.append(s5).toString());
        if (!s.equals("AJ_ON_DEVICE_FOUND"));
    }

    protected void updateTheUi(String s, UUID uuid)
    {
        updateTheUi(s, null, uuid);
    }


}

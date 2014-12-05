// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.*;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import java.io.*;
import java.util.*;
import javax.microedition.io.Connector;
import javax.obex.*;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class FTPFileBrowserActivity extends Activity
{
    public class Item
    {

        public String file;
        public int icon;
        final FTPFileBrowserActivity this$0;

        public String toString()
        {
            return file;
        }

        public Item(String s, Integer integer)
        {
            this$0 = FTPFileBrowserActivity.this;
            super();
            file = s;
            icon = integer.intValue();
        }
    }


    public static final int PROGRESS_BAR_TYPE = 0;
    private static final String TAG = "FTPFileBrowserActivity";
    private static ClientSession conn = null;
    public static boolean connectionInProgress = false;
    private ArrayAdapter adapter;
    private Boolean browseSessionStarted;
    private long endTime;
    private int eventType1;
    private Integer fileLength;
    private String folder;
    private String folderPath;
    private String ftpUrl;
    private Handler handler;
    private HeaderSet header;
    private Item item;
    private ArrayList itemList;
    private Integer len;
    private String mDeviceAddr;
    private TextView mDirText;
    private TextView mProgress;
    private ListView mfileBrowserListView;
    private Operation op;
    DataOutputStream out;
    private ProgressDialog pDialog;
    private ArrayList pathList;
    private Integer progressUpdateLen;
    private long startTime;
    private long timeDiff;
    private String timeUnit;
    private Integer totalBytesTransferred;
    private TextView viewTemp;

    public FTPFileBrowserActivity()
    {
        op = null;
        mfileBrowserListView = null;
        mDirText = null;
        mProgress = null;
        pDialog = null;
        handler = null;
        item = null;
        itemList = new ArrayList();
        pathList = new ArrayList();
        fileLength = Integer.valueOf(0);
        len = Integer.valueOf(0);
        progressUpdateLen = Integer.valueOf(0);
        totalBytesTransferred = Integer.valueOf(0);
        startTime = 0L;
        endTime = 0L;
        timeDiff = 0L;
        ftpUrl = "";
        mDeviceAddr = "";
        folderPath = "";
        timeUnit = "";
        eventType1 = 0;
        out = null;
        browseSessionStarted = Boolean.valueOf(false);
    }

    private void browseFTPSession(String s, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        op = null;
        browseSessionStarted = Boolean.valueOf(true);
        folder = "";
        folder = getFolderPath();
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("Backup= ").append(flag).toString());
        if (!flag)
            break MISSING_BLOCK_LABEL_63;
        folder = "";
        handler.post(new Runnable() );
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("serverURL = ").append(s).toString());
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("PathList").append(pathList).toString());
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("folder = ").append(folder).toString());
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("Connection status =  ").append(conn).toString());
        if (conn == null)
        {
            Log.e("FTPFileBrowserActivity", "Connection null");
            conn = (ClientSession)Connector.open(s, 3, true);
            Log.d("FTPFileBrowserActivity", "Connection Success = ");
            byte abyte0[] = {
                -7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 
                82, 84, 0, -36, -98, 9
            };
            header = conn.createHeaderSet();
            header.setHeader(70, abyte0);
            conn.connect(header);
        }
        header = conn.createHeaderSet();
        header.setHeader(1, folder);
        conn.setPath(header, flag, false);
        header = conn.createHeaderSet();
        header.setHeader(66, "x-obex/folder-listing");
        op = conn.get(header);
        XmlPullParserFactory xmlpullparserfactory = XmlPullParserFactory.newInstance();
        xmlpullparserfactory.setNamespaceAware(true);
        final XmlPullParser xpp1 = xmlpullparserfactory.newPullParser();
        xpp1.setInput(op.openInputStream(), "UTF-8");
        eventType1 = xpp1.getEventType();
        handler.post(new Runnable() {

            final FTPFileBrowserActivity this$0;
            final XmlPullParser val$xpp1;

            public void run()
            {
_L2:
                if (eventType1 == 1)
                    break MISSING_BLOCK_LABEL_434;
                if (eventType1 != 0)
                    break; /* Loop/switch isn't completed */
                Log.i("FTPFileBrowserActivity", "Start document");
_L3:
                eventType1 = xpp1.next();
                Exception exception2;
                if (true) goto _L2; else goto _L1
_L1:
                try
                {
label0:
                    {
                        if (eventType1 != 1)
                            break label0;
                        Log.i("FTPFileBrowserActivity", "End document");
                    }
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception2)
                {
                    Log.e("FTPFileBrowserActivity", "Exception");
                    exception2.printStackTrace();
                    return;
                }
                  goto _L3
                if (eventType1 != 2)
                    break MISSING_BLOCK_LABEL_342;
                Log.i("FTPFileBrowserActivity", (new StringBuilder()).append("Start tag ").append(xpp1.getName()).toString());
                Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("Start tag Attribute").append(xpp1.getAttributeValue(null, "name")).toString());
                if (!xpp1.getName().equalsIgnoreCase("folder")) goto _L5; else goto _L4
_L4:
                item = new Item(xpp1.getAttributeValue(null, "name"), Integer.valueOf(0x7f0200d5));
                itemList.add(item);
                mfileBrowserListView.setAdapter(loadAdapter());
                  goto _L3
_L5:
                if (!xpp1.getName().equalsIgnoreCase("file")) goto _L3; else goto _L6
_L6:
                item = new Item(xpp1.getAttributeValue(null, "name"), Integer.valueOf(0x7f0200a0));
                itemList.add(item);
                mfileBrowserListView.setAdapter(loadAdapter());
                  goto _L3
                if (eventType1 != 3) goto _L8; else goto _L7
_L7:
                Log.i("FTPFileBrowserActivity", (new StringBuilder()).append("End tag ").append(xpp1.getName()).toString());
                  goto _L3
_L8:
                if (eventType1 != 4) goto _L3; else goto _L9
_L9:
                Log.i("FTPFileBrowserActivity", (new StringBuilder()).append("Text ").append(xpp1.getText()).toString());
                  goto _L3
                mfileBrowserListView.setAdapter(loadAdapter());
                mProgress.setVisibility(4);
                op.close();
                op = null;
                return;
            }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                xpp1 = xmlpullparser;
                super();
            }
        }
);
        browseSessionStarted = Boolean.valueOf(false);
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        browseSessionStarted = Boolean.valueOf(false);
        if (op != null)
        {
            op.close();
            op = null;
        }
        if (conn != null)
        {
            conn.disconnect(null);
            conn = null;
        }
_L2:
        Log.e("FTPFileBrowserActivity", "Exception in browseBTSession");
        exception1.printStackTrace();
        pathList.clear();
        itemList.clear();
        handler.post(new Runnable() {

            final FTPFileBrowserActivity this$0;

            public void run()
            {
                itemList.clear();
                Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a011f), 0).show();
                mfileBrowserListView.setAdapter(loadAdapter());
                mProgress.setVisibility(4);
            }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                super();
            }
        }
);
          goto _L1
        Exception exception;
        exception;
        throw exception;
        IOException ioexception;
        ioexception;
        op = null;
        conn = null;
        ioexception.printStackTrace();
          goto _L2
    }

    private void deleteFileFromFTPServer(String s)
    {
        try
        {
            header = null;
            if (conn == null)
            {
                conn = (ClientSession)Connector.open(ftpUrl);
                byte abyte0[] = {
                    -7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 
                    82, 84, 0, -36, -98, 9
                };
                header = conn.createHeaderSet();
                header.setHeader(70, abyte0);
                conn.connect(header);
                Log.i("FTPFileBrowserActivity", "Connection Success");
            }
            header = conn.createHeaderSet();
            header.setHeader(1, s);
            if (conn != null && header != null)
            {
                conn.delete(header);
                Log.i("FTPFileBrowserActivity", "File Deleted Successfully");
                handler.post(new Runnable() {

                    final FTPFileBrowserActivity this$0;

                    public void run()
                    {
                        Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0122), 1).show();
                    }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                super();
            }
                }
);
            }
            startBrowseSession(false);
            return;
        }
        catch (Exception exception)
        {
            if (conn != null)
            {
                try
                {
                    conn.disconnect(null);
                }
                catch (Exception exception1)
                {
                    exception1.printStackTrace();
                }
                conn = null;
            }
        }
        exception.printStackTrace();
    }

    private void getFileFromFtpServer(String s)
    {
        Operation operation;
        InputStream inputstream;
        operation = null;
        inputstream = null;
        totalBytesTransferred = Integer.valueOf(0);
        String s1 = getFolderPath();
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("FolderName= ").append(s1).toString());
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("Filename= ").append(s).toString());
        if (conn == null)
        {
            conn = (ClientSession)Connector.open(ftpUrl);
            byte abyte1[] = {
                -7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 
                82, 84, 0, -36, -98, 9
            };
            HeaderSet headerset = conn.createHeaderSet();
            headerset.setHeader(70, abyte1);
            conn.connect(headerset);
        }
        header = conn.createHeaderSet();
        header.setHeader(1, s);
        operation = conn.get(header);
        inputstream = operation.openInputStream();
        fileLength = Integer.valueOf(0);
        len = Integer.valueOf(0);
        fileLength = Integer.valueOf(Long.valueOf(operation.getLength()).intValue());
        Log.e("FTPFileBrowserActivity", (new StringBuilder()).append("FileLength=").append(fileLength).toString());
        if (Environment.getExternalStorageDirectory() == null) goto _L2; else goto _L1
_L1:
        final File fileLoc;
        FileOutputStream fileoutputstream1;
        File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/PHUB_FTP/").toString());
        if (!file.exists())
            file.mkdir();
        fileLoc = new File((new StringBuilder()).append(file).append(File.separator).append(s).toString());
        fileoutputstream1 = new FileOutputStream(fileLoc);
        byte abyte0[] = new byte[1024];
        do
        {
            Integer integer = Integer.valueOf(inputstream.read(abyte0));
            len = integer;
            if (integer.intValue() <= 0)
                break;
            totalBytesTransferred = Integer.valueOf(totalBytesTransferred.intValue() + len.intValue());
            fileoutputstream1.write(abyte0, 0, len.intValue());
            Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("totalBytesTransferred=").append(totalBytesTransferred).toString());
            Handler handler3 = handler;
            Runnable runnable2 = new Runnable() {

                final FTPFileBrowserActivity this$0;

                public void run()
                {
                    progressUpdateLen = Integer.valueOf((100 * totalBytesTransferred.intValue()) / fileLength.intValue());
                    Log.e("FTPFileBrowserActivity", (new StringBuilder()).append("lenProgress==").append(progressUpdateLen).toString());
                    pDialog.setProgress(progressUpdateLen.intValue());
                }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                super();
            }
            }
;
            handler3.post(runnable2);
        } while (true);
          goto _L3
        Exception exception;
        exception;
        FileOutputStream fileoutputstream = fileoutputstream1;
_L5:
        Log.e("FTPFileBrowserActivity", (new StringBuilder()).append("Exception").append(exception.toString()).toString());
        Handler handler1 = handler;
        Runnable runnable = new Runnable() {

            final FTPFileBrowserActivity this$0;

            public void run()
            {
                pDialog.setProgress(0);
                dismissDialog(0);
                Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0121), 0).show();
            }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                super();
            }
        }
;
        handler1.post(runnable);
        Handler handler2;
        Runnable runnable1;
        Handler handler4;
        Runnable runnable3;
        if (fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                return;
            }
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_634;
        inputstream.close();
        if (operation == null)
            break MISSING_BLOCK_LABEL_644;
        operation.close();
        if (conn != null)
        {
            conn.disconnect(conn.createHeaderSet());
            conn.close();
            conn = null;
        }
        return;
_L3:
        fileoutputstream1.close();
        inputstream.close();
        operation.close();
        operation = null;
        endTime = Calendar.getInstance().getTimeInMillis();
        timeDiff = (endTime - startTime) / 1000L;
        timeUnit = "sec";
        if (timeDiff == 0L)
        {
            timeDiff = endTime - startTime;
            timeUnit = "milli-sec";
        }
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("File stored in: ").append(fileLoc.getAbsolutePath()).toString());
        handler2 = handler;
        runnable1 = new Runnable() {

            final FTPFileBrowserActivity this$0;
            final File val$fileLoc;

            public void run()
            {
                pDialog.setProgress(0);
                dismissDialog(0);
                Toast.makeText(ToqApplication.getAppContext(), (new StringBuilder()).append("File stored in: ").append(fileLoc.getAbsolutePath()).append(". \n\nTime taken for Transfer is ").append(timeDiff).append(" ").append(timeUnit).append(".").toString(), 1).show();
            }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                fileLoc = file;
                super();
            }
        }
;
        handler2.post(runnable1);
        return;
_L2:
        Log.i("FTPFileBrowserActivity", "Memory Card Not Detected");
        inputstream.close();
        operation.close();
        operation = null;
        try
        {
            handler4 = handler;
            runnable3 = new Runnable() {

                final FTPFileBrowserActivity this$0;

                public void run()
                {
                    dismissDialog(0);
                    Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a0120), 0).show();
                }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                super();
            }
            }
;
            handler4.post(runnable3);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            fileoutputstream = null;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private String getFolderPath()
    {
        String s = "";
        if (pathList.size() > 0)
            s = (String)pathList.get(-1 + pathList.size());
        return s;
    }

    private ArrayAdapter loadAdapter()
    {
        adapter = new ArrayAdapter(ToqApplication.getAppContext(), 0x7f030038, 0x7f0901f9, itemList) {

            final FTPFileBrowserActivity this$0;

            public View getView(int i, View view, ViewGroup viewgroup)
            {
                View view1 = super.getView(i, view, viewgroup);
                TextView textview = (TextView)view1.findViewById(0x7f0901f9);
                textview.setCompoundDrawablesWithIntrinsicBounds(((Item)itemList.get(i)).icon, 0, 0, 0);
                textview.setCompoundDrawablePadding((int)(0.5F + 5F * getContext().getResources().getDisplayMetrics().density));
                return view1;
            }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                super(context, i, j, list);
            }
        }
;
        return adapter;
    }

    private void setupFTPUrl(String s)
    {
        ftpUrl = (new StringBuilder()).append("btgoep://").append(s).append(":").append(Constants.FTP_UUID).append(";authenticate=false;encrypt=false;master=false;android=true").toString();
    }

    private void startBrowseSession(final boolean backup)
    {
        (new Thread() {

            final FTPFileBrowserActivity this$0;
            final boolean val$backup;

            public void run()
            {
                browseFTPSession(ftpUrl, backup);
            }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                backup = flag;
                super();
            }
        }
).start();
    }

    public void onBackPressed()
    {
        Log.d("FTPFileBrowserActivity", "On Back Pressed called");
        if (pathList.size() > 0)
        {
            pathList.remove(-1 + pathList.size());
            startBrowseSession(true);
        } else
        if (!browseSessionStarted.booleanValue())
        {
            super.onBackPressed();
            return;
        }
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        final android.widget.AdapterView.AdapterContextMenuInfo info = (android.widget.AdapterView.AdapterContextMenuInfo)menuitem.getMenuInfo();
        switch (menuitem.getItemId())
        {
        case 2131296880: 
            (new Thread(new Runnable() {

                final FTPFileBrowserActivity this$0;
                final android.widget.AdapterView.AdapterContextMenuInfo val$info;

                public void run()
                {
                    deleteFileFromFTPServer(((Item)itemList.get(info.position)).toString());
                }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                info = adaptercontextmenuinfo;
                super();
            }
            }
)).start();
            return true;

        case 2131296879: 
            progressUpdateLen = Integer.valueOf(0);
            showDialog(0);
            (new Thread(new Runnable() {

                final FTPFileBrowserActivity this$0;
                final android.widget.AdapterView.AdapterContextMenuInfo val$info;

                public void run()
                {
                    startTime = Calendar.getInstance().getTimeInMillis();
                    getFileFromFtpServer(((Item)itemList.get(info.position)).toString());
                }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                info = adaptercontextmenuinfo;
                super();
            }
            }
)).start();
            return true;
        }
        return false;
    }

    protected void onCreate(Bundle bundle)
    {
        Log.d("FTPFileBrowserActivity", "Inside OnCreate  ");
        Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("Connection status =  ").append(conn).toString());
        super.onCreate(bundle);
        connectionInProgress = true;
        folder = "";
        handler = new Handler(Looper.getMainLooper());
        setContentView(0x7f030006);
        mfileBrowserListView = (ListView)findViewById(0x7f09002d);
        mDirText = (TextView)findViewById(0x7f09002b);
        mDirText.setCompoundDrawablesWithIntrinsicBounds(0x7f0200d5, 0, 0, 0);
        mProgress = (TextView)findViewById(0x7f09002c);
        if (ToqData.getInstance().getAssociatedDevicePrefs() != null)
            mDeviceAddr = ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", null);
        if (mDeviceAddr != null)
        {
            mDeviceAddr = mDeviceAddr.replaceAll(":", "");
            setupFTPUrl(mDeviceAddr);
        }
        registerForContextMenu(mfileBrowserListView);
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        contextmenu.setHeaderTitle(0x7f0a0067);
        android.widget.AdapterView.AdapterContextMenuInfo adaptercontextmenuinfo = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        if (((Item)itemList.get(adaptercontextmenuinfo.position)).icon == 0x7f0200d5)
        {
            Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a011d), 0).show();
            return;
        } else
        {
            super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
            getMenuInflater().inflate(0x7f0c0000, contextmenu);
            return;
        }
    }

    protected Dialog onCreateDialog(int i, Bundle bundle)
    {
        Log.d("FTPFileBrowserActivity", "onCreateDialogCalled  ");
        switch (i)
        {
        case 0: // '\0'
            pDialog = new ProgressDialog(this);
            pDialog.setMessage("Retrieving file. Please wait...");
            pDialog.setIndeterminate(false);
            pDialog.setMax(100);
            pDialog.setProgressStyle(1);
            pDialog.setCancelable(false);
            pDialog.show();
            return pDialog;
        }
        return null;
    }

    protected void onDestroy()
    {
        connectionInProgress = false;
        try
        {
            if (op != null)
            {
                op.close();
                op = null;
            }
            if (conn != null)
            {
                conn.disconnect(null);
                conn = null;
            }
        }
        catch (Exception exception)
        {
            op = null;
            conn = null;
        }
        itemList.clear();
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        startBrowseSession(false);
    }

    protected void onStart()
    {
        super.onStart();
        Log.printUsageLog("FTPFileBrowserActivity", "FTPFileBrowserActivity is started");
        mfileBrowserListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final FTPFileBrowserActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (browseSessionStarted.booleanValue())
                    return;
                viewTemp = (TextView)view.findViewById(0x7f0901f9);
                pathList.add(viewTemp.getText().toString());
                if (((Item)itemList.get(i)).icon == 0x7f0200d5)
                {
                    startBrowseSession(false);
                } else
                {
                    pathList.remove(-1 + pathList.size());
                    Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a011e), 0).show();
                }
                Log.d("FTPFileBrowserActivity", (new StringBuilder()).append("Position  text === ").append(viewTemp.getText().toString()).toString());
            }

            
            {
                this$0 = FTPFileBrowserActivity.this;
                super();
            }
        }
);
    }

    protected void onStop()
    {
        super.onStop();
        Log.printUsageLog("FTPFileBrowserActivity", "FTPFileBrowserActivity is Stopped");
    }



/*
    static long access$002(FTPFileBrowserActivity ftpfilebrowseractivity, long l)
    {
        ftpfilebrowseractivity.startTime = l;
        return l;
    }

*/








/*
    static String access$1402(FTPFileBrowserActivity ftpfilebrowseractivity, String s)
    {
        ftpfilebrowseractivity.folderPath = s;
        return s;
    }

*/


/*
    static String access$1484(FTPFileBrowserActivity ftpfilebrowseractivity, Object obj)
    {
        String s = (new StringBuilder()).append(ftpfilebrowseractivity.folderPath).append(obj).toString();
        ftpfilebrowseractivity.folderPath = s;
        return s;
    }

*/




/*
    static int access$1602(FTPFileBrowserActivity ftpfilebrowseractivity, int i)
    {
        ftpfilebrowseractivity.eventType1 = i;
        return i;
    }

*/



/*
    static Item access$1702(FTPFileBrowserActivity ftpfilebrowseractivity, Item item1)
    {
        ftpfilebrowseractivity.item = item1;
        return item1;
    }

*/



/*
    static Operation access$1802(FTPFileBrowserActivity ftpfilebrowseractivity, Operation operation)
    {
        ftpfilebrowseractivity.op = operation;
        return operation;
    }

*/



/*
    static Integer access$1902(FTPFileBrowserActivity ftpfilebrowseractivity, Integer integer)
    {
        ftpfilebrowseractivity.progressUpdateLen = integer;
        return integer;
    }

*/











/*
    static TextView access$502(FTPFileBrowserActivity ftpfilebrowseractivity, TextView textview)
    {
        ftpfilebrowseractivity.viewTemp = textview;
        return textview;
    }

*/




}

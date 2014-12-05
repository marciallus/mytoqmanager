// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;

import android.os.Handler;
import com.qualcomm.toq.base.ui.adapter.FileTransferStatusAdapter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;

// Referenced classes of package com.qualcomm.toq.base.utils:
//            Log

public class FileTransferStatusLogger
{

    private static final String TAG = "FileTransferStatusLogger";
    private static Handler handler;
    private static FileTransferStatusLogger mInstance[];
    private int endpointType;
    private String lstr;
    private FileTransferStatusAdapter mFileTransferStatusAdapter;
    private ArrayList mHeading;
    private ArrayList mHeadingDetails;
    private ArrayList mHeadingTemp;

    private FileTransferStatusLogger(int i)
    {
        mHeading = new ArrayList();
        mHeadingTemp = new ArrayList();
        mHeadingDetails = new ArrayList();
        mFileTransferStatusAdapter = null;
        lstr = null;
        setEndpointType(i);
    }

    private FileTransferStatusAdapter getFileTransferStatusAdapter()
    {
        this;
        JVM INSTR monitorenter ;
        FileTransferStatusAdapter filetransferstatusadapter = mFileTransferStatusAdapter;
        this;
        JVM INSTR monitorexit ;
        return filetransferstatusadapter;
        Exception exception;
        exception;
        throw exception;
    }

    public static FileTransferStatusLogger getInstance(int i)
    {
        if (mInstance == null)
            mInstance = new FileTransferStatusLogger[3];
        if (mInstance != null)
        {
            if (i == 0 && mInstance[i] == null)
            {
                mInstance[i] = new FileTransferStatusLogger(i);
                Log.d("FileTransferStatusLogger", "WD Logger is null. Initiated new Logger.");
            } else
            if (i == 1 && mInstance[i] == null)
            {
                mInstance[i] = new FileTransferStatusLogger(i);
                Log.d("FileTransferStatusLogger", "EP-L Logger is null. Initiated new Logger.");
            } else
            if (i == 2 && mInstance[i] == null)
            {
                mInstance[i] = new FileTransferStatusLogger(i);
                Log.d("FileTransferStatusLogger", "EP-R Logger is null. Initiated new Logger.");
            }
            return mInstance[i];
        } else
        {
            return null;
        }
    }

    private void setFileTransferStatusAdapter(FileTransferStatusAdapter filetransferstatusadapter)
    {
        this;
        JVM INSTR monitorenter ;
        mFileTransferStatusAdapter = filetransferstatusadapter;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void addHeading(final String str)
    {
        if (!str.contains("Failed") && !str.contains("Success") && !str.contains("bytes"))
        {
            if (str.contains("Sending"))
                mHeadingTemp.add(str);
            else
            if (str.startsWith("EPMessage:"))
                mHeadingTemp.add(str);
        } else
        if (mHeadingTemp.size() > 0)
        {
            mHeadingTemp.remove(-1 + mHeadingTemp.size());
            mHeadingTemp.add(str);
        }
        if (getFileTransferStatusAdapter() != null)
        {
            Log.i("FileTransferStatusLogger", "Inside add heading mFileTransferStatusAdapter  not null...Ready to post");
            Log.i("FileTransferStatusLogger", (new StringBuilder()).append("Handler= ").append(handler).toString());
            if (handler != null)
                handler.post(new Runnable() {

                    final FileTransferStatusLogger this$0;
                    final String val$str;

                    public void run()
                    {
                        Log.i("FileTransferStatusLogger", "Inside Run");
                        if (!str.contains("Failed") && !str.contains("Success") && !str.contains("bytes"))
                        {
                            if (str.contains("Sending"))
                                mHeading.add(str);
                            else
                            if (str.startsWith("EPMessage:"))
                            {
                                mHeading.add(str.substring(1 + str.indexOf(":")));
                                String s1 = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
                                addHeadingDetails((new StringBuilder()).append("TimeStamp: started on ").append(s1).toString());
                            }
                        } else
                        if (mHeading.size() > 0)
                        {
                            mHeading.remove(-1 + mHeading.size());
                            mHeading.add(str);
                        }
                        if (getFileTransferStatusAdapter() != null)
                            getFileTransferStatusAdapter().notifyDataSetChanged();
                    }

            
            {
                this$0 = FileTransferStatusLogger.this;
                str = s;
                super();
            }
                }
);
        } else
        if (!str.contains("Failed") && !str.contains("Success") && !str.contains("bytes"))
        {
            if (str.contains("Sending"))
            {
                mHeading.add(str);
                return;
            }
            if (str.startsWith("EPMessage:"))
            {
                mHeading.add(str.substring(1 + str.indexOf(":")));
                String s = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
                addHeadingDetails((new StringBuilder()).append("TimeStamp: started on ").append(s).toString());
                return;
            }
        } else
        if (mHeading.size() > 0)
        {
            mHeading.remove(-1 + mHeading.size());
            mHeading.add(str);
            return;
        }
    }

    public void addHeadingDetails(String s)
    {
        if (mHeadingTemp.size() != mHeadingDetails.size())
        {
            mHeadingDetails.add(s);
        } else
        {
            int i = -1 + mHeadingDetails.size();
            if (i >= 0)
            {
                lstr = (String)mHeadingDetails.get(i);
                lstr = (new StringBuilder()).append(lstr).append("\n\n").append(s).toString();
                mHeadingDetails.set(i, lstr);
                return;
            }
        }
    }

    public void clearHeaderList()
    {
        if (mHeading != null && mHeadingDetails != null && getFileTransferStatusAdapter() != null)
        {
            mHeading.clear();
            mHeadingTemp.clear();
            mHeadingDetails.clear();
            updateUI();
            return;
        } else
        {
            return;
        }
    }

    public int getEndpointType()
    {
        return endpointType;
    }

    public ArrayList getHeading()
    {
        return mHeading;
    }

    public ArrayList getHeadingDetails()
    {
        return mHeadingDetails;
    }

    public void removeAdapter()
    {
        if (handler != null)
        {
            handler.removeCallbacksAndMessages(null);
            handler = null;
        }
        setFileTransferStatusAdapter(null);
    }

    public void setEndpointType(int i)
    {
        endpointType = i;
    }

    public void setFileTransferAdapter(FileTransferStatusAdapter filetransferstatusadapter, Handler handler1)
    {
        mFileTransferStatusAdapter = filetransferstatusadapter;
        mFileTransferStatusAdapter.setList(getHeading());
        handler = handler1;
    }

    public void setHeading(ArrayList arraylist)
    {
        mHeading = arraylist;
    }

    public void updateUI()
    {
        if (handler != null)
            handler.post(new Runnable() {

                final FileTransferStatusLogger this$0;

                public void run()
                {
                    if (getFileTransferStatusAdapter() != null)
                        getFileTransferStatusAdapter().notifyDataSetChanged();
                }

            
            {
                this$0 = FileTransferStatusLogger.this;
                super();
            }
            }
);
    }


}

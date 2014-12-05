// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.io;

import android.content.*;
import android.os.Bundle;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.controller.FMSController;
import java.io.File;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.io:
//            FileRecord, FileTransaction

public final class FileManager
{
    private class FileTransferReceiver extends BroadcastReceiver
    {

        final FileManager this$0;

        public void onReceive(Context context1, Intent intent)
        {
            if (intent.getAction() != null) goto _L2; else goto _L1
_L1:
            Log.w("DeckOfCards", "FileManager.FileTransferReceiver.onReceive - action is null, returning");
_L4:
            return;
_L2:
            String s;
            FileTransaction filetransaction;
            s = intent.getExtras().getString("DESTPATH");
            filetransaction = (FileTransaction)fileTransactionLookup.get(s);
            if (filetransaction == null) goto _L4; else goto _L3
_L3:
            synchronized (mutex)
            {
                Log.d("DeckOfCards", (new StringBuilder()).append("FileManager.FileTransferReceiver.onReceive - removing dependency, destFilename: ").append(s).append(", dependent file: ").append(filetransaction.getDependentFileRecord()).toString());
                fileTransactionLookup.remove(s);
                filetransaction.dependencyTransferComplete(s);
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private FileTransferReceiver()
        {
            this$0 = FileManager.this;
            super();
        }

    }


    private static final int DEFAULT_APP_ID = 1;
    private static final int DEFAULT_PRIORITY = 99;
    private static final String DEST_FILENAME = "DESTPATH";
    private static FileManager inst;
    private Context context;
    private Map fileTransactionLookup;
    private FileTransferReceiver fileTransferReceiver;
    private Object mutex;

    private FileManager()
    {
        mutex = new Object();
        context = ToqApplication.getAppContext();
        fileTransactionLookup = Collections.synchronizedMap(new HashMap());
        fileTransferReceiver = new FileTransferReceiver();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(Constants.ACTION_SMARTWATCH_FMS_FILE_SYNCED);
        context.registerReceiver(fileTransferReceiver, intentfilter);
    }

    private boolean addFileToFMS(FileRecord filerecord, int i)
        throws DeckOfCardsException
    {
        FMSController fmscontroller = FMSController.getFmsController();
        if (fmscontroller == null)
            break MISSING_BLOCK_LABEL_185;
        File file = filerecord.getSrcFile();
        String s = filerecord.getDestFilename();
        int j;
        try
        {
            j = fmscontroller.fmsSyncFile(1, file.getAbsolutePath(), s, i);
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException((new StringBuilder()).append("An error occurred adding file to fms, srcFile: ").append(file.getAbsolutePath()).append(", destFilename: ").append(s).toString(), exception);
        }
        if (j != 0)
            break MISSING_BLOCK_LABEL_90;
        Log.d("DeckOfCards", (new StringBuilder()).append("FileManager.addFileFMS - add to fms, srcFile: ").append(file.getAbsolutePath()).append(", destFilename: ").append(s).append(", result: ").append(j).toString());
        return true;
        Log.w("DeckOfCards", (new StringBuilder()).append("FileManager.addFileFMS - add to fms (no change to existing file?), srcFile: ").append(file.getAbsolutePath()).append(", destFilename: ").append(s).append(", result: ").append(j).toString());
        return false;
        throw new DeckOfCardsException("Couldn't get reference to FMS controller");
    }

    public static FileManager getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new FileManager();
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean removeFileFromFMS(String s)
        throws DeckOfCardsException
    {
        FMSController fmscontroller = FMSController.getFmsController();
        if (fmscontroller == null)
            break MISSING_BLOCK_LABEL_122;
        int i;
        try
        {
            i = fmscontroller.fmsRemoveFile(1, s);
        }
        catch (Exception exception)
        {
            throw new DeckOfCardsException((new StringBuilder()).append("An error occurred removing file from fms, destFilename: ").append(s).toString(), exception);
        }
        if (i != 0)
            break MISSING_BLOCK_LABEL_57;
        Log.d("DeckOfCards", (new StringBuilder()).append("FileManager.removeFileFromFMS - remove from fms, destFilename: ").append(s).append(", result: ").append(i).toString());
        return true;
        Log.w("DeckOfCards", (new StringBuilder()).append("FileManager.removeFileFromFMS - remove from fms (doesn't exist?), destFilename: ").append(s).append(", result: ").append(i).toString());
        return false;
        throw new DeckOfCardsException("Couldn't get reference to FMS controller");
    }

    public boolean removeFile(String s)
        throws DeckOfCardsException
    {
        return removeFileFromFMS(s);
    }

    public boolean sendAppletFile(FileRecord filerecord)
        throws DeckOfCardsException
    {
        return addFileToFMS(filerecord, 99);
    }

    public void sendAppletFiles(FileTransaction filetransaction)
        throws DeckOfCardsException
    {
        String as[] = filetransaction.setupDependencyTransfers();
        Object obj = mutex;
        obj;
        JVM INSTR monitorenter ;
        int i = as.length;
        int j = 0;
_L2:
        if (j >= i)
            break; /* Loop/switch isn't completed */
        String s = as[j];
        fileTransactionLookup.put(s, filetransaction);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        String as1[];
        int k;
        Log.d("DeckOfCards", (new StringBuilder()).append("FileManager.sendAppletFiles - before start transfers, fileTransactionLookup: ").append(fileTransactionLookup.keySet()).toString());
        as1 = filetransaction.startDependencyTransfers();
        k = as1.length;
        int l = 0;
_L4:
        if (l >= k)
            break; /* Loop/switch isn't completed */
        String s1 = as1[l];
        fileTransactionLookup.remove(s1);
        l++;
        if (true) goto _L4; else goto _L3
_L3:
        Log.d("DeckOfCards", (new StringBuilder()).append("FileManager.sendAppletFiles - after start transfers, fileTransactionLookup: ").append(fileTransactionLookup.keySet()).toString());
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean sendIconFile(FileRecord filerecord)
        throws DeckOfCardsException
    {
        return addFileToFMS(filerecord, 99);
    }


}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.io;

import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.io:
//            FileManager, FileRecord

public final class FileTransaction
{

    private FileRecord dependencyFileRecords[];
    private FileRecord dependentFileRecord;
    private List pendingDependencyDestFilenames;

    public FileTransaction(FileRecord filerecord, FileRecord afilerecord[])
    {
        dependentFileRecord = filerecord;
        dependencyFileRecords = afilerecord;
    }

    private void sendDependentFile()
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("FileTransaction.sendDependentFile - dependentFileRecord: ").append(dependentFileRecord).toString());
        if (pendingDependencyDestFilenames.size() == 0) goto _L2; else goto _L1
_L1:
        Log.w("DeckOfCards", (new StringBuilder()).append("FileTransaction.sendDependentFile - existing pending dependency transfers, returning, pendingDependencyDestFilenames: ").append(pendingDependencyDestFilenames).toString());
_L4:
        return;
_L2:
        if (FileManager.getInstance().sendAppletFile(dependentFileRecord)) goto _L4; else goto _L3
_L3:
        Log.w("DeckOfCards", (new StringBuilder()).append("FileTransaction.sendDependentFile - failed to send dependent file, dependentFileRecord: ").append(dependentFileRecord).toString());
        return;
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        Log.e("DeckOfCards", (new StringBuilder()).append("FileTransaction.sendDependentFile - an error occurred sending the dependent file, dependentFileRecord: ").append(dependentFileRecord).toString());
        return;
    }

    void dependencyTransferComplete(String s)
    {
        Log.d("DeckOfCards", (new StringBuilder()).append("FileTransaction.dependencyTransferComplete - destFilename: ").append(s).toString());
        if (pendingDependencyDestFilenames == null)
        {
            Log.w("DeckOfCards", "FileTransaction.dependencyTransferComplete - pending dependency dest filenames list is null, returning");
        } else
        {
            pendingDependencyDestFilenames.remove(s);
            Log.d("DeckOfCards", (new StringBuilder()).append("FileTransaction.dependencyTransferComplete - pendingDependencyDestFilenames: ").append(pendingDependencyDestFilenames).toString());
            if (pendingDependencyDestFilenames.size() == 0)
            {
                sendDependentFile();
                return;
            }
        }
    }

    public FileRecord[] getDependencyFileRecords()
    {
        return dependencyFileRecords;
    }

    public FileRecord getDependentFileRecord()
    {
        return dependentFileRecord;
    }

    String[] setupDependencyTransfers()
    {
        pendingDependencyDestFilenames = Collections.synchronizedList(new ArrayList());
        FileRecord afilerecord[] = dependencyFileRecords;
        int i = afilerecord.length;
        for (int j = 0; j < i; j++)
        {
            FileRecord filerecord = afilerecord[j];
            pendingDependencyDestFilenames.add(filerecord.getDestFilename());
        }

        Log.d("DeckOfCards", (new StringBuilder()).append("FileTransaction.setupDependencyTransfers - pendingDependencyDestFilenames: ").append(pendingDependencyDestFilenames).toString());
        return (String[])pendingDependencyDestFilenames.toArray(new String[pendingDependencyDestFilenames.size()]);
    }

    String[] startDependencyTransfers()
    {
        ArrayList arraylist;
        FileRecord afilerecord[];
        int i;
        int j;
        if (pendingDependencyDestFilenames == null)
        {
            Log.w("DeckOfCards", "FileTransaction.startDependencyTransfers - pending dependency dest filenames list is null, returning");
            return null;
        }
        arraylist = new ArrayList();
        afilerecord = dependencyFileRecords;
        i = afilerecord.length;
        j = 0;
_L2:
        FileRecord filerecord;
        if (j >= i)
            break; /* Loop/switch isn't completed */
        filerecord = afilerecord[j];
        Log.d("DeckOfCards", (new StringBuilder()).append("FileTransaction.startDependencyTransfers - sending dependency file: ").append(filerecord).toString());
        boolean flag1 = FileManager.getInstance().sendAppletFile(filerecord);
        boolean flag = flag1;
_L3:
        if (!flag)
        {
            Log.w("DeckOfCards", (new StringBuilder()).append("FileTransaction.startDependencyTransfers - failed to send dependecy file, dependencyFileRecord: ").append(filerecord).toString());
            String s = filerecord.getDestFilename();
            arraylist.add(s);
            pendingDependencyDestFilenames.remove(s);
        }
        j++;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        Log.e("DeckOfCards", (new StringBuilder()).append("FileTransaction.startDependencyTransfers - an error occurred sending the dependecy file, dependencyFileRecord: ").append(filerecord).toString());
        flag = false;
          goto _L3
_L1:
        Log.d("DeckOfCards", (new StringBuilder()).append("FileTransaction.startDependencyTransfers - after sending all, pendingDependencyDestFilenames: ").append(pendingDependencyDestFilenames).toString());
        Log.d("DeckOfCards", (new StringBuilder()).append("FileTransaction.startDependencyTransfers - after sending all, failedDependencyDestFilenames: ").append(arraylist).toString());
        if (pendingDependencyDestFilenames.size() == 0)
            sendDependentFile();
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("[").append((new StringBuilder()).append("dependentFileRecord=").append(dependentFileRecord).append(",").toString());
        StringBuilder stringbuilder1 = (new StringBuilder()).append("dependencyFileRecords=");
        Object obj;
        if (dependencyFileRecords != null)
            obj = Arrays.asList(dependencyFileRecords);
        else
            obj = "null";
        return stringbuilder.append(stringbuilder1.append(obj).toString()).append("]").toString();
    }
}

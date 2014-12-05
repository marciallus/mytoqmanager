// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.io;

import java.io.File;

public final class FileRecord
{

    private String destFilename;
    private File srcFile;

    public FileRecord(File file, String s)
    {
        srcFile = file;
        destFilename = s;
    }

    public String getDestFilename()
    {
        return destFilename;
    }

    public File getSrcFile()
    {
        return srcFile;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[").append((new StringBuilder()).append("srcFile=").append(srcFile).append(",").toString()).append((new StringBuilder()).append("destFilename=").append(destFilename).toString()).append("]").toString();
    }
}

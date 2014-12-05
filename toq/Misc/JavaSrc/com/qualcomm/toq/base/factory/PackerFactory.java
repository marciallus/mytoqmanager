// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.factory;

import com.qualcomm.toq.base.packer.IPacker;
import com.qualcomm.toq.base.packer.binary.BinaryPacker;
import com.qualcomm.toq.base.packer.fts.FtsPacker;
import com.qualcomm.toq.base.packer.json.JsonPacker;
import com.qualcomm.toq.base.packer.tftp.TFTPPacker;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ProjectConfig;

public class PackerFactory
{

    private static final String TAG = "PackerFactory";
    private static PackerFactory mInstance;
    private IPacker messagePacker;

    private PackerFactory()
    {
    }

    public static PackerFactory getPackerFactory()
    {
        com/qualcomm/toq/base/factory/PackerFactory;
        JVM INSTR monitorenter ;
        if (mInstance == null)
        {
            mInstance = new PackerFactory();
            mInstance.initPacker();
        }
        com/qualcomm/toq/base/factory/PackerFactory;
        JVM INSTR monitorexit ;
        return mInstance;
        Exception exception;
        exception;
        com/qualcomm/toq/base/factory/PackerFactory;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public IPacker getMessagePacker()
    {
        return messagePacker;
    }

    public IPacker getMessagePacker(int i)
    {
        switch (i)
        {
        case 32: // ' '
        case 33: // '!'
            return FtsPacker.getPacker();

        case 26: // '\032'
        case 27: // '\033'
        case 34: // '"'
        case 35: // '#'
            return BinaryPacker.getPacker();

        case 15: // '\017'
        case 16: // '\020'
            return TFTPPacker.getPacker();
        }
        return messagePacker;
    }

    public void initPacker()
    {
        Log.i("PackerFactory", (new StringBuilder()).append("PackerType is = ").append(ProjectConfig.getProjectConfig().getPackerType()).toString());
        if (ProjectConfig.getProjectConfig().getPackerType().equals("JSON"))
            messagePacker = JsonPacker.getPacker();
    }
}

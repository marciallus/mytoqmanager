// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp;


// Referenced classes of package com.qualcomm.toq.base.tftp:
//            FTPMessageException, FTPWRPMessage, FTPERRMessage, FTPACKMessage, 
//            FTPDATMessage, FTPWRQMessage, FTPRRPMessage, FTPRRQMessage

public abstract class FTPBaseMessage
{

    public static final byte ACK_ID = 5;
    public static final byte BAD_TID = -1;
    public static int BLOCK_SIZE = 0;
    public static final byte DAT_ID = 4;
    public static final int ERROR_MESSAGE_SIZE = 200;
    public static final byte ERR_ID = 6;
    public static final int FILE_NAME_SIZE = 200;
    public static final byte NO_MSG = 0;
    public static final byte RRP_ID = 2;
    public static final byte RRQ_ID = 1;
    public static final byte SERVER_TID = 69;
    public static final byte WRP_ID = 7;
    public static final byte WRQ_ID = 3;
    protected long blockNumber;
    protected long crc;
    protected int desTID;
    protected long errCode;
    protected String errMessage;
    protected String fileName;
    protected long fileSize;
    protected byte opCode;
    protected byte payload[];
    protected short priority;
    protected int srcTID;

    FTPBaseMessage()
    {
        initialize();
    }

    public static final FTPBaseMessage generateMessage(byte abyte0[])
        throws FTPMessageException
    {
label0:
        {
            Object obj;
            switch (abyte0[0])
            {
            default:
                break label0;

            case 7: // '\007'
                obj = new FTPWRPMessage();
                break;

            case 6: // '\006'
                obj = new FTPERRMessage();
                break;

            case 5: // '\005'
                obj = new FTPACKMessage();
                break;

            case 4: // '\004'
                obj = new FTPDATMessage();
                break;

            case 3: // '\003'
                obj = new FTPWRQMessage();
                break;

            case 2: // '\002'
                obj = new FTPRRPMessage();
                break;

            case 1: // '\001'
                obj = new FTPRRQMessage();
                break;
            }
            ((FTPBaseMessage) (obj)).unpack(abyte0);
            return ((FTPBaseMessage) (obj));
        }
        throw new FTPMessageException("Bad packet.  Invalid TFTP operator code.");
    }

    public long getBlockNumber()
    {
        return blockNumber;
    }

    public long getCrc()
    {
        return crc;
    }

    public int getDesTID()
    {
        return desTID;
    }

    public long getFileSize()
    {
        return fileSize;
    }

    public byte[] getPayload()
    {
        return payload;
    }

    public int getSrcTID()
    {
        return srcTID;
    }

    protected void initialize()
    {
        opCode = 0;
        srcTID = 0;
        desTID = 0;
        fileName = "";
        crc = 0L;
        fileSize = 0L;
        blockNumber = 0L;
        errCode = 0L;
        errMessage = "";
        priority = 0;
    }

    public boolean isACK(FTPBaseMessage ftpbasemessage)
    {
        return opCode == 5;
    }

    public boolean isDAT(FTPBaseMessage ftpbasemessage)
    {
        return opCode == 4;
    }

    public boolean isERR(FTPBaseMessage ftpbasemessage)
    {
        return opCode == 6;
    }

    public boolean isRRP(FTPBaseMessage ftpbasemessage)
    {
        return opCode == 2;
    }

    public boolean isRRQ(FTPBaseMessage ftpbasemessage)
    {
        return opCode == 1;
    }

    public boolean isWRP(FTPBaseMessage ftpbasemessage)
    {
        return opCode == 7;
    }

    public boolean isWRQ(FTPBaseMessage ftpbasemessage)
    {
        return opCode == 3;
    }

    public byte messageOpcode(FTPBaseMessage ftpbasemessage, int i, int j)
    {
        byte byte0 = -1;
        if (ftpbasemessage == null)
            byte0 = 0;
        else
        if ((i == 0 || ftpbasemessage.srcTID == i) && (j == 0 || ftpbasemessage.desTID == j))
            return ftpbasemessage.opCode;
        return byte0;
    }

    public abstract byte[] pack()
        throws FTPMessageException;

    public void setBlockNumber(long l)
    {
        blockNumber = l;
    }

    public void setCrc(long l)
    {
        crc = l;
    }

    public void setDesTID(int i)
    {
        desTID = i;
    }

    public void setFileSize(long l)
    {
        fileSize = l;
    }

    public void setPayload(byte abyte0[])
    {
        payload = abyte0;
    }

    public void setSrcTID(int i)
    {
        srcTID = i;
    }

    public abstract void unpack(byte abyte0[])
        throws FTPMessageException;

    static 
    {
        BLOCK_SIZE = 8192;
    }
}

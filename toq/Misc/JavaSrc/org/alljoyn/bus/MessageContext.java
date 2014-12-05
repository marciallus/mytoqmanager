// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


public final class MessageContext
{

    public String authMechanism;
    public String destination;
    public String interfaceName;
    public boolean isUnreliable;
    public String memberName;
    public String objectPath;
    public String sender;
    public int serial;
    public int sessionId;
    public String signature;


    private MessageContext(boolean flag, String s, String s1, String s2, String s3, String s4, int i, 
            String s5, String s6, int j)
    {
        isUnreliable = flag;
        objectPath = s;
        interfaceName = s1;
        memberName = s2;
        destination = s3;
        sender = s4;
        sessionId = i;
        signature = s5;
        authMechanism = s6;
        serial = j;
    }
}

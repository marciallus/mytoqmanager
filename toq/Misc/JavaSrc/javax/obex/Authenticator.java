// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.obex;


// Referenced classes of package javax.obex:
//            PasswordAuthentication

public interface Authenticator
{

    public abstract PasswordAuthentication onAuthenticationChallenge(String s, boolean flag, boolean flag1);

    public abstract byte[] onAuthenticationResponse(byte abyte0[]);
}

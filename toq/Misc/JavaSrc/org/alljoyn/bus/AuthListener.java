// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            BusAttachment

public interface AuthListener
{
    public static class AuthRequest
    {

        protected Credentials credentials;

        private AuthRequest()
        {
        }

        AuthRequest(_cls1 _pcls1)
        {
            this();
        }
    }

    public static class CertificateRequest extends AuthRequest
    {

        public void setCertificateChain(String s)
        {
            credentials.certificateChain = s;
        }

        CertificateRequest(Credentials credentials)
        {
            super(null);
            this.credentials = credentials;
        }
    }

    public static class Credentials
    {

        String certificateChain;
        Integer expiration;
        byte logonEntry[];
        byte password[];
        String privateKey;
        String userName;

    }

    public static class ExpirationRequest extends AuthRequest
    {

        public void setExpiration(int i)
        {
            credentials.expiration = Integer.valueOf(i);
        }

        ExpirationRequest(Credentials credentials)
        {
            super(null);
            this.credentials = credentials;
        }
    }

    public static class LogonEntryRequest extends AuthRequest
    {

        public void setLogonEntry(char ac[])
        {
            credentials.logonEntry = BusAttachment.encode(ac);
        }

        LogonEntryRequest(Credentials credentials)
        {
            super(null);
            this.credentials = credentials;
        }
    }

    public static class PasswordRequest extends AuthRequest
    {

        private boolean isNew;
        private boolean isOneTime;

        public boolean isNewPassword()
        {
            return isNew;
        }

        public boolean isOneTimePassword()
        {
            return isOneTime;
        }

        public void setPassword(char ac[])
        {
            credentials.password = BusAttachment.encode(ac);
        }

        PasswordRequest(Credentials credentials, boolean flag, boolean flag1)
        {
            super(null);
            this.credentials = credentials;
            isNew = flag;
            isOneTime = flag1;
        }
    }

    public static class PrivateKeyRequest extends AuthRequest
    {

        public void setPrivateKey(String s)
        {
            credentials.privateKey = s;
        }

        PrivateKeyRequest(Credentials credentials)
        {
            super(null);
            this.credentials = credentials;
        }
    }

    public static class UserNameRequest extends AuthRequest
    {

        public void setUserName(String s)
        {
            credentials.userName = s;
        }

        UserNameRequest(Credentials credentials)
        {
            super(null);
            this.credentials = credentials;
        }
    }

    public static class VerifyRequest extends AuthRequest
    {

        private String certificateChain;

        public String getCertificateChain()
        {
            return certificateChain;
        }

        VerifyRequest(String s)
        {
            super(null);
            certificateChain = s;
        }
    }


    public abstract void completed(String s, String s1, boolean flag);

    public abstract boolean requested(String s, String s1, int i, String s2, AuthRequest aauthrequest[]);
}

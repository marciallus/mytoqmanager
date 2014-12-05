// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.alljoyn.demo.controlpanel;


public class AllJoynDeviceResponse
{
    public static final class ResponseCode extends Enum
    {

        private static final ResponseCode $VALUES[];
        public static final ResponseCode Status_ERROR;
        public static final ResponseCode Status_ERROR_CANT_ESTABLISH_SESSION;
        public static final ResponseCode Status_ERROR_NO_PEER_NAME;
        public static final ResponseCode Status_OK;

        public static ResponseCode valueOf(String s)
        {
            return (ResponseCode)Enum.valueOf(com/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode, s);
        }

        public static ResponseCode[] values()
        {
            return (ResponseCode[])$VALUES.clone();
        }

        static 
        {
            Status_OK = new ResponseCode("Status_OK", 0);
            Status_ERROR = new ResponseCode("Status_ERROR", 1);
            Status_ERROR_NO_PEER_NAME = new ResponseCode("Status_ERROR_NO_PEER_NAME", 2);
            Status_ERROR_CANT_ESTABLISH_SESSION = new ResponseCode("Status_ERROR_CANT_ESTABLISH_SESSION", 3);
            ResponseCode aresponsecode[] = new ResponseCode[4];
            aresponsecode[0] = Status_OK;
            aresponsecode[1] = Status_ERROR;
            aresponsecode[2] = Status_ERROR_NO_PEER_NAME;
            aresponsecode[3] = Status_ERROR_CANT_ESTABLISH_SESSION;
            $VALUES = aresponsecode;
        }

        private ResponseCode(String s, int i)
        {
            super(s, i);
        }
    }


    private String m_msg;
    private ResponseCode m_status;

    public AllJoynDeviceResponse(ResponseCode responsecode)
    {
        m_status = responsecode;
    }

    public AllJoynDeviceResponse(ResponseCode responsecode, String s)
    {
        m_status = responsecode;
        m_msg = s;
    }

    public String getMsg()
    {
        return m_msg;
    }

    public ResponseCode getStatus()
    {
        return m_status;
    }
}

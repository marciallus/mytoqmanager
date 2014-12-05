// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.or.jms;

import javax.jms.JMSException;
import javax.jms.Message;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.or.ObjectRenderer;

public class MessageRenderer
    implements ObjectRenderer
{


    public String doRender(Object obj)
    {
        StringBuffer stringbuffer;
        Message message;
        if (!(obj instanceof Message))
            break MISSING_BLOCK_LABEL_262;
        stringbuffer = new StringBuffer();
        message = (Message)obj;
        stringbuffer.append("DeliveryMode=");
        message.getJMSDeliveryMode();
        JVM INSTR tableswitch 1 2: default 56
    //                   1 230
    //                   2 252;
           goto _L1 _L2 _L3
_L3:
        break MISSING_BLOCK_LABEL_252;
_L1:
        stringbuffer.append("UNKNOWN");
_L4:
        stringbuffer.append(", CorrelationID=");
        stringbuffer.append(message.getJMSCorrelationID());
        stringbuffer.append(", Destination=");
        stringbuffer.append(message.getJMSDestination());
        stringbuffer.append(", Expiration=");
        stringbuffer.append(message.getJMSExpiration());
        stringbuffer.append(", MessageID=");
        stringbuffer.append(message.getJMSMessageID());
        stringbuffer.append(", Priority=");
        stringbuffer.append(message.getJMSPriority());
        stringbuffer.append(", Redelivered=");
        stringbuffer.append(message.getJMSRedelivered());
        stringbuffer.append(", ReplyTo=");
        stringbuffer.append(message.getJMSReplyTo());
        stringbuffer.append(", Timestamp=");
        stringbuffer.append(message.getJMSTimestamp());
        stringbuffer.append(", Type=");
        stringbuffer.append(message.getJMSType());
_L5:
        return stringbuffer.toString();
_L2:
        stringbuffer.append("NON_PERSISTENT");
          goto _L4
        JMSException jmsexception;
        jmsexception;
        LogLog.error("Could not parse Message.", jmsexception);
          goto _L5
        stringbuffer.append("PERSISTENT");
          goto _L4
        return obj.toString();
    }
}

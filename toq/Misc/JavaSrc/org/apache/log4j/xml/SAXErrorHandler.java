// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.xml;

import org.apache.log4j.helpers.LogLog;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXParseException;

public class SAXErrorHandler
    implements ErrorHandler
{


    private static void emitMessage(String s, SAXParseException saxparseexception)
    {
        LogLog.warn(s + saxparseexception.getLineNumber() + " and column " + saxparseexception.getColumnNumber());
        LogLog.warn(saxparseexception.getMessage(), saxparseexception.getException());
    }

    public void error(SAXParseException saxparseexception)
    {
        emitMessage("Continuable parsing error ", saxparseexception);
    }

    public void fatalError(SAXParseException saxparseexception)
    {
        emitMessage("Fatal parsing error ", saxparseexception);
    }

    public void warning(SAXParseException saxparseexception)
    {
        emitMessage("Parsing warning ", saxparseexception);
    }
}

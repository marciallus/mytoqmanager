// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.awt.event.ActionEvent;
import javax.swing.AbstractAction;
import org.apache.log4j.Logger;

class ExitAction extends AbstractAction
{

    public static final ExitAction INSTANCE = new ExitAction();
    private static final Logger LOG;
    static Class class$org$apache$log4j$chainsaw$ExitAction;

    private ExitAction()
    {
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public void actionPerformed(ActionEvent actionevent)
    {
        LOG.info("shutting down");
        System.exit(0);
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$chainsaw$ExitAction == null)
        {
            class1 = _mthclass$("org.apache.log4j.chainsaw.ExitAction");
            class$org$apache$log4j$chainsaw$ExitAction = class1;
        } else
        {
            class1 = class$org$apache$log4j$chainsaw$ExitAction;
        }
        LOG = Logger.getLogger(class1);
    }
}

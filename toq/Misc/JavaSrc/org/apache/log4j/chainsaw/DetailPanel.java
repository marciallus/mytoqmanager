// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.awt.BorderLayout;
import java.text.MessageFormat;
import java.util.Date;
import javax.swing.*;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import org.apache.log4j.Logger;

// Referenced classes of package org.apache.log4j.chainsaw:
//            EventDetails, MyTableModel

class DetailPanel extends JPanel
    implements ListSelectionListener
{

    private static final MessageFormat FORMATTER = new MessageFormat("<b>Time:</b> <code>{0,time,medium}</code>&nbsp;&nbsp;<b>Priority:</b> <code>{1}</code>&nbsp;&nbsp;<b>Thread:</b> <code>{2}</code>&nbsp;&nbsp;<b>NDC:</b> <code>{3}</code><br><b>Logger:</b> <code>{4}</code><br><b>Location:</b> <code>{5}</code><br><b>Message:</b><pre>{6}</pre><b>Throwable:</b><pre>{7}</pre>");
    private static final Logger LOG;
    static Class class$org$apache$log4j$chainsaw$DetailPanel;
    private final JEditorPane mDetails = new JEditorPane();
    private final MyTableModel mModel;

    DetailPanel(JTable jtable, MyTableModel mytablemodel)
    {
        mModel = mytablemodel;
        setLayout(new BorderLayout());
        setBorder(BorderFactory.createTitledBorder("Details: "));
        mDetails.setEditable(false);
        mDetails.setContentType("text/html");
        add(new JScrollPane(mDetails), "Center");
        jtable.getSelectionModel().addListSelectionListener(this);
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

    private String escape(String s)
    {
        if (s == null)
            return null;
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            switch (c)
            {
            case 38: // '&'
                stringbuffer.append("&amp;");
                break;

            case 34: // '"'
                stringbuffer.append("&quot;");
                break;

            case 62: // '>'
                stringbuffer.append("&gt;");
                break;

            case 60: // '<'
                stringbuffer.append("&lt;");
                break;

            default:
                stringbuffer.append(c);
                break;
            }
        }

        return stringbuffer.toString();
    }

    private static String getThrowableStrRep(EventDetails eventdetails)
    {
        String as[] = eventdetails.getThrowableStrRep();
        if (as == null)
            return null;
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < as.length; i++)
            stringbuffer.append(as[i]).append("\n");

        return stringbuffer.toString();
    }

    public void valueChanged(ListSelectionEvent listselectionevent)
    {
        if (listselectionevent.getValueIsAdjusting())
            return;
        ListSelectionModel listselectionmodel = (ListSelectionModel)listselectionevent.getSource();
        if (listselectionmodel.isSelectionEmpty())
        {
            mDetails.setText("Nothing selected");
            return;
        } else
        {
            int i = listselectionmodel.getMinSelectionIndex();
            EventDetails eventdetails = mModel.getEventDetails(i);
            Object aobj[] = new Object[8];
            aobj[0] = new Date(eventdetails.getTimeStamp());
            aobj[1] = eventdetails.getPriority();
            aobj[2] = escape(eventdetails.getThreadName());
            aobj[3] = escape(eventdetails.getNDC());
            aobj[4] = escape(eventdetails.getCategoryName());
            aobj[5] = escape(eventdetails.getLocationDetails());
            aobj[6] = escape(eventdetails.getMessage());
            aobj[7] = escape(getThrowableStrRep(eventdetails));
            mDetails.setText(FORMATTER.format(((Object) (aobj))));
            mDetails.setCaretPosition(0);
            return;
        }
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$chainsaw$DetailPanel == null)
        {
            class1 = _mthclass$("org.apache.log4j.chainsaw.DetailPanel");
            class$org$apache$log4j$chainsaw$DetailPanel = class1;
        } else
        {
            class1 = class$org$apache$log4j$chainsaw$DetailPanel;
        }
        LOG = Logger.getLogger(class1);
    }
}

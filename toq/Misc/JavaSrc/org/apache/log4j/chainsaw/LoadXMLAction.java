// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.awt.event.ActionEvent;
import java.io.*;
import javax.swing.*;
import javax.xml.parsers.*;
import org.apache.log4j.Logger;
import org.xml.sax.*;

// Referenced classes of package org.apache.log4j.chainsaw:
//            XMLFileHandler, MyTableModel

class LoadXMLAction extends AbstractAction
{

    private static final Logger LOG;
    static Class class$org$apache$log4j$chainsaw$LoadXMLAction;
    private final JFileChooser mChooser = new JFileChooser();
    private final XMLFileHandler mHandler;
    private final JFrame mParent;
    private final XMLReader mParser = SAXParserFactory.newInstance().newSAXParser().getXMLReader();

    LoadXMLAction(JFrame jframe, MyTableModel mytablemodel)
        throws SAXException, ParserConfigurationException
    {
        mChooser.setMultiSelectionEnabled(false);
        mChooser.setFileSelectionMode(0);
        mParent = jframe;
        mHandler = new XMLFileHandler(mytablemodel);
        mParser.setContentHandler(mHandler);
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

    private int loadFile(String s)
        throws SAXException, IOException
    {
        int i;
        synchronized (mParser)
        {
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append("<?xml version=\"1.0\" standalone=\"yes\"?>\n");
            stringbuffer.append("<!DOCTYPE log4j:eventSet ");
            stringbuffer.append("[<!ENTITY data SYSTEM \"file:///");
            stringbuffer.append(s);
            stringbuffer.append("\">]>\n");
            stringbuffer.append("<log4j:eventSet xmlns:log4j=\"Claira\">\n");
            stringbuffer.append("&data;\n");
            stringbuffer.append("</log4j:eventSet>\n");
            InputSource inputsource = new InputSource(new StringReader(stringbuffer.toString()));
            mParser.parse(inputsource);
            i = mHandler.getNumEvents();
        }
        return i;
        exception;
        xmlreader;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void actionPerformed(ActionEvent actionevent)
    {
        File file;
        LOG.info("load file called");
        if (mChooser.showOpenDialog(mParent) != 0)
            break MISSING_BLOCK_LABEL_111;
        LOG.info("Need to load a file");
        file = mChooser.getSelectedFile();
        LOG.info("loading the contents of " + file.getAbsolutePath());
        int i = loadFile(file.getAbsolutePath());
        JOptionPane.showMessageDialog(mParent, "Loaded " + i + " events.", "CHAINSAW", 1);
        return;
        Exception exception;
        exception;
        LOG.warn("caught an exception loading the file", exception);
        JOptionPane.showMessageDialog(mParent, "Error parsing file - " + exception.getMessage(), "CHAINSAW", 0);
        return;
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$chainsaw$LoadXMLAction == null)
        {
            class1 = _mthclass$("org.apache.log4j.chainsaw.LoadXMLAction");
            class$org$apache$log4j$chainsaw$LoadXMLAction = class1;
        } else
        {
            class1 = class$org$apache$log4j$chainsaw$LoadXMLAction;
        }
        LOG = Logger.getLogger(class1);
    }
}

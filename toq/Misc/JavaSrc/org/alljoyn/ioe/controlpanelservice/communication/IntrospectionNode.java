// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication;

import android.util.Log;
import java.io.*;
import java.util.*;
import javax.xml.parsers.*;
import org.alljoyn.bus.*;
import org.alljoyn.bus.ifaces.Introspectable;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.xml.sax.*;
import org.xml.sax.helpers.DefaultHandler;

public class IntrospectionNode
{
    class IntrospectionParser extends DefaultHandler
    {

        private IntrospectionNode currentNode;
        private boolean sawRootNode;
        private SAXParser saxParser;
        final IntrospectionNode this$0;
        private XMLReader xmlReader;

        private String getNameAttr(Attributes attributes)
            throws SAXException
        {
            int i = attributes.getIndex("name");
            if (-1 == i)
                throw new SAXException("inner node without a name");
            else
                return attributes.getValue(i);
        }

        public void parse(IntrospectionNode introspectionnode, String s)
            throws SAXException
        {
            currentNode = introspectionnode;
            sawRootNode = false;
            try
            {
                xmlReader.parse(new InputSource(new StringReader(s)));
            }
            catch (IOException ioexception)
            {
                Log.e("IntrospectionNode", (new StringBuilder()).append("Failed to read the XML: '").append(ioexception.getMessage()).append("', ").toString(), ioexception);
            }
            currentNode = null;
        }

        public void startElement(String s, String s1, String s2, Attributes attributes)
            throws SAXException
        {
            if (s2.equals("node"))
            {
                if (!sawRootNode)
                {
                    sawRootNode = true;
                } else
                {
                    currentNode.addChild(getNameAttr(attributes));
                    return;
                }
            } else
            if (s2.equals("interface"))
                if (currentNode == null)
                {
                    throw new SAXException("interface not in node");
                } else
                {
                    currentNode.interfaces.add(getNameAttr(attributes));
                    return;
                }
        }

        public IntrospectionParser()
            throws IOException, ParserConfigurationException, SAXException
        {
            this$0 = IntrospectionNode.this;
            super();
            xmlReader = null;
            saxParser = null;
            currentNode = null;
            sawRootNode = false;
            SAXParserFactory saxparserfactory = SAXParserFactory.newInstance();
            saxparserfactory.setNamespaceAware(false);
            saxParser = saxparserfactory.newSAXParser();
            xmlReader = saxParser.getXMLReader();
            xmlReader.setContentHandler(this);
            xmlReader.setEntityResolver(new NoOpEntityResolver());
        }
    }

    class NoOpEntityResolver
        implements EntityResolver
    {

        final IntrospectionNode this$0;

        public InputSource resolveEntity(String s, String s1)
            throws SAXException, IOException
        {
            return new InputSource(new ByteArrayInputStream("".getBytes()));
        }

        NoOpEntityResolver()
        {
            this$0 = IntrospectionNode.this;
            super();
        }
    }


    private List children;
    private List interfaces;
    private boolean parsed;
    private IntrospectionParser parser;
    private String path;

    public IntrospectionNode(String s)
        throws ParserConfigurationException, IOException, SAXException
    {
        parsed = false;
        path = null;
        parser = null;
        children = new LinkedList();
        interfaces = new LinkedList();
        path = s;
        parser = new IntrospectionParser();
    }

    private IntrospectionNode(String s, IntrospectionParser introspectionparser)
    {
        parsed = false;
        path = null;
        parser = null;
        children = new LinkedList();
        interfaces = new LinkedList();
        path = s;
        parser = introspectionparser;
    }

    public static String getInstrospection(BusAttachment busattachment, String s, String s1, int i)
        throws ControlPanelException
    {
        Log.v("IntrospectionNode", (new StringBuilder()).append("Introspecting the Object: '").append(s1).append("', BusUniqueName: '").append(s).append("', sessionId: '").append(i).append("'").toString());
        ProxyBusObject proxybusobject = busattachment.getProxyBusObject(s, s1, i, new Class[] {
            org/alljoyn/bus/ifaces/Introspectable
        });
        Introspectable introspectable = (Introspectable)proxybusobject.getInterface(org/alljoyn/bus/ifaces/Introspectable);
        String s2;
        try
        {
            s2 = introspectable.Introspect();
        }
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to get introspection of: '").append(s1).append("', Error: '").append(busexception.getMessage()).append("'").toString());
        }
        if (proxybusobject != null)
            proxybusobject.release();
        return s2;
    }

    protected void addChild(String s)
    {
        StringBuilder stringbuilder = new StringBuilder(path);
        if (!s.endsWith("/"))
            stringbuilder.append('/');
        stringbuilder.append(s);
        children.add(new IntrospectionNode(stringbuilder.toString(), parser));
    }

    public List getChidren()
    {
        return children;
    }

    public List getInterfaces()
    {
        return interfaces;
    }

    public String getPath()
    {
        return path;
    }

    public boolean isParsed()
    {
        return parsed;
    }

    public void parse(String s)
        throws SAXException
    {
        parser.parse(this, s);
        parsed = true;
    }

    public void parse(BusAttachment busattachment, String s, int i)
        throws SAXException, ControlPanelException
    {
        parse(getInstrospection(busattachment, s, path, i));
        for (Iterator iterator = children.iterator(); iterator.hasNext(); ((IntrospectionNode)iterator.next()).parse(busattachment, s, i));
    }

    public void parseOneLevel(BusAttachment busattachment, String s, int i)
        throws SAXException, ControlPanelException
    {
        parse(getInstrospection(busattachment, s, path, i));
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(path);
        stringbuilder.append('\n');
        if (!parsed)
        {
            stringbuilder.append(" Not parsed\n");
            return stringbuilder.toString();
        }
        for (Iterator iterator = interfaces.iterator(); iterator.hasNext(); stringbuilder.append('\n'))
        {
            String s = (String)iterator.next();
            stringbuilder.append(' ');
            stringbuilder.append(s);
        }

        for (Iterator iterator1 = children.iterator(); iterator1.hasNext(); stringbuilder.append(((IntrospectionNode)iterator1.next()).toString()));
        return stringbuilder.toString();
    }

}

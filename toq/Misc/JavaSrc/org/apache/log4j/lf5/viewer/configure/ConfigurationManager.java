// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.configure;

import java.awt.Color;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.tree.TreePath;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.apache.log4j.lf5.LogLevel;
import org.apache.log4j.lf5.LogLevelFormatException;
import org.apache.log4j.lf5.viewer.LogBrokerMonitor;
import org.apache.log4j.lf5.viewer.LogTable;
import org.apache.log4j.lf5.viewer.LogTableColumn;
import org.apache.log4j.lf5.viewer.LogTableColumnFormatException;
import org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerModel;
import org.apache.log4j.lf5.viewer.categoryexplorer.CategoryExplorerTree;
import org.apache.log4j.lf5.viewer.categoryexplorer.CategoryNode;
import org.apache.log4j.lf5.viewer.categoryexplorer.CategoryPath;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ConfigurationManager
{

    private static final String BLUE = "blue";
    private static final String CATEGORY = "category";
    private static final String COLORLEVEL = "colorlevel";
    private static final String COLUMN = "column";
    private static final String CONFIG_FILE_NAME = "lf5_configuration.xml";
    private static final String EXPANDED = "expanded";
    private static final String FIRST_CATEGORY_NAME = "Categories";
    private static final String GREEN = "green";
    private static final String LEVEL = "level";
    private static final String NAME = "name";
    private static final String NDCTEXTFILTER = "searchtext";
    private static final String PATH = "path";
    private static final String RED = "red";
    private static final String SELECTED = "selected";
    private LogBrokerMonitor _monitor;
    private LogTable _table;

    public ConfigurationManager(LogBrokerMonitor logbrokermonitor, LogTable logtable)
    {
        _monitor = null;
        _table = null;
        _monitor = logbrokermonitor;
        _table = logtable;
        load();
    }

    private void closeConfigurationXML(StringBuffer stringbuffer)
    {
        stringbuffer.append("</configuration>\r\n");
    }

    private void exportLogLevelColorXMLElement(String s, Color color, StringBuffer stringbuffer)
    {
        stringbuffer.append("\t\t<").append("colorlevel").append(" ").append("name");
        stringbuffer.append("=\"").append(s).append("\" ");
        stringbuffer.append("red").append("=\"").append(color.getRed()).append("\" ");
        stringbuffer.append("green").append("=\"").append(color.getGreen()).append("\" ");
        stringbuffer.append("blue").append("=\"").append(color.getBlue());
        stringbuffer.append("\"/>\r\n");
    }

    private void exportLogLevelXMLElement(String s, boolean flag, StringBuffer stringbuffer)
    {
        stringbuffer.append("\t\t<").append("level").append(" ").append("name");
        stringbuffer.append("=\"").append(s).append("\" ");
        stringbuffer.append("selected").append("=\"").append(flag);
        stringbuffer.append("\"/>\r\n");
    }

    private void exportLogTableColumnXMLElement(String s, boolean flag, StringBuffer stringbuffer)
    {
        stringbuffer.append("\t\t<").append("column").append(" ").append("name");
        stringbuffer.append("=\"").append(s).append("\" ");
        stringbuffer.append("selected").append("=\"").append(flag);
        stringbuffer.append("\"/>\r\n");
    }

    private void exportXMLElement(CategoryNode categorynode, TreePath treepath, StringBuffer stringbuffer)
    {
        CategoryExplorerTree categoryexplorertree = _monitor.getCategoryExplorerTree();
        stringbuffer.append("\t<").append("category").append(" ");
        stringbuffer.append("name").append("=\"").append(categorynode.getTitle()).append("\" ");
        stringbuffer.append("path").append("=\"").append(treePathToString(treepath)).append("\" ");
        stringbuffer.append("expanded").append("=\"").append(categoryexplorertree.isExpanded(treepath)).append("\" ");
        stringbuffer.append("selected").append("=\"").append(categorynode.isSelected()).append("\"/>\r\n");
    }

    private void openConfigurationXML(StringBuffer stringbuffer)
    {
        stringbuffer.append("<configuration>\r\n");
    }

    private void openXMLDocument(StringBuffer stringbuffer)
    {
        stringbuffer.append("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n");
    }

    private void processConfigurationNode(CategoryNode categorynode, StringBuffer stringbuffer)
    {
        CategoryExplorerModel categoryexplorermodel = _monitor.getCategoryExplorerTree().getExplorerModel();
        CategoryNode categorynode1;
        for (Enumeration enumeration = categorynode.breadthFirstEnumeration(); enumeration.hasMoreElements(); exportXMLElement(categorynode1, categoryexplorermodel.getTreePathToRoot(categorynode1), stringbuffer))
            categorynode1 = (CategoryNode)enumeration.nextElement();

    }

    private void processLogLevelColors(Map map, Map map1, StringBuffer stringbuffer)
    {
        stringbuffer.append("\t<loglevelcolors>\r\n");
        LogLevel loglevel;
        Color color;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); exportLogLevelColorXMLElement(loglevel.getLabel(), color, stringbuffer))
        {
            loglevel = (LogLevel)iterator.next();
            color = (Color)map1.get(loglevel);
        }

        stringbuffer.append("\t</loglevelcolors>\r\n");
    }

    private void processLogLevels(Map map, StringBuffer stringbuffer)
    {
        stringbuffer.append("\t<loglevels>\r\n");
        LogLevel loglevel;
        JCheckBoxMenuItem jcheckboxmenuitem;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); exportLogLevelXMLElement(loglevel.getLabel(), jcheckboxmenuitem.isSelected(), stringbuffer))
        {
            loglevel = (LogLevel)iterator.next();
            jcheckboxmenuitem = (JCheckBoxMenuItem)map.get(loglevel);
        }

        stringbuffer.append("\t</loglevels>\r\n");
    }

    private void processLogRecordFilter(String s, StringBuffer stringbuffer)
    {
        stringbuffer.append("\t<").append("searchtext").append(" ");
        stringbuffer.append("name").append("=\"").append(s).append("\"");
        stringbuffer.append("/>\r\n");
    }

    private void processLogTableColumns(java.util.List list, StringBuffer stringbuffer)
    {
        stringbuffer.append("\t<logtablecolumns>\r\n");
        LogTableColumn logtablecolumn;
        JCheckBoxMenuItem jcheckboxmenuitem;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); exportLogTableColumnXMLElement(logtablecolumn.getLabel(), jcheckboxmenuitem.isSelected(), stringbuffer))
        {
            logtablecolumn = (LogTableColumn)iterator.next();
            jcheckboxmenuitem = _monitor.getTableColumnMenuItem(logtablecolumn);
        }

        stringbuffer.append("\t</logtablecolumns>\r\n");
    }

    public static String treePathToString(TreePath treepath)
    {
        StringBuffer stringbuffer = new StringBuffer();
        Object aobj[] = treepath.getPath();
        for (int i = 1; i < aobj.length; i++)
        {
            CategoryNode categorynode = (CategoryNode)aobj[i];
            if (i > 1)
                stringbuffer.append(".");
            stringbuffer.append(categorynode.getTitle());
        }

        return stringbuffer.toString();
    }

    protected void collapseTree()
    {
        CategoryExplorerTree categoryexplorertree = _monitor.getCategoryExplorerTree();
        for (int i = -1 + categoryexplorertree.getRowCount(); i > 0; i--)
            categoryexplorertree.collapseRow(i);

    }

    protected void deleteConfigurationFile()
    {
        try
        {
            File file = new File(getFilename());
            if (file.exists())
                file.delete();
            return;
        }
        catch (SecurityException securityexception)
        {
            System.err.println("Cannot delete " + getFilename() + " because a security violation occured.");
        }
    }

    protected String getFilename()
    {
        String s = System.getProperty("user.home");
        String s1 = System.getProperty("file.separator");
        return s + s1 + "lf5" + s1 + "lf5_configuration.xml";
    }

    protected String getValue(NamedNodeMap namednodemap, String s)
    {
        return namednodemap.getNamedItem(s).getNodeValue();
    }

    protected void load()
    {
        File file;
        file = new File(getFilename());
        if (!file.exists())
            break MISSING_BLOCK_LABEL_55;
        Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file);
        processRecordFilter(document);
        processCategories(document);
        processLogLevels(document);
        processLogLevelColors(document);
        processLogTableColumns(document);
        return;
        Exception exception;
        exception;
        System.err.println("Unable process configuration file at " + getFilename() + ". Error Message=" + exception.getMessage());
        return;
    }

    protected void processCategories(Document document)
    {
        CategoryExplorerTree categoryexplorertree = _monitor.getCategoryExplorerTree();
        CategoryExplorerModel categoryexplorermodel = categoryexplorertree.getExplorerModel();
        NodeList nodelist = document.getElementsByTagName("category");
        int i;
        if (getValue(nodelist.item(0).getAttributes(), "name").equalsIgnoreCase("Categories"))
            i = 1;
        else
            i = 0;
        for (int j = -1 + nodelist.getLength(); j >= i; j--)
        {
            NamedNodeMap namednodemap = nodelist.item(j).getAttributes();
            CategoryNode categorynode = categoryexplorermodel.addCategory(new CategoryPath(getValue(namednodemap, "path")));
            boolean flag;
            if (getValue(namednodemap, "selected").equalsIgnoreCase("true"))
                flag = true;
            else
                flag = false;
            categorynode.setSelected(flag);
            if (!getValue(namednodemap, "expanded").equalsIgnoreCase("true"));
            categoryexplorertree.expandPath(categoryexplorermodel.getTreePathToRoot(categorynode));
        }

    }

    protected void processLogLevelColors(Document document)
    {
        NodeList nodelist;
        int i;
        nodelist = document.getElementsByTagName("colorlevel");
        LogLevel.getLogLevelColorMap();
        i = 0;
_L2:
        NamedNodeMap namednodemap;
        String s;
        Node node;
label0:
        {
            if (i < nodelist.getLength())
            {
                node = nodelist.item(i);
                if (node != null)
                    break label0;
            }
            return;
        }
        namednodemap = node.getAttributes();
        s = getValue(namednodemap, "name");
        LogLevel loglevel;
        Color color;
        loglevel = LogLevel.valueOf(s);
        color = new Color(Integer.parseInt(getValue(namednodemap, "red")), Integer.parseInt(getValue(namednodemap, "green")), Integer.parseInt(getValue(namednodemap, "blue")));
        if (loglevel != null)
            try
            {
                loglevel.setLogLevelColorMap(loglevel, color);
            }
            catch (LogLevelFormatException loglevelformatexception) { }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void processLogLevels(Document document)
    {
        NodeList nodelist = document.getElementsByTagName("level");
        Map map = _monitor.getLogLevelMenuItems();
        int i = 0;
        while (i < nodelist.getLength()) 
        {
            NamedNodeMap namednodemap = nodelist.item(i).getAttributes();
            String s = getValue(namednodemap, "name");
            try
            {
                ((JCheckBoxMenuItem)map.get(LogLevel.valueOf(s))).setSelected(getValue(namednodemap, "selected").equalsIgnoreCase("true"));
            }
            catch (LogLevelFormatException loglevelformatexception) { }
            i++;
        }
    }

    protected void processLogTableColumns(Document document)
    {
        NodeList nodelist = document.getElementsByTagName("column");
        Map map = _monitor.getLogTableColumnMenuItems();
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            Node node;
label0:
            {
                if (i < nodelist.getLength())
                {
                    node = nodelist.item(i);
                    if (node != null)
                        break label0;
                }
                return;
            }
            NamedNodeMap namednodemap = node.getAttributes();
            String s = getValue(namednodemap, "name");
            try
            {
                LogTableColumn logtablecolumn = LogTableColumn.valueOf(s);
                JCheckBoxMenuItem jcheckboxmenuitem = (JCheckBoxMenuItem)map.get(logtablecolumn);
                jcheckboxmenuitem.setSelected(getValue(namednodemap, "selected").equalsIgnoreCase("true"));
                if (jcheckboxmenuitem.isSelected())
                    arraylist.add(logtablecolumn);
            }
            catch (LogTableColumnFormatException logtablecolumnformatexception) { }
            if (arraylist.isEmpty())
                _table.setDetailedView();
            else
                _table.setView(arraylist);
            i++;
        } while (true);
    }

    protected void processRecordFilter(Document document)
    {
        Node node = document.getElementsByTagName("searchtext").item(0);
        if (node != null)
        {
            String s = getValue(node.getAttributes(), "name");
            if (s != null && !s.equals(""))
            {
                _monitor.setNDCLogRecordFilter(s);
                return;
            }
        }
    }

    public void reset()
    {
        deleteConfigurationFile();
        collapseTree();
        selectAllNodes();
    }

    public void save()
    {
        CategoryNode categorynode = _monitor.getCategoryExplorerTree().getExplorerModel().getRootCategoryNode();
        StringBuffer stringbuffer = new StringBuffer(2048);
        openXMLDocument(stringbuffer);
        openConfigurationXML(stringbuffer);
        processLogRecordFilter(_monitor.getNDCTextFilter(), stringbuffer);
        processLogLevels(_monitor.getLogLevelMenuItems(), stringbuffer);
        processLogLevelColors(_monitor.getLogLevelMenuItems(), LogLevel.getLogLevelColorMap(), stringbuffer);
        processLogTableColumns(LogTableColumn.getLogTableColumns(), stringbuffer);
        processConfigurationNode(categorynode, stringbuffer);
        closeConfigurationXML(stringbuffer);
        store(stringbuffer.toString());
    }

    protected void selectAllNodes()
    {
        for (Enumeration enumeration = _monitor.getCategoryExplorerTree().getExplorerModel().getRootCategoryNode().breadthFirstEnumeration(); enumeration.hasMoreElements(); ((CategoryNode)enumeration.nextElement()).setSelected(true));
    }

    protected void store(String s)
    {
        try
        {
            PrintWriter printwriter = new PrintWriter(new FileWriter(getFilename()));
            printwriter.print(s);
            printwriter.close();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }
}

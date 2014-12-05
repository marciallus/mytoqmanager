// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.config;

import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Hashtable;
import org.apache.log4j.*;

// Referenced classes of package org.apache.log4j.config:
//            PropertyGetter

public class PropertyPrinter
    implements PropertyGetter.PropertyCallback
{

    protected Hashtable appenderNames;
    protected boolean doCapitalize;
    protected Hashtable layoutNames;
    protected int numAppenders;
    protected PrintWriter out;

    public PropertyPrinter(PrintWriter printwriter)
    {
        this(printwriter, false);
    }

    public PropertyPrinter(PrintWriter printwriter, boolean flag)
    {
        numAppenders = 0;
        appenderNames = new Hashtable();
        layoutNames = new Hashtable();
        out = printwriter;
        doCapitalize = flag;
        print(printwriter);
        printwriter.flush();
    }

    public static String capitalize(String s)
    {
        if (Character.isLowerCase(s.charAt(0)) && (s.length() == 1 || Character.isLowerCase(s.charAt(1))))
        {
            StringBuffer stringbuffer = new StringBuffer(s);
            stringbuffer.setCharAt(0, Character.toUpperCase(s.charAt(0)));
            s = stringbuffer.toString();
        }
        return s;
    }

    public static void main(String args[])
    {
        new PropertyPrinter(new PrintWriter(System.out));
    }

    public void foundProperty(Object obj, String s, String s1, Object obj1)
    {
        if ((obj instanceof Appender) && "name".equals(s1))
            return;
        if (doCapitalize)
            s1 = capitalize(s1);
        out.println(s + s1 + "=" + obj1.toString());
    }

    protected String genAppName()
    {
        StringBuffer stringbuffer = (new StringBuffer()).append("A");
        int i = numAppenders;
        numAppenders = i + 1;
        return stringbuffer.append(i).toString();
    }

    protected boolean isGenAppName(String s)
    {
label0:
        {
            if (s.length() >= 2 && s.charAt(0) == 'A')
            {
                int i = 0;
                do
                {
                    if (i >= s.length())
                        break label0;
                    if (s.charAt(i) < '0' || s.charAt(i) > '9')
                        break;
                    i++;
                } while (true);
            }
            return false;
        }
        return true;
    }

    public void print(PrintWriter printwriter)
    {
        printOptions(printwriter, Logger.getRootLogger());
        for (Enumeration enumeration = LogManager.getCurrentLoggers(); enumeration.hasMoreElements(); printOptions(printwriter, (Logger)enumeration.nextElement()));
    }

    protected void printOptions(PrintWriter printwriter, Object obj, String s)
    {
        printwriter.println(s + "=" + obj.getClass().getName());
        PropertyGetter.getProperties(obj, this, s + ".");
    }

    protected void printOptions(PrintWriter printwriter, Category category)
    {
        Enumeration enumeration = category.getAllAppenders();
        Level level = category.getLevel();
        String s;
        if (level == null)
            s = "";
        else
            s = level.toString();
        String s2;
        for (; enumeration.hasMoreElements(); s = s + ", " + s2)
        {
            Appender appender = (Appender)enumeration.nextElement();
            s2 = (String)appenderNames.get(appender);
            if (s2 != null)
                continue;
            s2 = appender.getName();
            if (s2 == null || isGenAppName(s2))
                s2 = genAppName();
            appenderNames.put(appender, s2);
            printOptions(printwriter, appender, "log4j.appender." + s2);
            if (appender.getLayout() != null)
                printOptions(printwriter, appender.getLayout(), "log4j.appender." + s2 + ".layout");
        }

        String s1;
        if (category == Logger.getRootLogger())
            s1 = "log4j.rootLogger";
        else
            s1 = "log4j.logger." + category.getName();
        if (s != "")
            printwriter.println(s1 + "=" + s);
        if (!category.getAdditivity() && category != Logger.getRootLogger())
            printwriter.println("log4j.additivity." + category.getName() + "=false");
    }

    protected void printOptions(PrintWriter printwriter, Logger logger)
    {
        printOptions(printwriter, ((Category) (logger)));
    }
}

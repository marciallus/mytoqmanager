// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.util.*;
import org.apache.log4j.config.PropertySetter;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.or.RendererMap;
import org.apache.log4j.spi.Configurator;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.Filter;
import org.apache.log4j.spi.LoggerFactory;
import org.apache.log4j.spi.LoggerRepository;
import org.apache.log4j.spi.OptionHandler;
import org.apache.log4j.spi.RendererSupport;
import org.apache.log4j.spi.ThrowableRenderer;
import org.apache.log4j.spi.ThrowableRendererSupport;

// Referenced classes of package org.apache.log4j:
//            DefaultCategoryFactory, LogManager, PropertyWatchdog, Level, 
//            Logger, Appender, Layout, NameValue, 
//            SortedKeyEnumeration

public class PropertyConfigurator
    implements Configurator
{

    static final String ADDITIVITY_PREFIX = "log4j.additivity.";
    static final String APPENDER_PREFIX = "log4j.appender.";
    private static final String APPENDER_REF_TAG = "appender-ref";
    static final String CATEGORY_PREFIX = "log4j.category.";
    static final String FACTORY_PREFIX = "log4j.factory";
    private static final String INTERNAL_ROOT_NAME = "root";
    public static final String LOGGER_FACTORY_KEY = "log4j.loggerFactory";
    static final String LOGGER_PREFIX = "log4j.logger.";
    private static final String LOGGER_REF = "logger-ref";
    static final String RENDERER_PREFIX = "log4j.renderer.";
    private static final String RESET_KEY = "log4j.reset";
    static final String ROOT_CATEGORY_PREFIX = "log4j.rootCategory";
    static final String ROOT_LOGGER_PREFIX = "log4j.rootLogger";
    private static final String ROOT_REF = "root-ref";
    static final String THRESHOLD_PREFIX = "log4j.threshold";
    private static final String THROWABLE_RENDERER_PREFIX = "log4j.throwableRenderer";
    static Class class$org$apache$log4j$Appender;
    static Class class$org$apache$log4j$Layout;
    static Class class$org$apache$log4j$spi$ErrorHandler;
    static Class class$org$apache$log4j$spi$Filter;
    static Class class$org$apache$log4j$spi$LoggerFactory;
    static Class class$org$apache$log4j$spi$ThrowableRenderer;
    protected LoggerFactory loggerFactory;
    protected Hashtable registry;
    private LoggerRepository repository;

    public PropertyConfigurator()
    {
        registry = new Hashtable(11);
        loggerFactory = new DefaultCategoryFactory();
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

    public static void configure(InputStream inputstream)
    {
        (new PropertyConfigurator()).doConfigure(inputstream, LogManager.getLoggerRepository());
    }

    public static void configure(String s)
    {
        (new PropertyConfigurator()).doConfigure(s, LogManager.getLoggerRepository());
    }

    public static void configure(URL url)
    {
        (new PropertyConfigurator()).doConfigure(url, LogManager.getLoggerRepository());
    }

    public static void configure(Properties properties)
    {
        (new PropertyConfigurator()).doConfigure(properties, LogManager.getLoggerRepository());
    }

    public static void configureAndWatch(String s)
    {
        configureAndWatch(s, 60000L);
    }

    public static void configureAndWatch(String s, long l)
    {
        PropertyWatchdog propertywatchdog = new PropertyWatchdog(s);
        propertywatchdog.setDelay(l);
        propertywatchdog.start();
    }

    private void parseErrorHandler(ErrorHandler errorhandler, String s, Properties properties, LoggerRepository loggerrepository)
    {
        if (OptionConverter.toBoolean(OptionConverter.findAndSubst(s + "root-ref", properties), false))
            errorhandler.setLogger(loggerrepository.getRootLogger());
        String s1 = OptionConverter.findAndSubst(s + "logger-ref", properties);
        if (s1 != null)
        {
            Logger logger;
            if (loggerFactory == null)
                logger = loggerrepository.getLogger(s1);
            else
                logger = loggerrepository.getLogger(s1, loggerFactory);
            errorhandler.setLogger(logger);
        }
        String s2 = OptionConverter.findAndSubst(s + "appender-ref", properties);
        if (s2 != null)
        {
            Appender appender = parseAppender(properties, s2);
            if (appender != null)
                errorhandler.setBackupAppender(appender);
        }
    }

    protected void configureLoggerFactory(Properties properties)
    {
        String s = OptionConverter.findAndSubst("log4j.loggerFactory", properties);
        if (s != null)
        {
            LogLog.debug("Setting category factory to [" + s + "].");
            Class class1;
            if (class$org$apache$log4j$spi$LoggerFactory == null)
            {
                class1 = _mthclass$("org.apache.log4j.spi.LoggerFactory");
                class$org$apache$log4j$spi$LoggerFactory = class1;
            } else
            {
                class1 = class$org$apache$log4j$spi$LoggerFactory;
            }
            loggerFactory = (LoggerFactory)OptionConverter.instantiateByClassName(s, class1, loggerFactory);
            PropertySetter.setProperties(loggerFactory, properties, "log4j.factory.");
        }
    }

    void configureRootCategory(Properties properties, LoggerRepository loggerrepository)
    {
        String s = "log4j.rootLogger";
        String s1 = OptionConverter.findAndSubst("log4j.rootLogger", properties);
        if (s1 == null)
        {
            s1 = OptionConverter.findAndSubst("log4j.rootCategory", properties);
            s = "log4j.rootCategory";
        }
        if (s1 == null)
        {
            LogLog.debug("Could not find root logger information. Is this OK?");
            return;
        }
        synchronized (loggerrepository.getRootLogger())
        {
            parseCategory(properties, logger, s, "root", s1);
        }
        return;
        exception;
        logger;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void doConfigure(InputStream inputstream, LoggerRepository loggerrepository)
    {
        Properties properties = new Properties();
        try
        {
            properties.load(inputstream);
        }
        catch (IOException ioexception)
        {
            if (ioexception instanceof InterruptedIOException)
                Thread.currentThread().interrupt();
            LogLog.error("Could not read configuration file from InputStream [" + inputstream + "].", ioexception);
            LogLog.error("Ignoring configuration InputStream [" + inputstream + "].");
            return;
        }
        doConfigure(properties, loggerrepository);
    }

    public void doConfigure(String s, LoggerRepository loggerrepository)
    {
        Properties properties;
        FileInputStream fileinputstream;
        properties = new Properties();
        fileinputstream = null;
        FileInputStream fileinputstream1 = new FileInputStream(s);
        properties.load(fileinputstream1);
        fileinputstream1.close();
        Exception exception;
        Exception exception1;
        InterruptedIOException interruptedioexception;
        InterruptedIOException interruptedioexception1;
        if (fileinputstream1 != null)
            try
            {
                fileinputstream1.close();
            }
            catch (InterruptedIOException interruptedioexception2)
            {
                Thread.currentThread().interrupt();
            }
            catch (Throwable throwable2) { }
        doConfigure(properties, loggerrepository);
        return;
        exception;
_L4:
        if ((exception instanceof InterruptedIOException) || (exception instanceof InterruptedException))
            Thread.currentThread().interrupt();
        LogLog.error("Could not read configuration file [" + s + "].", exception);
        LogLog.error("Ignoring configuration file [" + s + "].");
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception1)
            {
                Thread.currentThread().interrupt();
            }
            catch (Throwable throwable1)
            {
                return;
            }
            return;
        } else
        {
            break MISSING_BLOCK_LABEL_48;
        }
        exception1;
_L2:
        if (fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception)
            {
                Thread.currentThread().interrupt();
            }
            catch (Throwable throwable) { }
        throw exception1;
        exception1;
        fileinputstream = fileinputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        fileinputstream = fileinputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void doConfigure(URL url, LoggerRepository loggerrepository)
    {
        Properties properties;
        InputStream inputstream;
        properties = new Properties();
        LogLog.debug("Reading configuration from URL " + url);
        inputstream = null;
        URLConnection urlconnection = url.openConnection();
        urlconnection.setUseCaches(false);
        inputstream = urlconnection.getInputStream();
        properties.load(inputstream);
        Exception exception;
        InterruptedIOException interruptedioexception;
        Exception exception1;
        InterruptedIOException interruptedioexception1;
        if (inputstream != null)
            try
            {
                inputstream.close();
            }
            catch (InterruptedIOException interruptedioexception2)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception2) { }
            catch (RuntimeException runtimeexception2) { }
        doConfigure(properties, loggerrepository);
        return;
        exception1;
        if ((exception1 instanceof InterruptedIOException) || (exception1 instanceof InterruptedException))
            Thread.currentThread().interrupt();
        LogLog.error("Could not read configuration file from URL [" + url + "].", exception1);
        LogLog.error("Ignoring configuration file [" + url + "].");
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception1)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception1)
            {
                return;
            }
            catch (RuntimeException runtimeexception1)
            {
                return;
            }
            return;
        } else
        {
            break MISSING_BLOCK_LABEL_75;
        }
        exception;
        if (inputstream != null)
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception) { }
            catch (RuntimeException runtimeexception) { }
        throw exception;
    }

    public void doConfigure(Properties properties, LoggerRepository loggerrepository)
    {
        repository = loggerrepository;
        String s = properties.getProperty("log4j.debug");
        if (s == null)
        {
            s = properties.getProperty("log4j.configDebug");
            if (s != null)
                LogLog.warn("[log4j.configDebug] is deprecated. Use [log4j.debug] instead.");
        }
        if (s != null)
            LogLog.setInternalDebugging(OptionConverter.toBoolean(s, true));
        String s1 = properties.getProperty("log4j.reset");
        if (s1 != null && OptionConverter.toBoolean(s1, false))
            loggerrepository.resetConfiguration();
        String s2 = OptionConverter.findAndSubst("log4j.threshold", properties);
        if (s2 != null)
        {
            loggerrepository.setThreshold(OptionConverter.toLevel(s2, Level.ALL));
            LogLog.debug("Hierarchy threshold set to [" + loggerrepository.getThreshold() + "].");
        }
        configureRootCategory(properties, loggerrepository);
        configureLoggerFactory(properties);
        parseCatsAndRenderers(properties, loggerrepository);
        LogLog.debug("Finished configuring.");
        registry.clear();
    }

    void parseAdditivityForLogger(Properties properties, Logger logger, String s)
    {
        String s1 = OptionConverter.findAndSubst("log4j.additivity." + s, properties);
        LogLog.debug("Handling log4j.additivity." + s + "=[" + s1 + "]");
        if (s1 != null && !s1.equals(""))
        {
            boolean flag = OptionConverter.toBoolean(s1, true);
            LogLog.debug("Setting additivity for \"" + s + "\" to " + flag);
            logger.setAdditivity(flag);
        }
    }

    Appender parseAppender(Properties properties, String s)
    {
        Appender appender = registryGet(s);
        if (appender != null)
        {
            LogLog.debug("Appender \"" + s + "\" was already parsed.");
            return appender;
        }
        String s1 = "log4j.appender." + s;
        String s2 = s1 + ".layout";
        Class class1;
        if (class$org$apache$log4j$Appender == null)
        {
            class1 = _mthclass$("org.apache.log4j.Appender");
            class$org$apache$log4j$Appender = class1;
        } else
        {
            class1 = class$org$apache$log4j$Appender;
        }
        Appender appender1 = (Appender)OptionConverter.instantiateByKey(properties, s1, class1, null);
        if (appender1 == null)
        {
            LogLog.error("Could not instantiate appender named \"" + s + "\".");
            return null;
        }
        appender1.setName(s);
        if (appender1 instanceof OptionHandler)
        {
            if (appender1.requiresLayout())
            {
                Class class3;
                if (class$org$apache$log4j$Layout == null)
                {
                    class3 = _mthclass$("org.apache.log4j.Layout");
                    class$org$apache$log4j$Layout = class3;
                } else
                {
                    class3 = class$org$apache$log4j$Layout;
                }
                Layout layout = (Layout)OptionConverter.instantiateByKey(properties, s2, class3, null);
                if (layout != null)
                {
                    appender1.setLayout(layout);
                    LogLog.debug("Parsing layout options for \"" + s + "\".");
                    PropertySetter.setProperties(layout, properties, s2 + ".");
                    LogLog.debug("End of parsing for \"" + s + "\".");
                }
            }
            String s3 = s1 + ".errorhandler";
            if (OptionConverter.findAndSubst(s3, properties) != null)
            {
                Class class2;
                if (class$org$apache$log4j$spi$ErrorHandler == null)
                {
                    class2 = _mthclass$("org.apache.log4j.spi.ErrorHandler");
                    class$org$apache$log4j$spi$ErrorHandler = class2;
                } else
                {
                    class2 = class$org$apache$log4j$spi$ErrorHandler;
                }
                ErrorHandler errorhandler = (ErrorHandler)OptionConverter.instantiateByKey(properties, s3, class2, null);
                if (errorhandler != null)
                {
                    appender1.setErrorHandler(errorhandler);
                    LogLog.debug("Parsing errorhandler options for \"" + s + "\".");
                    parseErrorHandler(errorhandler, s3, properties, repository);
                    Properties properties1 = new Properties();
                    String as[] = new String[3];
                    as[0] = s3 + "." + "root-ref";
                    as[1] = s3 + "." + "logger-ref";
                    as[2] = s3 + "." + "appender-ref";
                    Iterator iterator = properties.entrySet().iterator();
                    do
                    {
                        if (!iterator.hasNext())
                            break;
                        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                        int i;
                        for (i = 0; i < as.length && !as[i].equals(entry.getKey()); i++);
                        if (i == as.length)
                            properties1.put(entry.getKey(), entry.getValue());
                    } while (true);
                    PropertySetter.setProperties(errorhandler, properties1, s3 + ".");
                    LogLog.debug("End of errorhandler parsing for \"" + s + "\".");
                }
            }
            PropertySetter.setProperties(appender1, properties, s1 + ".");
            LogLog.debug("Parsed \"" + s + "\" options.");
        }
        parseAppenderFilters(properties, s, appender1);
        registryPut(appender1);
        return appender1;
    }

    void parseAppenderFilters(Properties properties, String s, Appender appender)
    {
        String s1 = "log4j.appender." + s + ".filter.";
        int i = s1.length();
        Hashtable hashtable = new Hashtable();
        Enumeration enumeration = properties.keys();
        String s2 = "";
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            String s5 = (String)enumeration.nextElement();
            if (s5.startsWith(s1))
            {
                int j = s5.indexOf('.', i);
                String s6 = s5;
                if (j != -1)
                {
                    s6 = s5.substring(0, j);
                    s2 = s5.substring(j + 1);
                }
                Vector vector = (Vector)hashtable.get(s6);
                if (vector == null)
                {
                    vector = new Vector();
                    hashtable.put(s6, vector);
                }
                if (j != -1)
                {
                    String s7 = OptionConverter.findAndSubst(s5, properties);
                    NameValue namevalue1 = new NameValue(s2, s7);
                    vector.add(namevalue1);
                }
            }
        } while (true);
        SortedKeyEnumeration sortedkeyenumeration = new SortedKeyEnumeration(hashtable);
        do
        {
            if (!sortedkeyenumeration.hasMoreElements())
                break;
            String s3 = (String)sortedkeyenumeration.nextElement();
            String s4 = properties.getProperty(s3);
            if (s4 != null)
            {
                LogLog.debug("Filter key: [" + s3 + "] class: [" + properties.getProperty(s3) + "] props: " + hashtable.get(s3));
                Class class1;
                if (class$org$apache$log4j$spi$Filter == null)
                {
                    class1 = _mthclass$("org.apache.log4j.spi.Filter");
                    class$org$apache$log4j$spi$Filter = class1;
                } else
                {
                    class1 = class$org$apache$log4j$spi$Filter;
                }
                Filter filter = (Filter)OptionConverter.instantiateByClassName(s4, class1, null);
                if (filter != null)
                {
                    PropertySetter propertysetter = new PropertySetter(filter);
                    NameValue namevalue;
                    for (Enumeration enumeration1 = ((Vector)hashtable.get(s3)).elements(); enumeration1.hasMoreElements(); propertysetter.setProperty(namevalue.key, namevalue.value))
                        namevalue = (NameValue)enumeration1.nextElement();

                    propertysetter.activate();
                    LogLog.debug("Adding filter of type [" + filter.getClass() + "] to appender named [" + appender.getName() + "].");
                    appender.addFilter(filter);
                }
            } else
            {
                LogLog.warn("Missing class definition for filter: [" + s3 + "]");
            }
        } while (true);
    }

    void parseCategory(Properties properties, Logger logger, String s, String s1, String s2)
    {
label0:
        {
            LogLog.debug("Parsing for [" + s1 + "] with value=[" + s2 + "].");
            StringTokenizer stringtokenizer = new StringTokenizer(s2, ",");
            if (!s2.startsWith(",") && !s2.equals(""))
            {
                if (!stringtokenizer.hasMoreTokens())
                    break label0;
                String s4 = stringtokenizer.nextToken();
                LogLog.debug("Level token is [" + s4 + "].");
                if (!"inherited".equalsIgnoreCase(s4) && !"null".equalsIgnoreCase(s4))
                    logger.setLevel(OptionConverter.toLevel(s4, Level.DEBUG));
                else
                if (s1.equals("root"))
                    LogLog.warn("The root logger cannot be set to null.");
                else
                    logger.setLevel(null);
                LogLog.debug("Category " + s1 + " set to " + logger.getLevel());
            }
            logger.removeAllAppenders();
            do
            {
                if (!stringtokenizer.hasMoreTokens())
                    break;
                String s3 = stringtokenizer.nextToken().trim();
                if (s3 != null && !s3.equals(","))
                {
                    LogLog.debug("Parsing appender named \"" + s3 + "\".");
                    Appender appender = parseAppender(properties, s3);
                    if (appender != null)
                        logger.addAppender(appender);
                }
            } while (true);
        }
    }

    protected void parseCatsAndRenderers(Properties properties, LoggerRepository loggerrepository)
    {
        Enumeration enumeration = properties.propertyNames();
_L7:
        String s;
        if (!enumeration.hasMoreElements())
            break; /* Loop/switch isn't completed */
        s = (String)enumeration.nextElement();
        if (!s.startsWith("log4j.category.") && !s.startsWith("log4j.logger.")) goto _L2; else goto _L1
_L1:
        if (!s.startsWith("log4j.category.")) goto _L4; else goto _L3
_L3:
        String s1 = s.substring("log4j.category.".length());
_L5:
        String s2 = OptionConverter.findAndSubst(s, properties);
        synchronized (loggerrepository.getLogger(s1, loggerFactory))
        {
            parseCategory(properties, logger, s, s1, s2);
            parseAdditivityForLogger(properties, logger, s1);
        }
        continue; /* Loop/switch isn't completed */
        exception;
        logger;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        boolean flag = s.startsWith("log4j.logger.");
        s1 = null;
        if (flag)
            s1 = s.substring("log4j.logger.".length());
        if (true) goto _L5; else goto _L2
_L2:
        if (s.startsWith("log4j.renderer."))
        {
            String s3 = s.substring("log4j.renderer.".length());
            String s4 = OptionConverter.findAndSubst(s, properties);
            if (loggerrepository instanceof RendererSupport)
                RendererMap.addRenderer((RendererSupport)loggerrepository, s3, s4);
        } else
        if (s.equals("log4j.throwableRenderer") && (loggerrepository instanceof ThrowableRendererSupport))
        {
            Class class1;
            ThrowableRenderer throwablerenderer;
            if (class$org$apache$log4j$spi$ThrowableRenderer == null)
            {
                class1 = _mthclass$("org.apache.log4j.spi.ThrowableRenderer");
                class$org$apache$log4j$spi$ThrowableRenderer = class1;
            } else
            {
                class1 = class$org$apache$log4j$spi$ThrowableRenderer;
            }
            throwablerenderer = (ThrowableRenderer)OptionConverter.instantiateByKey(properties, "log4j.throwableRenderer", class1, null);
            if (throwablerenderer == null)
            {
                LogLog.error("Could not instantiate throwableRenderer.");
            } else
            {
                (new PropertySetter(throwablerenderer)).setProperties(properties, "log4j.throwableRenderer.");
                ((ThrowableRendererSupport)loggerrepository).setThrowableRenderer(throwablerenderer);
            }
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    Appender registryGet(String s)
    {
        return (Appender)registry.get(s);
    }

    void registryPut(Appender appender)
    {
        registry.put(appender.getName(), appender);
    }
}

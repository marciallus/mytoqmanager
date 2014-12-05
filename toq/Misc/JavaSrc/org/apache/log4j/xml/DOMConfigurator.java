// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.xml;

import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.Hashtable;
import java.util.Properties;
import javax.xml.parsers.*;
import org.apache.log4j.*;
import org.apache.log4j.config.PropertySetter;
import org.apache.log4j.helpers.*;
import org.apache.log4j.or.RendererMap;
import org.apache.log4j.spi.*;
import org.w3c.dom.*;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

// Referenced classes of package org.apache.log4j.xml:
//            XMLWatchdog, SAXErrorHandler, Log4jEntityResolver, UnrecognizedElementHandler

public class DOMConfigurator
    implements Configurator
{
    private static interface ParseAction
    {

        public abstract Document parse(DocumentBuilder documentbuilder)
            throws SAXException, IOException;
    }


    static final String ADDITIVITY_ATTR = "additivity";
    static final String APPENDER_REF_TAG = "appender-ref";
    static final String APPENDER_TAG = "appender";
    static final String CATEGORY = "category";
    static final String CATEGORY_FACTORY_TAG = "categoryFactory";
    static final String CLASS_ATTR = "class";
    static final String CONFIGURATION_TAG = "log4j:configuration";
    static final String CONFIG_DEBUG_ATTR = "configDebug";
    static final String EMPTY_STR = "";
    static final String ERROR_HANDLER_TAG = "errorHandler";
    static final String FILTER_TAG = "filter";
    static final String INTERNAL_DEBUG_ATTR = "debug";
    static final String LAYOUT_TAG = "layout";
    static final String LEVEL_TAG = "level";
    static final String LOGGER = "logger";
    static final String LOGGER_FACTORY_TAG = "loggerFactory";
    static final String LOGGER_REF = "logger-ref";
    static final String NAME_ATTR = "name";
    static final String OLD_CONFIGURATION_TAG = "configuration";
    static final Class ONE_STRING_PARAM[];
    static final String PARAM_TAG = "param";
    static final String PRIORITY_TAG = "priority";
    static final String REF_ATTR = "ref";
    static final String RENDERED_CLASS_ATTR = "renderedClass";
    static final String RENDERER_TAG = "renderer";
    static final String RENDERING_CLASS_ATTR = "renderingClass";
    private static final String RESET_ATTR = "reset";
    static final String ROOT_REF = "root-ref";
    static final String ROOT_TAG = "root";
    static final String THRESHOLD_ATTR = "threshold";
    private static final String THROWABLE_RENDERER_TAG = "throwableRenderer";
    static final String VALUE_ATTR = "value";
    static Class class$java$lang$String;
    static Class class$org$apache$log4j$spi$ErrorHandler;
    static Class class$org$apache$log4j$spi$Filter;
    static Class class$org$apache$log4j$spi$LoggerFactory;
    static final String dbfKey = "javax.xml.parsers.DocumentBuilderFactory";
    Hashtable appenderBag;
    protected LoggerFactory catFactory;
    Properties props;
    LoggerRepository repository;

    public DOMConfigurator()
    {
        catFactory = null;
        appenderBag = new Hashtable();
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

    public static void configure(String s)
        throws FactoryConfigurationError
    {
        (new DOMConfigurator()).doConfigure(s, LogManager.getLoggerRepository());
    }

    public static void configure(URL url)
        throws FactoryConfigurationError
    {
        (new DOMConfigurator()).doConfigure(url, LogManager.getLoggerRepository());
    }

    public static void configure(Element element)
    {
        (new DOMConfigurator()).doConfigure(element, LogManager.getLoggerRepository());
    }

    public static void configureAndWatch(String s)
    {
        configureAndWatch(s, 60000L);
    }

    public static void configureAndWatch(String s, long l)
    {
        XMLWatchdog xmlwatchdog = new XMLWatchdog(s);
        xmlwatchdog.setDelay(l);
        xmlwatchdog.start();
    }

    private final void doConfigure(ParseAction parseaction, LoggerRepository loggerrepository)
        throws FactoryConfigurationError
    {
        repository = loggerrepository;
        DocumentBuilderFactory documentbuilderfactory;
        try
        {
            LogLog.debug("System property is :" + OptionConverter.getSystemProperty("javax.xml.parsers.DocumentBuilderFactory", null));
            documentbuilderfactory = DocumentBuilderFactory.newInstance();
            LogLog.debug("Standard DocumentBuilderFactory search succeded.");
            LogLog.debug("DocumentBuilderFactory is: " + documentbuilderfactory.getClass().getName());
        }
        catch (FactoryConfigurationError factoryconfigurationerror)
        {
            LogLog.debug("Could not instantiate a DocumentBuilderFactory.", factoryconfigurationerror.getException());
            throw factoryconfigurationerror;
        }
        try
        {
            documentbuilderfactory.setValidating(true);
            DocumentBuilder documentbuilder = documentbuilderfactory.newDocumentBuilder();
            documentbuilder.setErrorHandler(new SAXErrorHandler());
            documentbuilder.setEntityResolver(new Log4jEntityResolver());
            parse(parseaction.parse(documentbuilder).getDocumentElement());
            return;
        }
        catch (Exception exception)
        {
            if ((exception instanceof InterruptedException) || (exception instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            LogLog.error("Could not parse " + parseaction.toString() + ".", exception);
            return;
        }
    }

    public static Object parseElement(Element element, Properties properties, Class class1)
        throws Exception
    {
        Object obj = OptionConverter.instantiateByClassName(subst(element.getAttribute("class"), properties), class1, null);
        if (obj != null)
        {
            PropertySetter propertysetter = new PropertySetter(obj);
            NodeList nodelist = element.getChildNodes();
            int i = nodelist.getLength();
            for (int j = 0; j < i; j++)
            {
                Node node = nodelist.item(j);
                if (node.getNodeType() == 1)
                {
                    Element element1 = (Element)node;
                    if (element1.getTagName().equals("param"))
                        setParameter(element1, propertysetter, properties);
                    else
                        parseUnrecognizedElement(obj, element1, properties);
                }
            }

        } else
        {
            obj = null;
        }
        return obj;
    }

    private static void parseUnrecognizedElement(Object obj, Element element, Properties properties)
        throws Exception
    {
        boolean flag = obj instanceof UnrecognizedElementHandler;
        boolean flag1 = false;
        if (flag)
            flag1 = ((UnrecognizedElementHandler)obj).parseUnrecognizedElement(element, properties);
        if (!flag1)
            LogLog.warn("Unrecognized element " + element.getNodeName());
    }

    private static void quietParseUnrecognizedElement(Object obj, Element element, Properties properties)
    {
        try
        {
            parseUnrecognizedElement(obj, element, properties);
            return;
        }
        catch (Exception exception)
        {
            if ((exception instanceof InterruptedException) || (exception instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            LogLog.error("Error in extension content: ", exception);
            return;
        }
    }

    public static void setParameter(Element element, PropertySetter propertysetter, Properties properties)
    {
        propertysetter.setProperty(subst(element.getAttribute("name"), properties), subst(OptionConverter.convertSpecialChars(element.getAttribute("value")), properties));
    }

    public static String subst(String s, Properties properties)
    {
        String s1;
        try
        {
            s1 = OptionConverter.substVars(s, properties);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            LogLog.warn("Could not perform variable substitution.", illegalargumentexception);
            return s;
        }
        return s1;
    }

    public void doConfigure(final InputStream inputStream, LoggerRepository loggerrepository)
        throws FactoryConfigurationError
    {
        doConfigure(((ParseAction) (new _cls3())), loggerrepository);
    }

    public void doConfigure(final Reader reader, LoggerRepository loggerrepository)
        throws FactoryConfigurationError
    {
        doConfigure(((ParseAction) (new _cls4())), loggerrepository);
    }

    public void doConfigure(final String filename, LoggerRepository loggerrepository)
    {
        doConfigure(((ParseAction) (new _cls1())), loggerrepository);
    }

    public void doConfigure(final URL url, LoggerRepository loggerrepository)
    {
        doConfigure(((ParseAction) (new _cls2())), loggerrepository);
    }

    public void doConfigure(Element element, LoggerRepository loggerrepository)
    {
        repository = loggerrepository;
        parse(element);
    }

    protected void doConfigure(final InputSource inputSource, LoggerRepository loggerrepository)
        throws FactoryConfigurationError
    {
        if (inputSource.getSystemId() == null)
            inputSource.setSystemId("dummy://log4j.dtd");
        doConfigure(((ParseAction) (new _cls5())), loggerrepository);
    }

    protected Appender findAppenderByName(Document document, String s)
    {
        Appender appender = (Appender)appenderBag.get(s);
        if (appender != null)
            return appender;
        NodeList nodelist = document.getElementsByTagName("appender");
        int i = 0;
        do
        {
label0:
            {
                int j = nodelist.getLength();
                Element element = null;
                if (i < j)
                {
                    Node node = nodelist.item(i);
                    if (!s.equals(node.getAttributes().getNamedItem("name").getNodeValue()))
                        break label0;
                    element = (Element)node;
                }
                if (element == null)
                {
                    LogLog.error("No appender named [" + s + "] could be found.");
                    return null;
                }
                Appender appender1 = parseAppender(element);
                if (appender1 != null)
                    appenderBag.put(s, appender1);
                return appender1;
            }
            i++;
        } while (true);
    }

    protected Appender findAppenderByReference(Element element)
    {
        String s = subst(element.getAttribute("ref"));
        return findAppenderByName(element.getOwnerDocument(), s);
    }

    protected void parse(Element element)
    {
label0:
        {
label1:
            {
                String s = element.getTagName();
                if (!s.equals("log4j:configuration"))
                {
                    if (!s.equals("configuration"))
                        break label1;
                    LogLog.warn("The <configuration> element has been deprecated.");
                    LogLog.warn("Use the <log4j:configuration> element instead.");
                }
                String s1 = subst(element.getAttribute("debug"));
                LogLog.debug("debug attribute= \"" + s1 + "\".");
                if (!s1.equals("") && !s1.equals("null"))
                    LogLog.setInternalDebugging(OptionConverter.toBoolean(s1, true));
                else
                    LogLog.debug("Ignoring debug attribute.");
                String s2 = subst(element.getAttribute("reset"));
                LogLog.debug("reset attribute= \"" + s2 + "\".");
                if (!"".equals(s2) && OptionConverter.toBoolean(s2, false))
                    repository.resetConfiguration();
                String s3 = subst(element.getAttribute("configDebug"));
                if (!s3.equals("") && !s3.equals("null"))
                {
                    LogLog.warn("The \"configDebug\" attribute is deprecated.");
                    LogLog.warn("Use the \"debug\" attribute instead.");
                    LogLog.setInternalDebugging(OptionConverter.toBoolean(s3, true));
                }
                String s4 = subst(element.getAttribute("threshold"));
                LogLog.debug("Threshold =\"" + s4 + "\".");
                if (!"".equals(s4) && !"null".equals(s4))
                    repository.setThreshold(s4);
                NodeList nodelist = element.getChildNodes();
                int i = nodelist.getLength();
                for (int j = 0; j < i; j++)
                {
                    Node node1 = nodelist.item(j);
                    if (node1.getNodeType() != 1)
                        continue;
                    Element element2 = (Element)node1;
                    String s6 = element2.getTagName();
                    if (s6.equals("categoryFactory") || s6.equals("loggerFactory"))
                        parseCategoryFactory(element2);
                }

                for (int k = 0; k < i; k++)
                {
                    Node node = nodelist.item(k);
                    if (node.getNodeType() == 1)
                    {
                        Element element1 = (Element)node;
                        String s5 = element1.getTagName();
                        if (!s5.equals("category") && !s5.equals("logger"))
                        {
                            if (s5.equals("root"))
                                parseRoot(element1);
                            else
                            if (s5.equals("renderer"))
                                parseRenderer(element1);
                            else
                            if (s5.equals("throwableRenderer"))
                            {
                                if (repository instanceof ThrowableRendererSupport)
                                {
                                    ThrowableRenderer throwablerenderer = parseThrowableRenderer(element1);
                                    if (throwablerenderer != null)
                                        ((ThrowableRendererSupport)repository).setThrowableRenderer(throwablerenderer);
                                }
                            } else
                            if (!s5.equals("appender") && !s5.equals("categoryFactory") && !s5.equals("loggerFactory"))
                                quietParseUnrecognizedElement(repository, element1, props);
                        } else
                        {
                            parseCategory(element1);
                        }
                    }
                }

                break label0;
            }
            LogLog.error("DOM element is - not a <log4j:configuration> element.");
        }
    }

    protected Appender parseAppender(Element element)
    {
        Object obj;
        Appender appender;
        PropertySetter propertysetter;
        int j;
        Element element1;
        String s = subst(element.getAttribute("class"));
        LogLog.debug("Class name: [" + s + ']');
        NodeList nodelist;
        int i;
        Node node;
        try
        {
            obj = Loader.loadClass(s).newInstance();
            appender = (Appender)obj;
            propertysetter = new PropertySetter(appender);
            appender.setName(subst(element.getAttribute("name")));
            nodelist = element.getChildNodes();
            i = nodelist.getLength();
        }
        catch (Exception exception)
        {
            if ((exception instanceof InterruptedException) || (exception instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            LogLog.error("Could not create an Appender. Reported error follows.", exception);
            return null;
        }
        j = 0;
_L2:
        if (j >= i)
            break MISSING_BLOCK_LABEL_452;
        node = nodelist.item(j);
        if (node.getNodeType() != 1)
            break MISSING_BLOCK_LABEL_460;
        element1 = (Element)node;
        if (element1.getTagName().equals("param"))
        {
            setParameter(element1, propertysetter);
            break MISSING_BLOCK_LABEL_460;
        }
        if (element1.getTagName().equals("layout"))
        {
            appender.setLayout(parseLayout(element1));
            break MISSING_BLOCK_LABEL_460;
        }
        if (element1.getTagName().equals("filter"))
        {
            parseFilters(element1, appender);
            break MISSING_BLOCK_LABEL_460;
        }
        if (element1.getTagName().equals("errorHandler"))
        {
            parseErrorHandler(element1, appender);
            break MISSING_BLOCK_LABEL_460;
        }
        String s1;
        if (!element1.getTagName().equals("appender-ref"))
            break MISSING_BLOCK_LABEL_438;
        s1 = subst(element1.getAttribute("ref"));
        if (appender instanceof AppenderAttachable)
        {
            AppenderAttachable appenderattachable = (AppenderAttachable)appender;
            LogLog.debug("Attaching appender named [" + s1 + "] to appender named [" + appender.getName() + "].");
            appenderattachable.addAppender(findAppenderByReference(element1));
            break MISSING_BLOCK_LABEL_460;
        }
        LogLog.error("Requesting attachment of appender named [" + s1 + "] to appender named [" + appender.getName() + "] which does not implement org.apache.log4j.spi.AppenderAttachable.");
        break MISSING_BLOCK_LABEL_460;
        parseUnrecognizedElement(obj, element1, props);
        break MISSING_BLOCK_LABEL_460;
        propertysetter.activate();
        return appender;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void parseCategory(Element element)
    {
        String s;
        String s1;
        s = subst(element.getAttribute("name"));
        s1 = subst(element.getAttribute("class"));
        if (!"".equals(s1)) goto _L2; else goto _L1
_L1:
        Logger logger;
        LogLog.debug("Retreiving an instance of org.apache.log4j.Logger.");
        boolean flag;
        if (catFactory == null)
            logger = repository.getLogger(s);
        else
            logger = repository.getLogger(s, catFactory);
_L4:
        logger;
        JVM INSTR monitorenter ;
        flag = OptionConverter.toBoolean(subst(element.getAttribute("additivity")), true);
        LogLog.debug("Setting [" + logger.getName() + "] additivity to [" + flag + "].");
        logger.setAdditivity(flag);
        parseChildrenOfLoggerElement(element, logger, false);
        logger;
        JVM INSTR monitorexit ;
        return;
_L2:
        LogLog.debug("Desired logger sub-class: [" + s1 + ']');
        try
        {
            logger = (Logger)Loader.loadClass(s1).getMethod("getLogger", ONE_STRING_PARAM).invoke(null, new Object[] {
                s
            });
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            LogLog.error("Could not retrieve category [" + s + "]. Reported error follows.", invocationtargetexception);
            return;
        }
        catch (Exception exception)
        {
            LogLog.error("Could not retrieve category [" + s + "]. Reported error follows.", exception);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        logger;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    protected void parseCategoryFactory(Element element)
    {
        String s = subst(element.getAttribute("class"));
        if ("".equals(s))
        {
            LogLog.error("Category Factory tag class attribute not found.");
            LogLog.debug("No Category Factory configured.");
        } else
        {
            LogLog.debug("Desired category factory: [" + s + ']');
            Class class1;
            if (class$org$apache$log4j$spi$LoggerFactory == null)
            {
                class1 = _mthclass$("org.apache.log4j.spi.LoggerFactory");
                class$org$apache$log4j$spi$LoggerFactory = class1;
            } else
            {
                class1 = class$org$apache$log4j$spi$LoggerFactory;
            }
            Object obj = OptionConverter.instantiateByClassName(s, class1, null);
            if (obj instanceof LoggerFactory)
                catFactory = (LoggerFactory)obj;
            else
                LogLog.error("Category Factory class " + s + " does not implement org.apache.log4j.LoggerFactory");
            PropertySetter propertysetter = new PropertySetter(obj);
            NodeList nodelist = element.getChildNodes();
            int i = nodelist.getLength();
            for (int j = 0; j < i; j++)
            {
                Node node = nodelist.item(j);
                if (node.getNodeType() != 1)
                    continue;
                Element element1 = (Element)node;
                if (element1.getTagName().equals("param"))
                    setParameter(element1, propertysetter);
                else
                    quietParseUnrecognizedElement(obj, element1, props);
            }

        }
    }

    protected void parseChildrenOfLoggerElement(Element element, Logger logger, boolean flag)
    {
        PropertySetter propertysetter = new PropertySetter(logger);
        logger.removeAllAppenders();
        NodeList nodelist = element.getChildNodes();
        int i = nodelist.getLength();
        for (int j = 0; j < i; j++)
        {
            Node node = nodelist.item(j);
            if (node.getNodeType() != 1)
                continue;
            Element element1 = (Element)node;
            String s = element1.getTagName();
            if (s.equals("appender-ref"))
            {
                Element element2 = (Element)node;
                Appender appender = findAppenderByReference(element2);
                String s1 = subst(element2.getAttribute("ref"));
                if (appender != null)
                    LogLog.debug("Adding appender named [" + s1 + "] to category [" + logger.getName() + "].");
                else
                    LogLog.debug("Appender named [" + s1 + "] not found.");
                logger.addAppender(appender);
                continue;
            }
            if (s.equals("level"))
            {
                parseLevel(element1, logger, flag);
                continue;
            }
            if (s.equals("priority"))
            {
                parseLevel(element1, logger, flag);
                continue;
            }
            if (s.equals("param"))
                setParameter(element1, propertysetter);
            else
                quietParseUnrecognizedElement(logger, element1, props);
        }

        propertysetter.activate();
    }

    protected void parseErrorHandler(Element element, Appender appender)
    {
        String s = subst(element.getAttribute("class"));
        Class class1;
        if (class$org$apache$log4j$spi$ErrorHandler == null)
        {
            class1 = _mthclass$("org.apache.log4j.spi.ErrorHandler");
            class$org$apache$log4j$spi$ErrorHandler = class1;
        } else
        {
            class1 = class$org$apache$log4j$spi$ErrorHandler;
        }
        ErrorHandler errorhandler = (ErrorHandler)OptionConverter.instantiateByClassName(s, class1, null);
        if (errorhandler != null)
        {
            errorhandler.setAppender(appender);
            PropertySetter propertysetter = new PropertySetter(errorhandler);
            NodeList nodelist = element.getChildNodes();
            int i = nodelist.getLength();
            for (int j = 0; j < i; j++)
            {
                Node node = nodelist.item(j);
                if (node.getNodeType() != 1)
                    continue;
                Element element1 = (Element)node;
                String s1 = element1.getTagName();
                if (s1.equals("param"))
                {
                    setParameter(element1, propertysetter);
                    continue;
                }
                if (s1.equals("appender-ref"))
                {
                    errorhandler.setBackupAppender(findAppenderByReference(element1));
                    continue;
                }
                if (s1.equals("logger-ref"))
                {
                    String s2 = element1.getAttribute("ref");
                    Logger logger;
                    if (catFactory == null)
                        logger = repository.getLogger(s2);
                    else
                        logger = repository.getLogger(s2, catFactory);
                    errorhandler.setLogger(logger);
                    continue;
                }
                if (s1.equals("root-ref"))
                    errorhandler.setLogger(repository.getRootLogger());
                else
                    quietParseUnrecognizedElement(errorhandler, element1, props);
            }

            propertysetter.activate();
            appender.setErrorHandler(errorhandler);
        }
    }

    protected void parseFilters(Element element, Appender appender)
    {
        String s = subst(element.getAttribute("class"));
        Class class1;
        if (class$org$apache$log4j$spi$Filter == null)
        {
            class1 = _mthclass$("org.apache.log4j.spi.Filter");
            class$org$apache$log4j$spi$Filter = class1;
        } else
        {
            class1 = class$org$apache$log4j$spi$Filter;
        }
        Filter filter = (Filter)OptionConverter.instantiateByClassName(s, class1, null);
        if (filter != null)
        {
            PropertySetter propertysetter = new PropertySetter(filter);
            NodeList nodelist = element.getChildNodes();
            int i = nodelist.getLength();
            for (int j = 0; j < i; j++)
            {
                Node node = nodelist.item(j);
                if (node.getNodeType() != 1)
                    continue;
                Element element1 = (Element)node;
                if (element1.getTagName().equals("param"))
                    setParameter(element1, propertysetter);
                else
                    quietParseUnrecognizedElement(filter, element1, props);
            }

            propertysetter.activate();
            LogLog.debug("Adding filter of type [" + filter.getClass() + "] to appender named [" + appender.getName() + "].");
            appender.addFilter(filter);
        }
    }

    protected Layout parseLayout(Element element)
    {
        Layout layout;
        PropertySetter propertysetter;
        int j;
        String s = subst(element.getAttribute("class"));
        LogLog.debug("Parsing layout of class: \"" + s + "\"");
        Object obj;
        NodeList nodelist;
        int i;
        Node node;
        Element element1;
        try
        {
            obj = Loader.loadClass(s).newInstance();
            layout = (Layout)obj;
            propertysetter = new PropertySetter(layout);
            nodelist = element.getChildNodes();
            i = nodelist.getLength();
        }
        catch (Exception exception)
        {
            if ((exception instanceof InterruptedException) || (exception instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            LogLog.error("Could not create the Layout. Reported error follows.", exception);
            return null;
        }
        j = 0;
_L2:
        if (j >= i)
            break MISSING_BLOCK_LABEL_195;
        node = nodelist.item(j);
        if (node.getNodeType() != 1)
            break MISSING_BLOCK_LABEL_203;
        element1 = (Element)node;
        if (element1.getTagName().equals("param"))
        {
            setParameter(element1, propertysetter);
            break MISSING_BLOCK_LABEL_203;
        }
        parseUnrecognizedElement(obj, element1, props);
        break MISSING_BLOCK_LABEL_203;
        propertysetter.activate();
        return layout;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void parseLevel(Element element, Logger logger, boolean flag)
    {
        String s = logger.getName();
        if (flag)
            s = "root";
        String s1 = subst(element.getAttribute("value"));
        LogLog.debug("Level value for " + s + " is  [" + s1 + "].");
        if ("inherited".equalsIgnoreCase(s1) || "null".equalsIgnoreCase(s1))
        {
            if (flag)
                LogLog.error("Root level cannot be inherited. Ignoring directive.");
            else
                logger.setLevel(null);
        } else
        {
            String s2 = subst(element.getAttribute("class"));
            if ("".equals(s2))
            {
                logger.setLevel(OptionConverter.toLevel(s1, Level.DEBUG));
            } else
            {
                LogLog.debug("Desired Level sub-class: [" + s2 + ']');
                try
                {
                    logger.setLevel((Level)Loader.loadClass(s2).getMethod("toLevel", ONE_STRING_PARAM).invoke(null, new Object[] {
                        s1
                    }));
                }
                catch (Exception exception)
                {
                    if ((exception instanceof InterruptedException) || (exception instanceof InterruptedIOException))
                        Thread.currentThread().interrupt();
                    LogLog.error("Could not create level [" + s1 + "]. Reported error follows.", exception);
                    return;
                }
            }
        }
        LogLog.debug(s + " level set to " + logger.getLevel());
    }

    protected void parseRenderer(Element element)
    {
        String s = subst(element.getAttribute("renderingClass"));
        String s1 = subst(element.getAttribute("renderedClass"));
        if (repository instanceof RendererSupport)
            RendererMap.addRenderer((RendererSupport)repository, s1, s);
    }

    protected void parseRoot(Element element)
    {
        synchronized (repository.getRootLogger())
        {
            parseChildrenOfLoggerElement(element, logger, true);
        }
        return;
        exception;
        logger;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected ThrowableRenderer parseThrowableRenderer(Element element)
    {
        ThrowableRenderer throwablerenderer;
        PropertySetter propertysetter;
        int j;
        String s = subst(element.getAttribute("class"));
        LogLog.debug("Parsing throwableRenderer of class: \"" + s + "\"");
        Object obj;
        NodeList nodelist;
        int i;
        Node node;
        Element element1;
        try
        {
            obj = Loader.loadClass(s).newInstance();
            throwablerenderer = (ThrowableRenderer)obj;
            propertysetter = new PropertySetter(throwablerenderer);
            nodelist = element.getChildNodes();
            i = nodelist.getLength();
        }
        catch (Exception exception)
        {
            if ((exception instanceof InterruptedException) || (exception instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            LogLog.error("Could not create the ThrowableRenderer. Reported error follows.", exception);
            return null;
        }
        j = 0;
_L2:
        if (j >= i)
            break MISSING_BLOCK_LABEL_195;
        node = nodelist.item(j);
        if (node.getNodeType() != 1)
            break MISSING_BLOCK_LABEL_203;
        element1 = (Element)node;
        if (element1.getTagName().equals("param"))
        {
            setParameter(element1, propertysetter);
            break MISSING_BLOCK_LABEL_203;
        }
        parseUnrecognizedElement(obj, element1, props);
        break MISSING_BLOCK_LABEL_203;
        propertysetter.activate();
        return throwablerenderer;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void setParameter(Element element, PropertySetter propertysetter)
    {
        propertysetter.setProperty(subst(element.getAttribute("name")), subst(OptionConverter.convertSpecialChars(element.getAttribute("value"))));
    }

    protected String subst(String s)
    {
        return subst(s, props);
    }

    static 
    {
        Class aclass[] = new Class[1];
        Class class1;
        if (class$java$lang$String == null)
        {
            class1 = _mthclass$("java.lang.String");
            class$java$lang$String = class1;
        } else
        {
            class1 = class$java$lang$String;
        }
        aclass[0] = class1;
        ONE_STRING_PARAM = aclass;
    }

    private class _cls3
        implements ParseAction
    {

        private final DOMConfigurator this$0;
        private final InputStream val$inputStream;

        public Document parse(DocumentBuilder documentbuilder)
            throws SAXException, IOException
        {
            InputSource inputsource = new InputSource(inputStream);
            inputsource.setSystemId("dummy://log4j.dtd");
            return documentbuilder.parse(inputsource);
        }

        public String toString()
        {
            return "input stream [" + inputStream.toString() + "]";
        }

        _cls3()
        {
            this$0 = DOMConfigurator.this;
            inputStream = inputstream;
            super();
        }
    }


    private class _cls4
        implements ParseAction
    {

        private final DOMConfigurator this$0;
        private final Reader val$reader;

        public Document parse(DocumentBuilder documentbuilder)
            throws SAXException, IOException
        {
            InputSource inputsource = new InputSource(reader);
            inputsource.setSystemId("dummy://log4j.dtd");
            return documentbuilder.parse(inputsource);
        }

        public String toString()
        {
            return "reader [" + reader.toString() + "]";
        }

        _cls4()
        {
            this$0 = DOMConfigurator.this;
            reader = reader1;
            super();
        }
    }


    private class _cls1
        implements ParseAction
    {

        private final DOMConfigurator this$0;
        private final String val$filename;

        public Document parse(DocumentBuilder documentbuilder)
            throws SAXException, IOException
        {
            return documentbuilder.parse(new File(filename));
        }

        public String toString()
        {
            return "file [" + filename + "]";
        }

        _cls1()
        {
            this$0 = DOMConfigurator.this;
            filename = s;
            super();
        }
    }


    private class _cls2
        implements ParseAction
    {

        private final DOMConfigurator this$0;
        private final URL val$url;

        public Document parse(DocumentBuilder documentbuilder)
            throws SAXException, IOException
        {
            InputStream inputstream;
            URLConnection urlconnection = url.openConnection();
            urlconnection.setUseCaches(false);
            inputstream = urlconnection.getInputStream();
            Document document;
            InputSource inputsource = new InputSource(inputstream);
            inputsource.setSystemId(url.toString());
            document = documentbuilder.parse(inputsource);
            inputstream.close();
            return document;
            Exception exception;
            exception;
            inputstream.close();
            throw exception;
        }

        public String toString()
        {
            return "url [" + url.toString() + "]";
        }

        _cls2()
        {
            this$0 = DOMConfigurator.this;
            url = url1;
            super();
        }
    }


    private class _cls5
        implements ParseAction
    {

        private final DOMConfigurator this$0;
        private final InputSource val$inputSource;

        public Document parse(DocumentBuilder documentbuilder)
            throws SAXException, IOException
        {
            return documentbuilder.parse(inputSource);
        }

        public String toString()
        {
            return "input source [" + inputSource.toString() + "]";
        }

        _cls5()
        {
            this$0 = DOMConfigurator.this;
            inputSource = inputsource;
            super();
        }
    }

}

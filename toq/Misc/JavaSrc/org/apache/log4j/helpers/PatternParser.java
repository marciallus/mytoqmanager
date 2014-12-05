// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import org.apache.log4j.Layout;
import org.apache.log4j.Level;
import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.helpers:
//            FormattingInfo, PatternConverter, LogLog, ISO8601DateFormat, 
//            AbsoluteTimeDateFormat, DateTimeDateFormat, OptionConverter

public class PatternParser
{
    private static class BasicPatternConverter extends PatternConverter
    {

        int type;

        public String convert(LoggingEvent loggingevent)
        {
            switch (type)
            {
            case 2004: 
                return loggingevent.getRenderedMessage();

            case 2003: 
                return loggingevent.getNDC();

            case 2002: 
                return loggingevent.getLevel().toString();

            case 2001: 
                return loggingevent.getThreadName();

            case 2000: 
                return Long.toString(loggingevent.timeStamp - LoggingEvent.getStartTime());
            }
            return null;
        }

        BasicPatternConverter(FormattingInfo formattinginfo, int j)
        {
            super(formattinginfo);
            type = j;
        }
    }

    private class CategoryPatternConverter extends NamedPatternConverter
    {

        private final PatternParser this$0;

        String getFullyQualifiedName(LoggingEvent loggingevent)
        {
            return loggingevent.getLoggerName();
        }

        CategoryPatternConverter(FormattingInfo formattinginfo, int j)
        {
            this$0 = PatternParser.this;
            super(formattinginfo, j);
        }
    }

    private class ClassNamePatternConverter extends NamedPatternConverter
    {

        private final PatternParser this$0;

        String getFullyQualifiedName(LoggingEvent loggingevent)
        {
            return loggingevent.getLocationInformation().getClassName();
        }

        ClassNamePatternConverter(FormattingInfo formattinginfo, int j)
        {
            this$0 = PatternParser.this;
            super(formattinginfo, j);
        }
    }

    private static class DatePatternConverter extends PatternConverter
    {

        private Date date;
        private DateFormat df;

        public String convert(LoggingEvent loggingevent)
        {
            date.setTime(loggingevent.timeStamp);
            String s;
            try
            {
                s = df.format(date);
            }
            catch (Exception exception)
            {
                LogLog.error("Error occured while converting date.", exception);
                return null;
            }
            return s;
        }

        DatePatternConverter(FormattingInfo formattinginfo, DateFormat dateformat)
        {
            super(formattinginfo);
            date = new Date();
            df = dateformat;
        }
    }

    private static class LiteralPatternConverter extends PatternConverter
    {

        private String literal;

        public String convert(LoggingEvent loggingevent)
        {
            return literal;
        }

        public final void format(StringBuffer stringbuffer, LoggingEvent loggingevent)
        {
            stringbuffer.append(literal);
        }

        LiteralPatternConverter(String s)
        {
            literal = s;
        }
    }

    private class LocationPatternConverter extends PatternConverter
    {

        private final PatternParser this$0;
        int type;

        public String convert(LoggingEvent loggingevent)
        {
            LocationInfo locationinfo = loggingevent.getLocationInformation();
            switch (type)
            {
            case 1004: 
                return locationinfo.getFileName();

            case 1003: 
                return locationinfo.getLineNumber();

            case 1001: 
                return locationinfo.getMethodName();

            case 1000: 
                return locationinfo.fullInfo;

            case 1002: 
            default:
                return null;
            }
        }

        LocationPatternConverter(FormattingInfo formattinginfo, int j)
        {
            this$0 = PatternParser.this;
            super(formattinginfo);
            type = j;
        }
    }

    private static class MDCPatternConverter extends PatternConverter
    {

        private String key;

        public String convert(LoggingEvent loggingevent)
        {
            if (key == null)
            {
                StringBuffer stringbuffer = new StringBuffer("{");
                Map map = loggingevent.getProperties();
                if (map.size() > 0)
                {
                    Object aobj[] = map.keySet().toArray();
                    Arrays.sort(aobj);
                    for (int j = 0; j < aobj.length; j++)
                    {
                        stringbuffer.append('{');
                        stringbuffer.append(aobj[j]);
                        stringbuffer.append(',');
                        stringbuffer.append(map.get(aobj[j]));
                        stringbuffer.append('}');
                    }

                }
                stringbuffer.append('}');
                return stringbuffer.toString();
            }
            Object obj = loggingevent.getMDC(key);
            if (obj == null)
                return null;
            else
                return obj.toString();
        }

        MDCPatternConverter(FormattingInfo formattinginfo, String s)
        {
            super(formattinginfo);
            key = s;
        }
    }

    private static abstract class NamedPatternConverter extends PatternConverter
    {

        int precision;

        public String convert(LoggingEvent loggingevent)
        {
            String s;
            int j;
            int k;
label0:
            {
                s = getFullyQualifiedName(loggingevent);
                if (precision > 0)
                {
                    j = s.length();
                    k = j - 1;
                    int l = precision;
                    do
                    {
                        if (l <= 0)
                            break label0;
                        k = s.lastIndexOf('.', k - 1);
                        if (k == -1)
                            break;
                        l--;
                    } while (true);
                }
                return s;
            }
            return s.substring(k + 1, j);
        }

        abstract String getFullyQualifiedName(LoggingEvent loggingevent);

        NamedPatternConverter(FormattingInfo formattinginfo, int j)
        {
            super(formattinginfo);
            precision = j;
        }
    }


    static final int CLASS_LOCATION_CONVERTER = 1002;
    private static final int CONVERTER_STATE = 1;
    private static final int DOT_STATE = 3;
    private static final char ESCAPE_CHAR = 37;
    static final int FILE_LOCATION_CONVERTER = 1004;
    static final int FULL_LOCATION_CONVERTER = 1000;
    static final int LEVEL_CONVERTER = 2002;
    static final int LINE_LOCATION_CONVERTER = 1003;
    private static final int LITERAL_STATE = 0;
    private static final int MAX_STATE = 5;
    static final int MESSAGE_CONVERTER = 2004;
    static final int METHOD_LOCATION_CONVERTER = 1001;
    private static final int MIN_STATE = 4;
    static final int NDC_CONVERTER = 2003;
    static final int RELATIVE_TIME_CONVERTER = 2000;
    static final int THREAD_CONVERTER = 2001;
    static Class class$java$text$DateFormat;
    protected StringBuffer currentLiteral;
    protected FormattingInfo formattingInfo;
    PatternConverter head;
    protected int i;
    protected String pattern;
    protected int patternLength;
    int state;
    PatternConverter tail;

    public PatternParser(String s)
    {
        currentLiteral = new StringBuffer(32);
        formattingInfo = new FormattingInfo();
        pattern = s;
        patternLength = s.length();
        state = 0;
    }

    private void addToList(PatternConverter patternconverter)
    {
        if (head == null)
        {
            tail = patternconverter;
            head = patternconverter;
            return;
        } else
        {
            tail.next = patternconverter;
            tail = patternconverter;
            return;
        }
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

    protected void addConverter(PatternConverter patternconverter)
    {
        currentLiteral.setLength(0);
        addToList(patternconverter);
        state = 0;
        formattingInfo.reset();
    }

    protected String extractOption()
    {
        if (i < patternLength && pattern.charAt(i) == '{')
        {
            int j = pattern.indexOf('}', i);
            if (j > i)
            {
                String s = pattern.substring(1 + i, j);
                i = j + 1;
                return s;
            }
        }
        return null;
    }

    protected int extractPrecisionOption()
    {
        String s = extractOption();
        int j = 0;
        if (s == null)
            break MISSING_BLOCK_LABEL_49;
        try
        {
            j = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            LogLog.error("Category option \"" + s + "\" not a decimal integer.", numberformatexception);
            return j;
        }
        if (j > 0)
            break MISSING_BLOCK_LABEL_49;
        LogLog.error("Precision option (" + s + ") isn't a positive integer.");
        j = 0;
        return j;
    }

    protected void finalizeConverter(char c)
    {
        c;
        JVM INSTR lookupswitch 13: default 116
    //                   67: 212
    //                   70: 430
    //                   76: 484
    //                   77: 537
    //                   88: 668
    //                   99: 184
    //                   100: 240
    //                   108: 457
    //                   109: 511
    //                   112: 564
    //                   114: 590
    //                   116: 616
    //                   120: 642;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14
_L1:
        Object obj;
        LogLog.error("Unexpected char [" + c + "] at position " + i + " in conversion patterrn.");
        obj = new LiteralPatternConverter(currentLiteral.toString());
        currentLiteral.setLength(0);
_L16:
        addConverter(((PatternConverter) (obj)));
        return;
_L7:
        obj = new CategoryPatternConverter(formattingInfo, extractPrecisionOption());
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L2:
        obj = new ClassNamePatternConverter(formattingInfo, extractPrecisionOption());
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L8:
        String s1 = "ISO8601";
        String s2 = extractOption();
        if (s2 != null)
            s1 = s2;
        Object obj1;
        if (s1.equalsIgnoreCase("ISO8601"))
            obj1 = new ISO8601DateFormat();
        else
        if (s1.equalsIgnoreCase("ABSOLUTE"))
            obj1 = new AbsoluteTimeDateFormat();
        else
        if (s1.equalsIgnoreCase("DATE"))
            obj1 = new DateTimeDateFormat();
        else
            try
            {
                obj1 = new SimpleDateFormat(s1);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                LogLog.error("Could not instantiate SimpleDateFormat with " + s1, illegalargumentexception);
                Class class1;
                if (class$java$text$DateFormat == null)
                {
                    class1 = _mthclass$("java.text.DateFormat");
                    class$java$text$DateFormat = class1;
                } else
                {
                    class1 = class$java$text$DateFormat;
                }
                obj1 = (DateFormat)OptionConverter.instantiateByClassName("org.apache.log4j.helpers.ISO8601DateFormat", class1, null);
            }
        obj = new DatePatternConverter(formattingInfo, ((DateFormat) (obj1)));
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L3:
        obj = new LocationPatternConverter(formattingInfo, 1004);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L9:
        obj = new LocationPatternConverter(formattingInfo, 1000);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L4:
        obj = new LocationPatternConverter(formattingInfo, 1003);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L10:
        obj = new BasicPatternConverter(formattingInfo, 2004);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L5:
        obj = new LocationPatternConverter(formattingInfo, 1001);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L11:
        obj = new BasicPatternConverter(formattingInfo, 2002);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L12:
        obj = new BasicPatternConverter(formattingInfo, 2000);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L13:
        obj = new BasicPatternConverter(formattingInfo, 2001);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L14:
        obj = new BasicPatternConverter(formattingInfo, 2003);
        currentLiteral.setLength(0);
        continue; /* Loop/switch isn't completed */
_L6:
        String s = extractOption();
        obj = new MDCPatternConverter(formattingInfo, s);
        currentLiteral.setLength(0);
        if (true) goto _L16; else goto _L15
_L15:
    }

    public PatternConverter parse()
    {
        i = 0;
        do
            if (i < patternLength)
            {
                String s = pattern;
                int j = i;
                i = j + 1;
                char c = s.charAt(j);
                switch (state)
                {
                case 5: // '\005'
                    currentLiteral.append(c);
                    if (c >= '0' && c <= '9')
                    {
                        formattingInfo.max = 10 * formattingInfo.max + (c - 48);
                    } else
                    {
                        finalizeConverter(c);
                        state = 0;
                    }
                    break;

                case 3: // '\003'
                    currentLiteral.append(c);
                    if (c >= '0' && c <= '9')
                    {
                        formattingInfo.max = c - 48;
                        state = 5;
                    } else
                    {
                        LogLog.error("Error occured in position " + i + ".\n Was expecting digit, instead got char \"" + c + "\".");
                        state = 0;
                    }
                    break;

                case 4: // '\004'
                    currentLiteral.append(c);
                    if (c >= '0' && c <= '9')
                        formattingInfo.min = 10 * formattingInfo.min + (c - 48);
                    else
                    if (c == '.')
                        state = 3;
                    else
                        finalizeConverter(c);
                    break;

                case 1: // '\001'
                    currentLiteral.append(c);
                    switch (c)
                    {
                    case 46: // '.'
                        state = 3;
                        break;

                    case 45: // '-'
                        formattingInfo.leftAlign = true;
                        break;

                    default:
                        if (c >= '0' && c <= '9')
                        {
                            formattingInfo.min = c - 48;
                            state = 4;
                        } else
                        {
                            finalizeConverter(c);
                        }
                        break;
                    }
                    break;

                case 0: // '\0'
                    if (i == patternLength)
                        currentLiteral.append(c);
                    else
                    if (c == '%')
                        switch (pattern.charAt(i))
                        {
                        case 110: // 'n'
                            currentLiteral.append(Layout.LINE_SEP);
                            i = 1 + i;
                            break;

                        case 37: // '%'
                            currentLiteral.append(c);
                            i = 1 + i;
                            break;

                        default:
                            if (currentLiteral.length() != 0)
                                addToList(new LiteralPatternConverter(currentLiteral.toString()));
                            currentLiteral.setLength(0);
                            currentLiteral.append(c);
                            state = 1;
                            formattingInfo.reset();
                            break;
                        }
                    else
                        currentLiteral.append(c);
                    break;
                }
            } else
            {
                if (currentLiteral.length() != 0)
                    addToList(new LiteralPatternConverter(currentLiteral.toString()));
                return head;
            }
        while (true);
    }
}

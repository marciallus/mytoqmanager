// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.lang.reflect.Method;
import java.util.*;
import org.apache.log4j.helpers.Loader;
import org.apache.log4j.helpers.LogLog;

// Referenced classes of package org.apache.log4j.pattern:
//            PatternConverter, LiteralPatternConverter, FormattingInfo

public final class PatternParser
{
    private static class ReadOnlyMap
        implements Map
    {

        private final Map map;

        public void clear()
        {
            throw new UnsupportedOperationException();
        }

        public boolean containsKey(Object obj)
        {
            return map.containsKey(obj);
        }

        public boolean containsValue(Object obj)
        {
            return map.containsValue(obj);
        }

        public Set entrySet()
        {
            return map.entrySet();
        }

        public Object get(Object obj)
        {
            return map.get(obj);
        }

        public boolean isEmpty()
        {
            return map.isEmpty();
        }

        public Set keySet()
        {
            return map.keySet();
        }

        public Object put(Object obj, Object obj1)
        {
            throw new UnsupportedOperationException();
        }

        public void putAll(Map map1)
        {
            throw new UnsupportedOperationException();
        }

        public Object remove(Object obj)
        {
            throw new UnsupportedOperationException();
        }

        public int size()
        {
            return map.size();
        }

        public Collection values()
        {
            return map.values();
        }

        public ReadOnlyMap(Map map1)
        {
            map = map1;
        }
    }


    private static final int CONVERTER_STATE = 1;
    private static final int DOT_STATE = 3;
    private static final char ESCAPE_CHAR = 37;
    private static final Map FILENAME_PATTERN_RULES;
    private static final int LITERAL_STATE = 0;
    private static final int MAX_STATE = 5;
    private static final int MIN_STATE = 4;
    private static final Map PATTERN_LAYOUT_RULES;
    static Class class$org$apache$log4j$pattern$ClassNamePatternConverter;
    static Class class$org$apache$log4j$pattern$DatePatternConverter;
    static Class class$org$apache$log4j$pattern$FileDatePatternConverter;
    static Class class$org$apache$log4j$pattern$FileLocationPatternConverter;
    static Class class$org$apache$log4j$pattern$FullLocationPatternConverter;
    static Class class$org$apache$log4j$pattern$IntegerPatternConverter;
    static Class class$org$apache$log4j$pattern$LevelPatternConverter;
    static Class class$org$apache$log4j$pattern$LineLocationPatternConverter;
    static Class class$org$apache$log4j$pattern$LineSeparatorPatternConverter;
    static Class class$org$apache$log4j$pattern$LoggerPatternConverter;
    static Class class$org$apache$log4j$pattern$MessagePatternConverter;
    static Class class$org$apache$log4j$pattern$MethodLocationPatternConverter;
    static Class class$org$apache$log4j$pattern$NDCPatternConverter;
    static Class class$org$apache$log4j$pattern$PropertiesPatternConverter;
    static Class class$org$apache$log4j$pattern$RelativeTimePatternConverter;
    static Class class$org$apache$log4j$pattern$SequenceNumberPatternConverter;
    static Class class$org$apache$log4j$pattern$ThreadPatternConverter;
    static Class class$org$apache$log4j$pattern$ThrowableInformationPatternConverter;

    private PatternParser()
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

    private static PatternConverter createConverter(String s, StringBuffer stringbuffer, Map map, Map map1, List list)
    {
        String s1 = s;
        int i = s.length();
        Object obj = null;
        while (i > 0 && obj == null) 
        {
            s1 = s1.substring(0, i);
            ClassNotFoundException classnotfoundexception;
            Class class1;
            Class class2;
            Exception exception;
            Exception exception1;
            PatternConverter patternconverter;
            Class aclass[];
            Object obj1;
            PatternConverter patternconverter1;
            Object obj2;
            if (map != null)
                obj2 = map.get(s1);
            else
                obj2 = obj;
            if (obj2 == null && map1 != null)
                obj2 = map1.get(s1);
            i--;
            obj = obj2;
        }
        if (obj == null)
        {
            LogLog.error("Unrecognized format specifier [" + s + "]");
            return null;
        }
        if (obj instanceof Class)
            class2 = (Class)obj;
        else
        if (obj instanceof String)
        {
            try
            {
                class1 = Loader.loadClass((String)obj);
            }
            // Misplaced declaration of an exception variable
            catch (ClassNotFoundException classnotfoundexception)
            {
                LogLog.warn("Class for conversion pattern %" + s1 + " not found", classnotfoundexception);
                return null;
            }
            class2 = class1;
        } else
        {
            LogLog.warn("Bad map entry for conversion pattern %" + s1 + ".");
            return null;
        }
        aclass = new Class[1];
        aclass[0] = Class.forName("[Ljava.lang.String;");
        obj1 = class2.getMethod("newInstance", aclass).invoke(null, new Object[] {
            (String[])(String[])list.toArray(new String[list.size()])
        });
        if (!(obj1 instanceof PatternConverter))
            break MISSING_BLOCK_LABEL_318;
        stringbuffer.delete(0, stringbuffer.length() - (s.length() - s1.length()));
        patternconverter1 = (PatternConverter)obj1;
        return patternconverter1;
        LogLog.warn("Class " + class2.getName() + " does not extend PatternConverter.");
_L2:
        return null;
        exception;
        LogLog.error("Error creating converter for " + s, exception);
        patternconverter = (PatternConverter)class2.newInstance();
        stringbuffer.delete(0, stringbuffer.length() - (s.length() - s1.length()));
        return patternconverter;
        exception1;
        LogLog.error("Error creating converter for " + s, exception1);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static int extractConverter(char c, String s, int i, StringBuffer stringbuffer, StringBuffer stringbuffer1)
    {
        stringbuffer.setLength(0);
        if (!Character.isUnicodeIdentifierStart(c))
            return i;
        stringbuffer.append(c);
        for (; i < s.length() && Character.isUnicodeIdentifierPart(s.charAt(i)); i++)
        {
            stringbuffer.append(s.charAt(i));
            stringbuffer1.append(s.charAt(i));
        }

        return i;
    }

    private static int extractOptions(String s, int i, List list)
    {
        do
        {
            if (i >= s.length() || s.charAt(i) != '{')
                break;
            int j = s.indexOf('}', i);
            if (j == -1)
                break;
            list.add(s.substring(i + 1, j));
            i = j + 1;
        } while (true);
        return i;
    }

    private static int finalizeConverter(char c, String s, int i, StringBuffer stringbuffer, FormattingInfo formattinginfo, Map map, Map map1, List list, 
            List list1)
    {
        StringBuffer stringbuffer1 = new StringBuffer();
        int j = extractConverter(c, s, i, stringbuffer1, stringbuffer);
        String s1 = stringbuffer1.toString();
        ArrayList arraylist = new ArrayList();
        int k = extractOptions(s, j, arraylist);
        PatternConverter patternconverter = createConverter(s1, stringbuffer, map, map1, arraylist);
        if (patternconverter == null)
        {
            StringBuffer stringbuffer2;
            if (s1 != null && s1.length() != 0)
            {
                stringbuffer2 = new StringBuffer("Unrecognized conversion specifier [");
                stringbuffer2.append(s1);
                stringbuffer2.append("] starting at position ");
            } else
            {
                stringbuffer2 = new StringBuffer("Empty conversion specifier starting at position ");
            }
            stringbuffer2.append(Integer.toString(k));
            stringbuffer2.append(" in conversion pattern.");
            LogLog.error(stringbuffer2.toString());
            list.add(new LiteralPatternConverter(stringbuffer.toString()));
            list1.add(FormattingInfo.getDefault());
        } else
        {
            list.add(patternconverter);
            list1.add(formattinginfo);
            if (stringbuffer.length() > 0)
            {
                list.add(new LiteralPatternConverter(stringbuffer.toString()));
                list1.add(FormattingInfo.getDefault());
            }
        }
        stringbuffer.setLength(0);
        return k;
    }

    public static Map getFileNamePatternRules()
    {
        return FILENAME_PATTERN_RULES;
    }

    public static Map getPatternLayoutRules()
    {
        return PATTERN_LAYOUT_RULES;
    }

    public static void parse(String s, List list, List list1, Map map, Map map1)
    {
        if (s == null)
            throw new NullPointerException("pattern");
        StringBuffer stringbuffer = new StringBuffer(32);
        int i = s.length();
        int j = 0;
        FormattingInfo formattinginfo = FormattingInfo.getDefault();
        int k = 0;
        do
            if (k < i)
            {
                int l = k + 1;
                char c = s.charAt(k);
                switch (j)
                {
                case 2: // '\002'
                default:
                    break;

                case 5: // '\005'
                    stringbuffer.append(c);
                    if (c >= '0' && c <= '9')
                    {
                        formattinginfo = new FormattingInfo(formattinginfo.isLeftAligned(), formattinginfo.getMinLength(), 10 * formattinginfo.getMaxLength() + (c - 48));
                    } else
                    {
                        l = finalizeConverter(c, s, l, stringbuffer, formattinginfo, map, map1, list, list1);
                        formattinginfo = FormattingInfo.getDefault();
                        stringbuffer.setLength(0);
                        j = 0;
                    }
                    break;

                case 3: // '\003'
                    stringbuffer.append(c);
                    if (c >= '0' && c <= '9')
                    {
                        FormattingInfo formattinginfo2 = new FormattingInfo(formattinginfo.isLeftAligned(), formattinginfo.getMinLength(), c - 48);
                        j = 5;
                        formattinginfo = formattinginfo2;
                    } else
                    {
                        LogLog.error("Error occured in position " + l + ".\n Was expecting digit, instead got char \"" + c + "\".");
                        j = 0;
                    }
                    break;

                case 4: // '\004'
                    stringbuffer.append(c);
                    if (c >= '0' && c <= '9')
                        formattinginfo = new FormattingInfo(formattinginfo.isLeftAligned(), 10 * formattinginfo.getMinLength() + (c - 48), formattinginfo.getMaxLength());
                    else
                    if (c == '.')
                    {
                        j = 3;
                    } else
                    {
                        l = finalizeConverter(c, s, l, stringbuffer, formattinginfo, map, map1, list, list1);
                        formattinginfo = FormattingInfo.getDefault();
                        stringbuffer.setLength(0);
                        j = 0;
                    }
                    break;

                case 1: // '\001'
                    stringbuffer.append(c);
                    switch (c)
                    {
                    case 46: // '.'
                        j = 3;
                        break;

                    case 45: // '-'
                        formattinginfo = new FormattingInfo(true, formattinginfo.getMinLength(), formattinginfo.getMaxLength());
                        break;

                    default:
                        if (c >= '0' && c <= '9')
                        {
                            FormattingInfo formattinginfo1 = new FormattingInfo(formattinginfo.isLeftAligned(), c - 48, formattinginfo.getMaxLength());
                            j = 4;
                            formattinginfo = formattinginfo1;
                        } else
                        {
                            l = finalizeConverter(c, s, l, stringbuffer, formattinginfo, map, map1, list, list1);
                            formattinginfo = FormattingInfo.getDefault();
                            stringbuffer.setLength(0);
                            j = 0;
                        }
                        break;
                    }
                    break;

                case 0: // '\0'
                    if (l == i)
                    {
                        stringbuffer.append(c);
                        k = l;
                        continue;
                    }
                    if (c == '%')
                        switch (s.charAt(l))
                        {
                        case 37: // '%'
                            stringbuffer.append(c);
                            l++;
                            break;

                        default:
                            if (stringbuffer.length() != 0)
                            {
                                list.add(new LiteralPatternConverter(stringbuffer.toString()));
                                list1.add(FormattingInfo.getDefault());
                            }
                            stringbuffer.setLength(0);
                            stringbuffer.append(c);
                            j = 1;
                            formattinginfo = FormattingInfo.getDefault();
                            break;
                        }
                    else
                        stringbuffer.append(c);
                    break;
                }
                k = l;
            } else
            {
                if (stringbuffer.length() != 0)
                {
                    list.add(new LiteralPatternConverter(stringbuffer.toString()));
                    list1.add(FormattingInfo.getDefault());
                }
                return;
            }
        while (true);
    }

    static 
    {
        HashMap hashmap = new HashMap(17);
        Class class1;
        if (class$org$apache$log4j$pattern$LoggerPatternConverter == null)
        {
            class1 = _mthclass$("org.apache.log4j.pattern.LoggerPatternConverter");
            class$org$apache$log4j$pattern$LoggerPatternConverter = class1;
        } else
        {
            class1 = class$org$apache$log4j$pattern$LoggerPatternConverter;
        }
        hashmap.put("c", class1);
        Class class2;
        if (class$org$apache$log4j$pattern$LoggerPatternConverter == null)
        {
            class2 = _mthclass$("org.apache.log4j.pattern.LoggerPatternConverter");
            class$org$apache$log4j$pattern$LoggerPatternConverter = class2;
        } else
        {
            class2 = class$org$apache$log4j$pattern$LoggerPatternConverter;
        }
        hashmap.put("logger", class2);
        Class class3;
        if (class$org$apache$log4j$pattern$ClassNamePatternConverter == null)
        {
            class3 = _mthclass$("org.apache.log4j.pattern.ClassNamePatternConverter");
            class$org$apache$log4j$pattern$ClassNamePatternConverter = class3;
        } else
        {
            class3 = class$org$apache$log4j$pattern$ClassNamePatternConverter;
        }
        hashmap.put("C", class3);
        Class class4;
        if (class$org$apache$log4j$pattern$ClassNamePatternConverter == null)
        {
            class4 = _mthclass$("org.apache.log4j.pattern.ClassNamePatternConverter");
            class$org$apache$log4j$pattern$ClassNamePatternConverter = class4;
        } else
        {
            class4 = class$org$apache$log4j$pattern$ClassNamePatternConverter;
        }
        hashmap.put("class", class4);
        Class class5;
        if (class$org$apache$log4j$pattern$DatePatternConverter == null)
        {
            class5 = _mthclass$("org.apache.log4j.pattern.DatePatternConverter");
            class$org$apache$log4j$pattern$DatePatternConverter = class5;
        } else
        {
            class5 = class$org$apache$log4j$pattern$DatePatternConverter;
        }
        hashmap.put("d", class5);
        Class class6;
        if (class$org$apache$log4j$pattern$DatePatternConverter == null)
        {
            class6 = _mthclass$("org.apache.log4j.pattern.DatePatternConverter");
            class$org$apache$log4j$pattern$DatePatternConverter = class6;
        } else
        {
            class6 = class$org$apache$log4j$pattern$DatePatternConverter;
        }
        hashmap.put("date", class6);
        Class class7;
        if (class$org$apache$log4j$pattern$FileLocationPatternConverter == null)
        {
            class7 = _mthclass$("org.apache.log4j.pattern.FileLocationPatternConverter");
            class$org$apache$log4j$pattern$FileLocationPatternConverter = class7;
        } else
        {
            class7 = class$org$apache$log4j$pattern$FileLocationPatternConverter;
        }
        hashmap.put("F", class7);
        Class class8;
        if (class$org$apache$log4j$pattern$FileLocationPatternConverter == null)
        {
            class8 = _mthclass$("org.apache.log4j.pattern.FileLocationPatternConverter");
            class$org$apache$log4j$pattern$FileLocationPatternConverter = class8;
        } else
        {
            class8 = class$org$apache$log4j$pattern$FileLocationPatternConverter;
        }
        hashmap.put("file", class8);
        Class class9;
        if (class$org$apache$log4j$pattern$FullLocationPatternConverter == null)
        {
            class9 = _mthclass$("org.apache.log4j.pattern.FullLocationPatternConverter");
            class$org$apache$log4j$pattern$FullLocationPatternConverter = class9;
        } else
        {
            class9 = class$org$apache$log4j$pattern$FullLocationPatternConverter;
        }
        hashmap.put("l", class9);
        Class class10;
        if (class$org$apache$log4j$pattern$LineLocationPatternConverter == null)
        {
            class10 = _mthclass$("org.apache.log4j.pattern.LineLocationPatternConverter");
            class$org$apache$log4j$pattern$LineLocationPatternConverter = class10;
        } else
        {
            class10 = class$org$apache$log4j$pattern$LineLocationPatternConverter;
        }
        hashmap.put("L", class10);
        Class class11;
        if (class$org$apache$log4j$pattern$LineLocationPatternConverter == null)
        {
            class11 = _mthclass$("org.apache.log4j.pattern.LineLocationPatternConverter");
            class$org$apache$log4j$pattern$LineLocationPatternConverter = class11;
        } else
        {
            class11 = class$org$apache$log4j$pattern$LineLocationPatternConverter;
        }
        hashmap.put("line", class11);
        Class class12;
        if (class$org$apache$log4j$pattern$MessagePatternConverter == null)
        {
            class12 = _mthclass$("org.apache.log4j.pattern.MessagePatternConverter");
            class$org$apache$log4j$pattern$MessagePatternConverter = class12;
        } else
        {
            class12 = class$org$apache$log4j$pattern$MessagePatternConverter;
        }
        hashmap.put("m", class12);
        Class class13;
        if (class$org$apache$log4j$pattern$MessagePatternConverter == null)
        {
            class13 = _mthclass$("org.apache.log4j.pattern.MessagePatternConverter");
            class$org$apache$log4j$pattern$MessagePatternConverter = class13;
        } else
        {
            class13 = class$org$apache$log4j$pattern$MessagePatternConverter;
        }
        hashmap.put("message", class13);
        Class class14;
        if (class$org$apache$log4j$pattern$LineSeparatorPatternConverter == null)
        {
            class14 = _mthclass$("org.apache.log4j.pattern.LineSeparatorPatternConverter");
            class$org$apache$log4j$pattern$LineSeparatorPatternConverter = class14;
        } else
        {
            class14 = class$org$apache$log4j$pattern$LineSeparatorPatternConverter;
        }
        hashmap.put("n", class14);
        Class class15;
        if (class$org$apache$log4j$pattern$MethodLocationPatternConverter == null)
        {
            class15 = _mthclass$("org.apache.log4j.pattern.MethodLocationPatternConverter");
            class$org$apache$log4j$pattern$MethodLocationPatternConverter = class15;
        } else
        {
            class15 = class$org$apache$log4j$pattern$MethodLocationPatternConverter;
        }
        hashmap.put("M", class15);
        Class class16;
        if (class$org$apache$log4j$pattern$MethodLocationPatternConverter == null)
        {
            class16 = _mthclass$("org.apache.log4j.pattern.MethodLocationPatternConverter");
            class$org$apache$log4j$pattern$MethodLocationPatternConverter = class16;
        } else
        {
            class16 = class$org$apache$log4j$pattern$MethodLocationPatternConverter;
        }
        hashmap.put("method", class16);
        Class class17;
        if (class$org$apache$log4j$pattern$LevelPatternConverter == null)
        {
            class17 = _mthclass$("org.apache.log4j.pattern.LevelPatternConverter");
            class$org$apache$log4j$pattern$LevelPatternConverter = class17;
        } else
        {
            class17 = class$org$apache$log4j$pattern$LevelPatternConverter;
        }
        hashmap.put("p", class17);
        Class class18;
        if (class$org$apache$log4j$pattern$LevelPatternConverter == null)
        {
            class18 = _mthclass$("org.apache.log4j.pattern.LevelPatternConverter");
            class$org$apache$log4j$pattern$LevelPatternConverter = class18;
        } else
        {
            class18 = class$org$apache$log4j$pattern$LevelPatternConverter;
        }
        hashmap.put("level", class18);
        Class class19;
        if (class$org$apache$log4j$pattern$RelativeTimePatternConverter == null)
        {
            class19 = _mthclass$("org.apache.log4j.pattern.RelativeTimePatternConverter");
            class$org$apache$log4j$pattern$RelativeTimePatternConverter = class19;
        } else
        {
            class19 = class$org$apache$log4j$pattern$RelativeTimePatternConverter;
        }
        hashmap.put("r", class19);
        Class class20;
        if (class$org$apache$log4j$pattern$RelativeTimePatternConverter == null)
        {
            class20 = _mthclass$("org.apache.log4j.pattern.RelativeTimePatternConverter");
            class$org$apache$log4j$pattern$RelativeTimePatternConverter = class20;
        } else
        {
            class20 = class$org$apache$log4j$pattern$RelativeTimePatternConverter;
        }
        hashmap.put("relative", class20);
        Class class21;
        if (class$org$apache$log4j$pattern$ThreadPatternConverter == null)
        {
            class21 = _mthclass$("org.apache.log4j.pattern.ThreadPatternConverter");
            class$org$apache$log4j$pattern$ThreadPatternConverter = class21;
        } else
        {
            class21 = class$org$apache$log4j$pattern$ThreadPatternConverter;
        }
        hashmap.put("t", class21);
        Class class22;
        if (class$org$apache$log4j$pattern$ThreadPatternConverter == null)
        {
            class22 = _mthclass$("org.apache.log4j.pattern.ThreadPatternConverter");
            class$org$apache$log4j$pattern$ThreadPatternConverter = class22;
        } else
        {
            class22 = class$org$apache$log4j$pattern$ThreadPatternConverter;
        }
        hashmap.put("thread", class22);
        Class class23;
        if (class$org$apache$log4j$pattern$NDCPatternConverter == null)
        {
            class23 = _mthclass$("org.apache.log4j.pattern.NDCPatternConverter");
            class$org$apache$log4j$pattern$NDCPatternConverter = class23;
        } else
        {
            class23 = class$org$apache$log4j$pattern$NDCPatternConverter;
        }
        hashmap.put("x", class23);
        Class class24;
        if (class$org$apache$log4j$pattern$NDCPatternConverter == null)
        {
            class24 = _mthclass$("org.apache.log4j.pattern.NDCPatternConverter");
            class$org$apache$log4j$pattern$NDCPatternConverter = class24;
        } else
        {
            class24 = class$org$apache$log4j$pattern$NDCPatternConverter;
        }
        hashmap.put("ndc", class24);
        Class class25;
        if (class$org$apache$log4j$pattern$PropertiesPatternConverter == null)
        {
            class25 = _mthclass$("org.apache.log4j.pattern.PropertiesPatternConverter");
            class$org$apache$log4j$pattern$PropertiesPatternConverter = class25;
        } else
        {
            class25 = class$org$apache$log4j$pattern$PropertiesPatternConverter;
        }
        hashmap.put("X", class25);
        Class class26;
        if (class$org$apache$log4j$pattern$PropertiesPatternConverter == null)
        {
            class26 = _mthclass$("org.apache.log4j.pattern.PropertiesPatternConverter");
            class$org$apache$log4j$pattern$PropertiesPatternConverter = class26;
        } else
        {
            class26 = class$org$apache$log4j$pattern$PropertiesPatternConverter;
        }
        hashmap.put("properties", class26);
        Class class27;
        if (class$org$apache$log4j$pattern$SequenceNumberPatternConverter == null)
        {
            class27 = _mthclass$("org.apache.log4j.pattern.SequenceNumberPatternConverter");
            class$org$apache$log4j$pattern$SequenceNumberPatternConverter = class27;
        } else
        {
            class27 = class$org$apache$log4j$pattern$SequenceNumberPatternConverter;
        }
        hashmap.put("sn", class27);
        Class class28;
        if (class$org$apache$log4j$pattern$SequenceNumberPatternConverter == null)
        {
            class28 = _mthclass$("org.apache.log4j.pattern.SequenceNumberPatternConverter");
            class$org$apache$log4j$pattern$SequenceNumberPatternConverter = class28;
        } else
        {
            class28 = class$org$apache$log4j$pattern$SequenceNumberPatternConverter;
        }
        hashmap.put("sequenceNumber", class28);
        Class class29;
        if (class$org$apache$log4j$pattern$ThrowableInformationPatternConverter == null)
        {
            class29 = _mthclass$("org.apache.log4j.pattern.ThrowableInformationPatternConverter");
            class$org$apache$log4j$pattern$ThrowableInformationPatternConverter = class29;
        } else
        {
            class29 = class$org$apache$log4j$pattern$ThrowableInformationPatternConverter;
        }
        hashmap.put("throwable", class29);
        PATTERN_LAYOUT_RULES = new ReadOnlyMap(hashmap);
        HashMap hashmap1 = new HashMap(4);
        Class class30;
        if (class$org$apache$log4j$pattern$FileDatePatternConverter == null)
        {
            class30 = _mthclass$("org.apache.log4j.pattern.FileDatePatternConverter");
            class$org$apache$log4j$pattern$FileDatePatternConverter = class30;
        } else
        {
            class30 = class$org$apache$log4j$pattern$FileDatePatternConverter;
        }
        hashmap1.put("d", class30);
        Class class31;
        if (class$org$apache$log4j$pattern$FileDatePatternConverter == null)
        {
            class31 = _mthclass$("org.apache.log4j.pattern.FileDatePatternConverter");
            class$org$apache$log4j$pattern$FileDatePatternConverter = class31;
        } else
        {
            class31 = class$org$apache$log4j$pattern$FileDatePatternConverter;
        }
        hashmap1.put("date", class31);
        Class class32;
        if (class$org$apache$log4j$pattern$IntegerPatternConverter == null)
        {
            class32 = _mthclass$("org.apache.log4j.pattern.IntegerPatternConverter");
            class$org$apache$log4j$pattern$IntegerPatternConverter = class32;
        } else
        {
            class32 = class$org$apache$log4j$pattern$IntegerPatternConverter;
        }
        hashmap1.put("i", class32);
        Class class33;
        if (class$org$apache$log4j$pattern$IntegerPatternConverter == null)
        {
            class33 = _mthclass$("org.apache.log4j.pattern.IntegerPatternConverter");
            class$org$apache$log4j$pattern$IntegerPatternConverter = class33;
        } else
        {
            class33 = class$org$apache$log4j$pattern$IntegerPatternConverter;
        }
        hashmap1.put("index", class33);
        FILENAME_PATTERN_RULES = new ReadOnlyMap(hashmap1);
    }
}

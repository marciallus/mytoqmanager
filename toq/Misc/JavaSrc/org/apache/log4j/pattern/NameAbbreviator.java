// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.util.ArrayList;
import java.util.List;

public abstract class NameAbbreviator
{
    private static class DropElementAbbreviator extends NameAbbreviator
    {

        private final int count;

        public void abbreviate(int i, StringBuffer stringbuffer)
        {
            int j = count;
            int k = stringbuffer.indexOf(".", i);
            do
            {
label0:
                {
                    if (k != -1)
                    {
                        if (--j != 0)
                            break label0;
                        stringbuffer.delete(i, k + 1);
                    }
                    return;
                }
                k = stringbuffer.indexOf(".", k + 1);
            } while (true);
        }

        public DropElementAbbreviator(int i)
        {
            count = i;
        }
    }

    private static class MaxElementAbbreviator extends NameAbbreviator
    {

        private final int count;

        public void abbreviate(int i, StringBuffer stringbuffer)
        {
            int j = -1 + stringbuffer.length();
            String s = stringbuffer.toString();
            for (int k = count; k > 0;)
            {
                j = s.lastIndexOf(".", j - 1);
                if (j != -1 && j >= i)
                    k--;
                else
                    return;
            }

            stringbuffer.delete(i, j + 1);
        }

        public MaxElementAbbreviator(int i)
        {
            count = i;
        }
    }

    private static class NOPAbbreviator extends NameAbbreviator
    {

        public void abbreviate(int i, StringBuffer stringbuffer)
        {
        }

    }

    private static class PatternAbbreviator extends NameAbbreviator
    {

        private final PatternAbbreviatorFragment fragments[];

        public void abbreviate(int i, StringBuffer stringbuffer)
        {
            int j = i;
            for (int k = 0; k < -1 + fragments.length && j < stringbuffer.length(); k++)
                j = fragments[k].abbreviate(stringbuffer, j);

            PatternAbbreviatorFragment patternabbreviatorfragment = fragments[-1 + fragments.length];
            for (; j < stringbuffer.length() && j >= 0; j = patternabbreviatorfragment.abbreviate(stringbuffer, j));
        }

        public PatternAbbreviator(List list)
        {
            if (list.size() == 0)
            {
                throw new IllegalArgumentException("fragments must have at least one element");
            } else
            {
                fragments = new PatternAbbreviatorFragment[list.size()];
                list.toArray(fragments);
                return;
            }
        }
    }

    private static class PatternAbbreviatorFragment
    {

        private final int charCount;
        private final char ellipsis;

        public int abbreviate(StringBuffer stringbuffer, int i)
        {
            int j = stringbuffer.toString().indexOf(".", i);
            if (j != -1)
            {
                if (j - i > charCount)
                {
                    stringbuffer.delete(i + charCount, j);
                    j = i + charCount;
                    if (ellipsis != 0)
                    {
                        stringbuffer.insert(j, ellipsis);
                        j++;
                    }
                }
                j++;
            }
            return j;
        }

        public PatternAbbreviatorFragment(int i, char c)
        {
            charCount = i;
            ellipsis = c;
        }
    }


    private static final NameAbbreviator DEFAULT = new NOPAbbreviator();


    public static NameAbbreviator getAbbreviator(String s)
    {
        if (s.length() > 0)
        {
            String s1 = s.trim();
            if (s1.length() == 0)
                return DEFAULT;
            int i = s1.length();
            int j = 0;
            if (i > 0)
            {
                char c1 = s1.charAt(0);
                j = 0;
                if (c1 == '-')
                    j = 0 + 1;
                for (; j < s1.length() && s1.charAt(j) >= '0' && s1.charAt(j) <= '9'; j++);
            }
            if (j == s1.length())
            {
                int l1 = Integer.parseInt(s1);
                if (l1 >= 0)
                    return new MaxElementAbbreviator(l1);
                else
                    return new DropElementAbbreviator(-l1);
            }
            ArrayList arraylist = new ArrayList(5);
            int k = 0;
            do
            {
                if (k >= s1.length() || k < 0)
                    break;
                int l = k;
                int i1;
                if (s1.charAt(k) == '*')
                {
                    i1 = 0x7fffffff;
                    l++;
                } else
                if (s1.charAt(k) >= '0' && s1.charAt(k) <= '9')
                {
                    i1 = -48 + s1.charAt(k);
                    l++;
                } else
                {
                    i1 = 0;
                }
                int j1 = s1.length();
                char c = '\0';
                if (l < j1)
                {
                    c = s1.charAt(l);
                    if (c == '.')
                        c = '\0';
                }
                arraylist.add(new PatternAbbreviatorFragment(i1, c));
                int k1 = s1.indexOf(".", k);
                if (k1 == -1)
                    break;
                k = k1 + 1;
            } while (true);
            return new PatternAbbreviator(arraylist);
        } else
        {
            return DEFAULT;
        }
    }

    public static NameAbbreviator getDefaultAbbreviator()
    {
        return DEFAULT;
    }

    public abstract void abbreviate(int i, StringBuffer stringbuffer);

}

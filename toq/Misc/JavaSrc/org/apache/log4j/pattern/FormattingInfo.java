// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;


public final class FormattingInfo
{

    private static final FormattingInfo DEFAULT = new FormattingInfo(false, 0, 0x7fffffff);
    private static final char SPACES[] = {
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '
    };
    private final boolean leftAlign;
    private final int maxLength;
    private final int minLength;

    public FormattingInfo(boolean flag, int i, int j)
    {
        leftAlign = flag;
        minLength = i;
        maxLength = j;
    }

    public static FormattingInfo getDefault()
    {
        return DEFAULT;
    }

    public void format(int i, StringBuffer stringbuffer)
    {
        int j;
label0:
        {
            j = stringbuffer.length() - i;
            if (j > maxLength)
                stringbuffer.delete(i, stringbuffer.length() - maxLength);
            else
            if (j < minLength)
            {
                if (!leftAlign)
                    break label0;
                int l = stringbuffer.length();
                stringbuffer.setLength(i + minLength);
                for (int i1 = l; i1 < stringbuffer.length(); i1++)
                    stringbuffer.setCharAt(i1, ' ');

            }
            return;
        }
        int k;
        for (k = minLength - j; k > 8; k -= 8)
            stringbuffer.insert(i, SPACES);

        stringbuffer.insert(i, SPACES, 0, k);
    }

    public int getMaxLength()
    {
        return maxLength;
    }

    public int getMinLength()
    {
        return minLength;
    }

    public boolean isLeftAligned()
    {
        return leftAlign;
    }

}

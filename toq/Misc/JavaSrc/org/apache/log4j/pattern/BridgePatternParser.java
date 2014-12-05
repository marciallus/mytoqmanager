// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.helpers.PatternConverter;
import org.apache.log4j.helpers.PatternParser;

// Referenced classes of package org.apache.log4j.pattern:
//            BridgePatternConverter

public final class BridgePatternParser extends PatternParser
{

    public BridgePatternParser(String s)
    {
        super(s);
    }

    public PatternConverter parse()
    {
        return new BridgePatternConverter(pattern);
    }
}

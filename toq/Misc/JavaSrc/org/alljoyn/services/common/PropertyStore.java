// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import java.util.Map;

// Referenced classes of package org.alljoyn.services.common:
//            PropertyStoreException

public interface PropertyStore
{
    public static final class Filter extends Enum
    {

        private static final Filter $VALUES[];
        public static final Filter ANNOUNCE;
        public static final Filter READ;
        public static final Filter WRITE;

        public static Filter valueOf(String s)
        {
            return (Filter)Enum.valueOf(org/alljoyn/services/common/PropertyStore$Filter, s);
        }

        public static Filter[] values()
        {
            return (Filter[])$VALUES.clone();
        }

        static 
        {
            ANNOUNCE = new Filter("ANNOUNCE", 0);
            READ = new Filter("READ", 1);
            WRITE = new Filter("WRITE", 2);
            Filter afilter[] = new Filter[3];
            afilter[0] = ANNOUNCE;
            afilter[1] = READ;
            afilter[2] = WRITE;
            $VALUES = afilter;
        }

        private Filter(String s, int i)
        {
            super(s, i);
        }
    }


    public abstract void readAll(String s, Filter filter, Map map)
        throws PropertyStoreException;

    public abstract void reset(String s, String s1)
        throws PropertyStoreException;

    public abstract void resetAll()
        throws PropertyStoreException;

    public abstract void update(String s, String s1, Object obj)
        throws PropertyStoreException;
}

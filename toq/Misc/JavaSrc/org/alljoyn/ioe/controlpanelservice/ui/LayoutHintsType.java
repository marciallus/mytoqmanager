// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


public final class LayoutHintsType extends Enum
{

    private static final LayoutHintsType $VALUES[];
    public static final LayoutHintsType HORIZONTAL_LINEAR;
    public static final LayoutHintsType VERTICAL_LINEAR;
    public final short ID;

    private LayoutHintsType(String s, int i, short word0)
    {
        super(s, i);
        ID = word0;
    }

    public static LayoutHintsType getEnumById(short word0)
    {
        LayoutHintsType alayouthintstype[] = values();
        int i = alayouthintstype.length;
        int j = 0;
        do
        {
label0:
            {
                LayoutHintsType layouthintstype = null;
                if (j < i)
                {
                    LayoutHintsType layouthintstype1 = alayouthintstype[j];
                    if (word0 != layouthintstype1.ID)
                        break label0;
                    layouthintstype = layouthintstype1;
                }
                return layouthintstype;
            }
            j++;
        } while (true);
    }

    public static LayoutHintsType valueOf(String s)
    {
        return (LayoutHintsType)Enum.valueOf(org/alljoyn/ioe/controlpanelservice/ui/LayoutHintsType, s);
    }

    public static LayoutHintsType[] values()
    {
        return (LayoutHintsType[])$VALUES.clone();
    }

    static 
    {
        VERTICAL_LINEAR = new LayoutHintsType("VERTICAL_LINEAR", 0, (short)1);
        HORIZONTAL_LINEAR = new LayoutHintsType("HORIZONTAL_LINEAR", 1, (short)2);
        LayoutHintsType alayouthintstype[] = new LayoutHintsType[2];
        alayouthintstype[0] = VERTICAL_LINEAR;
        alayouthintstype[1] = HORIZONTAL_LINEAR;
        $VALUES = alayouthintstype;
    }
}

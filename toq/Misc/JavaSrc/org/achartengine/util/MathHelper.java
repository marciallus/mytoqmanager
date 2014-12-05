// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.util;

import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class MathHelper
{

    private static final NumberFormat FORMAT = NumberFormat.getNumberInstance();
    public static final double NULL_VALUE = 1.7976931348623157E+308D;

    private MathHelper()
    {
    }

    private static double[] computeLabels(double d, double d1, int i)
    {
        if (Math.abs(d - d1) < 1.0000000116860974E-007D)
            return (new double[] {
                d, d, 0.0D
            });
        double d2 = d;
        double d3 = d1;
        int j = d2 != d3;
        boolean flag = false;
        if (j > 0)
        {
            flag = true;
            double d7 = d2;
            d2 = d3;
            d3 = d7;
        }
        double d4 = roundUp(Math.abs(d2 - d3) / (double)i);
        double d5 = d4 * Math.ceil(d2 / d4);
        double d6 = d4 * Math.floor(d3 / d4);
        if (flag)
        {
            double ad[] = new double[3];
            ad[0] = d6;
            ad[1] = d5;
            ad[2] = -1D * d4;
            return ad;
        } else
        {
            return (new double[] {
                d5, d6, d4
            });
        }
    }

    public static List getLabels(double d, double d1, int i)
    {
        ArrayList arraylist = new ArrayList();
        if (i > 0) goto _L2; else goto _L1
_L1:
        return arraylist;
_L2:
        double ad[];
        int j;
        int k;
        FORMAT.setMaximumFractionDigits(5);
        ad = computeLabels(d, d1, i);
        j = 1 + (int)((ad[1] - ad[0]) / ad[2]);
        k = 0;
_L4:
        if (k >= j) goto _L1; else goto _L3
_L3:
        double d2 = ad[0] + (double)k * ad[2];
        double d3 = FORMAT.parse(FORMAT.format(d2)).doubleValue();
        d2 = d3;
_L5:
        arraylist.add(Double.valueOf(d2));
        k++;
          goto _L4
          goto _L1
        ParseException parseexception;
        parseexception;
          goto _L5
    }

    public static double[] minmax(List list)
    {
        if (list.size() == 0)
            return new double[2];
        double d = ((Double)list.get(0)).doubleValue();
        double d1 = d;
        int i = list.size();
        for (int j = 1; j < i; j++)
        {
            double d2 = ((Double)list.get(j)).doubleValue();
            d = Math.min(d, d2);
            d1 = Math.max(d1, d2);
        }

        return (new double[] {
            d, d1
        });
    }

    private static double roundUp(double d)
    {
        int i = (int)Math.floor(Math.log10(d));
        double d1 = d * Math.pow(10D, -i);
        if (d1 > 5D)
            d1 = 10D;
        else
        if (d1 > 2D)
            d1 = 5D;
        else
        if (d1 > 1.0D)
            d1 = 2D;
        return d1 * Math.pow(10D, i);
    }

}

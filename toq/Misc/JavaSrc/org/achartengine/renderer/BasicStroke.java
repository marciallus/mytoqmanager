// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.renderer;

import java.io.Serializable;

public class BasicStroke
    implements Serializable
{

    public static final BasicStroke DASHED;
    public static final BasicStroke DOTTED;
    public static final BasicStroke SOLID;
    private android.graphics.Paint.Cap mCap;
    private float mIntervals[];
    private android.graphics.Paint.Join mJoin;
    private float mMiter;
    private float mPhase;

    public BasicStroke(android.graphics.Paint.Cap cap, android.graphics.Paint.Join join, float f, float af[], float f1)
    {
        mCap = cap;
        mJoin = join;
        mMiter = f;
        mIntervals = af;
    }

    public android.graphics.Paint.Cap getCap()
    {
        return mCap;
    }

    public float[] getIntervals()
    {
        return mIntervals;
    }

    public android.graphics.Paint.Join getJoin()
    {
        return mJoin;
    }

    public float getMiter()
    {
        return mMiter;
    }

    public float getPhase()
    {
        return mPhase;
    }

    static 
    {
        SOLID = new BasicStroke(android.graphics.Paint.Cap.BUTT, android.graphics.Paint.Join.MITER, 4F, null, 0.0F);
        DASHED = new BasicStroke(android.graphics.Paint.Cap.ROUND, android.graphics.Paint.Join.BEVEL, 10F, new float[] {
            10F, 10F
        }, 1.0F);
        DOTTED = new BasicStroke(android.graphics.Paint.Cap.ROUND, android.graphics.Paint.Join.BEVEL, 5F, new float[] {
            2.0F, 10F
        }, 1.0F);
    }
}

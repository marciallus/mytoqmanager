// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer;

import java.awt.Adjustable;
import java.awt.event.AdjustmentEvent;
import java.awt.event.AdjustmentListener;

public class TrackingAdjustmentListener
    implements AdjustmentListener
{

    protected int _lastMaximum;

    public TrackingAdjustmentListener()
    {
        _lastMaximum = -1;
    }

    public void adjustmentValueChanged(AdjustmentEvent adjustmentevent)
    {
        Adjustable adjustable = adjustmentevent.getAdjustable();
        int i = adjustable.getMaximum();
        if (adjustable.getMaximum() == _lastMaximum)
            return;
        if (adjustable.getValue() + adjustable.getVisibleAmount() + adjustable.getUnitIncrement() >= _lastMaximum)
            adjustable.setValue(adjustable.getMaximum());
        _lastMaximum = i;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import org.achartengine.chart.AbstractChart;

// Referenced classes of package org.achartengine:
//            GraphicalView

public class GraphicalActivity extends Activity
{

    private AbstractChart mChart;
    private GraphicalView mView;


    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getIntent().getExtras();
        mChart = (AbstractChart)bundle1.getSerializable("chart");
        mView = new GraphicalView(this, mChart);
        String s = bundle1.getString("title");
        if (s == null)
            requestWindowFeature(1);
        else
        if (s.length() > 0)
            setTitle(s);
        setContentView(mView);
    }
}

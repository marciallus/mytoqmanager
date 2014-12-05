// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ambient;

import com.qualcomm.toq.base.utils.Log;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.qualcomm.toq.smartwatch.ambient:
//            IAmbientInfo

public class AmbientData
{

    private ArrayList ambientInfoList;

    public AmbientData()
    {
        ambientInfoList = null;
        ambientInfoList = new ArrayList();
    }

    public void addAmbientDataItem(IAmbientInfo iambientinfo)
    {
        ambientInfoList.add(iambientinfo);
    }

    public ArrayList getAmbientInfoList()
    {
        return ambientInfoList;
    }

    public void removeAmbientDataItem(int i)
    {
        if (i >= 0 && ambientInfoList.size() > i)
        {
            ambientInfoList.remove(i);
            return;
        } else
        {
            Log.d("Ambient", (new StringBuilder()).append("Invalid index list size=").append(ambientInfoList.size()).append(" index=").append(i).toString());
            return;
        }
    }

    public void updateAmbientDataList(ArrayList arraylist)
    {
        ambientInfoList.clear();
        int i = arraylist.size();
        Log.d("Ambient", (new StringBuilder()).append(" data list size=").append(i).toString());
        IAmbientInfo iambientinfo;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); ambientInfoList.add(iambientinfo))
            iambientinfo = (IAmbientInfo)iterator.next();

    }
}

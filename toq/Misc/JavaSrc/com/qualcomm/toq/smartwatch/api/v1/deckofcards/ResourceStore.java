// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards;

import android.os.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource.Resource;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards:
//            ResourceStoreException

public class ResourceStore
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public ResourceStore createFromParcel(Parcel parcel)
        {
            return new ResourceStore(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public ResourceStore[] newArray(int i)
        {
            return new ResourceStore[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    protected Bundle bundle;
    private HashMap timestampMap;

    protected ResourceStore()
    {
        bundle = new Bundle();
        timestampMap = new HashMap();
    }

    protected ResourceStore(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    public String addResource(Resource resource)
    {
        this;
        JVM INSTR monitorenter ;
        if (resource != null)
            break MISSING_BLOCK_LABEL_23;
        throw new IllegalArgumentException("resource must not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        String s;
        s = resource.getId();
        bundle.putParcelable(s, resource);
        timestampMap.put(s, Long.valueOf(System.currentTimeMillis()));
        this;
        JVM INSTR monitorexit ;
        return s;
    }

    public String[] addResources(Resource aresource[])
    {
        this;
        JVM INSTR monitorenter ;
        if (aresource == null)
            break MISSING_BLOCK_LABEL_11;
        if (aresource.length != 0)
            break MISSING_BLOCK_LABEL_26;
        throw new IllegalArgumentException("resources must not be null or zero length");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        i = aresource.length;
        int j = 0;
_L2:
        if (j < i)
            break MISSING_BLOCK_LABEL_73;
        String as[] = (String[])arraylist.toArray(new String[arraylist.size()]);
        this;
        JVM INSTR monitorexit ;
        return as;
        arraylist.add(addResource(aresource[j]));
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        bundle.clear();
        timestampMap.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsId(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        boolean flag = bundle.containsKey(s);
        flag1 = flag;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
            return true;
        if (obj != null && obj.getClass() == getClass())
            return BundleUtil.equals(bundle, ((ResourceStore)obj).bundle) && timestampMap.equals(((ResourceStore)obj).timestampMap);
        else
            return false;
    }

    public Resource getResource(String s)
        throws ResourceStoreException
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
            break MISSING_BLOCK_LABEL_21;
        throw new IllegalArgumentException("id must not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Resource resource;
        if (!bundle.containsKey(s))
            throw new ResourceStoreException((new StringBuilder("No resource found for id: ")).append(s).toString());
        resource = (Resource)bundle.getParcelable(s);
        this;
        JVM INSTR monitorexit ;
        return resource;
    }

    public Resource[] getResources(String as[])
        throws ResourceStoreException
    {
        this;
        JVM INSTR monitorenter ;
        if (as == null)
            break MISSING_BLOCK_LABEL_11;
        if (as.length != 0)
            break MISSING_BLOCK_LABEL_26;
        throw new IllegalArgumentException("ids must not be null or zero length");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        i = as.length;
        int j = 0;
_L2:
        if (j < i)
            break MISSING_BLOCK_LABEL_73;
        Resource aresource[] = (Resource[])arraylist.toArray(new Resource[arraylist.size()]);
        this;
        JVM INSTR monitorexit ;
        return aresource;
        arraylist.add(getResource(as[j]));
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Resource[] getResourcesAddedSinceTimeMillis(long l)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = timestampMap.keySet().iterator();
_L1:
        Resource aresource[];
        if (iterator.hasNext())
            break MISSING_BLOCK_LABEL_59;
        aresource = (Resource[])arraylist.toArray(new Resource[arraylist.size()]);
        this;
        JVM INSTR monitorexit ;
        return aresource;
        String s = (String)iterator.next();
        if (((Long)timestampMap.get(s)).longValue() > l)
            arraylist.add((Resource)bundle.getParcelable(s));
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public int hashCode()
    {
        return 37 * (37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle)) + timestampMap.hashCode();
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore.getClassLoader());
        timestampMap = (HashMap)parcel.readSerializable();
    }

    public void removeResource(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
            break MISSING_BLOCK_LABEL_21;
        throw new IllegalArgumentException("id must not be null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        bundle.remove(s);
        timestampMap.remove(s);
        this;
        JVM INSTR monitorexit ;
    }

    public void removeResources(String as[])
    {
        this;
        JVM INSTR monitorenter ;
        if (as == null)
            break MISSING_BLOCK_LABEL_11;
        if (as.length != 0)
            break MISSING_BLOCK_LABEL_26;
        throw new IllegalArgumentException("ids must not be null or zero length");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i = as.length;
        int j = 0;
_L2:
        if (j >= i)
            return;
        removeResource(as[j]);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String toString()
    {
        return (new StringBuilder()).append("[").append(BundleUtil.toString(bundle)).append(",").append("timestampMap=").append(timestampMap).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeBundle(bundle);
        parcel.writeSerializable(timestampMap);
    }

}

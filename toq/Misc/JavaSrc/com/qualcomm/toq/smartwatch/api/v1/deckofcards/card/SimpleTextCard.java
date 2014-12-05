// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.ResourceStore;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.ResourceStoreException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource.CardImage;
import java.util.ArrayList;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card:
//            Card

public class SimpleTextCard extends Card
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public SimpleTextCard createFromParcel(Parcel parcel)
        {
            return new SimpleTextCard(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public SimpleTextCard[] newArray(int i)
        {
            return new SimpleTextCard[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;

    protected SimpleTextCard(Parcel parcel)
    {
        super(parcel);
    }

    public SimpleTextCard(String s)
    {
        this(s, null, 0L, null, null);
    }

    public SimpleTextCard(String s, String s1, long l, String s2, String as[])
    {
        super(s);
        setHeaderText(s1);
        setTimeMillis(l);
        setTitleText(s2);
        setMessageText(as);
        setInfoText(null);
        setShowDivider(false);
    }

    private String delimit(String s)
    {
        return s.replace("\r", "").replace("\f", "").replaceAll("\\\\+\"", "\"").replaceAll("\\\\+'", "'").replace("\n", "\\n").replace("\"", "\\\"").replace("'", "\\'").trim();
    }

    private ArrayList delimit(String as[])
    {
        ArrayList arraylist = new ArrayList();
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
                return arraylist;
            String s = as[j];
            if (!TextUtils.isEmpty(s))
            {
                String s1 = delimit(s);
                if (!TextUtils.isEmpty(s1))
                    arraylist.add(s1);
            }
            j++;
        } while (true);
    }

    public CardImage getCardImage(ResourceStore resourcestore)
        throws ResourceStoreException
    {
        if (resourcestore == null)
            throw new IllegalArgumentException("resourceStore must not be null");
        String s = bundle.getString("cardImageId");
        if (s == null)
            return null;
        com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource.Resource resource = resourcestore.getResource(s);
        if (!(resource instanceof CardImage))
            throw new ResourceStoreException((new StringBuilder("Retrieved resource is the wrong type: ")).append(resource.getClass().getName()).toString());
        else
            return (CardImage)resource;
    }

    public String getCardImageId()
    {
        return bundle.getString("cardImageId");
    }

    public String getHeaderText()
    {
        return bundle.getString("headerText");
    }

    public String getInfoText()
    {
        return bundle.getString("infoText");
    }

    public String[] getMessageText()
    {
        ArrayList arraylist = bundle.getStringArrayList("messageText");
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public long getTimeMillis()
    {
        return bundle.getLong("timeMillis");
    }

    public String getTitleText()
    {
        return bundle.getString("titleText");
    }

    public boolean isShowDivider()
    {
        return bundle.getBoolean("isShowDivider");
    }

    public void setCardImage(ResourceStore resourcestore, CardImage cardimage)
    {
        if (cardimage == null)
        {
            bundle.remove("cardImageId");
            return;
        }
        if (resourcestore == null)
        {
            throw new IllegalArgumentException("resourceStore must not be null");
        } else
        {
            bundle.putString("cardImageId", resourcestore.addResource(cardimage));
            return;
        }
    }

    public void setHeaderText(String s)
    {
        if (s != null)
        {
            bundle.putString("headerText", delimit(s));
            return;
        } else
        {
            bundle.putString("headerText", "");
            return;
        }
    }

    public void setInfoText(String s)
    {
        if (s != null)
        {
            bundle.putString("infoText", delimit(s));
            return;
        } else
        {
            bundle.putString("infoText", "");
            return;
        }
    }

    public void setMessageText(String as[])
    {
        ArrayList arraylist;
        if (as != null)
            arraylist = delimit(as);
        else
            arraylist = new ArrayList();
        bundle.putStringArrayList("messageText", arraylist);
    }

    public void setShowDivider(boolean flag)
    {
        bundle.putBoolean("isShowDivider", flag);
    }

    public void setTimeMillis(long l)
    {
        bundle.putLong("timeMillis", l);
    }

    public void setTitleText(String s)
    {
        if (s != null)
        {
            bundle.putString("titleText", delimit(s));
            return;
        } else
        {
            bundle.putString("titleText", "");
            return;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("SimpleTextCard[").append(super.toString()).append("]").toString();
    }

}

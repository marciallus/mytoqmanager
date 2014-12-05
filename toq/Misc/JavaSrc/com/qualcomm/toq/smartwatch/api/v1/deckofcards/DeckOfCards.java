// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards;

import android.os.*;
import android.text.TextUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.ListCard;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource.DeckOfCardsLauncherIcon;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards:
//            ResourceStoreException, ResourceStore

public class DeckOfCards
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public DeckOfCards createFromParcel(Parcel parcel)
        {
            return new DeckOfCards(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public DeckOfCards[] newArray(int i)
        {
            return new DeckOfCards[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    protected Bundle bundle;

    protected DeckOfCards(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    protected DeckOfCards(String s, String s1)
    {
        this(s, s1, new ListCard());
    }

    protected DeckOfCards(String s, String s1, ListCard listcard)
    {
        bundle = new Bundle();
        if (TextUtils.isEmpty(s))
            throw new IllegalArgumentException("id must not be null or zero length");
        if (TextUtils.isEmpty(s1))
            throw new IllegalArgumentException("name must not be null or zero length");
        if (listcard == null)
        {
            throw new IllegalArgumentException("listCard must not be null");
        } else
        {
            bundle.putString("id", s);
            bundle.putString("name", s1);
            bundle.putParcelable("listCard", listcard);
            bundle.putStringArray("resourceIds", new String[0]);
            return;
        }
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
            return BundleUtil.equals(bundle, ((DeckOfCards)obj).bundle);
        else
            return false;
    }

    public String getId()
    {
        return bundle.getString("id");
    }

    public String[] getLauncherIconIds()
    {
        String as[] = bundle.getStringArray("resourceIds");
        if (as == null || as.length == 0)
            as = new String[0];
        return as;
    }

    public DeckOfCardsLauncherIcon[] getLauncherIcons(ResourceStore resourcestore)
        throws ResourceStoreException
    {
        if (resourcestore == null)
            throw new IllegalArgumentException("resourceStore must not be null");
        String as[] = bundle.getStringArray("resourceIds");
        DeckOfCardsLauncherIcon adeckofcardslaunchericon[];
        if (as != null && as.length != 0)
        {
            com.qualcomm.toq.smartwatch.api.v1.deckofcards.resource.Resource aresource[] = resourcestore.getResources(as);
            adeckofcardslaunchericon = new DeckOfCardsLauncherIcon[aresource.length];
            for (int i = 0; i < aresource.length; i++)
            {
                if (!(aresource[i] instanceof DeckOfCardsLauncherIcon))
                    throw new ResourceStoreException((new StringBuilder("Retrieved resource is the wrong type: ")).append(aresource[i].getClass().getName()).toString());
                adeckofcardslaunchericon[i] = (DeckOfCardsLauncherIcon)aresource[i];
            }

        } else
        {
            adeckofcardslaunchericon = new DeckOfCardsLauncherIcon[0];
        }
        return adeckofcardslaunchericon;
    }

    public ListCard getListCard()
    {
        return (ListCard)bundle.getParcelable("listCard");
    }

    public String getName()
    {
        return bundle.getString("name");
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards.getClassLoader());
    }

    public void setLauncherIcons(ResourceStore resourcestore, DeckOfCardsLauncherIcon adeckofcardslaunchericon[])
    {
        if (adeckofcardslaunchericon != null && adeckofcardslaunchericon.length != 0)
        {
            if (resourcestore == null)
            {
                throw new IllegalArgumentException("resourceStore must not be null");
            } else
            {
                bundle.putStringArray("resourceIds", resourcestore.addResources(adeckofcardslaunchericon));
                return;
            }
        } else
        {
            bundle.remove("resourceIds");
            return;
        }
    }

    public String toString()
    {
        return BundleUtil.toString(bundle);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeBundle(bundle);
    }

}

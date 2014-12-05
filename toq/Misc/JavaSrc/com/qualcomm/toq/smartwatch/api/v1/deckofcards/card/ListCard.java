// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card;

import android.os.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card:
//            Card

public class ListCard
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public ListCard createFromParcel(Parcel parcel)
        {
            return new ListCard(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public ListCard[] newArray(int i)
        {
            return new ListCard[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    public static final int MAX_CARDS = 20;
    protected Bundle bundle;

    public ListCard()
    {
        bundle = new Bundle();
        bundle.putParcelableArrayList("childCards", new ArrayList());
    }

    protected ListCard(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    private ArrayList getChildCards()
    {
        return bundle.getParcelableArrayList("childCards");
    }

    private boolean isUniqueId(Card card)
    {
        Iterator iterator1 = getChildCards().iterator();
        do
            if (!iterator1.hasNext())
                return true;
        while (!((Card)iterator1.next()).getId().equals(card.getId()));
        return false;
    }

    public void add(int i, Card card)
    {
        if (card == null)
            throw new IllegalArgumentException("card must not be null");
        if (i >= 0 && i <= size())
        {
            if (getChildCards().size() == 20)
                throw new IllegalArgumentException("list card already contains maximum number of cards");
            if (!isUniqueId(card))
            {
                throw new IllegalArgumentException((new StringBuilder("list already contains a card with the same id: ")).append(card.getId()).toString());
            } else
            {
                getChildCards().add(i, card);
                return;
            }
        } else
        {
            throw new IndexOutOfBoundsException("index out of range");
        }
    }

    public void add(Card card)
    {
        if (card == null)
            throw new IllegalArgumentException("card must not be null");
        if (getChildCards().size() == 20)
            throw new IllegalArgumentException("list card already contains maximum number of cards");
        if (!isUniqueId(card))
        {
            throw new IllegalArgumentException((new StringBuilder("list already contains a card with the same id: ")).append(card.getId()).toString());
        } else
        {
            getChildCards().add(card);
            return;
        }
    }

    public Card childAtIndex(int i)
    {
        if (i >= 0 && i < size())
            return (Card)getChildCards().get(i);
        else
            throw new IndexOutOfBoundsException("index out of range");
    }

    public void clear()
    {
        getChildCards().clear();
    }

    public boolean contains(Card card)
    {
        if (card == null)
            throw new IllegalArgumentException("card must not be null");
        else
            return getChildCards().contains(card);
    }

    public boolean contains(String s)
    {
        if (s == null)
            throw new IllegalArgumentException("id must not be null");
        return get(s) != null;
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
            return BundleUtil.equals(bundle, ((ListCard)obj).bundle);
        else
            return false;
    }

    public Card get(int i)
    {
        if (i >= 0 && i < size())
            return (Card)getChildCards().get(i);
        else
            throw new IndexOutOfBoundsException("index out of range");
    }

    public Card get(String s)
    {
        if (s == null)
            throw new IllegalArgumentException("id must not be null");
        Iterator iterator1 = getChildCards().iterator();
        Card card;
        do
        {
            if (!iterator1.hasNext())
                return null;
            card = (Card)iterator1.next();
        } while (!card.getId().equals(s));
        return card;
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    public int indexOfChild(Card card)
    {
        if (card == null)
            throw new IllegalArgumentException("card must not be null");
        else
            return getChildCards().indexOf(card);
    }

    public boolean isEmpty()
    {
        return getChildCards().size() == 0;
    }

    public boolean isFull()
    {
        return getChildCards().size() == 20;
    }

    public Iterator iterator()
    {
        return getChildCards().iterator();
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard.getClassLoader());
    }

    public Card remove(int i)
    {
        if (i >= 0 && i < size())
            return (Card)getChildCards().remove(i);
        else
            throw new IndexOutOfBoundsException("index out of range");
    }

    public Card remove(String s)
    {
        if (s == null)
            throw new IllegalArgumentException("id must not be null");
        Card card = get(s);
        if (card != null)
            return remove(indexOfChild(card));
        else
            return null;
    }

    public boolean remove(Card card)
    {
        if (card == null)
            throw new IllegalArgumentException("card must not be null");
        else
            return getChildCards().remove(card);
    }

    public int size()
    {
        return getChildCards().size();
    }

    public String toString()
    {
        return (new StringBuilder()).append("ListCard[").append("childCards[").append(getChildCards().size()).append("]=").append(getChildCards()).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeBundle(bundle);
    }

}

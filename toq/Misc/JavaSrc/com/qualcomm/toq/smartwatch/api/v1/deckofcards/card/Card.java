// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card;

import android.os.*;
import android.text.TextUtils;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.BundleUtil;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.api.v1.deckofcards.card:
//            MenuOption

public class Card
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Card createFromParcel(Parcel parcel)
        {
            return new Card(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Card[] newArray(int i)
        {
            return new Card[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    protected Bundle bundle;

    protected Card(Parcel parcel)
    {
        bundle = new Bundle();
        readFromParcel(parcel);
    }

    protected Card(String s)
    {
        bundle = new Bundle();
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("id must not be null or zero length");
        } else
        {
            bundle.putString("id", s);
            bundle.putBoolean("isReceivingEvents", false);
            bundle.putStringArrayList("menuOptions", new ArrayList());
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
            return BundleUtil.equals(bundle, ((Card)obj).bundle);
        else
            return false;
    }

    public String getId()
    {
        return bundle.getString("id");
    }

    public MenuOption[] getMenuOptionObjs()
    {
        ArrayList arraylist = bundle.getParcelableArrayList("menuOptionObjs");
        if (arraylist == null)
        {
            ArrayList arraylist1 = bundle.getStringArrayList("menuOptions");
            if (arraylist1 != null)
            {
                ArrayList arraylist2 = new ArrayList();
                Iterator iterator = arraylist1.iterator();
                do
                {
                    if (!iterator.hasNext())
                        return (MenuOption[])arraylist2.toArray(new MenuOption[arraylist2.size()]);
                    arraylist2.add(new MenuOption((String)iterator.next()));
                } while (true);
            } else
            {
                return new MenuOption[0];
            }
        } else
        {
            return (MenuOption[])arraylist.toArray(new MenuOption[arraylist.size()]);
        }
    }

    public String[] getMenuOptions()
    {
        List list = Arrays.asList(getMenuOptionObjs());
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
                return (String[])arraylist.toArray(new String[arraylist.size()]);
            arraylist.add(((MenuOption)iterator.next()).getName());
        } while (true);
    }

    public int hashCode()
    {
        return 37 * (185 + getClass().getName().hashCode()) + BundleUtil.hashCode(bundle);
    }

    public boolean isReceivingEvents()
    {
        return bundle.getBoolean("isReceivingEvents");
    }

    protected void readFromParcel(Parcel parcel)
    {
        bundle = parcel.readBundle(com/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card.getClassLoader());
    }

    public void setMenuOptionObjs(MenuOption amenuoption[])
    {
        if (amenuoption != null && amenuoption.length != 0)
        {
            ArrayList arraylist = new ArrayList(Arrays.asList(amenuoption));
            Iterator iterator = arraylist.iterator();
            do
                if (!iterator.hasNext())
                {
                    bundle.putParcelableArrayList("menuOptionObjs", arraylist);
                    return;
                }
            while ((MenuOption)iterator.next() != null);
            throw new IllegalArgumentException("A menu option must not be null");
        } else
        {
            bundle.putParcelableArrayList("menuOptionObjs", new ArrayList());
            return;
        }
    }

    public void setMenuOptions(String as[])
    {
        if (as != null && as.length != 0)
        {
            List list = Arrays.asList(as);
            ArrayList arraylist = new ArrayList();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    setMenuOptionObjs((MenuOption[])arraylist.toArray(new MenuOption[arraylist.size()]));
                    return;
                }
                arraylist.add(new MenuOption((String)iterator.next()));
            } while (true);
        } else
        {
            setMenuOptionObjs(null);
            return;
        }
    }

    public void setReceivingEvents(boolean flag)
    {
        bundle.putBoolean("isReceivingEvents", flag);
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

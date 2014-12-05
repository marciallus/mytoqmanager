// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.util.StringTokenizer;
import org.apache.log4j.Level;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package org.apache.log4j.chainsaw:
//            EventDetails, MyTableModel

class XMLFileHandler extends DefaultHandler
{

    private static final String TAG_EVENT = "log4j:event";
    private static final String TAG_LOCATION_INFO = "log4j:locationInfo";
    private static final String TAG_MESSAGE = "log4j:message";
    private static final String TAG_NDC = "log4j:NDC";
    private static final String TAG_THROWABLE = "log4j:throwable";
    private final StringBuffer mBuf = new StringBuffer();
    private String mCategoryName;
    private Level mLevel;
    private String mLocationDetails;
    private String mMessage;
    private final MyTableModel mModel;
    private String mNDC;
    private int mNumEvents;
    private String mThreadName;
    private String mThrowableStrRep[];
    private long mTimeStamp;

    XMLFileHandler(MyTableModel mytablemodel)
    {
        mModel = mytablemodel;
    }

    private void addEvent()
    {
        mModel.addEvent(new EventDetails(mTimeStamp, mLevel, mCategoryName, mNDC, mThreadName, mMessage, mThrowableStrRep, mLocationDetails));
        mNumEvents = 1 + mNumEvents;
    }

    private void resetData()
    {
        mTimeStamp = 0L;
        mLevel = null;
        mCategoryName = null;
        mNDC = null;
        mThreadName = null;
        mMessage = null;
        mThrowableStrRep = null;
        mLocationDetails = null;
    }

    public void characters(char ac[], int i, int j)
    {
        mBuf.append(String.valueOf(ac, i, j));
    }

    public void endElement(String s, String s1, String s2)
    {
        if ("log4j:event".equals(s2))
        {
            addEvent();
            resetData();
        } else
        {
            if ("log4j:NDC".equals(s2))
            {
                mNDC = mBuf.toString();
                return;
            }
            if ("log4j:message".equals(s2))
            {
                mMessage = mBuf.toString();
                return;
            }
            if ("log4j:throwable".equals(s2))
            {
                StringTokenizer stringtokenizer = new StringTokenizer(mBuf.toString(), "\n\t");
                mThrowableStrRep = new String[stringtokenizer.countTokens()];
                if (mThrowableStrRep.length > 0)
                {
                    mThrowableStrRep[0] = stringtokenizer.nextToken();
                    for (int i = 1; i < mThrowableStrRep.length; i++)
                        mThrowableStrRep[i] = "\t" + stringtokenizer.nextToken();

                }
            }
        }
    }

    int getNumEvents()
    {
        return mNumEvents;
    }

    public void startDocument()
        throws SAXException
    {
        mNumEvents = 0;
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
    {
        mBuf.setLength(0);
        if ("log4j:event".equals(s2))
        {
            mThreadName = attributes.getValue("thread");
            mTimeStamp = Long.parseLong(attributes.getValue("timestamp"));
            mCategoryName = attributes.getValue("logger");
            mLevel = Level.toLevel(attributes.getValue("level"));
        } else
        if ("log4j:locationInfo".equals(s2))
        {
            mLocationDetails = attributes.getValue("class") + "." + attributes.getValue("method") + "(" + attributes.getValue("file") + ":" + attributes.getValue("line") + ")";
            return;
        }
    }
}

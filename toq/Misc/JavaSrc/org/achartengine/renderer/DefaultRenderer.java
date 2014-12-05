// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.renderer;

import android.graphics.Typeface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package org.achartengine.renderer:
//            SimpleSeriesRenderer

public class DefaultRenderer
    implements Serializable
{

    public static final int BACKGROUND_COLOR = 0xff000000;
    public static final int NO_COLOR = 0;
    private static final Typeface REGULAR_TEXT_FONT;
    public static final int TEXT_COLOR = 0xffcccccc;
    private boolean mAntialiasing;
    private boolean mApplyBackgroundColor;
    private int mAxesColor;
    private int mBackgroundColor;
    private String mChartTitle;
    private float mChartTitleTextSize;
    private boolean mClickEnabled;
    private boolean mDisplayValues;
    private boolean mExternalZoomEnabled;
    private boolean mFitLegend;
    private boolean mInScroll;
    private int mLabelsColor;
    private float mLabelsTextSize;
    private int mLegendHeight;
    private float mLegendTextSize;
    private int mMargins[] = {
        20, 30, 10, 20
    };
    private float mOriginalScale;
    private boolean mPanEnabled;
    private List mRenderers;
    private float mScale;
    private boolean mShowAxes;
    private boolean mShowCustomTextGrid;
    private boolean mShowGridX;
    private boolean mShowGridY;
    private boolean mShowLabels;
    private boolean mShowLegend;
    private float mStartAngle;
    private Typeface mTextTypeface;
    private String mTextTypefaceName;
    private int mTextTypefaceStyle;
    private boolean mZoomButtonsVisible;
    private boolean mZoomEnabled;
    private float mZoomRate;
    private int selectableBuffer;

    public DefaultRenderer()
    {
        mChartTitle = "";
        mChartTitleTextSize = 15F;
        mTextTypefaceName = REGULAR_TEXT_FONT.toString();
        mTextTypefaceStyle = 0;
        mShowAxes = true;
        mAxesColor = 0xffcccccc;
        mShowLabels = true;
        mLabelsColor = 0xffcccccc;
        mLabelsTextSize = 10F;
        mShowLegend = true;
        mLegendTextSize = 12F;
        mFitLegend = false;
        mShowGridX = false;
        mShowGridY = false;
        mShowCustomTextGrid = false;
        mRenderers = new ArrayList();
        mAntialiasing = true;
        mLegendHeight = 0;
        mScale = 1.0F;
        mPanEnabled = true;
        mZoomEnabled = true;
        mZoomButtonsVisible = false;
        mZoomRate = 1.5F;
        mExternalZoomEnabled = false;
        mOriginalScale = mScale;
        mClickEnabled = false;
        selectableBuffer = 15;
        mStartAngle = 0.0F;
    }

    public void addSeriesRenderer(int i, SimpleSeriesRenderer simpleseriesrenderer)
    {
        mRenderers.add(i, simpleseriesrenderer);
    }

    public void addSeriesRenderer(SimpleSeriesRenderer simpleseriesrenderer)
    {
        mRenderers.add(simpleseriesrenderer);
    }

    public int getAxesColor()
    {
        return mAxesColor;
    }

    public int getBackgroundColor()
    {
        return mBackgroundColor;
    }

    public String getChartTitle()
    {
        return mChartTitle;
    }

    public float getChartTitleTextSize()
    {
        return mChartTitleTextSize;
    }

    public int getLabelsColor()
    {
        return mLabelsColor;
    }

    public float getLabelsTextSize()
    {
        return mLabelsTextSize;
    }

    public int getLegendHeight()
    {
        return mLegendHeight;
    }

    public float getLegendTextSize()
    {
        return mLegendTextSize;
    }

    public int[] getMargins()
    {
        return mMargins;
    }

    public float getOriginalScale()
    {
        return mOriginalScale;
    }

    public float getScale()
    {
        return mScale;
    }

    public int getSelectableBuffer()
    {
        return selectableBuffer;
    }

    public SimpleSeriesRenderer getSeriesRendererAt(int i)
    {
        return (SimpleSeriesRenderer)mRenderers.get(i);
    }

    public int getSeriesRendererCount()
    {
        return mRenderers.size();
    }

    public SimpleSeriesRenderer[] getSeriesRenderers()
    {
        return (SimpleSeriesRenderer[])mRenderers.toArray(new SimpleSeriesRenderer[0]);
    }

    public float getStartAngle()
    {
        return mStartAngle;
    }

    public Typeface getTextTypeface()
    {
        return mTextTypeface;
    }

    public String getTextTypefaceName()
    {
        return mTextTypefaceName;
    }

    public int getTextTypefaceStyle()
    {
        return mTextTypefaceStyle;
    }

    public float getZoomRate()
    {
        return mZoomRate;
    }

    public boolean isAntialiasing()
    {
        return mAntialiasing;
    }

    public boolean isApplyBackgroundColor()
    {
        return mApplyBackgroundColor;
    }

    public boolean isClickEnabled()
    {
        return mClickEnabled;
    }

    public boolean isDisplayValues()
    {
        return mDisplayValues;
    }

    public boolean isExternalZoomEnabled()
    {
        return mExternalZoomEnabled;
    }

    public boolean isFitLegend()
    {
        return mFitLegend;
    }

    public boolean isInScroll()
    {
        return mInScroll;
    }

    public boolean isPanEnabled()
    {
        return mPanEnabled;
    }

    public boolean isShowAxes()
    {
        return mShowAxes;
    }

    public boolean isShowCustomTextGrid()
    {
        return mShowCustomTextGrid;
    }

    public boolean isShowGridX()
    {
        return mShowGridX;
    }

    public boolean isShowGridY()
    {
        return mShowGridY;
    }

    public boolean isShowLabels()
    {
        return mShowLabels;
    }

    public boolean isShowLegend()
    {
        return mShowLegend;
    }

    public boolean isZoomButtonsVisible()
    {
        return mZoomButtonsVisible;
    }

    public boolean isZoomEnabled()
    {
        return mZoomEnabled;
    }

    public void removeAllRenderers()
    {
        mRenderers.clear();
    }

    public void removeSeriesRenderer(SimpleSeriesRenderer simpleseriesrenderer)
    {
        mRenderers.remove(simpleseriesrenderer);
    }

    public void setAntialiasing(boolean flag)
    {
        mAntialiasing = flag;
    }

    public void setApplyBackgroundColor(boolean flag)
    {
        mApplyBackgroundColor = flag;
    }

    public void setAxesColor(int i)
    {
        mAxesColor = i;
    }

    public void setBackgroundColor(int i)
    {
        mBackgroundColor = i;
    }

    public void setChartTitle(String s)
    {
        mChartTitle = s;
    }

    public void setChartTitleTextSize(float f)
    {
        mChartTitleTextSize = f;
    }

    public void setClickEnabled(boolean flag)
    {
        mClickEnabled = flag;
    }

    public void setDisplayValues(boolean flag)
    {
        mDisplayValues = flag;
    }

    public void setExternalZoomEnabled(boolean flag)
    {
        mExternalZoomEnabled = flag;
    }

    public void setFitLegend(boolean flag)
    {
        mFitLegend = flag;
    }

    public void setInScroll(boolean flag)
    {
        mInScroll = flag;
    }

    public void setLabelsColor(int i)
    {
        mLabelsColor = i;
    }

    public void setLabelsTextSize(float f)
    {
        mLabelsTextSize = f;
    }

    public void setLegendHeight(int i)
    {
        mLegendHeight = i;
    }

    public void setLegendTextSize(float f)
    {
        mLegendTextSize = f;
    }

    public void setMargins(int ai[])
    {
        mMargins = ai;
    }

    public void setPanEnabled(boolean flag)
    {
        mPanEnabled = flag;
    }

    public void setScale(float f)
    {
        mScale = f;
    }

    public void setSelectableBuffer(int i)
    {
        selectableBuffer = i;
    }

    public void setShowAxes(boolean flag)
    {
        mShowAxes = flag;
    }

    public void setShowCustomTextGrid(boolean flag)
    {
        mShowCustomTextGrid = flag;
    }

    public void setShowGrid(boolean flag)
    {
        setShowGridX(flag);
        setShowGridY(flag);
    }

    public void setShowGridX(boolean flag)
    {
        mShowGridX = flag;
    }

    public void setShowGridY(boolean flag)
    {
        mShowGridY = flag;
    }

    public void setShowLabels(boolean flag)
    {
        mShowLabels = flag;
    }

    public void setShowLegend(boolean flag)
    {
        mShowLegend = flag;
    }

    public void setStartAngle(float f)
    {
        mStartAngle = f;
    }

    public void setTextTypeface(Typeface typeface)
    {
        mTextTypeface = typeface;
    }

    public void setTextTypeface(String s, int i)
    {
        mTextTypefaceName = s;
        mTextTypefaceStyle = i;
    }

    public void setZoomButtonsVisible(boolean flag)
    {
        mZoomButtonsVisible = flag;
    }

    public void setZoomEnabled(boolean flag)
    {
        mZoomEnabled = flag;
    }

    public void setZoomRate(float f)
    {
        mZoomRate = f;
    }

    static 
    {
        REGULAR_TEXT_FONT = Typeface.create(Typeface.SERIF, 0);
    }
}

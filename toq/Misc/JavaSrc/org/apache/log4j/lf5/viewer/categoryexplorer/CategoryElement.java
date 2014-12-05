// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;


public class CategoryElement
{

    protected String _categoryTitle;


    public CategoryElement(String s)
    {
        _categoryTitle = s;
    }

    public String getTitle()
    {
        return _categoryTitle;
    }

    public void setTitle(String s)
    {
        _categoryTitle = s;
    }
}

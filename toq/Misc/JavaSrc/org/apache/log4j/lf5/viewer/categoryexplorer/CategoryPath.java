// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.util.LinkedList;
import java.util.StringTokenizer;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryElement

public class CategoryPath
{

    protected LinkedList _categoryElements;

    public CategoryPath()
    {
        _categoryElements = new LinkedList();
    }

    public CategoryPath(String s)
    {
        _categoryElements = new LinkedList();
        String s1 = s;
        if (s1 == null)
            s1 = "Debug";
        for (StringTokenizer stringtokenizer = new StringTokenizer(s1.replace('/', '.').replace('\\', '.'), "."); stringtokenizer.hasMoreTokens(); addCategoryElement(new CategoryElement(stringtokenizer.nextToken())));
    }

    public void addCategoryElement(CategoryElement categoryelement)
    {
        _categoryElements.addLast(categoryelement);
    }

    public CategoryElement categoryElementAt(int i)
    {
        return (CategoryElement)_categoryElements.get(i);
    }

    public boolean isEmpty()
    {
        int i = _categoryElements.size();
        boolean flag = false;
        if (i == 0)
            flag = true;
        return flag;
    }

    public void removeAllCategoryElements()
    {
        _categoryElements.clear();
    }

    public int size()
    {
        return _categoryElements.size();
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer(100);
        stringbuffer.append("\n");
        stringbuffer.append("===========================\n");
        stringbuffer.append("CategoryPath:                   \n");
        stringbuffer.append("---------------------------\n");
        stringbuffer.append("\nCategoryPath:\n\t");
        if (size() > 0)
        {
            for (int i = 0; i < size(); i++)
            {
                stringbuffer.append(categoryElementAt(i).toString());
                stringbuffer.append("\n\t");
            }

        } else
        {
            stringbuffer.append("<<NONE>>");
        }
        stringbuffer.append("\n");
        stringbuffer.append("===========================\n");
        return stringbuffer.toString();
    }
}

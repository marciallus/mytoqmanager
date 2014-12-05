// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.util.Enumeration;
import org.apache.log4j.lf5.LogRecord;
import org.apache.log4j.lf5.LogRecordFilter;

// Referenced classes of package org.apache.log4j.lf5.viewer.categoryexplorer:
//            CategoryPath, CategoryExplorerModel, CategoryNode

public class CategoryExplorerLogRecordFilter
    implements LogRecordFilter
{

    protected CategoryExplorerModel _model;

    public CategoryExplorerLogRecordFilter(CategoryExplorerModel categoryexplorermodel)
    {
        _model = categoryexplorermodel;
    }

    public boolean passes(LogRecord logrecord)
    {
        CategoryPath categorypath = new CategoryPath(logrecord.getCategory());
        return _model.isCategoryPathActive(categorypath);
    }

    public void reset()
    {
        resetAllNodes();
    }

    protected void resetAllNodes()
    {
        CategoryNode categorynode;
        for (Enumeration enumeration = _model.getRootCategoryNode().depthFirstEnumeration(); enumeration.hasMoreElements(); _model.nodeChanged(categorynode))
        {
            categorynode = (CategoryNode)enumeration.nextElement();
            categorynode.resetNumberOfContainedRecords();
        }

    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.categoryexplorer;

import java.awt.Component;
import java.awt.event.MouseEvent;
import java.util.EventObject;
import javax.swing.JTable;
import javax.swing.JTree;
import javax.swing.event.*;
import javax.swing.table.TableCellEditor;
import javax.swing.tree.TreeCellEditor;

public class CategoryAbstractCellEditor
    implements TableCellEditor, TreeCellEditor
{

    static Class class$javax$swing$event$CellEditorListener;
    protected ChangeEvent _changeEvent;
    protected int _clickCountToStart;
    protected EventListenerList _listenerList;
    protected Object _value;

    public CategoryAbstractCellEditor()
    {
        _listenerList = new EventListenerList();
        _changeEvent = null;
        _clickCountToStart = 1;
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public void addCellEditorListener(CellEditorListener celleditorlistener)
    {
        EventListenerList eventlistenerlist = _listenerList;
        Class class1;
        if (class$javax$swing$event$CellEditorListener == null)
        {
            class1 = _mthclass$("javax.swing.event.CellEditorListener");
            class$javax$swing$event$CellEditorListener = class1;
        } else
        {
            class1 = class$javax$swing$event$CellEditorListener;
        }
        eventlistenerlist.add(class1, celleditorlistener);
    }

    public void cancelCellEditing()
    {
        fireEditingCanceled();
    }

    protected void fireEditingCanceled()
    {
        Object aobj[] = _listenerList.getListenerList();
        for (int i = -2 + aobj.length; i >= 0; i -= 2)
        {
            Object obj = aobj[i];
            Class class1;
            if (class$javax$swing$event$CellEditorListener == null)
            {
                class1 = _mthclass$("javax.swing.event.CellEditorListener");
                class$javax$swing$event$CellEditorListener = class1;
            } else
            {
                class1 = class$javax$swing$event$CellEditorListener;
            }
            if (obj != class1)
                continue;
            if (_changeEvent == null)
                _changeEvent = new ChangeEvent(this);
            ((CellEditorListener)aobj[i + 1]).editingCanceled(_changeEvent);
        }

    }

    protected void fireEditingStopped()
    {
        Object aobj[] = _listenerList.getListenerList();
        for (int i = -2 + aobj.length; i >= 0; i -= 2)
        {
            Object obj = aobj[i];
            Class class1;
            if (class$javax$swing$event$CellEditorListener == null)
            {
                class1 = _mthclass$("javax.swing.event.CellEditorListener");
                class$javax$swing$event$CellEditorListener = class1;
            } else
            {
                class1 = class$javax$swing$event$CellEditorListener;
            }
            if (obj != class1)
                continue;
            if (_changeEvent == null)
                _changeEvent = new ChangeEvent(this);
            ((CellEditorListener)aobj[i + 1]).editingStopped(_changeEvent);
        }

    }

    public Object getCellEditorValue()
    {
        return _value;
    }

    public int getClickCountToStart()
    {
        return _clickCountToStart;
    }

    public Component getTableCellEditorComponent(JTable jtable, Object obj, boolean flag, int i, int j)
    {
        return null;
    }

    public Component getTreeCellEditorComponent(JTree jtree, Object obj, boolean flag, boolean flag1, boolean flag2, int i)
    {
        return null;
    }

    public boolean isCellEditable(EventObject eventobject)
    {
        return !(eventobject instanceof MouseEvent) || ((MouseEvent)eventobject).getClickCount() >= _clickCountToStart;
    }

    public void removeCellEditorListener(CellEditorListener celleditorlistener)
    {
        EventListenerList eventlistenerlist = _listenerList;
        Class class1;
        if (class$javax$swing$event$CellEditorListener == null)
        {
            class1 = _mthclass$("javax.swing.event.CellEditorListener");
            class$javax$swing$event$CellEditorListener = class1;
        } else
        {
            class1 = class$javax$swing$event$CellEditorListener;
        }
        eventlistenerlist.remove(class1, celleditorlistener);
    }

    public void setCellEditorValue(Object obj)
    {
        _value = obj;
    }

    public void setClickCountToStart(int i)
    {
        _clickCountToStart = i;
    }

    public boolean shouldSelectCell(EventObject eventobject)
    {
        return isCellEditable(eventobject) && (eventobject == null || ((MouseEvent)eventobject).getClickCount() >= _clickCountToStart);
    }

    public boolean stopCellEditing()
    {
        fireEditingStopped();
        return true;
    }
}

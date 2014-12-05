// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.util.*;
import org.apache.log4j.helpers.LogLog;

public class NDC
{
    private static class DiagnosticContext
    {

        String fullMessage;
        String message;

        DiagnosticContext(String s, DiagnosticContext diagnosticcontext)
        {
            message = s;
            if (diagnosticcontext != null)
            {
                fullMessage = diagnosticcontext.fullMessage + ' ' + s;
                return;
            } else
            {
                fullMessage = s;
                return;
            }
        }
    }


    static final int REAP_THRESHOLD = 5;
    static Hashtable ht = new Hashtable();
    static int pushCounter = 0;

    private NDC()
    {
    }

    public static void clear()
    {
        Stack stack = getCurrentStack();
        if (stack != null)
            stack.setSize(0);
    }

    public static Stack cloneStack()
    {
        Stack stack = getCurrentStack();
        if (stack == null)
            return null;
        else
            return (Stack)stack.clone();
    }

    public static String get()
    {
        Stack stack = getCurrentStack();
        if (stack != null && !stack.isEmpty())
            return ((DiagnosticContext)stack.peek()).fullMessage;
        else
            return null;
    }

    private static Stack getCurrentStack()
    {
        if (ht != null)
            return (Stack)ht.get(Thread.currentThread());
        else
            return null;
    }

    public static int getDepth()
    {
        Stack stack = getCurrentStack();
        if (stack == null)
            return 0;
        else
            return stack.size();
    }

    public static void inherit(Stack stack)
    {
        if (stack != null)
            ht.put(Thread.currentThread(), stack);
    }

    private static void lazyRemove()
    {
        if (ht != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Hashtable hashtable = ht;
        hashtable;
        JVM INSTR monitorenter ;
        int i;
        i = 1 + pushCounter;
        pushCounter = i;
        if (i > 5)
            break MISSING_BLOCK_LABEL_36;
        hashtable;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        pushCounter = 0;
        int j = 0;
        Vector vector;
        Enumeration enumeration;
        vector = new Vector();
        enumeration = ht.keys();
_L4:
        if (!enumeration.hasMoreElements() || j > 4)
            break; /* Loop/switch isn't completed */
        Thread thread = (Thread)enumeration.nextElement();
        if (thread.isAlive())
        {
            j++;
            continue; /* Loop/switch isn't completed */
        }
        vector.addElement(thread);
        j = 0;
        if (true) goto _L4; else goto _L3
_L3:
        hashtable;
        JVM INSTR monitorexit ;
        int k = vector.size();
        int l = 0;
        while (l < k) 
        {
            Thread thread1 = (Thread)vector.elementAt(l);
            LogLog.debug("Lazy NDC removal for thread [" + thread1.getName() + "] (" + ht.size() + ").");
            ht.remove(thread1);
            l++;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static String peek()
    {
        Stack stack = getCurrentStack();
        if (stack != null && !stack.isEmpty())
            return ((DiagnosticContext)stack.peek()).message;
        else
            return "";
    }

    public static String pop()
    {
        Stack stack = getCurrentStack();
        if (stack != null && !stack.isEmpty())
            return ((DiagnosticContext)stack.pop()).message;
        else
            return "";
    }

    public static void push(String s)
    {
        Stack stack = getCurrentStack();
        if (stack == null)
        {
            DiagnosticContext diagnosticcontext = new DiagnosticContext(s, null);
            Stack stack1 = new Stack();
            Thread thread = Thread.currentThread();
            ht.put(thread, stack1);
            stack1.push(diagnosticcontext);
            return;
        }
        if (stack.isEmpty())
        {
            stack.push(new DiagnosticContext(s, null));
            return;
        } else
        {
            stack.push(new DiagnosticContext(s, (DiagnosticContext)stack.peek()));
            return;
        }
    }

    public static void remove()
    {
        if (ht != null)
        {
            ht.remove(Thread.currentThread());
            lazyRemove();
        }
    }

    public static void setMaxDepth(int i)
    {
        Stack stack = getCurrentStack();
        if (stack != null && i < stack.size())
            stack.setSize(i);
    }

}

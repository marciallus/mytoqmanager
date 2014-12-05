// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport;

import java.util.concurrent.*;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;

public class TaskManager
    implements RejectedExecutionHandler
{

    private static final TaskManager SELF = new TaskManager();
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/TaskManager.getSimpleName()).toString();
    private static final int THREAD_CORE_NUM = 4;
    private static final int THREAD_MAX_NUM = 10;
    private static final long THREAD_TTL = 3L;
    private static final TimeUnit TTL_TIME_UNIT;
    private volatile boolean isValid;
    private NativePlatform nativePlatform;
    private ExecutorService taskQueue;
    private ThreadPoolExecutor threadPool;

    private TaskManager()
    {
    }

    private void checkValid()
    {
        if (!isValid)
            throw new IllegalStateException("The WorkPoolManager has not been initialized. The initPool mathod should have been invoked");
        else
            return;
    }

    public static TaskManager getInstance()
    {
        return SELF;
    }

    private void initTaskQueue()
    {
        taskQueue = Executors.newSingleThreadExecutor();
    }

    private void initThreadPool()
    {
        threadPool = new ThreadPoolExecutor(4, 10, 3L, TTL_TIME_UNIT, new SynchronousQueue(true));
        threadPool.setRejectedExecutionHandler(this);
    }

    public void enqueue(Runnable runnable)
    {
        checkValid();
        nativePlatform.getNativeLogger().debug(TAG, "Enqueueing task to be executed");
        taskQueue.execute(runnable);
    }

    public void execute(Runnable runnable)
    {
        checkValid();
        nativePlatform.getNativeLogger().debug(TAG, (new StringBuilder()).append("Executing task, Current Thread pool size: '").append(threadPool.getPoolSize()).append("', 'Number of currently working threads: '").append(threadPool.getActiveCount()).append("'").toString());
        threadPool.execute(runnable);
    }

    public void initPool(NativePlatform nativeplatform)
    {
        nativeplatform.getNativeLogger().debug(TAG, "Initializing TaskManager");
        nativePlatform = nativeplatform;
        initThreadPool();
        initTaskQueue();
        isValid = true;
    }

    public boolean isRunning()
    {
        return isValid;
    }

    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadpoolexecutor)
    {
        throw new RejectedExecutionException("Failed to execute the given task, all the worker threads are busy");
    }

    public void shutdown()
    {
        nativePlatform.getNativeLogger().debug(TAG, "Shutting down TaskManager");
        isValid = false;
        if (threadPool != null && !threadPool.isShutdown())
        {
            threadPool.shutdown();
            threadPool = null;
        }
        if (taskQueue != null && !taskQueue.isShutdown())
        {
            taskQueue.shutdown();
            taskQueue = null;
        }
    }

    static 
    {
        TTL_TIME_UNIT = TimeUnit.SECONDS;
    }
}

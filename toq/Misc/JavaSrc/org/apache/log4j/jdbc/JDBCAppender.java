// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.jdbc;

import java.sql.*;
import java.util.*;
import org.apache.log4j.*;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

public class JDBCAppender extends AppenderSkeleton
    implements Appender
{

    protected ArrayList buffer;
    protected int bufferSize;
    protected Connection connection;
    protected String databasePassword;
    protected String databaseURL;
    protected String databaseUser;
    private boolean locationInfo;
    protected ArrayList removes;
    protected String sqlStatement;

    public JDBCAppender()
    {
        databaseURL = "jdbc:odbc:myDB";
        databaseUser = "me";
        databasePassword = "mypassword";
        connection = null;
        sqlStatement = "";
        bufferSize = 1;
        locationInfo = false;
        buffer = new ArrayList(bufferSize);
        removes = new ArrayList(bufferSize);
    }

    public void append(LoggingEvent loggingevent)
    {
        loggingevent.getNDC();
        loggingevent.getThreadName();
        loggingevent.getMDCCopy();
        if (locationInfo)
            loggingevent.getLocationInformation();
        loggingevent.getRenderedMessage();
        loggingevent.getThrowableStrRep();
        buffer.add(loggingevent);
        if (buffer.size() >= bufferSize)
            flushBuffer();
    }

    public void close()
    {
        flushBuffer();
        try
        {
            if (connection != null && !connection.isClosed())
                connection.close();
        }
        catch (SQLException sqlexception)
        {
            errorHandler.error("Error closing connection", sqlexception, 0);
        }
        closed = true;
    }

    protected void closeConnection(Connection connection1)
    {
    }

    protected void execute(String s)
        throws SQLException
    {
        Connection connection1;
        Statement statement;
        connection1 = null;
        statement = null;
        connection1 = getConnection();
        statement = connection1.createStatement();
        statement.executeUpdate(s);
        if (statement != null)
            statement.close();
        closeConnection(connection1);
        return;
        Exception exception;
        exception;
        if (statement != null)
            statement.close();
        closeConnection(connection1);
        throw exception;
    }

    public void finalize()
    {
        close();
    }

    public void flushBuffer()
    {
        Iterator iterator;
        removes.ensureCapacity(buffer.size());
        iterator = buffer.iterator();
_L1:
        LoggingEvent loggingevent;
        if (!iterator.hasNext())
            break MISSING_BLOCK_LABEL_104;
        loggingevent = (LoggingEvent)iterator.next();
        execute(getLogStatement(loggingevent));
        removes.add(loggingevent);
          goto _L1
        SQLException sqlexception;
        sqlexception;
        errorHandler.error("Failed to excute sql", sqlexception, 2);
        removes.add(loggingevent);
          goto _L1
        Exception exception;
        exception;
        removes.add(loggingevent);
        throw exception;
        buffer.removeAll(removes);
        removes.clear();
        return;
    }

    public int getBufferSize()
    {
        return bufferSize;
    }

    protected Connection getConnection()
        throws SQLException
    {
        if (!DriverManager.getDrivers().hasMoreElements())
            setDriver("sun.jdbc.odbc.JdbcOdbcDriver");
        if (connection == null)
            connection = DriverManager.getConnection(databaseURL, databaseUser, databasePassword);
        return connection;
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    protected String getLogStatement(LoggingEvent loggingevent)
    {
        return getLayout().format(loggingevent);
    }

    public String getPassword()
    {
        return databasePassword;
    }

    public String getSql()
    {
        return sqlStatement;
    }

    public String getURL()
    {
        return databaseURL;
    }

    public String getUser()
    {
        return databaseUser;
    }

    public boolean requiresLayout()
    {
        return true;
    }

    public void setBufferSize(int i)
    {
        bufferSize = i;
        buffer.ensureCapacity(bufferSize);
        removes.ensureCapacity(bufferSize);
    }

    public void setDriver(String s)
    {
        try
        {
            Class.forName(s);
            return;
        }
        catch (Exception exception)
        {
            errorHandler.error("Failed to load driver", exception, 0);
        }
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }

    public void setPassword(String s)
    {
        databasePassword = s;
    }

    public void setSql(String s)
    {
        sqlStatement = s;
        if (getLayout() == null)
        {
            setLayout(new PatternLayout(s));
            return;
        } else
        {
            ((PatternLayout)getLayout()).setConversionPattern(s);
            return;
        }
    }

    public void setURL(String s)
    {
        databaseURL = s;
    }

    public void setUser(String s)
    {
        databaseUser = s;
    }
}

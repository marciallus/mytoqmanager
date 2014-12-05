.class public Lorg/apache/log4j/net/JMSSink;
.super Ljava/lang/Object;
.source "JMSSink.java"

# interfaces
.implements Ljavax/jms/MessageListener;


# static fields
.field static class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

.field static logger:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.JMSSink"

    invoke-static {v0}, Lorg/apache/log4j/net/JMSSink;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "tcfBindingName"    # Ljava/lang/String;
    .param p2, "topicBindingName"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_0
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 91
    .local v0, "ctx":Ljavax/naming/Context;
    invoke-static {v0, p1}, Lorg/apache/log4j/net/JMSSink;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jms/TopicConnectionFactory;

    .line 94
    .local v4, "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    invoke-interface {v4, p3, p4}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object v3

    .line 97
    .local v3, "topicConnection":Ljavax/jms/TopicConnection;
    invoke-interface {v3}, Ljavax/jms/TopicConnection;->start()V

    .line 99
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v5

    .line 102
    .local v5, "topicSession":Ljavax/jms/TopicSession;
    invoke-interface {v0, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jms/Topic;

    .line 104
    .local v2, "topic":Ljavax/jms/Topic;
    invoke-interface {v5, v2}, Ljavax/jms/TopicSession;->createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;

    move-result-object v6

    .line 106
    .local v6, "topicSubscriber":Ljavax/jms/TopicSubscriber;
    invoke-interface {v6, p0}, Ljavax/jms/TopicSubscriber;->setMessageListener(Ljavax/jms/MessageListener;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    .end local v0    # "ctx":Ljavax/naming/Context;
    .end local v2    # "topic":Ljavax/jms/Topic;
    .end local v3    # "topicConnection":Ljavax/jms/TopicConnection;
    .end local v4    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    .end local v5    # "topicSession":Ljavax/jms/TopicSession;
    .end local v6    # "topicSubscriber":Ljavax/jms/TopicSubscriber;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljavax/jms/JMSException;
    sget-object v7, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v8, "Could not read JMS message."

    invoke-virtual {v7, v8, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljavax/jms/JMSException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Ljavax/naming/NamingException;
    sget-object v7, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v8, "Could not read JMS message."

    invoke-virtual {v7, v8, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    .end local v1    # "e":Ljavax/naming/NamingException;
    :catch_2
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v7, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v8, "Could not read JMS message."

    invoke-virtual {v7, v8, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method protected static lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "ctx"    # Ljavax/naming/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljavax/naming/NameNotFoundException;
    sget-object v1, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 143
    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    array-length v7, p0

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    .line 53
    const-string v7, "Wrong number of arguments."

    invoke-static {v7}, Lorg/apache/log4j/net/JMSSink;->usage(Ljava/lang/String;)V

    .line 56
    :cond_0
    const/4 v7, 0x0

    aget-object v4, p0, v7

    .line 57
    .local v4, "tcfBindingName":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v5, p0, v7

    .line 58
    .local v5, "topicBindingName":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v6, p0, v7

    .line 59
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v1, p0, v7

    .line 62
    .local v1, "password":Ljava/lang/String;
    const/4 v7, 0x4

    aget-object v0, p0, v7

    .line 64
    .local v0, "configFile":Ljava/lang/String;
    const-string v7, ".xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 65
    invoke-static {v0}, Lorg/apache/log4j/xml/DOMConfigurator;->configure(Ljava/lang/String;)V

    .line 70
    :goto_0
    new-instance v7, Lorg/apache/log4j/net/JMSSink;

    invoke-direct {v7, v4, v5, v6, v1}, Lorg/apache/log4j/net/JMSSink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v3, "stdin":Ljava/io/BufferedReader;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Type \"exit\" to quit JMSSink."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "s":Ljava/lang/String;
    const-string v7, "exit"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Exiting. Kill the application if it does not exit due to daemon threads."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void

    .line 67
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "stdin":Ljava/io/BufferedReader;
    :cond_2
    invoke-static {v0}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.JMSSink"

    invoke-static {v0}, Lorg/apache/log4j/net/JMSSink;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " TopicConnectionFactoryBindingName TopicBindingName username password configFile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 152
    return-void

    .line 149
    :cond_0
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public onMessage(Ljavax/jms/Message;)V
    .locals 8
    .param p1, "message"    # Ljavax/jms/Message;

    .prologue
    .line 122
    :try_start_0
    instance-of v5, p1, Ljavax/jms/ObjectMessage;

    if-eqz v5, :cond_0

    .line 123
    move-object v0, p1

    check-cast v0, Ljavax/jms/ObjectMessage;

    move-object v3, v0

    .line 124
    .local v3, "objectMessage":Ljavax/jms/ObjectMessage;
    invoke-interface {v3}, Ljavax/jms/ObjectMessage;->getObject()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/LoggingEvent;

    .line 125
    .local v1, "event":Lorg/apache/log4j/spi/LoggingEvent;
    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v4

    .line 126
    .local v4, "remoteLogger":Lorg/apache/log4j/Logger;
    invoke-virtual {v4, v1}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 135
    .end local v1    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v3    # "objectMessage":Ljavax/jms/ObjectMessage;
    .end local v4    # "remoteLogger":Lorg/apache/log4j/Logger;
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v5, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Received message is of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p1}, Ljavax/jms/Message;->getJMSType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", was expecting ObjectMessage."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "jmse":Ljavax/jms/JMSException;
    sget-object v5, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v6, "Exception thrown while processing incoming message."

    invoke-virtual {v5, v6, v2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

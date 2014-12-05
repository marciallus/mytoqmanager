.class Lorg/apache/log4j/chainsaw/LoadXMLAction;
.super Ljavax/swing/AbstractAction;
.source "LoadXMLAction.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;


# instance fields
.field private final mChooser:Ljavax/swing/JFileChooser;

.field private final mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

.field private final mParent:Ljavax/swing/JFrame;

.field private final mParser:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.LoadXMLAction"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->class$org$apache$log4j$chainsaw$LoadXMLAction:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ljavax/swing/JFrame;Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 2
    .param p1, "aParent"    # Ljavax/swing/JFrame;
    .param p2, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    .line 53
    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    .line 55
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setMultiSelectionEnabled(Z)V

    .line 56
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setFileSelectionMode(I)V

    .line 76
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    .line 77
    new-instance v0, Lorg/apache/log4j/chainsaw/XMLFileHandler;

    invoke-direct {v0, p2}, Lorg/apache/log4j/chainsaw/XMLFileHandler;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

    .line 78
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    .line 79
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 80
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
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

.method private loadFile(Ljava/lang/String;)I
    .locals 5
    .param p1, "aFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    monitor-enter v3

    .line 123
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "<?xml version=\"1.0\" standalone=\"yes\"?>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v2, "<!DOCTYPE log4j:eventSet "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v2, "[<!ENTITY data SYSTEM \"file:///"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v2, "\">]>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v2, "<log4j:eventSet xmlns:log4j=\"Claira\">\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v2, "&data;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v2, "</log4j:eventSet>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v1, "is":Lorg/xml/sax/InputSource;
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 136
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mHandler:Lorg/apache/log4j/chainsaw/XMLFileHandler;

    invoke-virtual {v2}, Lorg/apache/log4j/chainsaw/XMLFileHandler;->getNumEvents()I

    move-result v2

    monitor-exit v3

    return v2

    .line 137
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "is":Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 7
    .param p1, "aIgnore"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 87
    sget-object v3, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v4, "load file called"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 88
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    invoke-virtual {v3, v4}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v3

    if-nez v3, :cond_0

    .line 89
    sget-object v3, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v4, "Need to load a file"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 90
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mChooser:Ljavax/swing/JFileChooser;

    invoke-virtual {v3}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "chosen":Ljava/io/File;
    sget-object v3, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "loading the contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 93
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/log4j/chainsaw/LoadXMLAction;->loadFile(Ljava/lang/String;)I

    move-result v2

    .line 94
    .local v2, "num":I
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " events."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHAINSAW"

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "chosen":Ljava/io/File;
    .end local v2    # "num":I
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v0    # "chosen":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/chainsaw/LoadXMLAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v4, "caught an exception loading the file"

    invoke-virtual {v3, v4, v1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoadXMLAction;->mParent:Ljavax/swing/JFrame;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing file - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHAINSAW"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0
.end method

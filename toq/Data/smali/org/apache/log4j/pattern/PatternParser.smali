.class public final Lorg/apache/log4j/pattern/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;
    }
.end annotation


# static fields
.field private static final CONVERTER_STATE:I = 0x1

.field private static final DOT_STATE:I = 0x3

.field private static final ESCAPE_CHAR:C = '%'

.field private static final FILENAME_PATTERN_RULES:Ljava/util/Map;

.field private static final LITERAL_STATE:I = 0x0

.field private static final MAX_STATE:I = 0x5

.field private static final MIN_STATE:I = 0x4

.field private static final PATTERN_LAYOUT_RULES:Ljava/util/Map;

.field static class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 91
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    .local v1, "rules":Ljava/util/Map;
    const-string v3, "c"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.log4j.pattern.LoggerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "logger"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.log4j.pattern.LoggerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :goto_1
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v3, "C"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "org.apache.log4j.pattern.ClassNamePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :goto_2
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v3, "class"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "org.apache.log4j.pattern.ClassNamePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :goto_3
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "d"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_4

    const-string v2, "org.apache.log4j.pattern.DatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :goto_4
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v3, "date"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "org.apache.log4j.pattern.DatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :goto_5
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v3, "F"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "org.apache.log4j.pattern.FileLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :goto_6
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v3, "file"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string v2, "org.apache.log4j.pattern.FileLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :goto_7
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "l"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_8

    const-string v2, "org.apache.log4j.pattern.FullLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    :goto_8
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "L"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_9

    const-string v2, "org.apache.log4j.pattern.LineLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :goto_9
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v3, "line"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_a

    const-string v2, "org.apache.log4j.pattern.LineLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :goto_a
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v3, "m"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_b

    const-string v2, "org.apache.log4j.pattern.MessagePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :goto_b
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "message"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_c

    const-string v2, "org.apache.log4j.pattern.MessagePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :goto_c
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v3, "n"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_d

    const-string v2, "org.apache.log4j.pattern.LineSeparatorPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    :goto_d
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v3, "M"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_e

    const-string v2, "org.apache.log4j.pattern.MethodLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :goto_e
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v3, "method"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_f

    const-string v2, "org.apache.log4j.pattern.MethodLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :goto_f
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v3, "p"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_10

    const-string v2, "org.apache.log4j.pattern.LevelPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :goto_10
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v3, "level"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string v2, "org.apache.log4j.pattern.LevelPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :goto_11
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v3, "r"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_12

    const-string v2, "org.apache.log4j.pattern.RelativeTimePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :goto_12
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "relative"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_13

    const-string v2, "org.apache.log4j.pattern.RelativeTimePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :goto_13
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "t"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_14

    const-string v2, "org.apache.log4j.pattern.ThreadPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :goto_14
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "thread"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_15

    const-string v2, "org.apache.log4j.pattern.ThreadPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :goto_15
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "x"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_16

    const-string v2, "org.apache.log4j.pattern.NDCPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :goto_16
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v3, "ndc"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_17

    const-string v2, "org.apache.log4j.pattern.NDCPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :goto_17
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "X"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_18

    const-string v2, "org.apache.log4j.pattern.PropertiesPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :goto_18
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v3, "properties"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_19

    const-string v2, "org.apache.log4j.pattern.PropertiesPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :goto_19
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "sn"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1a

    const-string v2, "org.apache.log4j.pattern.SequenceNumberPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :goto_1a
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v3, "sequenceNumber"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1b

    const-string v2, "org.apache.log4j.pattern.SequenceNumberPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :goto_1b
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v3, "throwable"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1c

    const-string v2, "org.apache.log4j.pattern.ThrowableInformationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    :goto_1c
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v2, v1}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 139
    .local v0, "fnameRules":Ljava/util/Map;
    const-string v3, "d"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1d

    const-string v2, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :goto_1d
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v3, "date"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1e

    const-string v2, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :goto_1e
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "i"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1f

    const-string v2, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :goto_1f
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v3, "index"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_20

    const-string v2, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :goto_20
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v2, v0}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    .line 145
    return-void

    .line 92
    .end local v0    # "fnameRules":Ljava/util/Map;
    :cond_0
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_0

    .line 93
    :cond_1
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1

    .line 95
    :cond_2
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    goto/16 :goto_2

    .line 96
    :cond_3
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    goto/16 :goto_3

    .line 98
    :cond_4
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_4

    .line 99
    :cond_5
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_5

    .line 101
    :cond_6
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_6

    .line 102
    :cond_7
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_7

    .line 104
    :cond_8
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_8

    .line 106
    :cond_9
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_9

    .line 107
    :cond_a
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_a

    .line 109
    :cond_b
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    goto/16 :goto_b

    .line 110
    :cond_c
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    goto/16 :goto_c

    .line 112
    :cond_d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    goto/16 :goto_d

    .line 114
    :cond_e
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_e

    .line 115
    :cond_f
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_f

    .line 117
    :cond_10
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    goto/16 :goto_10

    .line 118
    :cond_11
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    goto/16 :goto_11

    .line 120
    :cond_12
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    goto/16 :goto_12

    .line 121
    :cond_13
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    goto/16 :goto_13

    .line 123
    :cond_14
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    goto/16 :goto_14

    .line 124
    :cond_15
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    goto/16 :goto_15

    .line 126
    :cond_16
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    goto/16 :goto_16

    .line 127
    :cond_17
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    goto/16 :goto_17

    .line 129
    :cond_18
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    goto/16 :goto_18

    .line 130
    :cond_19
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    goto/16 :goto_19

    .line 132
    :cond_1a
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1a

    .line 133
    :cond_1b
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1b

    .line 135
    :cond_1c
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1c

    .line 139
    .restart local v0    # "fnameRules":Ljava/util/Map;
    :cond_1d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_1d

    .line 140
    :cond_1e
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_1e

    .line 141
    :cond_1f
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1f

    .line 142
    :cond_20
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_20
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 92
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

.method private static createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;
    .locals 15
    .param p0, "converterId"    # Ljava/lang/String;
    .param p1, "currentLiteral"    # Ljava/lang/StringBuffer;
    .param p2, "converterRegistry"    # Ljava/util/Map;
    .param p3, "rules"    # Ljava/util/Map;
    .param p4, "options"    # Ljava/util/List;

    .prologue
    .line 424
    move-object v2, p0

    .line 425
    .local v2, "converterName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 427
    .local v3, "converterObj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "i":I
    move-object v11, v3

    .end local v3    # "converterObj":Ljava/lang/Object;
    :goto_0
    if-lez v7, :cond_1

    if-nez v11, :cond_1

    .line 429
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 431
    if-eqz p2, :cond_6

    .line 432
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 435
    :goto_1
    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 436
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 428
    :cond_0
    add-int/lit8 v7, v7, -0x1

    move-object v11, v3

    goto :goto_0

    .line 440
    :cond_1
    if-nez v11, :cond_2

    .line 441
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Unrecognized format specifier ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 443
    const/4 v8, 0x0

    .line 512
    :goto_2
    return-object v8

    .line 446
    :cond_2
    const/4 v1, 0x0

    .line 448
    .local v1, "converterClass":Ljava/lang/Class;
    instance-of v12, v11, Ljava/lang/Class;

    if-eqz v12, :cond_3

    move-object v1, v11

    .line 449
    check-cast v1, Ljava/lang/Class;

    .line 470
    :goto_3
    :try_start_0
    const-string v11, "newInstance"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-string v14, "[Ljava.lang.String;"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 476
    .local v6, "factory":Ljava/lang/reflect/Method;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 477
    .local v9, "optionsArray":[Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 479
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 482
    .local v8, "newObj":Ljava/lang/Object;
    instance-of v11, v8, Lorg/apache/log4j/pattern/PatternConverter;

    if-eqz v11, :cond_5

    .line 483
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 488
    check-cast v8, Lorg/apache/log4j/pattern/PatternConverter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 451
    .end local v6    # "factory":Ljava/lang/reflect/Method;
    .end local v8    # "newObj":Ljava/lang/Object;
    .end local v9    # "optionsArray":[Ljava/lang/String;
    :cond_3
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 453
    :try_start_1
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_3

    .line 454
    :catch_0
    move-exception v4

    .line 455
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Class for conversion pattern %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    const/4 v8, 0x0

    goto :goto_2

    .line 462
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_4
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Bad map entry for conversion pattern %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 465
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 490
    .restart local v6    # "factory":Ljava/lang/reflect/Method;
    .restart local v8    # "newObj":Ljava/lang/Object;
    .restart local v9    # "optionsArray":[Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " does not extend PatternConverter."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 512
    .end local v6    # "factory":Ljava/lang/reflect/Method;
    .end local v8    # "newObj":Ljava/lang/Object;
    .end local v9    # "optionsArray":[Ljava/lang/String;
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 494
    :catch_1
    move-exception v4

    .line 495
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Error creating converter for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/log4j/pattern/PatternConverter;

    .line 501
    .local v10, "pc":Lorg/apache/log4j/pattern/PatternConverter;
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v10

    .line 506
    goto/16 :goto_2

    .line 507
    .end local v10    # "pc":Lorg/apache/log4j/pattern/PatternConverter;
    :catch_2
    move-exception v5

    .line 508
    .local v5, "ex2":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Error creating converter for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v1    # "converterClass":Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "ex2":Ljava/lang/Exception;
    :cond_6
    move-object v3, v11

    goto/16 :goto_1
.end method

.method private static extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 2
    .param p0, "lastChar"    # C
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "convBuf"    # Ljava/lang/StringBuffer;
    .param p4, "currentLiteral"    # Ljava/lang/StringBuffer;

    .prologue
    .line 187
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 194
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, p2

    .line 210
    .end local p2    # "i":I
    .local v0, "i":I
    :goto_0
    return v0

    .line 198
    .end local v0    # "i":I
    .restart local p2    # "i":I
    :cond_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    move v0, p2

    .line 210
    .end local p2    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method private static extractOptions(Ljava/lang/String;ILjava/util/List;)I
    .locals 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "options"    # Ljava/util/List;

    .prologue
    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_0

    .line 222
    const/16 v2, 0x7d

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 224
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 233
    .end local v0    # "end":I
    :cond_0
    return p1

    .line 228
    .restart local v0    # "end":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "r":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 p1, v0, 0x1

    .line 231
    goto :goto_0
.end method

.method private static finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I
    .locals 7
    .param p0, "c"    # C
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "currentLiteral"    # Ljava/lang/StringBuffer;
    .param p4, "formattingInfo"    # Lorg/apache/log4j/pattern/FormattingInfo;
    .param p5, "converterRegistry"    # Ljava/util/Map;
    .param p6, "rules"    # Ljava/util/Map;
    .param p7, "patternConverters"    # Ljava/util/List;
    .param p8, "formattingInfos"    # Ljava/util/List;

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 535
    .local v0, "convBuf":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/log4j/pattern/PatternParser;->extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result p2

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "converterId":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v3, "options":Ljava/util/List;
    invoke-static {p1, p2, v3}, Lorg/apache/log4j/pattern/PatternParser;->extractOptions(Ljava/lang/String;ILjava/util/List;)I

    move-result p2

    .line 542
    invoke-static {v1, p3, p5, p6, v3}, Lorg/apache/log4j/pattern/PatternParser;->createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;

    move-result-object v4

    .line 546
    .local v4, "pc":Lorg/apache/log4j/pattern/PatternConverter;
    if-nez v4, :cond_3

    .line 549
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 550
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "Empty conversion specifier starting at position "

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 558
    .local v2, "msg":Ljava/lang/StringBuffer;
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v5, " in conversion pattern."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 563
    new-instance v5, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v5

    invoke-interface {p8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    .end local v2    # "msg":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 579
    return p2

    .line 553
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "Unrecognized conversion specifier ["

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v2    # "msg":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v5, "] starting at position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 567
    .end local v2    # "msg":Ljava/lang/StringBuffer;
    :cond_3
    invoke-interface {p7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {p8, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 571
    new-instance v5, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v5

    invoke-interface {p8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getFileNamePatternRules()Ljava/util/Map;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static getPatternLayoutRules()Ljava/util/Map;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "patternConverters"    # Ljava/util/List;
    .param p2, "formattingInfos"    # Ljava/util/List;
    .param p3, "converterRegistry"    # Ljava/util/Map;
    .param p4, "rules"    # Ljava/util/Map;

    .prologue
    .line 247
    if-nez p0, :cond_0

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v5, "pattern"

    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    .local v3, "currentLiteral":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 254
    .local v11, "patternLength":I
    const/4 v12, 0x0

    .line 256
    .local v12, "state":I
    const/4 v2, 0x0

    .line 257
    .local v2, "i":I
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .local v4, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move v10, v2

    .line 259
    .end local v2    # "i":I
    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_9

    .line 260
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 262
    .local v0, "c":C
    packed-switch v12, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v10, v2

    .line 397
    .end local v2    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 266
    .end local v10    # "i":I
    .restart local v2    # "i":I
    :pswitch_1
    if-ne v2, v11, :cond_1

    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v10, v2

    .line 269
    .end local v2    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 272
    .end local v10    # "i":I
    .restart local v2    # "i":I
    :cond_1
    const/16 v1, 0x25

    if-ne v0, v1, :cond_3

    .line 274
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    new-instance v1, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 290
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    const/4 v12, 0x1

    .line 292
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    goto :goto_1

    .line 276
    :pswitch_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 279
    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 301
    :pswitch_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    packed-switch v0, :pswitch_data_2

    .line 319
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    .line 320
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    add-int/lit8 v5, v0, -0x30

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 324
    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v9, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    const/4 v12, 0x4

    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto :goto_1

    .line 305
    :pswitch_4
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    const/4 v1, 0x1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v4, v9

    .line 310
    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto :goto_1

    .line 313
    :pswitch_5
    const/4 v12, 0x3

    .line 315
    goto :goto_1

    :cond_4
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object v8, p2

    .line 326
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    .line 331
    const/4 v12, 0x0

    .line 332
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 340
    :pswitch_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    .line 343
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int/2addr v5, v6

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto/16 :goto_1

    .line 348
    :cond_5
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    .line 349
    const/4 v12, 0x3

    goto/16 :goto_1

    :cond_6
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object v8, p2

    .line 351
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    .line 354
    const/4 v12, 0x0

    .line 355
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 362
    :pswitch_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    const/16 v1, 0x30

    if-lt v0, v1, :cond_7

    const/16 v1, 0x39

    if-gt v0, v1, :cond_7

    .line 365
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    add-int/lit8 v6, v0, -0x30

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 369
    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    const/4 v12, 0x5

    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto/16 :goto_1

    .line 371
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error occured in position "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "\"."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 375
    const/4 v12, 0x0

    .line 378
    goto/16 :goto_1

    .line 381
    :pswitch_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    const/16 v1, 0x30

    if-lt v0, v1, :cond_8

    const/16 v1, 0x39

    if-gt v0, v1, :cond_8

    .line 384
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int/2addr v6, v7

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto/16 :goto_1

    :cond_8
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object v8, p2

    .line 389
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    .line 392
    const/4 v12, 0x0

    .line 393
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 394
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 402
    .end local v0    # "c":C
    .end local v2    # "i":I
    .restart local v10    # "i":I
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 403
    new-instance v1, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_a
    return-void

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 274
    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
    .end packed-switch

    .line 303
    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

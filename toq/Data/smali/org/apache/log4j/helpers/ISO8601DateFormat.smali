.class public Lorg/apache/log4j/helpers/ISO8601DateFormat;
.super Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.source "ISO8601DateFormat.java"


# static fields
.field private static lastTime:J = 0x0L

.field private static lastTimeString:[C = null

.field private static final serialVersionUID:J = -0xa8b7f21cd667ee0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 52
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 15
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 68
    .local v6, "now":J
    const-wide/16 v11, 0x3e8

    rem-long v11, v6, v11

    long-to-int v3, v11

    .line 70
    .local v3, "millis":I
    int-to-long v11, v3

    sub-long v11, v6, v11

    sget-wide v13, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    sget-object v11, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    const/4 v12, 0x0

    aget-char v11, v11, v12

    if-nez v11, :cond_7

    .line 75
    :cond_0
    iget-object v11, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 79
    .local v9, "start":I
    iget-object v11, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 80
    .local v10, "year":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    iget-object v11, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 96
    const-string v5, "-NA-"

    .line 98
    .local v5, "month":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v11, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 101
    .local v1, "day":I
    const/16 v11, 0xa

    if-ge v1, v11, :cond_1

    .line 102
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    const/16 v11, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    iget-object v11, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 108
    .local v2, "hour":I
    const/16 v11, 0xa

    if-ge v2, v11, :cond_2

    .line 109
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    const/16 v11, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    iget-object v11, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 115
    .local v4, "mins":I
    const/16 v11, 0xa

    if-ge v4, v11, :cond_3

    .line 116
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    const/16 v11, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iget-object v11, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 122
    .local v8, "secs":I
    const/16 v11, 0xa

    if-ge v8, v11, :cond_4

    .line 123
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 127
    const/16 v11, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sget-object v12, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v11, v12, v13}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 131
    int-to-long v11, v3

    sub-long v11, v6, v11

    sput-wide v11, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    .line 138
    .end local v1    # "day":I
    .end local v2    # "hour":I
    .end local v4    # "mins":I
    .end local v5    # "month":Ljava/lang/String;
    .end local v8    # "secs":I
    .end local v9    # "start":I
    .end local v10    # "year":I
    :goto_1
    const/16 v11, 0x64

    if-ge v3, v11, :cond_5

    .line 139
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    :cond_5
    const/16 v11, 0xa

    if-ge v3, v11, :cond_6

    .line 141
    const/16 v11, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    return-object p2

    .line 84
    .restart local v9    # "start":I
    .restart local v10    # "year":I
    :pswitch_0
    const-string v5, "-01-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 85
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_1
    const-string v5, "-02-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 86
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_2
    const-string v5, "-03-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 87
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_3
    const-string v5, "-04-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 88
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_4
    const-string v5, "-05-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 89
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_5
    const-string v5, "-06-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 90
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_6
    const-string v5, "-07-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 91
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_7
    const-string v5, "-08-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 92
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_8
    const-string v5, "-09-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 93
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_9
    const-string v5, "-10-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 94
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_a
    const-string v5, "-11-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 95
    .end local v5    # "month":Ljava/lang/String;
    :pswitch_b
    const-string v5, "-12-"

    .restart local v5    # "month":Ljava/lang/String;
    goto/16 :goto_0

    .line 134
    .end local v5    # "month":Ljava/lang/String;
    .end local v9    # "start":I
    .end local v10    # "year":I
    :cond_7
    sget-object v11, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

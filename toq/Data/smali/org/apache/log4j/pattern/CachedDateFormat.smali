.class public final Lorg/apache/log4j/pattern/CachedDateFormat;
.super Ljava/text/DateFormat;
.source "CachedDateFormat.java"


# static fields
.field private static final DIGITS:Ljava/lang/String; = "0123456789"

.field private static final MAGIC1:I = 0x28e

.field private static final MAGIC2:I = 0x3db

.field private static final MAGICSTRING1:Ljava/lang/String; = "654"

.field private static final MAGICSTRING2:Ljava/lang/String; = "987"

.field public static final NO_MILLISECONDS:I = -0x2

.field public static final UNRECOGNIZED_MILLISECONDS:I = -0x1

.field private static final ZERO_STRING:Ljava/lang/String; = "000"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cache:Ljava/lang/StringBuffer;

.field private final expiration:I

.field private final formatter:Ljava/text/DateFormat;

.field private millisecondStart:I

.field private previousTime:J

.field private slotBegin:J

.field private final tmpDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;I)V
    .locals 5
    .param p1, "dateFormat"    # Ljava/text/DateFormat;
    .param p2, "expiration"    # I

    .prologue
    const-wide/high16 v3, -0x8000000000000000L

    .line 132
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    .line 122
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dateFormat cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    if-gez p2, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expiration must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iput-object p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    .line 142
    iput p2, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->expiration:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    .line 148
    iput-wide v3, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 149
    iput-wide v3, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    .line 150
    return-void
.end method

.method public static findMillisecondStart(JLjava/lang/String;Ljava/text/DateFormat;)I
    .locals 14
    .param p0, "time"    # J
    .param p2, "formatted"    # Ljava/lang/String;
    .param p3, "formatter"    # Ljava/text/DateFormat;

    .prologue
    .line 163
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3e8

    mul-long v8, v10, v12

    .line 165
    .local v8, "slotBegin":J
    cmp-long v10, v8, p0

    if-lez v10, :cond_0

    .line 166
    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    .line 169
    :cond_0
    sub-long v10, p0, v8

    long-to-int v5, v10

    .line 171
    .local v5, "millis":I
    const/16 v3, 0x28e

    .line 172
    .local v3, "magic":I
    const-string v4, "654"

    .line 174
    .local v4, "magicString":Ljava/lang/String;
    const/16 v10, 0x28e

    if-ne v5, v10, :cond_1

    .line 175
    const/16 v3, 0x3db

    .line 176
    const-string v4, "987"

    .line 179
    :cond_1
    new-instance v10, Ljava/util/Date;

    int-to-long v11, v3

    add-long/2addr v11, v8

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "plusMagic":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v10, v11, :cond_3

    .line 186
    const/4 v2, -0x1

    .line 216
    :cond_2
    :goto_0
    return v2

    .line 189
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 190
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_5

    .line 193
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v10, "ABC"

    invoke-direct {v1, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "formattedMillis":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    invoke-static {v5, v1, v10}, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondFormat(ILjava/lang/StringBuffer;I)V

    .line 196
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "plusZero":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_4

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v10, v6, v2, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0, v2, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "000"

    const/4 v11, 0x0

    const-string v12, "000"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v7, v2, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 210
    :cond_4
    const/4 v2, -0x1

    goto :goto_0

    .line 189
    .end local v1    # "formattedMillis":Ljava/lang/StringBuffer;
    .end local v7    # "plusZero":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    :cond_6
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public static getMaximumCacheValidity(Ljava/lang/String;)I
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 364
    const/16 v1, 0x53

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 366
    .local v0, "firstS":I
    if-ltz v0, :cond_0

    const-string v1, "SSS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 367
    const/4 v1, 0x1

    .line 370
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x3e8

    goto :goto_0
.end method

.method private static millisecondFormat(ILjava/lang/StringBuffer;I)V
    .locals 3
    .param p0, "millis"    # I
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I

    .prologue
    .line 313
    const-string v0, "0123456789"

    div-int/lit8 v1, p0, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 314
    add-int/lit8 v0, p2, 0x1

    const-string v1, "0123456789"

    div-int/lit8 v2, p0, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 315
    add-int/lit8 v0, p2, 0x2

    const-string v1, "0123456789"

    rem-int/lit8 v2, p0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 316
    return-void
.end method


# virtual methods
.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "now"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 246
    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 301
    :cond_0
    :goto_0
    return-object p3

    .line 256
    :cond_1
    iget v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    iget v2, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->expiration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 265
    iget v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    if-ltz v0, :cond_2

    .line 266
    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondFormat(ILjava/lang/StringBuffer;I)V

    .line 272
    :cond_2
    iput-wide p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 273
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 282
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 283
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    iget-object v2, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 285
    iput-wide p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 286
    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    .line 288
    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    iget-wide v2, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 289
    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    .line 296
    :cond_4
    iget v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    if-ltz v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/log4j/pattern/CachedDateFormat;->findMillisecondStart(JLjava/lang/String;Ljava/text/DateFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    goto :goto_0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/log4j/pattern/CachedDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 231
    return-object p2
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const-wide/high16 v1, -0x8000000000000000L

    .line 326
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 327
    iput-wide v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 328
    iput-wide v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    .line 329
    return-void
.end method

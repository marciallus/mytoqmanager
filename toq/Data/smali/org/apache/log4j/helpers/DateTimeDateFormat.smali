.class public Lorg/apache/log4j/helpers/DateTimeDateFormat;
.super Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.source "DateTimeDateFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x4cfd2b294307279bL


# instance fields
.field shortMonths:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    .line 42
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateTimeDateFormat;->shortMonths:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/log4j/helpers/DateTimeDateFormat;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/DateTimeDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 49
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    const/16 v5, 0x20

    .line 61
    iget-object v2, p0, Lorg/apache/log4j/helpers/DateTimeDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 63
    iget-object v2, p0, Lorg/apache/log4j/helpers/DateTimeDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 64
    .local v0, "day":I
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 65
    const/16 v2, 0x30

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    iget-object v2, p0, Lorg/apache/log4j/helpers/DateTimeDateFormat;->shortMonths:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/log4j/helpers/DateTimeDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    iget-object v2, p0, Lorg/apache/log4j/helpers/DateTimeDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 72
    .local v1, "year":I
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    invoke-super {p0, p1, p2, p3}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

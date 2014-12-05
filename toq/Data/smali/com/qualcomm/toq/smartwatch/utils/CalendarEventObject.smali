.class public Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
.super Ljava/lang/Object;
.source "CalendarEventObject.java"


# instance fields
.field private eventDescription:Ljava/lang/String;

.field private eventEndDate:Ljava/util/Date;

.field private eventID:J

.field private eventLocation:Ljava/lang/String;

.field private eventStartDate:Ljava/util/Date;

.field private eventTitle:Ljava/lang/String;

.field private reminderTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V
    .locals 2
    .param p1, "eventTitle"    # Ljava/lang/String;
    .param p2, "eventLocation"    # Ljava/lang/String;
    .param p3, "eventDescription"    # Ljava/lang/String;
    .param p4, "eventStartDate"    # Ljava/util/Date;
    .param p5, "eventEndDate"    # Ljava/util/Date;
    .param p6, "eventID"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventTitle:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventLocation:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventStartDate:Ljava/util/Date;

    .line 29
    iput-object p5, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventEndDate:Ljava/util/Date;

    .line 30
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventDescription:Ljava/lang/String;

    .line 31
    iput-wide p6, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventID:J

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->reminderTime:J

    .line 33
    return-void
.end method


# virtual methods
.method public getEventDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEventEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEventID()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventID:J

    return-wide v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getEventStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEventTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getReminderTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->reminderTime:J

    return-wide v0
.end method

.method public setEventDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventDescription"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->eventDescription:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setReminderTime(J)V
    .locals 0
    .param p1, "reminderTime"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->reminderTime:J

    .line 57
    return-void
.end method

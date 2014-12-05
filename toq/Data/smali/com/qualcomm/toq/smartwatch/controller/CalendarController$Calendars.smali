.class public Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Calendars"
.end annotation


# instance fields
.field public calendarId:Ljava/lang/String;

.field public calendarName:Ljava/lang/String;

.field public checked:Z

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/CalendarController;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_id"    # Ljava/lang/String;
    .param p4, "isChecked"    # Z

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->this$0:Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->calendarName:Ljava/lang/String;

    .line 1210
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->calendarId:Ljava/lang/String;

    .line 1211
    iput-boolean p4, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->checked:Z

    .line 1212
    return-void
.end method


# virtual methods
.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->calendarId:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->calendarName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 1227
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->checked:Z

    .line 1228
    return-void
.end method

.method public toggleChecked()V
    .locals 1

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->checked:Z

    .line 1232
    return-void

    .line 1231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

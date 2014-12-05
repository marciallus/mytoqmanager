.class public Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;
.super Ljava/lang/Object;
.source "CommunicationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSuper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAlertDialogMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialogSuper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getContainerMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ContainerSuper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs getInterfaceMask([Ljava/lang/String;)I
    .locals 7
    .param p0, "interfaces"    # [Ljava/lang/String;

    .prologue
    .line 161
    const/4 v4, 0x0

    .line 163
    .local v4, "resMask":I
    if-nez p0, :cond_0

    move v5, v4

    .line 179
    .end local v4    # "resMask":I
    .local v5, "resMask":I
    :goto_0
    return v5

    .line 167
    .end local v5    # "resMask":I
    .restart local v4    # "resMask":I
    :cond_0
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 168
    .local v2, "iface":Ljava/lang/String;
    const-string v6, "org.alljoyn.ControlPanel.ControlPanel"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    or-int/lit8 v4, v4, 0x1

    .line 167
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_2
    const-string v6, "org.alljoyn.ControlPanel.HTTPControl"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    or-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 174
    :cond_3
    const-string v6, "org.alljoyn.ControlPanel.NotificationAction"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    or-int/lit8 v4, v4, 0x4

    goto :goto_2

    .end local v2    # "iface":Ljava/lang/String;
    :cond_4
    move v5, v4

    .line 179
    .end local v4    # "resMask":I
    .restart local v5    # "resMask":I
    goto :goto_0
.end method

.method public static getLabelWidgetMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Label;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getListPropertyWidgetSignal(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSuper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNotificationActionDismissSignal(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPropertyMetadataChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPropertyValueChanged(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSuper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/alljoyn/bus/Variant;

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found reflection of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSessionOpts()Lorg/alljoyn/bus/SessionOpts;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lorg/alljoyn/bus/SessionOpts;

    invoke-direct {v0}, Lorg/alljoyn/bus/SessionOpts;-><init>()V

    .line 147
    .local v0, "sessionOpts":Lorg/alljoyn/bus/SessionOpts;
    const/4 v1, 0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/alljoyn/bus/SessionOpts;->isMultipoint:Z

    .line 149
    const/4 v1, -0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    .line 150
    const/16 v1, -0x81

    iput-short v1, v0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    .line 151
    return-object v0
.end method

.method public static maskIncludes(II)Z
    .locals 1
    .param p0, "numToTest"    # I
    .param p1, "mask"    # I

    .prologue
    .line 189
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseObjPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "objPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 199
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "segments":[Ljava/lang/String;
    array-length v1, v2

    .line 201
    .local v1, "segLength":I
    if-nez v1, :cond_0

    .line 202
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received a broken object path: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :cond_0
    add-int/lit8 v4, v1, -0x1

    aget-object v0, v2, v4

    .line 207
    .local v0, "panelId":Ljava/lang/String;
    add-int/lit8 v4, v1, -0x2

    if-ltz v4, :cond_1

    .line 208
    add-int/lit8 v4, v1, -0x2

    aget-object v3, v2, v4

    .line 214
    .local v3, "unitId":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    return-object v4

    .line 211
    .end local v3    # "unitId":Ljava/lang/String;
    :cond_1
    const-string v3, "unknown"

    .restart local v3    # "unitId":Ljava/lang/String;
    goto :goto_0
.end method

.class final enum Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
.super Ljava/lang/Enum;
.source "PayloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ns/PayloadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ArgumentKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

.field public static final enum ORIGINAL_SENDER_NAME:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

.field public static final enum RESPONSE_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

.field public static final enum RICH_NOTIFICATION_AUDIO_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

.field public static final enum RICH_NOTIFICATION_AUDIO_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

.field public static final enum RICH_NOTIFICATION_ICON_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

.field public static final enum RICH_NOTIFICATION_ICON_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;


# instance fields
.field public final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    const-string v1, "RICH_NOTIFICATION_ICON_URL"

    invoke-direct {v0, v1, v4, v4}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_ICON_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    .line 43
    new-instance v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    const-string v1, "RICH_NOTIFICATION_AUDIO_URL"

    invoke-direct {v0, v1, v5, v5}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_AUDIO_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    .line 44
    new-instance v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    const-string v1, "RICH_NOTIFICATION_ICON_OBJECT_PATH"

    invoke-direct {v0, v1, v6, v6}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_ICON_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    .line 45
    new-instance v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    const-string v1, "RICH_NOTIFICATION_AUDIO_OBJECT_PATH"

    invoke-direct {v0, v1, v7, v7}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_AUDIO_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    .line 46
    new-instance v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    const-string v1, "RESPONSE_OBJECT_PATH"

    invoke-direct {v0, v1, v8, v8}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RESPONSE_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    .line 47
    new-instance v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    const-string v1, "ORIGINAL_SENDER_NAME"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ORIGINAL_SENDER_NAME:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    sget-object v1, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_ICON_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    aput-object v1, v0, v4

    sget-object v1, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_AUDIO_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    aput-object v1, v0, v5

    sget-object v1, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_ICON_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    aput-object v1, v0, v6

    sget-object v1, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_AUDIO_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    aput-object v1, v0, v7

    sget-object v1, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RESPONSE_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ORIGINAL_SENDER_NAME:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    aput-object v2, v0, v1

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->$VALUES:[Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    .line 61
    return-void
.end method

.method public static getArgumentKeyById(I)Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 69
    invoke-static {}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->values()[Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    move-result-object v1

    .line 70
    .local v1, "args":[Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    const/4 v5, 0x0

    .line 71
    .local v5, "retVal":Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    move-object v2, v1

    .local v2, "arr$":[Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 72
    .local v0, "arg":Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    iget v6, v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    if-ne v6, p0, :cond_1

    .line 73
    move-object v5, v0

    .line 77
    .end local v0    # "arg":Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    :cond_0
    return-object v5

    .line 71
    .restart local v0    # "arg":Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    return-object v0
.end method

.method public static values()[Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->$VALUES:[Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    invoke-virtual {v0}, [Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    return-object v0
.end method

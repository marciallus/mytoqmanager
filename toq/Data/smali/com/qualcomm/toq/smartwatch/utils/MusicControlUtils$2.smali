.class Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$2;
.super Ljava/lang/Object;
.source "MusicControlUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)V
    .locals 1

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$2;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$2;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;)I
    .locals 3
    .param p1, "object1"    # Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    .param p2, "object2"    # Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$2;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1326
    check-cast p1, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$2;->compare(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;)I

    move-result v0

    return v0
.end method

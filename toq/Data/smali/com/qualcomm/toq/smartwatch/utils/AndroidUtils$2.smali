.class final Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;
.super Ljava/util/HashSet;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/Character$UnicodeBlock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1912
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1914
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1915
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1916
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1917
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1918
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1919
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1920
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1921
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1922
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1923
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1924
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->IDEOGRAPHIC_DESCRIPTION_CHARACTERS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils$2;->add(Ljava/lang/Object;)Z

    .line 1925
    return-void
.end method

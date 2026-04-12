.class synthetic Lcom/winlator/cmod/ContentsFragment$4;
.super Ljava/lang/Object;
.source "ContentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ContentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$winlator$cmod$contents$ContentProfile$ContentType:[I

.field static final synthetic $SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 296
    invoke-static {}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->values()[Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentProfile$ContentType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentProfile$ContentType:[I

    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentProfile$ContentType:[I

    sget-object v3, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v3}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 184
    :goto_1
    invoke-static {}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->values()[Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    :try_start_2
    sget-object v2, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    sget-object v3, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADTAR:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-virtual {v3}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    sget-object v2, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_NOPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-virtual {v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-virtual {v1}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_EXIST:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-virtual {v1}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_MISSINGFILES:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-virtual {v1}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNTRUSTPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-virtual {v1}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    return-void
.end method

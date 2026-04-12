.class public final enum Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;
.super Ljava/lang/Enum;
.source "ContentsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/contents/ContentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallFailedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_BADPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_BADTAR:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_EXIST:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_MISSINGFILES:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_NOPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_NOSPACE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_UNKNOWN:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

.field public static final enum ERROR_UNTRUSTPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;
    .locals 8

    .line 41
    sget-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_NOSPACE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADTAR:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    sget-object v2, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_NOPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    sget-object v3, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    sget-object v4, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_MISSINGFILES:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    sget-object v5, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_EXIST:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    sget-object v6, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNTRUSTPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    sget-object v7, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNKNOWN:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    filled-new-array/range {v0 .. v7}, [Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_NOSPACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_NOSPACE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 43
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_BADTAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADTAR:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 44
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_NOPROFILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_NOPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 45
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_BADPROFILE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_BADPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 46
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_MISSINGFILES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_MISSINGFILES:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 47
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_EXIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_EXIST:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 48
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_UNTRUSTPROFILE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNTRUSTPROFILE:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 49
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ERROR_UNKNOWN:Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    .line 41
    invoke-static {}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->$values()[Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->$VALUES:[Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;
    .locals 1

    .line 41
    sget-object v0, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->$VALUES:[Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    invoke-virtual {v0}, [Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;

    return-object v0
.end method

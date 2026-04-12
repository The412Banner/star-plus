.class final enum Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
.super Ljava/lang/Enum;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum EXPIRED:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum INSENSITIVE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum OK:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 722
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    .line 723
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    const-string v1, "INSENSITIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->INSENSITIVE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    .line 724
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    const-string v1, "EXPIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    .line 725
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    const-string v1, "EXTENSION_MISMATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    .line 721
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    sget-object v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->INSENSITIVE:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    sget-object v2, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    sget-object v3, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->$VALUES:[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 721
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 721
    const-class v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 1

    .line 721
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->$VALUES:[Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v0
.end method

.class final enum Lorg/openjsse/sun/security/ssl/ClientAuthType;
.super Ljava/lang/Enum;
.source "ClientAuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/ClientAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/ClientAuthType;

.field public static final enum CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

.field public static final enum CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

.field public static final enum CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;

    const-string v1, "CLIENT_AUTH_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/ClientAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    .line 33
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;

    const-string v1, "CLIENT_AUTH_REQUESTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/ClientAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    .line 34
    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;

    const-string v1, "CLIENT_AUTH_REQUIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/ClientAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    .line 31
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/ClientAuthType;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;->$VALUES:[Lorg/openjsse/sun/security/ssl/ClientAuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ClientAuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/ClientAuthType;
    .locals 1

    .line 31
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;->$VALUES:[Lorg/openjsse/sun/security/ssl/ClientAuthType;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/ClientAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/ClientAuthType;

    return-object v0
.end method

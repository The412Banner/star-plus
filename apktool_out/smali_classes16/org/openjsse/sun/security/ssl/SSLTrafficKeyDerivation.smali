.class final enum Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
.super Ljava/lang/Enum;
.source "SSLTrafficKeyDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;,
        Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;,
        Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivation;,
        Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivationGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T12TrafficKeyDerivationGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T10TrafficKeyDerivationGenerator;,
        Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$S30TrafficKeyDerivationGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;",
        ">;",
        "Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

.field public static final enum SSL30:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

.field public static final enum TLS10:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

.field public static final enum TLS12:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

.field public static final enum TLS13:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;


# instance fields
.field final keyDerivationGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$S30TrafficKeyDerivationGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$S30TrafficKeyDerivationGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$1;)V

    const-string v3, "SSL30"

    const/4 v4, 0x0

    const-string v5, "kdf_ssl30"

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->SSL30:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T10TrafficKeyDerivationGenerator;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T10TrafficKeyDerivationGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$1;)V

    const-string v3, "TLS10"

    const/4 v4, 0x1

    const-string v5, "kdf_tls10"

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS10:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    .line 46
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T12TrafficKeyDerivationGenerator;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T12TrafficKeyDerivationGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$1;)V

    const-string v3, "TLS12"

    const/4 v4, 0x2

    const-string v5, "kdf_tls12"

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS12:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    .line 47
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivationGenerator;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T13TrafficKeyDerivationGenerator;-><init>(Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$1;)V

    const-string v2, "TLS13"

    const/4 v3, 0x3

    const-string v4, "kdf_tls13"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS13:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    .line 43
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->SSL30:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS10:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS12:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS13:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "keyDerivationGenerator"    # Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->name:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->keyDerivationGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    return-object v0
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .locals 2
    .param p0, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 59
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$1;->$SwitchMap$org$openjsse$sun$security$ssl$ProtocolVersion:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS13:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    return-object v0

    .line 68
    :pswitch_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS12:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    return-object v0

    .line 65
    :pswitch_2
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->TLS10:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    return-object v0

    .line 61
    :pswitch_3
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->SSL30:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .locals 1

    .line 43
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    return-object v0
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->keyDerivationGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v0

    return-object v0
.end method

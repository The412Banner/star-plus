.class final enum Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
.super Ljava/lang/Enum;
.source "SSLMasterKeyDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;",
        ">;",
        "Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

.field public static final enum SSL30:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

.field public static final enum TLS10:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

.field public static final enum TLS12:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    const/4 v1, 0x0

    const-string v2, "kdf_ssl30"

    const-string v3, "SSL30"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->SSL30:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    .line 41
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    const/4 v1, 0x1

    const-string v2, "kdf_tls10"

    const-string v3, "TLS10"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->TLS10:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    .line 42
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    const/4 v1, 0x2

    const-string v2, "kdf_tls12"

    const-string v3, "TLS12"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->TLS12:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    .line 39
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->SSL30:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->TLS10:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->TLS12:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    return-object v0
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
    .locals 2
    .param p0, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 51
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$1;->$SwitchMap$org$openjsse$sun$security$ssl$ProtocolVersion:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 60
    :pswitch_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->TLS12:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    return-object v0

    .line 57
    :pswitch_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->TLS10:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    return-object v0

    .line 53
    :pswitch_2
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->SSL30:Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
    .locals 1

    .line 39
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;

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

    .line 69
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method

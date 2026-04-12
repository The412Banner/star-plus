.class public Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;
.super Ljava/lang/Object;
.source "TlsKeyMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = 0xb480bf039c33324L


# instance fields
.field private final clientCipherKey:Ljavax/crypto/SecretKey;

.field private final clientIv:Ljavax/crypto/spec/IvParameterSpec;

.field private final clientMacKey:Ljavax/crypto/SecretKey;

.field private final serverCipherKey:Ljavax/crypto/SecretKey;

.field private final serverIv:Ljavax/crypto/spec/IvParameterSpec;

.field private final serverMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 7
    .param p1, "clientMacKey"    # Ljavax/crypto/SecretKey;
    .param p2, "serverMacKey"    # Ljavax/crypto/SecretKey;

    .line 65
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 7
    .param p1, "clientMacKey"    # Ljavax/crypto/SecretKey;
    .param p2, "serverMacKey"    # Ljavax/crypto/SecretKey;
    .param p3, "clientCipherKey"    # Ljavax/crypto/SecretKey;
    .param p4, "serverCipherKey"    # Ljavax/crypto/SecretKey;

    .line 82
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 0
    .param p1, "clientMacKey"    # Ljavax/crypto/SecretKey;
    .param p2, "serverMacKey"    # Ljavax/crypto/SecretKey;
    .param p3, "clientCipherKey"    # Ljavax/crypto/SecretKey;
    .param p4, "clientIv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p5, "serverCipherKey"    # Ljavax/crypto/SecretKey;
    .param p6, "serverIv"    # Ljavax/crypto/spec/IvParameterSpec;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->clientMacKey:Ljavax/crypto/SecretKey;

    .line 103
    iput-object p2, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->serverMacKey:Ljavax/crypto/SecretKey;

    .line 104
    iput-object p3, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->clientCipherKey:Ljavax/crypto/SecretKey;

    .line 105
    iput-object p5, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->serverCipherKey:Ljavax/crypto/SecretKey;

    .line 106
    iput-object p4, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->clientIv:Ljavax/crypto/spec/IvParameterSpec;

    .line 107
    iput-object p6, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->serverIv:Ljavax/crypto/spec/IvParameterSpec;

    .line 108
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "TlsKeyMaterial"

    return-object v0
.end method

.method public getClientCipherKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->clientCipherKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getClientIv()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->clientIv:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getClientMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->clientMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerCipherKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->serverCipherKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getServerIv()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->serverIv:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getServerMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;->serverMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

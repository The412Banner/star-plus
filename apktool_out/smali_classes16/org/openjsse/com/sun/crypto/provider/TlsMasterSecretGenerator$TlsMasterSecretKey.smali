.class final Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;
.super Ljava/lang/Object;
.source "TlsMasterSecretGenerator.java"

# interfaces
.implements Lsun/security/internal/interfaces/TlsMasterSecret;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TlsMasterSecretKey"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe263f0a97d26cb0L


# instance fields
.field private key:[B

.field private final majorVersion:I

.field private final minorVersion:I


# direct methods
.method constructor <init>([BII)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->key:[B

    .line 164
    iput p2, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->majorVersion:I

    .line 165
    iput p3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->minorVersion:I

    .line 166
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "TlsMasterSecret"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "RAW"

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 169
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 173
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;->minorVersion:I

    return v0
.end method

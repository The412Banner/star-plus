.class final Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator$NullReadCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullReadCipher"
.end annotation


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p1, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 762
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 763
    return-void
.end method


# virtual methods
.method public decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 10
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator$NullReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    .line 769
    .local v0, "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v1

    iget v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-eqz v1, :cond_0

    .line 770
    invoke-static {v0, p2, p1, p3}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1600(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B[B)V

    goto :goto_0

    .line 772
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator$NullReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/Authenticator;->increaseSequenceNumber()V

    .line 775
    :goto_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v4, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v5, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 777
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v9}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 775
    return-object v1
.end method

.method estimateFragmentSize(II)I
    .locals 2
    .param p1, "packetSize"    # I
    .param p2, "headerSize"    # I

    .line 782
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$NullReadCipherGenerator$NullReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 783
    .local v0, "macLen":I
    sub-int v1, p1, p2

    sub-int/2addr v1, v0

    return v1
.end method

.method isNullCipher()Z
    .locals 1

    .line 788
    const/4 v0, 0x1

    return v0
.end method

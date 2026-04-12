.class final Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator$NullWriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullWriteCipher"
.end annotation


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p1, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 807
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 808
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 2
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 833
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator$NullWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 834
    .local v0, "macLen":I
    sub-int v1, p1, p2

    sub-int/2addr v1, v0

    return v1
.end method

.method calculatePacketSize(II)I
    .locals 2
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 839
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator$NullWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 840
    .local v0, "macLen":I
    add-int v1, p1, p2

    add-int/2addr v1, v0

    return v1
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 813
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator$NullWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    .line 814
    .local v0, "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v1

    iget v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-eqz v1, :cond_0

    .line 815
    invoke-static {v0, p2, p1}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1700(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B)V

    goto :goto_0

    .line 817
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$NullWriteCipherGenerator$NullWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/Authenticator;->increaseSequenceNumber()V

    .line 820
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 821
    .local v1, "len":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 822
    return v1
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method isNullCipher()Z
    .locals 1

    .line 845
    const/4 v0, 0x1

    return v0
.end method

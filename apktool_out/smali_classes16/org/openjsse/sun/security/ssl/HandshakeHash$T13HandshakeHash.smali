.class final Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;
.super Ljava/lang/Object;
.source "HandshakeHash.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HandshakeHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T13HandshakeHash"
.end annotation


# instance fields
.field private final transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V
    .locals 2
    .param p1, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    .line 556
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 557
    .local v0, "md":Ljava/security/MessageDigest;
    instance-of v1, v0, Ljava/lang/Cloneable;

    if-eqz v1, :cond_0

    .line 558
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_0

    .line 560
    :cond_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 562
    :goto_0
    return-void
.end method


# virtual methods
.method public archived()[B
    .locals 2

    .line 577
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TLS 1.3 does not require archived."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public digest()[B
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 566
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T13HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 567
    return-void
.end method

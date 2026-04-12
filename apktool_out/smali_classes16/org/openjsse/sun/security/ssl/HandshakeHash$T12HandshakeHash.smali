.class final Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;
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
    name = "T12HandshakeHash"
.end annotation


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field private final transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V
    .locals 2
    .param p1, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    .line 518
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 519
    .local v0, "md":Ljava/security/MessageDigest;
    instance-of v1, v0, Ljava/lang/Cloneable;

    if-eqz v1, :cond_0

    .line 520
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 521
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 523
    :cond_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    .line 526
    :goto_0
    return-void
.end method


# virtual methods
.method public archived()[B
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v0

    return-object v0
.end method

.method public digest()[B
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 530
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->transcriptHash:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 531
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T12HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 534
    :cond_0
    return-void
.end method

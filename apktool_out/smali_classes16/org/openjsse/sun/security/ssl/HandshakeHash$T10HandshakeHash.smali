.class final Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;
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
    name = "T10HandshakeHash"
.end annotation


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field private final md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

.field private final sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V
    .locals 4
    .param p1, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const-string v0, "MD5"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 451
    .local v0, "mdMD5":Ljava/security/MessageDigest;
    const-string v1, "SHA"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 453
    .local v1, "mdSHA":Ljava/security/MessageDigest;
    const/4 v2, 0x0

    .line 454
    .local v2, "hasArchived":Z
    instance-of v3, v0, Ljava/lang/Cloneable;

    if-eqz v3, :cond_0

    .line 455
    new-instance v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;

    invoke-direct {v3, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_0

    .line 457
    :cond_0
    const/4 v2, 0x1

    .line 458
    new-instance v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    invoke-direct {v3, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 460
    :goto_0
    instance-of v3, v1, Ljava/lang/Cloneable;

    if-eqz v3, :cond_1

    .line 461
    new-instance v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;

    invoke-direct {v3, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_1

    .line 463
    :cond_1
    const/4 v2, 0x1

    .line 464
    new-instance v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    invoke-direct {v3, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 467
    :goto_1
    if-eqz v2, :cond_2

    .line 468
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    goto :goto_2

    .line 470
    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    .line 472
    :goto_2
    return-void
.end method


# virtual methods
.method public archived()[B
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    instance-of v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v0

    return-object v0

    .line 507
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v0

    return-object v0
.end method

.method public digest()[B
    .locals 5

    .line 485
    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 486
    .local v0, "digest":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v1

    const/16 v4, 0x14

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    return-object v0
.end method

.method digest(Ljava/lang/String;)[B
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 493
    const-string v0, "RSA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->digest()[B

    move-result-object v0

    return-object v0

    .line 496
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 476
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 477
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 478
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$T10HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 481
    :cond_0
    return-void
.end method

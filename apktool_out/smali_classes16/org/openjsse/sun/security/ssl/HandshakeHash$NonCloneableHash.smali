.class final Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;
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
    name = "NonCloneableHash"
.end annotation


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field private final md:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "md"    # Ljava/security/MessageDigest;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;->baos:Ljava/io/ByteArrayOutputStream;

    .line 615
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;->md:Ljava/security/MessageDigest;

    .line 616
    return-void
.end method


# virtual methods
.method public archived()[B
    .locals 1

    .line 632
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public digest()[B
    .locals 2

    .line 625
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 626
    .local v0, "bytes":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 627
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 620
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 621
    return-void
.end method

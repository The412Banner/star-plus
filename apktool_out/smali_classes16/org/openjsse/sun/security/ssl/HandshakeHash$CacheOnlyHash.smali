.class final Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;
.super Ljava/lang/Object;
.source "HandshakeHash.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HandshakeHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheOnlyHash"
.end annotation


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->baos:Ljava/io/ByteArrayOutputStream;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;)Ljava/io/ByteArrayOutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    .line 221
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->baos:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method


# virtual methods
.method public archived()[B
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method copy()Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;
    .locals 4

    .line 245
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;-><init>()V

    .line 247
    .local v0, "result":Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->baos:Ljava/io/ByteArrayOutputStream;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    nop

    .line 251
    return-object v0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unable to to clone hash state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public digest()[B
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not expected call to handshake hash digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 230
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CacheOnlyHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 231
    return-void
.end method

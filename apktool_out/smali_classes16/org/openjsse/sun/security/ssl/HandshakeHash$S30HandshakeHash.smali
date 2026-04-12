.class final Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;
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
    name = "S30HandshakeHash"
.end annotation


# static fields
.field static final MD5_pad1:[B

.field static final MD5_pad2:[B

.field static final SHA_pad1:[B

.field static final SHA_pad2:[B

.field private static final SSL_CLIENT:[B

.field private static final SSL_SERVER:[B


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field private final md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

.field private final mdMD5:Ljava/security/MessageDigest;

.field private final mdSHA:Ljava/security/MessageDigest;

.field private final sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 256
    const/16 v0, 0x36

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->genPad(II)[B

    move-result-object v2

    sput-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->MD5_pad1:[B

    .line 257
    const/16 v2, 0x5c

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->genPad(II)[B

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->MD5_pad2:[B

    .line 259
    const/16 v1, 0x28

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->genPad(II)[B

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad1:[B

    .line 260
    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->genPad(II)[B

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad2:[B

    .line 262
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SSL_CLIENT:[B

    .line 263
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SSL_SERVER:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/CipherSuite;)V
    .locals 3
    .param p1, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const-string v0, "MD5"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdMD5:Ljava/security/MessageDigest;

    .line 273
    const-string v0, "SHA"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdSHA:Ljava/security/MessageDigest;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "hasArchived":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdMD5:Ljava/security/MessageDigest;

    instance-of v1, v1, Ljava/lang/Cloneable;

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdMD5:Ljava/security/MessageDigest;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_0

    .line 279
    :cond_0
    const/4 v0, 0x1

    .line 280
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdMD5:Ljava/security/MessageDigest;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 282
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdSHA:Ljava/security/MessageDigest;

    instance-of v1, v1, Ljava/lang/Cloneable;

    if-eqz v1, :cond_1

    .line 283
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdSHA:Ljava/security/MessageDigest;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    goto :goto_1

    .line 285
    :cond_1
    const/4 v0, 0x1

    .line 286
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdSHA:Ljava/security/MessageDigest;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;-><init>(Ljava/security/MessageDigest;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    .line 289
    :goto_1
    if-eqz v0, :cond_2

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    goto :goto_2

    .line 292
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    .line 294
    :goto_2
    return-void
.end method

.method private cloneMd5()Ljava/security/MessageDigest;
    .locals 3

    .line 374
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdMD5:Ljava/security/MessageDigest;

    instance-of v0, v0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdMD5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .local v0, "md5Clone":Ljava/security/MessageDigest;
    goto :goto_0

    .line 377
    .end local v0    # "md5Clone":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MessageDigest does no support clone operation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    .end local v0    # "ex":Ljava/lang/CloneNotSupportedException;
    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 383
    .local v0, "md5Clone":Ljava/security/MessageDigest;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 386
    :goto_0
    return-object v0
.end method

.method private cloneSha()Ljava/security/MessageDigest;
    .locals 3

    .line 391
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdSHA:Ljava/security/MessageDigest;

    instance-of v0, v0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->mdSHA:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .local v0, "shaClone":Ljava/security/MessageDigest;
    goto :goto_0

    .line 394
    .end local v0    # "shaClone":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MessageDigest does no support clone operation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    .end local v0    # "ex":Ljava/lang/CloneNotSupportedException;
    :cond_0
    const-string v0, "SHA"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 400
    .local v0, "shaClone":Ljava/security/MessageDigest;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 403
    :goto_0
    return-object v0
.end method

.method private static digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V
    .locals 3
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    .line 429
    :try_start_0
    instance-of v0, p0, Lorg/openjsse/sun/security/util/MessageDigestSpi2;

    if-eqz v0, :cond_0

    .line 430
    move-object v0, p0

    check-cast v0, Lorg/openjsse/sun/security/util/MessageDigestSpi2;

    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/util/MessageDigestSpi2;->engineUpdate(Ljavax/crypto/SecretKey;)V

    .line 439
    nop

    .line 440
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Digest does not support implUpdate(SecretKey)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "md":Ljava/security/MessageDigest;
    .end local p1    # "key":Ljavax/crypto/SecretKey;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .restart local p0    # "md":Ljava/security/MessageDigest;
    .restart local p1    # "key":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not obtain encoded key and MessageDigest cannot digest key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static genPad(II)[B
    .locals 2
    .param p0, "b"    # I
    .param p1, "count"    # I

    .line 367
    new-array v0, p1, [B

    .line 368
    .local v0, "padding":[B
    int-to-byte v1, p0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 369
    return-object v0
.end method

.method private static updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V
    .locals 2
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "pad1"    # [B
    .param p2, "pad2"    # [B
    .param p3, "masterSecret"    # Ljavax/crypto/SecretKey;

    .line 408
    const-string v0, "RAW"

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 410
    .local v0, "keyBytes":[B
    :goto_0
    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    .line 413
    :cond_1
    invoke-static {p0, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V

    .line 415
    :goto_1
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 416
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 418
    .local v1, "temp":[B
    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    .line 421
    :cond_2
    invoke-static {p0, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->digestKey(Ljava/security/MessageDigest;Ljavax/crypto/SecretKey;)V

    .line 423
    :goto_2
    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 424
    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 425
    return-void
.end method


# virtual methods
.method public archived()[B
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    instance-of v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeHash$NonCloneableHash;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v0

    return-object v0

    .line 321
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->archived()[B

    move-result-object v0

    return-object v0
.end method

.method public digest()[B
    .locals 5

    .line 307
    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 308
    .local v0, "digest":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->digest()[B

    move-result-object v1

    const/16 v4, 0x14

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    return-object v0
.end method

.method digest(Ljava/lang/String;Ljavax/crypto/SecretKey;)[B
    .locals 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "masterSecret"    # Ljavax/crypto/SecretKey;

    .line 348
    const-string v0, "RSA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->cloneMd5()Ljava/security/MessageDigest;

    move-result-object v0

    .line 350
    .local v0, "md5Clone":Ljava/security/MessageDigest;
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->cloneSha()Ljava/security/MessageDigest;

    move-result-object v1

    .line 351
    .local v1, "shaClone":Ljava/security/MessageDigest;
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->MD5_pad1:[B

    sget-object v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->MD5_pad2:[B

    invoke-static {v0, v2, v3, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    .line 352
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad1:[B

    sget-object v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad2:[B

    invoke-static {v1, v2, v3, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    .line 354
    const/16 v2, 0x24

    new-array v2, v2, [B

    .line 355
    .local v2, "digest":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/16 v6, 0x14

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    return-object v2

    .line 360
    .end local v0    # "md5Clone":Ljava/security/MessageDigest;
    .end local v1    # "shaClone":Ljava/security/MessageDigest;
    .end local v2    # "digest":[B
    :cond_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->cloneSha()Ljava/security/MessageDigest;

    move-result-object v0

    .line 361
    .local v0, "shaClone":Ljava/security/MessageDigest;
    sget-object v1, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad1:[B

    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad2:[B

    invoke-static {v0, v1, v2, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    .line 362
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method digest(ZLjavax/crypto/SecretKey;)[B
    .locals 7
    .param p1, "useClientLabel"    # Z
    .param p2, "masterSecret"    # Ljavax/crypto/SecretKey;

    .line 326
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->cloneMd5()Ljava/security/MessageDigest;

    move-result-object v0

    .line 327
    .local v0, "md5Clone":Ljava/security/MessageDigest;
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->cloneSha()Ljava/security/MessageDigest;

    move-result-object v1

    .line 329
    .local v1, "shaClone":Ljava/security/MessageDigest;
    if-eqz p1, :cond_0

    .line 330
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SSL_CLIENT:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 331
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SSL_CLIENT:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0

    .line 333
    :cond_0
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SSL_SERVER:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 334
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SSL_SERVER:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 337
    :goto_0
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->MD5_pad1:[B

    sget-object v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->MD5_pad2:[B

    invoke-static {v0, v2, v3, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    .line 338
    sget-object v2, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad1:[B

    sget-object v3, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->SHA_pad2:[B

    invoke-static {v1, v2, v3, p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->updateDigest(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    .line 340
    const/16 v2, 0x24

    new-array v2, v2, [B

    .line 341
    .local v2, "digest":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/16 v6, 0x14

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    return-object v2
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 298
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->md5:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 299
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->sha:Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;->update([BII)V

    .line 300
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$S30HandshakeHash;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 303
    :cond_0
    return-void
.end method

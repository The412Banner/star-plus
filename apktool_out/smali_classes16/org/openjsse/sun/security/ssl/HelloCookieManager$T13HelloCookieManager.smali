.class final Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;
.super Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.source "HelloCookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloCookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13HelloCookieManager"
.end annotation


# instance fields
.field private final cookieSecret:[B

.field private cookieVersion:I

.field private final legacySecret:[B

.field final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 208
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HelloCookieManager;-><init>()V

    .line 209
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->secureRandom:Ljava/security/SecureRandom;

    .line 210
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieVersion:I

    .line 211
    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieSecret:[B

    .line 212
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->legacySecret:[B

    .line 214
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieSecret:[B

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 215
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieSecret:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->legacySecret:[B

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    return-void
.end method


# virtual methods
.method createCookie(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B
    .locals 12
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieVersion:I

    .line 226
    .local v0, "version":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieSecret:[B

    .line 229
    .local v1, "secret":[B
    iget v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieVersion:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieSecret:[B

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->legacySecret:[B

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->secureRandom:Ljava/security/SecureRandom;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieSecret:[B

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 234
    :cond_0
    iget v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieVersion:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieVersion:I

    .line 235
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 239
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getHeaderBytes()[B

    move-result-object v5

    .line 240
    .local v5, "headerBytes":[B
    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 241
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 244
    .local v6, "headerCookie":[B
    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 245
    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v7

    .line 254
    .local v7, "clientHelloHash":[B
    iget-object v8, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v8, v8, Lorg/openjsse/sun/security/ssl/CipherSuite;->id:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    iget-object v9, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v9, v9, Lorg/openjsse/sun/security/ssl/CipherSuite;->id:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    shr-int/lit8 v10, v0, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x3

    new-array v11, v11, [B

    aput-byte v8, v11, v3

    aput-byte v9, v11, v4

    const/4 v4, 0x2

    aput-byte v10, v11, v4

    move-object v4, v11

    .line 260
    .local v4, "prefix":[B
    array-length v8, v4

    array-length v9, v6

    add-int/2addr v8, v9

    array-length v9, v7

    add-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 262
    .local v8, "cookie":[B
    array-length v9, v4

    array-length v10, v6

    invoke-static {v6, v3, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    array-length v9, v4

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v7

    invoke-static {v7, v3, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    return-object v8

    .line 235
    .end local v0    # "version":I
    .end local v1    # "secret":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v4    # "prefix":[B
    .end local v5    # "headerBytes":[B
    .end local v6    # "headerCookie":[B
    .end local v7    # "clientHelloHash":[B
    .end local v8    # "cookie":[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isCookieValid(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;[B)Z
    .locals 17
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p3, "cookie"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v0, 0x0

    if-eqz v3, :cond_6

    array-length v4, v3

    const/16 v5, 0x20

    if-gt v4, v5, :cond_0

    move-object/from16 v12, p2

    goto/16 :goto_3

    .line 278
    :cond_0
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 279
    .local v4, "csId":I
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/CipherSuite;->valueOf(I)Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v6

    .line 280
    .local v6, "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    if-eqz v6, :cond_5

    iget-object v7, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v7, v7, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    if-nez v7, :cond_1

    move-object/from16 v12, p2

    goto/16 :goto_2

    .line 284
    :cond_1
    iget-object v7, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v7, v7, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    .line 285
    .local v7, "hashLen":I
    array-length v8, v3

    mul-int/lit8 v9, v7, 0x2

    const/4 v10, 0x3

    add-int/2addr v9, v10

    if-eq v8, v9, :cond_2

    .line 286
    return v0

    .line 289
    :cond_2
    add-int/lit8 v8, v7, 0x3

    .line 290
    invoke-static {v3, v10, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 291
    .local v8, "prevHeadCookie":[B
    add-int/lit8 v9, v7, 0x3

    array-length v11, v3

    .line 292
    invoke-static {v3, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 295
    .local v9, "prevClientHelloHash":[B
    monitor-enter p0

    .line 296
    :try_start_0
    iget v11, v1, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieVersion:I

    shr-int/lit8 v11, v11, 0x18

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    const/4 v12, 0x2

    aget-byte v13, v3, v12

    if-ne v11, v13, :cond_3

    .line 297
    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->cookieSecret:[B

    .local v11, "secret":[B
    goto :goto_0

    .line 299
    .end local v11    # "secret":[B
    :cond_3
    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/HelloCookieManager$T13HelloCookieManager;->legacySecret:[B

    .line 301
    .restart local v11    # "secret":[B
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v13, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget-object v13, v13, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-static {v13}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 304
    .local v13, "md":Ljava/security/MessageDigest;
    invoke-virtual/range {p2 .. p2}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getHeaderBytes()[B

    move-result-object v14

    .line 305
    .local v14, "headerBytes":[B
    invoke-virtual {v13, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 306
    invoke-virtual {v13, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v15

    .line 308
    .local v15, "headerCookie":[B
    invoke-static {v15, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    if-nez v16, :cond_4

    .line 309
    return v0

    .line 322
    :cond_4
    sget-object v10, Lorg/openjsse/sun/security/ssl/ServerHello;->hrrReproducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 323
    move-object/from16 v12, p2

    invoke-interface {v10, v2, v12}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v10

    .line 324
    .local v10, "hrrMessage":[B
    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v10}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->push([B)V

    .line 327
    add-int/lit8 v5, v7, 0x4

    new-array v5, v5, [B

    .line 328
    .local v5, "hashedClientHello":[B
    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    aput-byte v3, v5, v0

    .line 329
    const/4 v3, 0x1

    aput-byte v0, v5, v3

    .line 330
    const/4 v3, 0x2

    aput-byte v0, v5, v3

    .line 331
    and-int/lit16 v3, v7, 0xff

    int-to-byte v3, v3

    const/16 v16, 0x3

    aput-byte v3, v5, v16

    .line 332
    const/4 v3, 0x4

    invoke-static {v9, v0, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0, v5}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->push([B)V

    .line 337
    const/4 v0, 0x1

    return v0

    .line 301
    .end local v5    # "hashedClientHello":[B
    .end local v10    # "hrrMessage":[B
    .end local v11    # "secret":[B
    .end local v13    # "md":Ljava/security/MessageDigest;
    .end local v14    # "headerBytes":[B
    .end local v15    # "headerCookie":[B
    :catchall_0
    move-exception v0

    move-object/from16 v12, p2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 280
    .end local v7    # "hashLen":I
    .end local v8    # "prevHeadCookie":[B
    .end local v9    # "prevClientHelloHash":[B
    :cond_5
    move-object/from16 v12, p2

    .line 281
    :goto_2
    return v0

    .line 274
    .end local v4    # "csId":I
    .end local v6    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_6
    move-object/from16 v12, p2

    .line 275
    :goto_3
    return v0
.end method

.class abstract Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "TlsPrfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator$V10;,
        Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator$V12;
    }
.end annotation


# static fields
.field private static final B0:[B

.field private static final HMAC_ipad128:[B

.field private static final HMAC_ipad64:[B

.field private static final HMAC_opad128:[B

.field private static final HMAC_opad64:[B

.field static final LABEL_CLIENT_WRITE_KEY:[B

.field static final LABEL_EXTENDED_MASTER_SECRET:[B

.field static final LABEL_IV_BLOCK:[B

.field static final LABEL_KEY_EXPANSION:[B

.field static final LABEL_MASTER_SECRET:[B

.field static final LABEL_SERVER_WRITE_KEY:[B

.field private static final MSG:Ljava/lang/String; = "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

.field static final SSL3_CONST:[[B


# instance fields
.field private spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->B0:[B

    .line 55
    const/16 v0, 0xd

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_MASTER_SECRET:[B

    .line 58
    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_EXTENDED_MASTER_SECRET:[B

    .line 63
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_KEY_EXPANSION:[B

    .line 66
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_CLIENT_WRITE_KEY:[B

    .line 70
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_SERVER_WRITE_KEY:[B

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_IV_BLOCK:[B

    .line 81
    const/16 v0, 0x36

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v2

    sput-object v2, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad64:[B

    .line 82
    const/16 v2, 0x80

    invoke-static {v0, v2}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad128:[B

    .line 83
    const/16 v0, 0x5c

    invoke-static {v0, v1}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad64:[B

    .line 84
    const/16 v0, 0x5c

    invoke-static {v0, v2}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad128:[B

    .line 87
    invoke-static {}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->genConst()[[B

    move-result-object v0

    sput-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->SSL3_CONST:[[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x61t
        0x73t
        0x74t
        0x65t
        0x72t
        0x20t
        0x73t
        0x65t
        0x63t
        0x72t
        0x65t
        0x74t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x65t
        0x78t
        0x74t
        0x65t
        0x6et
        0x64t
        0x65t
        0x64t
        0x20t
        0x6dt
        0x61t
        0x73t
        0x74t
        0x65t
        0x72t
        0x20t
        0x73t
        0x65t
        0x63t
        0x72t
        0x65t
        0x74t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6bt
        0x65t
        0x79t
        0x20t
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x73t
        0x69t
        0x6ft
        0x6et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    :array_4
    .array-data 1
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    :array_5
    .array-data 1
        0x49t
        0x56t
        0x20t
        0x62t
        0x6ct
        0x6ft
        0x63t
        0x6bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 124
    return-void
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "b1"    # [B
    .param p1, "b2"    # [B

    .line 96
    array-length v0, p0

    .line 97
    .local v0, "n1":I
    array-length v1, p1

    .line 98
    .local v1, "n2":I
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 99
    .local v2, "b":[B
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    return-object v2
.end method

.method static doTLS10PRF([B[B[BI)[B
    .locals 8
    .param p0, "secret"    # [B
    .param p1, "labelBytes"    # [B
    .param p2, "seed"    # [B
    .param p3, "outputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 224
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 225
    .local v0, "md5":Ljava/security/MessageDigest;
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 226
    .local v7, "sha":Ljava/security/MessageDigest;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS10PRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v1

    return-object v1
.end method

.method static doTLS10PRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B
    .locals 18
    .param p0, "secret"    # [B
    .param p1, "labelBytes"    # [B
    .param p2, "seed"    # [B
    .param p3, "outputLength"    # I
    .param p4, "md5"    # Ljava/security/MessageDigest;
    .param p5, "sha"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 245
    if-nez p0, :cond_0

    .line 246
    sget-object v0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->B0:[B

    .end local p0    # "secret":[B
    .local v0, "secret":[B
    goto :goto_0

    .line 245
    .end local v0    # "secret":[B
    .restart local p0    # "secret":[B
    :cond_0
    move-object/from16 v0, p0

    .line 248
    .end local p0    # "secret":[B
    .restart local v0    # "secret":[B
    :goto_0
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    .line 249
    .local v1, "off":I
    array-length v2, v0

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 251
    .local v2, "seclen":I
    move-object v3, v0

    .line 252
    .local v3, "secKey":[B
    move v4, v2

    .line 253
    .local v4, "keyLen":I
    move/from16 v5, p3

    new-array v15, v5, [B

    .line 257
    .local v15, "output":[B
    const/16 v14, 0x40

    if-le v2, v14, :cond_1

    .line 258
    const/4 v6, 0x0

    move-object/from16 v13, p4

    invoke-virtual {v13, v0, v6, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 259
    invoke-virtual/range {p4 .. p4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 260
    array-length v4, v3

    goto :goto_1

    .line 257
    :cond_1
    move-object/from16 v13, p4

    .line 262
    :goto_1
    sget-object v6, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad64:[B

    .line 263
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, [B

    sget-object v6, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad64:[B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, [B

    .line 262
    const/16 v7, 0x10

    const/4 v9, 0x0

    move-object/from16 v6, p4

    move-object v8, v3

    move v10, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v16, v15

    .end local v15    # "output":[B
    .local v16, "output":[B
    move-object/from16 v15, v17

    invoke-static/range {v6 .. v15}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->expand(Ljava/security/MessageDigest;I[BII[B[B[B[B[B)V

    .line 267
    const/16 v6, 0x40

    if-le v2, v6, :cond_2

    .line 268
    move-object/from16 v15, p5

    invoke-virtual {v15, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 269
    invoke-virtual/range {p5 .. p5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 270
    array-length v4, v3

    .line 271
    const/4 v1, 0x0

    goto :goto_2

    .line 267
    :cond_2
    move-object/from16 v15, p5

    .line 273
    :goto_2
    sget-object v6, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad64:[B

    .line 274
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, [B

    sget-object v6, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad64:[B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, [B

    .line 273
    const/16 v7, 0x14

    move-object/from16 v6, p5

    move-object v8, v3

    move v9, v1

    move v10, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    invoke-static/range {v6 .. v15}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->expand(Ljava/security/MessageDigest;I[BII[B[B[B[B[B)V

    .line 276
    return-object v16
.end method

.method static doTLS12PRF([B[B[BILjava/lang/String;II)[B
    .locals 8
    .param p0, "secret"    # [B
    .param p1, "labelBytes"    # [B
    .param p2, "seed"    # [B
    .param p3, "outputLength"    # I
    .param p4, "prfHash"    # Ljava/lang/String;
    .param p5, "prfHashLength"    # I
    .param p6, "prfBlockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 175
    if-eqz p4, :cond_0

    .line 178
    invoke-static {p4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 179
    .local v7, "prfMD":Ljava/security/MessageDigest;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v7

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS12PRF([B[B[BILjava/security/MessageDigest;II)[B

    move-result-object v0

    return-object v0

    .line 176
    .end local v7    # "prfMD":Ljava/security/MessageDigest;
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Unspecified PRF algorithm"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static doTLS12PRF([B[B[BILjava/security/MessageDigest;II)[B
    .locals 17
    .param p0, "secret"    # [B
    .param p1, "labelBytes"    # [B
    .param p2, "seed"    # [B
    .param p3, "outputLength"    # I
    .param p4, "mdPRF"    # Ljava/security/MessageDigest;
    .param p5, "mdPRFLen"    # I
    .param p6, "mdPRFBlockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 188
    move/from16 v0, p6

    if-nez p0, :cond_0

    .line 189
    sget-object v1, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->B0:[B

    .end local p0    # "secret":[B
    .local v1, "secret":[B
    goto :goto_0

    .line 188
    .end local v1    # "secret":[B
    .restart local p0    # "secret":[B
    :cond_0
    move-object/from16 v1, p0

    .line 193
    .end local p0    # "secret":[B
    .restart local v1    # "secret":[B
    :goto_0
    array-length v2, v1

    if-le v2, v0, :cond_1

    .line 194
    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    goto :goto_1

    .line 193
    :cond_1
    move-object/from16 v2, p4

    .line 197
    :goto_1
    move/from16 v13, p3

    new-array v14, v13, [B

    .line 201
    .local v14, "output":[B
    sparse-switch v0, :sswitch_data_0

    .line 211
    new-instance v3, Ljava/security/DigestException;

    const-string v4, "Unexpected block size."

    invoke-direct {v3, v4}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :sswitch_0
    sget-object v3, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad128:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 208
    .local v3, "ipad":[B
    sget-object v4, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad128:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 209
    .local v4, "opad":[B
    move-object v15, v3

    move-object/from16 v16, v4

    goto :goto_2

    .line 203
    .end local v3    # "ipad":[B
    .end local v4    # "opad":[B
    :sswitch_1
    sget-object v3, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_ipad64:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 204
    .restart local v3    # "ipad":[B
    sget-object v4, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->HMAC_opad64:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 205
    .restart local v4    # "opad":[B
    move-object v15, v3

    move-object/from16 v16, v4

    .line 215
    .end local v3    # "ipad":[B
    .end local v4    # "opad":[B
    .local v15, "ipad":[B
    .local v16, "opad":[B
    :goto_2
    const/4 v6, 0x0

    array-length v7, v1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v5, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-static/range {v3 .. v12}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->expand(Ljava/security/MessageDigest;I[BII[B[B[B[B[B)V

    .line 218
    return-object v14

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private static expand(Ljava/security/MessageDigest;I[BII[B[B[B[B[B)V
    .locals 17
    .param p0, "digest"    # Ljava/security/MessageDigest;
    .param p1, "hmacSize"    # I
    .param p2, "secret"    # [B
    .param p3, "secOff"    # I
    .param p4, "secLen"    # I
    .param p5, "label"    # [B
    .param p6, "seed"    # [B
    .param p7, "output"    # [B
    .param p8, "pad1"    # [B
    .param p9, "pad2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 296
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v8, p4

    if-ge v7, v8, :cond_0

    .line 297
    aget-byte v9, v5, v7

    add-int v10, v7, p3

    aget-byte v10, p2, v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 298
    aget-byte v9, v6, v7

    add-int v10, v7, p3

    aget-byte v10, p2, v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 296
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 301
    .end local v7    # "i":I
    :cond_0
    new-array v7, v1, [B

    .line 302
    .local v7, "tmp":[B
    const/4 v9, 0x0

    .line 315
    .local v9, "aBytes":[B
    array-length v10, v4

    .line 316
    .local v10, "remaining":I
    const/4 v11, 0x0

    .line 317
    .local v11, "ofs":I
    :goto_1
    if-lez v10, :cond_4

    .line 322
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 323
    if-nez v9, :cond_1

    .line 324
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 325
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    .line 327
    :cond_1
    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 329
    :goto_2
    const/4 v12, 0x0

    invoke-virtual {v0, v7, v12, v1}, Ljava/security/MessageDigest;->digest([BII)I

    .line 332
    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 333
    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 334
    if-nez v9, :cond_2

    .line 335
    new-array v9, v1, [B

    .line 337
    :cond_2
    invoke-virtual {v0, v9, v12, v1}, Ljava/security/MessageDigest;->digest([BII)I

    .line 343
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 344
    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 345
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 346
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 347
    invoke-virtual {v0, v7, v12, v1}, Ljava/security/MessageDigest;->digest([BII)I

    .line 350
    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 351
    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 352
    invoke-virtual {v0, v7, v12, v1}, Ljava/security/MessageDigest;->digest([BII)I

    .line 354
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 355
    .local v12, "k":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v12, :cond_3

    .line 356
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "ofs":I
    .local v14, "ofs":I
    aget-byte v15, v4, v11

    aget-byte v16, v7, v13

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v4, v11

    .line 355
    add-int/lit8 v13, v13, 0x1

    move v11, v14

    goto :goto_3

    .line 358
    .end local v13    # "i":I
    .end local v14    # "ofs":I
    .restart local v11    # "ofs":I
    :cond_3
    sub-int/2addr v10, v12

    .line 359
    .end local v12    # "k":I
    goto :goto_1

    .line 360
    :cond_4
    return-void
.end method

.method private static genConst()[[B
    .locals 5

    .line 105
    const/16 v0, 0xa

    .line 106
    .local v0, "n":I
    new-array v1, v0, [[B

    .line 107
    .local v1, "arr":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 108
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    .line 109
    .local v3, "b":[B
    add-int/lit8 v4, v2, 0x41

    int-to-byte v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 110
    aput-object v3, v1, v2

    .line 107
    .end local v3    # "b":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static genPad(BI)[B
    .locals 1
    .param p0, "b"    # B
    .param p1, "count"    # I

    .line 90
    new-array v0, p1, [B

    .line 91
    .local v0, "padding":[B
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([BB)V

    .line 92
    return-object v0
.end method


# virtual methods
.method engineGenerateKey0(Z)Ljavax/crypto/SecretKey;
    .locals 12
    .param p1, "tls12"    # Z

    .line 149
    const-string v0, "Could not generate PRF"

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 154
    .local v1, "key":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 156
    .local v2, "secret":[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v10, v3

    .line 157
    .local v10, "labelBytes":[B
    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getOutputLength()I

    move-result v3

    move v11, v3

    .line 158
    .local v11, "n":I
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    .line 159
    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getSeed()[B

    move-result-object v5

    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    .line 160
    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getPRFHashLength()I

    move-result v8

    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    .line 161
    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getPRFBlockSize()I

    move-result v9

    .line 159
    move-object v3, v2

    move-object v4, v10

    move v6, v11

    invoke-static/range {v3 .. v9}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS12PRF([B[B[BILjava/lang/String;II)[B

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    .line 162
    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v10, v3, v11}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS10PRF([B[B[BI)[B

    move-result-object v3

    :goto_1
    nop

    .line 163
    .local v3, "prfBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "TlsPrf"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 166
    .end local v3    # "prfBytes":[B
    .end local v10    # "labelBytes":[B
    .end local v11    # "n":I
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/security/ProviderException;

    invoke-direct {v4, v0, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 164
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 165
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/security/ProviderException;

    invoke-direct {v4, v0, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 150
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    .end local v2    # "secret":[B
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsPrfGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 145
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 127
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 133
    instance-of v0, p1, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    if-eqz v0, :cond_2

    .line 136
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    .line 137
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 138
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_1

    const-string v1, "RAW"

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Key encoding format must be RAW"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 134
    .end local v0    # "key":Ljavax/crypto/SecretKey;
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

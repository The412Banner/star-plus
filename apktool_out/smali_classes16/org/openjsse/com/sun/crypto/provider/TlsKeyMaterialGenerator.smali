.class public final Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "TlsKeyMaterialGenerator.java"


# static fields
.field private static final MSG:Ljava/lang/String; = "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"


# instance fields
.field private protocolVersion:I

.field private spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 55
    return-void
.end method

.method private engineGenerateKey0()Ljavax/crypto/SecretKey;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 100
    .local v1, "masterSecret":[B
    iget-object v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getClientRandom()[B

    move-result-object v9

    .line 101
    .local v9, "clientRandom":[B
    iget-object v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getServerRandom()[B

    move-result-object v10

    .line 103
    .local v10, "serverRandom":[B
    const/4 v11, 0x0

    .line 104
    .local v11, "clientMacKey":Ljavax/crypto/SecretKey;
    const/4 v12, 0x0

    .line 105
    .local v12, "serverMacKey":Ljavax/crypto/SecretKey;
    const/4 v13, 0x0

    .line 106
    .local v13, "clientCipherKey":Ljavax/crypto/SecretKey;
    const/4 v14, 0x0

    .line 107
    .local v14, "serverCipherKey":Ljavax/crypto/SecretKey;
    const/4 v15, 0x0

    .line 108
    .local v15, "clientIv":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v16, 0x0

    .line 110
    .local v16, "serverIv":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMacKeyLength()I

    move-result v8

    .line 111
    .local v8, "macLength":I
    iget-object v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getExpandedCipherKeyLength()I

    move-result v7

    .line 112
    .local v7, "expandedKeyLength":I
    const/4 v2, 0x1

    if-eqz v7, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move/from16 v23, v3

    .line 113
    .local v23, "isExportable":Z
    iget-object v3, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getCipherKeyLength()I

    move-result v5

    .line 114
    .local v5, "keyLength":I
    iget-object v3, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getIvLength()I

    move-result v4

    .line 116
    .local v4, "ivLength":I
    add-int v3, v8, v5

    if-eqz v23, :cond_1

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    move/from16 v17, v4

    :goto_1
    add-int v3, v3, v17

    .line 118
    .local v3, "keyBlockLen":I
    shl-int/2addr v3, v2

    .line 119
    new-array v2, v3, [B

    .line 122
    .local v2, "keyBlock":[B
    const/16 v17, 0x0

    .line 123
    .local v17, "md5":Ljava/security/MessageDigest;
    const/16 v18, 0x0

    .line 126
    .local v18, "sha":Ljava/security/MessageDigest;
    iget v6, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    move-object/from16 v20, v2

    .end local v2    # "keyBlock":[B
    .local v20, "keyBlock":[B
    const/16 v2, 0x303

    move-object/from16 v21, v11

    .end local v11    # "clientMacKey":Ljavax/crypto/SecretKey;
    .local v21, "clientMacKey":Ljavax/crypto/SecretKey;
    const/16 v11, 0x301

    if-lt v6, v2, :cond_2

    .line 128
    invoke-static {v10, v9}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->concat([B[B)[B

    move-result-object v22

    .line 129
    .local v22, "seed":[B
    sget-object v6, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_KEY_EXPANSION:[B

    iget-object v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    .line 130
    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v24

    iget-object v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    .line 131
    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getPRFHashLength()I

    move-result v25

    iget-object v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getPRFBlockSize()I

    move-result v26

    .line 129
    move-object v2, v1

    move/from16 v27, v3

    .end local v3    # "keyBlockLen":I
    .local v27, "keyBlockLen":I
    move-object v3, v6

    move v6, v4

    .end local v4    # "ivLength":I
    .local v6, "ivLength":I
    move-object/from16 v4, v22

    move/from16 v28, v5

    .end local v5    # "keyLength":I
    .local v28, "keyLength":I
    move/from16 v5, v27

    move/from16 v29, v6

    .end local v6    # "ivLength":I
    .local v29, "ivLength":I
    move-object/from16 v6, v24

    move/from16 v24, v7

    .end local v7    # "expandedKeyLength":I
    .local v24, "expandedKeyLength":I
    move/from16 v7, v25

    move/from16 v30, v8

    .end local v8    # "macLength":I
    .local v30, "macLength":I
    move/from16 v8, v26

    invoke-static/range {v2 .. v8}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS12PRF([B[B[BILjava/lang/String;II)[B

    move-result-object v2

    .line 132
    .end local v20    # "keyBlock":[B
    .end local v22    # "seed":[B
    .restart local v2    # "keyBlock":[B
    move-object/from16 v11, v17

    move-object/from16 v25, v18

    goto/16 :goto_4

    .end local v2    # "keyBlock":[B
    .end local v24    # "expandedKeyLength":I
    .end local v27    # "keyBlockLen":I
    .end local v28    # "keyLength":I
    .end local v29    # "ivLength":I
    .end local v30    # "macLength":I
    .restart local v3    # "keyBlockLen":I
    .restart local v4    # "ivLength":I
    .restart local v5    # "keyLength":I
    .restart local v7    # "expandedKeyLength":I
    .restart local v8    # "macLength":I
    .restart local v20    # "keyBlock":[B
    :cond_2
    move/from16 v27, v3

    move/from16 v29, v4

    move/from16 v28, v5

    move/from16 v24, v7

    move/from16 v30, v8

    .end local v3    # "keyBlockLen":I
    .end local v4    # "ivLength":I
    .end local v5    # "keyLength":I
    .end local v7    # "expandedKeyLength":I
    .end local v8    # "macLength":I
    .restart local v24    # "expandedKeyLength":I
    .restart local v27    # "keyBlockLen":I
    .restart local v28    # "keyLength":I
    .restart local v29    # "ivLength":I
    .restart local v30    # "macLength":I
    iget v2, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const-string v3, "SHA1"

    const-string v4, "MD5"

    if-lt v2, v11, :cond_3

    .line 134
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v17

    .line 135
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    .line 136
    invoke-static {v10, v9}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->concat([B[B)[B

    move-result-object v8

    .line 137
    .local v8, "seed":[B
    sget-object v3, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_KEY_EXPANSION:[B

    move-object v2, v1

    move-object v4, v8

    move/from16 v5, v27

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS10PRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v2

    .line 139
    .end local v8    # "seed":[B
    .end local v20    # "keyBlock":[B
    .restart local v2    # "keyBlock":[B
    move-object/from16 v11, v17

    move-object/from16 v25, v18

    goto :goto_4

    .line 141
    .end local v2    # "keyBlock":[B
    .restart local v20    # "keyBlock":[B
    :cond_3
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 142
    .end local v17    # "md5":Ljava/security/MessageDigest;
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 143
    .end local v18    # "sha":Ljava/security/MessageDigest;
    .local v3, "sha":Ljava/security/MessageDigest;
    move/from16 v4, v27

    .end local v27    # "keyBlockLen":I
    .local v4, "keyBlockLen":I
    new-array v5, v4, [B

    .line 145
    .end local v20    # "keyBlock":[B
    .local v5, "keyBlock":[B
    const/16 v6, 0x14

    new-array v7, v6, [B

    .line 146
    .local v7, "tmp":[B
    const/4 v8, 0x0

    .local v8, "i":I
    move/from16 v17, v4

    move/from16 v11, v17

    .line 147
    .local v11, "remaining":I
    :goto_2
    if-lez v11, :cond_5

    .line 150
    sget-object v18, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->SSL3_CONST:[[B

    aget-object v6, v18, v8

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 151
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 152
    invoke-virtual {v3, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    invoke-virtual {v3, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    move/from16 v27, v4

    const/4 v4, 0x0

    const/16 v6, 0x14

    .end local v4    # "keyBlockLen":I
    .restart local v27    # "keyBlockLen":I
    invoke-virtual {v3, v7, v4, v6}, Ljava/security/MessageDigest;->digest([BII)I

    .line 156
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 157
    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 159
    const/16 v6, 0x10

    if-lt v11, v6, :cond_4

    .line 160
    shl-int/lit8 v4, v8, 0x4

    invoke-virtual {v2, v5, v4, v6}, Ljava/security/MessageDigest;->digest([BII)I

    goto :goto_3

    .line 162
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v7, v4, v6}, Ljava/security/MessageDigest;->digest([BII)I

    .line 163
    shl-int/lit8 v6, v8, 0x4

    invoke-static {v7, v4, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    :goto_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, -0x10

    move/from16 v4, v27

    const/16 v6, 0x14

    goto :goto_2

    .line 147
    .end local v27    # "keyBlockLen":I
    .restart local v4    # "keyBlockLen":I
    :cond_5
    move/from16 v27, v4

    .end local v4    # "keyBlockLen":I
    .restart local v27    # "keyBlockLen":I
    move-object v11, v2

    move-object/from16 v25, v3

    move-object v2, v5

    .line 170
    .end local v3    # "sha":Ljava/security/MessageDigest;
    .end local v5    # "keyBlock":[B
    .end local v7    # "tmp":[B
    .end local v8    # "i":I
    .local v2, "keyBlock":[B
    .local v11, "md5":Ljava/security/MessageDigest;
    .local v25, "sha":Ljava/security/MessageDigest;
    :goto_4
    const/4 v3, 0x0

    .line 171
    .local v3, "ofs":I
    move/from16 v8, v30

    .end local v30    # "macLength":I
    .local v8, "macLength":I
    if-eqz v8, :cond_6

    .line 172
    new-array v4, v8, [B

    .line 175
    .local v4, "tmp":[B
    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    add-int/2addr v3, v8

    .line 177
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "Mac"

    invoke-direct {v6, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 179
    .end local v21    # "clientMacKey":Ljavax/crypto/SecretKey;
    .local v6, "clientMacKey":Ljavax/crypto/SecretKey;
    invoke-static {v2, v3, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    add-int/2addr v3, v8

    .line 181
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v12, v5

    move-object v7, v12

    move-object v12, v6

    goto :goto_5

    .line 171
    .end local v4    # "tmp":[B
    .end local v6    # "clientMacKey":Ljavax/crypto/SecretKey;
    .restart local v21    # "clientMacKey":Ljavax/crypto/SecretKey;
    :cond_6
    move-object v7, v12

    move-object/from16 v12, v21

    .line 184
    .end local v21    # "clientMacKey":Ljavax/crypto/SecretKey;
    .local v7, "serverMacKey":Ljavax/crypto/SecretKey;
    .local v12, "clientMacKey":Ljavax/crypto/SecretKey;
    :goto_5
    move/from16 v6, v28

    .end local v28    # "keyLength":I
    .local v6, "keyLength":I
    if-nez v6, :cond_7

    .line 185
    new-instance v4, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-direct {v4, v12, v7}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v4

    .line 188
    :cond_7
    iget-object v4, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "alg":Ljava/lang/String;
    new-array v4, v6, [B

    .line 192
    .local v4, "clientKeyBytes":[B
    move-object/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "masterSecret":[B
    .local v26, "masterSecret":[B
    invoke-static {v2, v3, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    add-int/2addr v3, v6

    .line 195
    move-object/from16 v28, v13

    .end local v13    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .local v28, "clientCipherKey":Ljavax/crypto/SecretKey;
    new-array v13, v6, [B

    .line 196
    .local v13, "serverKeyBytes":[B
    invoke-static {v2, v3, v13, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int v1, v3, v6

    .line 199
    .end local v3    # "ofs":I
    .local v1, "ofs":I
    if-nez v23, :cond_9

    .line 201
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 202
    .end local v28    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .local v3, "clientCipherKey":Ljavax/crypto/SecretKey;
    move-object/from16 v17, v3

    .end local v3    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .local v17, "clientCipherKey":Ljavax/crypto/SecretKey;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v13, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 205
    .end local v14    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .local v3, "serverCipherKey":Ljavax/crypto/SecretKey;
    move/from16 v14, v29

    .end local v29    # "ivLength":I
    .local v14, "ivLength":I
    if-eqz v14, :cond_8

    .line 206
    move-object/from16 v18, v3

    .end local v3    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .local v18, "serverCipherKey":Ljavax/crypto/SecretKey;
    new-array v3, v14, [B

    .line 208
    .local v3, "tmp":[B
    move/from16 v29, v6

    const/4 v6, 0x0

    .end local v6    # "keyLength":I
    .local v29, "keyLength":I
    invoke-static {v2, v1, v3, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    add-int/2addr v1, v14

    .line 210
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v15, v6

    .line 212
    const/4 v6, 0x0

    invoke-static {v2, v1, v3, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    add-int/2addr v1, v14

    .line 214
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v16, v6

    .line 215
    .end local v3    # "tmp":[B
    move-object v3, v4

    move-object v6, v5

    move-object/from16 v19, v7

    move/from16 v20, v8

    move v4, v14

    move-object/from16 v7, v18

    move/from16 v0, v24

    move/from16 v18, v29

    goto/16 :goto_7

    .line 205
    .end local v18    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .end local v29    # "keyLength":I
    .local v3, "serverCipherKey":Ljavax/crypto/SecretKey;
    .restart local v6    # "keyLength":I
    :cond_8
    move-object/from16 v18, v3

    move/from16 v29, v6

    .end local v3    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .end local v6    # "keyLength":I
    .restart local v18    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .restart local v29    # "keyLength":I
    move-object v3, v4

    move-object v6, v5

    move-object/from16 v19, v7

    move/from16 v20, v8

    move v4, v14

    move-object/from16 v7, v18

    move/from16 v0, v24

    move/from16 v18, v29

    goto/16 :goto_7

    .line 219
    .end local v17    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .end local v18    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .restart local v6    # "keyLength":I
    .local v14, "serverCipherKey":Ljavax/crypto/SecretKey;
    .restart local v28    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .local v29, "ivLength":I
    :cond_9
    move/from16 v40, v29

    move/from16 v29, v6

    move/from16 v6, v40

    .local v6, "ivLength":I
    .local v29, "keyLength":I
    iget v3, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    move/from16 v30, v1

    .end local v1    # "ofs":I
    .local v30, "ofs":I
    const/16 v1, 0x302

    if-ge v3, v1, :cond_d

    .line 224
    iget v1, v0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const/16 v3, 0x301

    if-ne v1, v3, :cond_b

    .line 226
    invoke-static {v9, v10}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->concat([B[B)[B

    move-result-object v1

    .line 228
    .local v1, "seed":[B
    sget-object v18, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_CLIENT_WRITE_KEY:[B

    move-object/from16 v17, v4

    move-object/from16 v19, v1

    move/from16 v20, v24

    move-object/from16 v21, v11

    move-object/from16 v22, v25

    invoke-static/range {v17 .. v22}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS10PRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 230
    .local v3, "tmp":[B
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 232
    .end local v28    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .local v0, "clientCipherKey":Ljavax/crypto/SecretKey;
    sget-object v18, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_SERVER_WRITE_KEY:[B

    move-object/from16 v17, v13

    invoke-static/range {v17 .. v22}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS10PRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 234
    move-object/from16 v17, v0

    .end local v0    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .restart local v17    # "clientCipherKey":Ljavax/crypto/SecretKey;
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 236
    .end local v14    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .local v0, "serverCipherKey":Ljavax/crypto/SecretKey;
    if-eqz v6, :cond_a

    .line 237
    new-array v14, v6, [B

    .line 238
    .end local v3    # "tmp":[B
    .local v14, "tmp":[B
    sget-object v18, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_IV_BLOCK:[B

    shl-int/lit8 v19, v6, 0x1

    const/4 v3, 0x0

    move-object/from16 v37, v4

    .end local v4    # "clientKeyBytes":[B
    .local v37, "clientKeyBytes":[B
    move-object/from16 v4, v18

    move-object/from16 v38, v5

    .end local v5    # "alg":Ljava/lang/String;
    .local v38, "alg":Ljava/lang/String;
    move-object v5, v1

    move/from16 v39, v6

    move/from16 v18, v29

    .end local v6    # "ivLength":I
    .end local v29    # "keyLength":I
    .local v18, "keyLength":I
    .local v39, "ivLength":I
    move/from16 v6, v19

    move-object/from16 v19, v7

    .end local v7    # "serverMacKey":Ljavax/crypto/SecretKey;
    .local v19, "serverMacKey":Ljavax/crypto/SecretKey;
    move-object v7, v11

    move/from16 v20, v8

    .end local v8    # "macLength":I
    .local v20, "macLength":I
    move-object/from16 v8, v25

    invoke-static/range {v3 .. v8}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS10PRF([B[B[BILjava/security/MessageDigest;Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 240
    .local v3, "block":[B
    move/from16 v4, v39

    const/4 v5, 0x0

    .end local v39    # "ivLength":I
    .local v4, "ivLength":I
    invoke-static {v3, v5, v14, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 242
    .end local v15    # "clientIv":Ljavax/crypto/spec/IvParameterSpec;
    .local v6, "clientIv":Ljavax/crypto/spec/IvParameterSpec;
    invoke-static {v3, v4, v14, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v16, v5

    move-object v15, v6

    .end local v16    # "serverIv":Ljavax/crypto/spec/IvParameterSpec;
    .local v5, "serverIv":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_6

    .line 236
    .end local v14    # "tmp":[B
    .end local v18    # "keyLength":I
    .end local v19    # "serverMacKey":Ljavax/crypto/SecretKey;
    .end local v20    # "macLength":I
    .end local v37    # "clientKeyBytes":[B
    .end local v38    # "alg":Ljava/lang/String;
    .local v3, "tmp":[B
    .local v4, "clientKeyBytes":[B
    .local v5, "alg":Ljava/lang/String;
    .local v6, "ivLength":I
    .restart local v7    # "serverMacKey":Ljavax/crypto/SecretKey;
    .restart local v8    # "macLength":I
    .restart local v15    # "clientIv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v16    # "serverIv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v29    # "keyLength":I
    :cond_a
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move v4, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v18, v29

    .line 245
    .end local v1    # "seed":[B
    .end local v3    # "tmp":[B
    .end local v5    # "alg":Ljava/lang/String;
    .end local v6    # "ivLength":I
    .end local v7    # "serverMacKey":Ljavax/crypto/SecretKey;
    .end local v8    # "macLength":I
    .end local v29    # "keyLength":I
    .local v4, "ivLength":I
    .restart local v18    # "keyLength":I
    .restart local v19    # "serverMacKey":Ljavax/crypto/SecretKey;
    .restart local v20    # "macLength":I
    .restart local v37    # "clientKeyBytes":[B
    .restart local v38    # "alg":Ljava/lang/String;
    :goto_6
    move-object v7, v0

    move/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v3, v37

    move-object/from16 v6, v38

    goto/16 :goto_7

    .line 247
    .end local v0    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .end local v17    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .end local v18    # "keyLength":I
    .end local v19    # "serverMacKey":Ljavax/crypto/SecretKey;
    .end local v20    # "macLength":I
    .end local v37    # "clientKeyBytes":[B
    .end local v38    # "alg":Ljava/lang/String;
    .local v4, "clientKeyBytes":[B
    .restart local v5    # "alg":Ljava/lang/String;
    .restart local v6    # "ivLength":I
    .restart local v7    # "serverMacKey":Ljavax/crypto/SecretKey;
    .restart local v8    # "macLength":I
    .local v14, "serverCipherKey":Ljavax/crypto/SecretKey;
    .restart local v28    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .restart local v29    # "keyLength":I
    :cond_b
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move v4, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v18, v29

    .end local v5    # "alg":Ljava/lang/String;
    .end local v6    # "ivLength":I
    .end local v7    # "serverMacKey":Ljavax/crypto/SecretKey;
    .end local v8    # "macLength":I
    .end local v29    # "keyLength":I
    .local v4, "ivLength":I
    .restart local v18    # "keyLength":I
    .restart local v19    # "serverMacKey":Ljavax/crypto/SecretKey;
    .restart local v20    # "macLength":I
    .restart local v37    # "clientKeyBytes":[B
    .restart local v38    # "alg":Ljava/lang/String;
    move/from16 v0, v24

    .end local v24    # "expandedKeyLength":I
    .local v0, "expandedKeyLength":I
    new-array v1, v0, [B

    .line 249
    .local v1, "tmp":[B
    move-object/from16 v3, v37

    .end local v37    # "clientKeyBytes":[B
    .local v3, "clientKeyBytes":[B
    invoke-virtual {v11, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 251
    invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 252
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v6, v38

    .end local v38    # "alg":Ljava/lang/String;
    .local v6, "alg":Ljava/lang/String;
    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 255
    .end local v28    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .local v5, "clientCipherKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 256
    invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 257
    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 258
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 261
    .end local v14    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .local v7, "serverCipherKey":Ljavax/crypto/SecretKey;
    if-eqz v4, :cond_c

    .line 262
    new-array v1, v4, [B

    .line 264
    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 265
    invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 266
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    const/4 v14, 0x0

    invoke-static {v8, v14, v1, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v15, v8

    .line 269
    invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 270
    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 271
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8, v14, v1, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v16, v8

    move-object/from16 v17, v5

    move/from16 v1, v30

    goto :goto_7

    .line 261
    :cond_c
    move-object/from16 v17, v5

    move/from16 v1, v30

    .line 277
    .end local v5    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .end local v30    # "ofs":I
    .local v1, "ofs":I
    .restart local v17    # "clientCipherKey":Ljavax/crypto/SecretKey;
    :goto_7
    new-instance v5, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;

    move-object/from16 v30, v5

    move-object/from16 v31, v12

    move-object/from16 v32, v19

    move-object/from16 v33, v17

    move-object/from16 v34, v15

    move-object/from16 v35, v7

    move-object/from16 v36, v16

    invoke-direct/range {v30 .. v36}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    return-object v5

    .line 221
    .end local v0    # "expandedKeyLength":I
    .end local v1    # "ofs":I
    .end local v3    # "clientKeyBytes":[B
    .end local v17    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .end local v18    # "keyLength":I
    .end local v19    # "serverMacKey":Ljavax/crypto/SecretKey;
    .end local v20    # "macLength":I
    .local v4, "clientKeyBytes":[B
    .local v5, "alg":Ljava/lang/String;
    .local v6, "ivLength":I
    .local v7, "serverMacKey":Ljavax/crypto/SecretKey;
    .restart local v8    # "macLength":I
    .restart local v14    # "serverCipherKey":Ljavax/crypto/SecretKey;
    .restart local v24    # "expandedKeyLength":I
    .restart local v28    # "clientCipherKey":Ljavax/crypto/SecretKey;
    .restart local v29    # "keyLength":I
    .restart local v30    # "ofs":I
    :cond_d
    move-object v3, v4

    move v4, v6

    move-object v6, v5

    .end local v5    # "alg":Ljava/lang/String;
    .restart local v3    # "clientKeyBytes":[B
    .local v4, "ivLength":I
    .local v6, "alg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Internal Error:  TLS 1.1+ should not be negotiatingexportable ciphersuites"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->engineGenerateKey0()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 81
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 58
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 64
    instance-of v0, p1, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    if-eqz v0, :cond_2

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    .line 68
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMajorVersion()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;

    .line 73
    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsKeyMaterialParameterSpec;->getMinorVersion()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    .line 74
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const/16 v1, 0x300

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsKeyMaterialGenerator;->protocolVersion:I

    const/16 v1, 0x303

    if-gt v0, v1, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only SSL 3.0, TLS 1.0/1.1/1.2 supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Key format must be RAW"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

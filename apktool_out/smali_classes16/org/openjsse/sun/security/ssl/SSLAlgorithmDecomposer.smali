.class Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;
.super Lsun/security/util/AlgorithmDecomposer;
.source "SSLAlgorithmDecomposer.java"


# instance fields
.field private final onlyX509:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;-><init>(Z)V

    .line 51
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "onlyX509"    # Z

    .line 45
    invoke-direct {p0}, Lsun/security/util/AlgorithmDecomposer;-><init>()V

    .line 46
    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->onlyX509:Z

    .line 47
    return-void
.end method

.method private decompose(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/SSLCipher;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;)Ljava/util/Set;
    .locals 2
    .param p1, "keyExchange"    # Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;
    .param p2, "cipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher;
    .param p3, "macAlg"    # Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .param p4, "hashAlg"    # Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;",
            "Lorg/openjsse/sun/security/ssl/SSLCipher;",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 234
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->decomposes(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 238
    :cond_0
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->onlyX509:Z

    if-eqz v1, :cond_1

    .line 241
    return-object v0

    .line 244
    :cond_1
    if-eqz p2, :cond_2

    .line 245
    invoke-direct {p0, p2}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->decomposes(Lorg/openjsse/sun/security/ssl/SSLCipher;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_2
    if-eqz p3, :cond_3

    .line 249
    invoke-direct {p0, p3, p2}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->decomposes(Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Lorg/openjsse/sun/security/ssl/SSLCipher;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_3
    if-eqz p4, :cond_4

    .line 253
    invoke-direct {p0, p4}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->decomposes(Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_4
    return-object v0
.end method

.method private decomposes(Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;)Ljava/util/Set;
    .locals 2
    .param p1, "hashAlg"    # Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 215
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    if-ne p1, v1, :cond_0

    .line 216
    const-string v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v1, "SHA-256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v1, "HmacSHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    if-ne p1, v1, :cond_1

    .line 220
    const-string v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v1, "SHA-384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v1, "HmacSHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    :goto_0
    return-object v0
.end method

.method private decomposes(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;)Ljava/util/Set;
    .locals 12
    .param p1, "keyExchange"    # Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer$1;->$SwitchMap$org$openjsse$sun$security$ssl$CipherSuite$KeyExchange:[I

    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "ANON"

    const-string v3, "ECDHE"

    const-string v4, "ECDSA"

    const-string v5, "DHE"

    const-string v6, "DSS"

    const-string v7, "DSA"

    const-string v8, "ECDH"

    const-string v9, "DiffieHellman"

    const-string v10, "DH"

    const-string v11, "RSA"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 125
    :pswitch_0
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->onlyX509:Z

    if-nez v1, :cond_0

    .line 126
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v1, "ECDH_ANON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 120
    :pswitch_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "ECDHE_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    goto/16 :goto_0

    .line 115
    :pswitch_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "ECDHE_ECDSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    goto/16 :goto_0

    .line 110
    :pswitch_3
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, "ECDH_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    goto/16 :goto_0

    .line 105
    :pswitch_4
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v1, "ECDH_ECDSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    goto/16 :goto_0

    .line 97
    :pswitch_5
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->onlyX509:Z

    if-nez v1, :cond_0

    .line 98
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "DH_ANON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :pswitch_6
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "DHE_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_0

    .line 82
    :pswitch_7
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v1, "DHE_DSS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_0

    .line 75
    :pswitch_8
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "DH_DSS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_0

    .line 69
    :pswitch_9
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "DH_RSA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 65
    :pswitch_a
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "RSA_EXPORT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 62
    :pswitch_b
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 57
    :pswitch_c
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->onlyX509:Z

    if-nez v1, :cond_0

    .line 58
    const-string v1, "K_NULL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decomposes(Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Lorg/openjsse/sun/security/ssl/SSLCipher;)Ljava/util/Set;
    .locals 3
    .param p1, "macAlg"    # Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .param p2, "cipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;",
            "Lorg/openjsse/sun/security/ssl/SSLCipher;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_0

    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherType:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    if-eq v1, v2, :cond_0

    .line 191
    const-string v1, "M_NULL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_MD5:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_1

    .line 193
    const-string v1, "MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v1, "HmacMD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_2

    .line 196
    const-string v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v1, "SHA-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "HmacSHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_2
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA256:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_3

    .line 200
    const-string v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v1, "SHA-256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "HmacSHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_3
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_SHA384:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    if-ne p1, v1, :cond_4

    .line 204
    const-string v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v1, "SHA-384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v1, "HmacSHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_4
    :goto_0
    return-object v0
.end method

.method private decomposes(Lorg/openjsse/sun/security/ssl/SSLCipher;)Ljava/util/Set;
    .locals 3
    .param p1, "bulkCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/SSLCipher;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLCipher;->transformation:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLCipher;->transformation:Ljava/lang/String;

    invoke-super {p0, v1}, Lsun/security/util/AlgorithmDecomposer;->decompose(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer$1;->$SwitchMap$org$openjsse$sun$security$ssl$SSLCipher:[I

    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLCipher;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    const-string v1, "AES_256_GCM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v1, "AES_128_GCM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    goto :goto_0

    .line 172
    :pswitch_2
    const-string v1, "AES_256_CBC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    goto :goto_0

    .line 169
    :pswitch_3
    const-string v1, "AES_128_CBC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    goto :goto_0

    .line 166
    :pswitch_4
    const-string v1, "3DES_EDE_CBC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_0

    .line 163
    :pswitch_5
    const-string v1, "DES_CBC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    goto :goto_0

    .line 159
    :pswitch_6
    const-string v1, "DES40_CBC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "DES_CBC_40"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_0

    .line 156
    :pswitch_7
    const-string v1, "RC4_128"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_0

    .line 153
    :pswitch_8
    const-string v1, "RC4_40"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    goto :goto_0

    .line 150
    :pswitch_9
    const-string v1, "RC2_CBC_40"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_0

    .line 147
    :pswitch_a
    const-string v1, "C_NULL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    nop

    .line 182
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decompose(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    const-string v0, "SSL_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TLS_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :try_start_0
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 269
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite;

    if-eq v0, v1, :cond_1

    .line 271
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;->decompose(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/SSLCipher;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 278
    .end local v0    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_1
    invoke-super {p0, p1}, Lsun/security/util/AlgorithmDecomposer;->decompose(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

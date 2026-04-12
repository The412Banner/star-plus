.class public Lorg/conscrypt/OAEPParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "OAEPParameters.java"


# static fields
.field private static final MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"

.field private static final NAME_TO_OID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_TO_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSPECIFIED_OID:Ljava/lang/String; = "1.2.840.113549.1.1.9"


# instance fields
.field private spec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 39
    sget-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26"

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.4"

    const-string v2, "SHA-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.1"

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.2"

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.3"

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 51
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 53
    return-void
.end method

.method private static getHashName(J)Ljava/lang/String;
    .locals 5
    .param p0, "hashRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "hashSeqRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 160
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "hashOid":Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_null(J)V

    .line 164
    :cond_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 165
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    sget-object v3, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 168
    return-object v3

    .line 166
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error reading ASN.1 encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hashSeqRef":J
    .end local p0    # "hashRef":J
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v2    # "hashOid":Ljava/lang/String;
    .restart local v0    # "hashSeqRef":J
    .restart local p0    # "hashRef":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v2
.end method

.method static readHash(J)Ljava/lang/String;
    .locals 4
    .param p0, "seqRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-wide/16 v0, 0x0

    .line 122
    .local v0, "hashRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 123
    invoke-static {v0, v1}, Lorg/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 123
    return-object v2

    .line 125
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v2

    .line 128
    .end local v0    # "hashRef":J
    :cond_0
    const-string v0, "SHA-1"

    return-object v0
.end method

.method static readMgfHash(J)Ljava/lang/String;
    .locals 8
    .param p0, "seqRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const-wide/16 v0, 0x0

    .line 135
    .local v0, "mgfRef":J
    const-wide/16 v2, 0x0

    .line 137
    .local v2, "mgfSeqRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v4

    move-wide v0, v4

    .line 138
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 139
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "mgfOid":Ljava/lang/String;
    const-string v5, "1.2.840.113549.1.1.8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Error reading ASN.1 encoding"

    if-eqz v5, :cond_1

    .line 143
    :try_start_1
    invoke-static {v2, v3}, Lorg/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "mgfHash":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    .line 147
    nop

    .line 149
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 150
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 147
    return-object v5

    .line 145
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgfRef":J
    .end local v2    # "mgfSeqRef":J
    .end local p0    # "seqRef":J
    throw v7

    .line 141
    .end local v5    # "mgfHash":Ljava/lang/String;
    .restart local v0    # "mgfRef":J
    .restart local v2    # "mgfSeqRef":J
    .restart local p0    # "seqRef":J
    :cond_1
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgfRef":J
    .end local v2    # "mgfSeqRef":J
    .end local p0    # "seqRef":J
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .end local v4    # "mgfOid":Ljava/lang/String;
    .restart local v0    # "mgfRef":J
    .restart local v2    # "mgfSeqRef":J
    .restart local p0    # "seqRef":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 150
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v4

    .line 153
    .end local v0    # "mgfRef":J
    .end local v2    # "mgfSeqRef":J
    :cond_2
    const-string v0, "SHA-1"

    return-object v0
.end method

.method private static writeAlgorithmIdentifier(JLjava/lang/String;)J
    .locals 4
    .param p0, "container"    # J
    .param p2, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    const-wide/16 v0, 0x0

    .line 276
    .local v0, "seqRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 277
    invoke-static {v0, v1, p2}, Lorg/conscrypt/NativeCrypto;->asn1_write_oid(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    nop

    .line 282
    return-wide v0

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 280
    throw v2
.end method

.method static writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V
    .locals 8
    .param p0, "seqRef"    # J
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/MGF1ParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const-string v0, "SHA-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const-wide/16 v1, 0x0

    .line 232
    .local v1, "hashRef":J
    const-wide/16 v3, 0x0

    .line 234
    .local v3, "hashParamsRef":J
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v5

    move-wide v1, v5

    .line 235
    sget-object v5, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 236
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 235
    invoke-static {v1, v2, v5}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v5

    move-wide v3, v5

    .line 237
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 240
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 241
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 242
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 240
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 241
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v0

    .line 244
    .end local v1    # "hashRef":J
    .end local v3    # "hashParamsRef":J
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    const-wide/16 v0, 0x0

    .line 246
    .local v0, "mgfRef":J
    const-wide/16 v2, 0x0

    .line 247
    .local v2, "mgfParamsRef":J
    const-wide/16 v4, 0x0

    .line 249
    .local v4, "hashParamsRef":J
    const/4 v6, 0x1

    :try_start_1
    invoke-static {p0, p1, v6}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v6

    move-wide v0, v6

    .line 250
    const-string v6, "1.2.840.113549.1.1.8"

    invoke-static {v0, v1, v6}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v6

    move-wide v2, v6

    .line 251
    sget-object v6, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 252
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    invoke-static {v2, v3, v6}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v6

    move-wide v4, v6

    .line 253
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 256
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 257
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 258
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 259
    goto :goto_1

    .line 255
    :catchall_1
    move-exception v6

    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 256
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 257
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 258
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v6

    .line 261
    .end local v0    # "mgfRef":J
    .end local v2    # "mgfParamsRef":J
    .end local v4    # "hashParamsRef":J
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const-wide/16 v0, 0x0

    .line 188
    .local v0, "cbbRef":J
    const-wide/16 v2, 0x0

    .line 190
    .local v2, "seqRef":J
    :try_start_0
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v4

    move-wide v0, v4

    .line 191
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 192
    iget-object v4, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 193
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    .line 192
    invoke-static {v2, v3, v4, v5}, Lorg/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 194
    iget-object v4, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/PSource$PSpecified;

    .line 196
    .local v4, "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-virtual {v4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v5

    array-length v5, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_0

    .line 197
    const-wide/16 v5, 0x0

    .line 198
    .local v5, "pSourceRef":J
    const-wide/16 v7, 0x0

    .line 200
    .local v7, "pSourceParamsRef":J
    const/4 v9, 0x2

    :try_start_1
    invoke-static {v2, v3, v9}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v9

    move-wide v5, v9

    .line 201
    const-string v9, "1.2.840.113549.1.1.9"

    invoke-static {v5, v6, v9}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v9

    move-wide v7, v9

    .line 202
    invoke-virtual {v4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 205
    invoke-static {v7, v8}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 206
    invoke-static {v5, v6}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 207
    goto :goto_0

    .line 204
    :catchall_0
    move-exception v9

    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 205
    invoke-static {v7, v8}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 206
    invoke-static {v5, v6}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    throw v9

    .line 209
    .end local v5    # "pSourceRef":J
    .end local v7    # "pSourceParamsRef":J
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 215
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 209
    return-object v5

    .line 214
    .end local v4    # "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    :catchall_1
    move-exception v4

    goto :goto_1

    .line 210
    :catch_0
    move-exception v4

    .line 211
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 212
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    :goto_1
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 215
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v4
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-eqz p1, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/conscrypt/OAEPParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 178
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 58
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 63
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only OAEPParameterSpec is supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .locals 15
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-wide/16 v1, 0x0

    .line 68
    .local v1, "readRef":J
    const-wide/16 v3, 0x0

    .line 70
    .local v3, "seqRef":J
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v5

    move-wide v1, v5

    .line 71
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 72
    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    move-object v5, v0

    .line 73
    .local v5, "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-static {v3, v4}, Lorg/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 74
    .local v6, "hash":Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 75
    .local v7, "mgfHash":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-static {v3, v4, v0}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v8, "Error reading ASN.1 encoding"

    if-eqz v0, :cond_2

    .line 76
    const-wide/16 v9, 0x0

    .line 77
    .local v9, "pSourceRef":J
    const-wide/16 v11, 0x0

    .line 79
    .local v11, "pSourceSeqRef":J
    :try_start_1
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v13

    move-wide v9, v13

    .line 80
    invoke-static {v9, v10}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v13

    move-wide v11, v13

    .line 81
    invoke-static {v11, v12}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "pSourceOid":Ljava/lang/String;
    const-string v13, "1.2.840.113549.1.1.9"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 85
    new-instance v13, Ljavax/crypto/spec/PSource$PSpecified;

    .line 86
    invoke-static {v11, v12}, Lorg/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    move-object v5, v13

    .line 87
    invoke-static {v11, v12}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_0

    .line 91
    .end local v0    # "pSourceOid":Ljava/lang/String;
    :try_start_2
    invoke-static {v11, v12}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    invoke-static {v9, v10}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    goto :goto_0

    .line 88
    .restart local v0    # "pSourceOid":Ljava/lang/String;
    :cond_0
    :try_start_3
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    .end local v9    # "pSourceRef":J
    .end local v11    # "pSourceSeqRef":J
    .end local p1    # "bytes":[B
    throw v13

    .line 83
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "mgfHash":Ljava/lang/String;
    .restart local v9    # "pSourceRef":J
    .restart local v11    # "pSourceSeqRef":J
    .restart local p1    # "bytes":[B
    :cond_1
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    .end local v9    # "pSourceRef":J
    .end local v11    # "pSourceSeqRef":J
    .end local p1    # "bytes":[B
    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .end local v0    # "pSourceOid":Ljava/lang/String;
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "mgfHash":Ljava/lang/String;
    .restart local v9    # "pSourceRef":J
    .restart local v11    # "pSourceSeqRef":J
    .restart local p1    # "bytes":[B
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v11, v12}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    invoke-static {v9, v10}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p1    # "bytes":[B
    throw v0

    .line 96
    .end local v9    # "pSourceRef":J
    .end local v11    # "pSourceSeqRef":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p1    # "bytes":[B
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v8, "MGF1"

    new-instance v9, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v9, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v8, v9, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v9, p0

    :try_start_5
    iput-object v0, v9, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 104
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 105
    nop

    .line 106
    return-void

    .line 97
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "mgfHash":Ljava/lang/String;
    :cond_3
    move-object v9, p0

    goto :goto_1

    .line 96
    :cond_4
    move-object v9, p0

    .line 98
    :goto_1
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p1    # "bytes":[B
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 103
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p1    # "bytes":[B
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v9, p0

    :goto_2
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 104
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v0
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-eqz p2, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/OAEPParameters;->engineInit([B)V

    .line 115
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 287
    const-string v0, "Conscrypt OAEP AlgorithmParameters"

    return-object v0
.end method

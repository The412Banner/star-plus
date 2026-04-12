.class public Lorg/conscrypt/PSSParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "PSSParameters.java"


# instance fields
.field private spec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 33
    sget-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 35
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "cbbRef":J
    const-wide/16 v2, 0x0

    .line 118
    .local v2, "seqRef":J
    :try_start_0
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v4

    move-wide v0, v4

    .line 119
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 120
    iget-object v4, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 121
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    .line 120
    invoke-static {v2, v3, v4, v5}, Lorg/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 123
    iget-object v4, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v5, 0x14

    if-eq v4, v5, :cond_0

    .line 124
    const-wide/16 v4, 0x0

    .line 126
    .local v4, "tagRef":J
    const/4 v6, 0x2

    :try_start_1
    invoke-static {v2, v3, v6}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v6

    move-wide v4, v6

    .line 127
    iget-object v6, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_uint64(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 130
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 131
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 130
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    throw v6

    .line 134
    .end local v4    # "tagRef":J
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 140
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 134
    return-object v4

    .line 139
    :catchall_1
    move-exception v4

    goto :goto_1

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 137
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    :goto_1
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 140
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

    .line 146
    if-eqz p1, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
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

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/conscrypt/PSSParameters;->engineGetEncoded()[B

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

    .line 106
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    return-object v0

    .line 109
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

    .line 40
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only PSSParameterSpec is supported"

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

    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .local v1, "readRef":J
    const-wide/16 v3, 0x0

    .line 52
    .local v3, "seqRef":J
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v5

    move-wide v1, v5

    .line 53
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 54
    const/16 v5, 0x14

    .line 55
    .local v5, "saltLength":I
    invoke-static {v3, v4}, Lorg/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "hash":Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 57
    .local v12, "mgfHash":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-static {v3, v4, v0}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 58
    const-wide/16 v8, 0x0

    .line 60
    .local v8, "saltRef":J
    :try_start_1
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v10

    move-wide v8, v10

    .line 61
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v5, v10

    .line 63
    :try_start_2
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 64
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p1    # "bytes":[B
    throw v0

    .line 66
    .end local v8    # "saltRef":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p1    # "bytes":[B
    :cond_0
    :goto_0
    const/4 v0, 0x3

    invoke-static {v3, v4, v0}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v6, "Error reading ASN.1 encoding"

    if-eqz v0, :cond_2

    .line 68
    const-wide/16 v8, 0x0

    .line 70
    .local v8, "trailerRef":J
    :try_start_3
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v10

    move-wide v8, v10

    .line 71
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    long-to-int v0, v10

    int-to-long v10, v0

    .line 73
    .local v10, "trailerField":J
    :try_start_4
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 74
    nop

    .line 76
    const-wide/16 v13, 0x1

    cmp-long v0, v10, v13

    if-nez v0, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p1    # "bytes":[B
    throw v0

    .line 73
    .end local v10    # "trailerField":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p1    # "bytes":[B
    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p1    # "bytes":[B
    throw v0

    .line 81
    .end local v8    # "trailerRef":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p1    # "bytes":[B
    :cond_2
    :goto_1
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string v8, "MGF1"

    new-instance v9, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v9, v12}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    move-object v6, v0

    move v10, v5

    invoke-direct/range {v6 .. v11}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v8, p0

    :try_start_5
    iput-object v0, v8, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 88
    .end local v5    # "saltLength":I
    .end local v7    # "hash":Ljava/lang/String;
    .end local v12    # "mgfHash":Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 89
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 90
    nop

    .line 91
    return-void

    .line 82
    .restart local v5    # "saltLength":I
    .restart local v7    # "hash":Ljava/lang/String;
    .restart local v12    # "mgfHash":Ljava/lang/String;
    :cond_3
    move-object v8, p0

    goto :goto_2

    .line 81
    :cond_4
    move-object v8, p0

    .line 83
    :goto_2
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p1    # "bytes":[B
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 88
    .end local v5    # "saltLength":I
    .end local v7    # "hash":Ljava/lang/String;
    .end local v12    # "mgfHash":Ljava/lang/String;
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p1    # "bytes":[B
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v8, p0

    :goto_3
    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 89
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

    .line 95
    if-eqz p2, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
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

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/PSSParameters;->engineInit([B)V

    .line 100
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 154
    const-string v0, "Conscrypt PSS AlgorithmParameters"

    return-object v0
.end method

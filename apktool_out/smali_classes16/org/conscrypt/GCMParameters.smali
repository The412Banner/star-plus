.class public final Lorg/conscrypt/GCMParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "GCMParameters.java"


# static fields
.field private static final DEFAULT_TLEN:I = 0x60


# instance fields
.field private iv:[B

.field private tLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0
    .param p1, "tLen"    # I
    .param p2, "iv"    # [B

    .line 46
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 47
    iput p1, p0, Lorg/conscrypt/GCMParameters;->tLen:I

    .line 48
    iput-object p2, p0, Lorg/conscrypt/GCMParameters;->iv:[B

    .line 49
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const-wide/16 v0, 0x0

    .line 122
    .local v0, "cbbRef":J
    const-wide/16 v2, 0x0

    .line 124
    .local v2, "seqRef":J
    :try_start_0
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v4

    move-wide v0, v4

    .line 125
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 126
    iget-object v4, p0, Lorg/conscrypt/GCMParameters;->iv:[B

    invoke-static {v2, v3, v4}, Lorg/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V

    .line 127
    iget v4, p0, Lorg/conscrypt/GCMParameters;->tLen:I

    const/16 v5, 0x60

    if-eq v4, v5, :cond_0

    .line 128
    iget v4, p0, Lorg/conscrypt/GCMParameters;->tLen:I

    div-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_uint64(JJ)V

    .line 130
    :cond_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 136
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 130
    return-object v4

    .line 135
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 133
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    :goto_0
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 136
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

    .line 142
    if-eqz p1, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
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

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/conscrypt/GCMParameters;->engineGetEncoded()[B

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

    .line 112
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lorg/conscrypt/GCMParameters;->tLen:I

    iget-object v1, p0, Lorg/conscrypt/GCMParameters;->iv:[B

    invoke-static {v0, v1}, Lorg/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0

    .line 115
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
    .locals 3
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lorg/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/conscrypt/GCMParameters;

    move-result-object v0

    .line 69
    .local v0, "params":Lorg/conscrypt/GCMParameters;
    if-eqz v0, :cond_0

    .line 72
    iget v1, v0, Lorg/conscrypt/GCMParameters;->tLen:I

    iput v1, p0, Lorg/conscrypt/GCMParameters;->tLen:I

    .line 73
    iget-object v1, v0, Lorg/conscrypt/GCMParameters;->iv:[B

    iput-object v1, p0, Lorg/conscrypt/GCMParameters;->iv:[B

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "Only GCMParameterSpec is supported"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit([B)V
    .locals 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-wide/16 v0, 0x0

    .line 79
    .local v0, "readRef":J
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "seqRef":J
    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v4

    move-wide v0, v4

    .line 82
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 83
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v4

    .line 84
    .local v4, "newIv":[B
    const/16 v5, 0x60

    .line 85
    .local v5, "newTlen":I
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v6

    long-to-int v6, v6

    mul-int/lit8 v5, v6, 0x8

    .line 88
    :cond_0
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    iput-object v4, p0, Lorg/conscrypt/GCMParameters;->iv:[B

    .line 93
    iput v5, p0, Lorg/conscrypt/GCMParameters;->tLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v4    # "newIv":[B
    .end local v5    # "newTlen":I
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 96
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 97
    nop

    .line 98
    return-void

    .line 90
    .restart local v4    # "newIv":[B
    .restart local v5    # "newTlen":I
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error reading ASN.1 encoding"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "readRef":J
    .end local v2    # "seqRef":J
    .end local p1    # "bytes":[B
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v4    # "newIv":[B
    .end local v5    # "newTlen":I
    .restart local v0    # "readRef":J
    .restart local v2    # "seqRef":J
    .restart local p1    # "bytes":[B
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 96
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v4
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

    .line 102
    if-eqz p2, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
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

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/GCMParameters;->engineInit([B)V

    .line 107
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 150
    const-string v0, "Conscrypt GCM AlgorithmParameters"

    return-object v0
.end method

.method getIV()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/conscrypt/GCMParameters;->iv:[B

    return-object v0
.end method

.method getTLen()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/conscrypt/GCMParameters;->tLen:I

    return v0
.end method

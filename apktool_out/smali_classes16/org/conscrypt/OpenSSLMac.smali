.class public abstract Lorg/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLMac$HmacSHA512;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA384;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA256;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA224;,
        Lorg/conscrypt/OpenSSLMac$HmacSHA1;,
        Lorg/conscrypt/OpenSSLMac$HmacMD5;
    }
.end annotation


# instance fields
.field private ctx:Lorg/conscrypt/NativeRef$HMAC_CTX;

.field private final evp_md:J

.field private keyBytes:[B

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I

    .line 56
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLMac;->singleByte:[B

    .line 57
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLMac;->evp_md:J

    .line 58
    iput p3, p0, Lorg/conscrypt/OpenSSLMac;->size:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(JILorg/conscrypt/OpenSSLMac$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/conscrypt/OpenSSLMac$1;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLMac;-><init>(JI)V

    return-void
.end method

.method private final resetContext()V
    .locals 4

    .line 86
    new-instance v0, Lorg/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->HMAC_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/NativeRef$HMAC_CTX;-><init>(J)V

    .line 87
    .local v0, "ctxLocal":Lorg/conscrypt/NativeRef$HMAC_CTX;
    iget-object v1, p0, Lorg/conscrypt/OpenSSLMac;->keyBytes:[B

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/conscrypt/OpenSSLMac;->keyBytes:[B

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLMac;->evp_md:J

    invoke-static {v0, v1, v2, v3}, Lorg/conscrypt/NativeCrypto;->HMAC_Init_ex(Lorg/conscrypt/NativeRef$HMAC_CTX;[BJ)V

    .line 91
    :cond_0
    iput-object v0, p0, Lorg/conscrypt/OpenSSLMac;->ctx:Lorg/conscrypt/NativeRef$HMAC_CTX;

    .line 92
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMac;->ctx:Lorg/conscrypt/NativeRef$HMAC_CTX;

    .line 148
    .local v0, "ctxLocal":Lorg/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->HMAC_Final(Lorg/conscrypt/NativeRef$HMAC_CTX;)[B

    move-result-object v1

    .line 149
    .local v1, "output":[B
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLMac;->resetContext()V

    .line 150
    return-object v1
.end method

.method protected engineGetMacLength()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/conscrypt/OpenSSLMac;->size:I

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 69
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_2

    .line 73
    if-nez p2, :cond_1

    .line 77
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLMac;->keyBytes:[B

    .line 78
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMac;->keyBytes:[B

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLMac;->resetContext()V

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key must be a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineReset()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLMac;->resetContext()V

    .line 156
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    .line 96
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 97
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    .line 98
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 118
    return-void

    .line 121
    :cond_1
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 122
    .local v0, "baseAddress":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 125
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 126
    return-void

    .line 130
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 131
    .local v2, "position":I
    if-ltz v2, :cond_4

    .line 134
    int-to-long v3, v2

    add-long/2addr v3, v0

    .line 135
    .local v3, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 136
    .local v5, "len":I
    if-ltz v5, :cond_3

    .line 140
    iget-object v6, p0, Lorg/conscrypt/OpenSSLMac;->ctx:Lorg/conscrypt/NativeRef$HMAC_CTX;

    .line 141
    .local v6, "ctxLocal":Lorg/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v6, v3, v4, v5}, Lorg/conscrypt/NativeCrypto;->HMAC_UpdateDirect(Lorg/conscrypt/NativeRef$HMAC_CTX;JI)V

    .line 142
    add-int v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    return-void

    .line 137
    .end local v6    # "ctxLocal":Lorg/conscrypt/NativeRef$HMAC_CTX;
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    .end local v3    # "ptr":J
    .end local v5    # "len":I
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Negative position"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 102
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMac;->ctx:Lorg/conscrypt/NativeRef$HMAC_CTX;

    .line 103
    .local v0, "ctxLocal":Lorg/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lorg/conscrypt/NativeCrypto;->HMAC_Update(Lorg/conscrypt/NativeRef$HMAC_CTX;[BII)V

    .line 104
    return-void
.end method

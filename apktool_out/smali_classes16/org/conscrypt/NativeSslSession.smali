.class abstract Lorg/conscrypt/NativeSslSession;
.super Ljava/lang/Object;
.source "NativeSslSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/NativeSslSession$Impl;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 45
    invoke-static {p0}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static checkRemaining(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    if-ltz p1, :cond_1

    .line 479
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 483
    return-void

    .line 480
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of blob is longer than available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 481
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getOcspResponse(Lorg/conscrypt/ConscryptSession;)[B
    .locals 3
    .param p0, "session"    # Lorg/conscrypt/ConscryptSession;

    .line 67
    invoke-interface {p0}, Lorg/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "ocspResponseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 71
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static log(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 471
    sget-object v0, Lorg/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 472
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 471
    :goto_0
    const-string v3, "Error inflating SSL session: {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method static newInstance(Lorg/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lorg/conscrypt/NativeSslSession;
    .locals 19
    .param p0, "context"    # Lorg/conscrypt/AbstractSessionContext;
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 83
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 85
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    move v3, v0

    .line 86
    .local v3, "type":I
    invoke-static {v3}, Lorg/conscrypt/SSLUtils$SessionType;->isSupportedType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 91
    .local v0, "length":I
    invoke-static {v1, v0}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 93
    new-array v4, v0, [B

    .line 94
    .local v4, "sessionData":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 97
    .local v5, "count":I
    invoke-static {v1, v5}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 99
    new-array v6, v5, [Ljava/security/cert/X509Certificate;

    .line 101
    .local v6, "peerCerts":[Ljava/security/cert/X509Certificate;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 102
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 103
    .end local v0    # "length":I
    .local v8, "length":I
    invoke-static {v1, v8}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 105
    new-array v0, v8, [B

    move-object v9, v0

    .line 106
    .local v9, "certData":[B
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :try_start_1
    invoke-static {v9}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    aput-object v0, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    nop

    .line 101
    .end local v9    # "certData":[B
    add-int/lit8 v7, v7, 0x1

    move v0, v8

    goto :goto_0

    .line 109
    .restart local v9    # "certData":[B
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not read certificate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local p0    # "context":Lorg/conscrypt/AbstractSessionContext;
    .end local p1    # "data":[B
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    throw v10

    .line 114
    .end local v7    # "i":I
    .end local v8    # "length":I
    .end local v9    # "certData":[B
    .local v0, "length":I
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local p0    # "context":Lorg/conscrypt/AbstractSessionContext;
    .restart local p1    # "data":[B
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    :cond_0
    const/4 v7, 0x0

    .line 115
    .local v7, "ocspData":[B
    sget-object v8, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lorg/conscrypt/SSLUtils$SessionType;

    iget v8, v8, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    if-lt v3, v8, :cond_2

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 119
    .local v8, "countOcspResponses":I
    invoke-static {v1, v8}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 121
    const/4 v9, 0x1

    if-lt v8, v9, :cond_2

    .line 122
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 123
    .local v9, "ocspLength":I
    invoke-static {v1, v9}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 125
    new-array v10, v9, [B

    move-object v7, v10

    .line 126
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 129
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_1

    .line 130
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    move v9, v11

    .line 131
    invoke-static {v1, v9}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 132
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v7

    goto :goto_2

    .line 137
    .end local v8    # "countOcspResponses":I
    .end local v9    # "ocspLength":I
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v16, v7

    .end local v7    # "ocspData":[B
    .local v16, "ocspData":[B
    :goto_2
    const/4 v7, 0x0

    .line 138
    .local v7, "tlsSctData":[B
    sget-object v8, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;

    iget v8, v8, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    if-ne v3, v8, :cond_3

    .line 139
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 140
    .local v8, "tlsSctDataLength":I
    invoke-static {v1, v8}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 142
    if-lez v8, :cond_3

    .line 143
    new-array v9, v8, [B

    move-object v7, v9

    .line 144
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v17, v7

    goto :goto_3

    .line 148
    .end local v8    # "tlsSctDataLength":I
    :cond_3
    move-object/from16 v17, v7

    .end local v7    # "tlsSctData":[B
    .local v17, "tlsSctData":[B
    :goto_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-eqz v7, :cond_4

    .line 149
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Read entire session, but data still remains; rejecting"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v7}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 150
    return-object v2

    .line 153
    :cond_4
    new-instance v9, Lorg/conscrypt/NativeRef$SSL_SESSION;

    .line 154
    invoke-static {v4}, Lorg/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v7

    invoke-direct {v9, v7, v8}, Lorg/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 155
    .local v9, "ref":Lorg/conscrypt/NativeRef$SSL_SESSION;
    new-instance v18, Lorg/conscrypt/NativeSslSession$Impl;

    const/4 v15, 0x0

    move-object/from16 v7, v18

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object v12, v6

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v15}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V

    return-object v18

    .line 87
    .end local v0    # "length":I
    .end local v4    # "sessionData":[B
    .end local v5    # "count":I
    .end local v6    # "peerCerts":[Ljava/security/cert/X509Certificate;
    .end local v9    # "ref":Lorg/conscrypt/NativeRef$SSL_SESSION;
    .end local v16    # "ocspData":[B
    .end local v17    # "tlsSctData":[B
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local p0    # "context":Lorg/conscrypt/AbstractSessionContext;
    .end local p1    # "data":[B
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .end local v3    # "type":I
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local p0    # "context":Lorg/conscrypt/AbstractSessionContext;
    .restart local p1    # "data":[B
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {v0}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 161
    return-object v2

    .line 156
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 158
    return-object v2
.end method

.method static newInstance(Lorg/conscrypt/NativeRef$SSL_SESSION;Lorg/conscrypt/ConscryptSession;)Lorg/conscrypt/NativeSslSession;
    .locals 11
    .param p0, "ref"    # Lorg/conscrypt/NativeRef$SSL_SESSION;
    .param p1, "session"    # Lorg/conscrypt/ConscryptSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/AbstractSessionContext;

    .line 56
    .local v0, "context":Lorg/conscrypt/AbstractSessionContext;
    instance-of v1, v0, Lorg/conscrypt/ClientSessionContext;

    if-eqz v1, :cond_0

    .line 57
    new-instance v10, Lorg/conscrypt/NativeSslSession$Impl;

    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerPort()I

    move-result v5

    .line 58
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-static {p1}, Lorg/conscrypt/NativeSslSession;->getOcspResponse(Lorg/conscrypt/ConscryptSession;)[B

    move-result-object v7

    .line 59
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V

    .line 57
    return-object v10

    .line 63
    :cond_0
    new-instance v10, Lorg/conscrypt/NativeSslSession$Impl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V

    return-object v10
.end method


# virtual methods
.method abstract getCipherSuite()Ljava/lang/String;
.end method

.method abstract getId()[B
.end method

.method abstract getPeerHost()Ljava/lang/String;
.end method

.method abstract getPeerOcspStapledResponse()[B
.end method

.method abstract getPeerPort()I
.end method

.method abstract getPeerSignedCertificateTimestamp()[B
.end method

.method abstract getProtocol()Ljava/lang/String;
.end method

.method abstract isSingleUse()Z
.end method

.method abstract isValid()Z
.end method

.method abstract offerToResume(Lorg/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract toBytes()[B
.end method

.method abstract toSSLSession()Ljavax/net/ssl/SSLSession;
.end method

.class final Lorg/openjsse/sun/security/ssl/RandomCookie;
.super Ljava/lang/Object;
.source "RandomCookie.java"


# static fields
.field static final hrrRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

.field private static final hrrRandomBytes:[B

.field private static final t11Protection:[B

.field private static final t12Protection:[B


# instance fields
.field final randomBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/openjsse/sun/security/ssl/RandomCookie;->hrrRandomBytes:[B

    .line 80
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->t12Protection:[B

    .line 85
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/openjsse/sun/security/ssl/RandomCookie;->t11Protection:[B

    .line 90
    new-instance v0, Lorg/openjsse/sun/security/ssl/RandomCookie;

    sget-object v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->hrrRandomBytes:[B

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>([B)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RandomCookie;->hrrRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    return-void

    nop

    :array_0
    .array-data 1
        -0x31t
        0x21t
        -0x53t
        0x74t
        -0x1bt
        -0x66t
        0x61t
        0x11t
        -0x42t
        0x1dt
        -0x74t
        0x2t
        0x1et
        0x65t
        -0x48t
        -0x6ft
        -0x3et
        -0x5et
        0x11t
        0x16t
        0x7at
        -0x45t
        -0x74t
        0x5et
        0x7t
        -0x62t
        0x9t
        -0x1et
        -0x38t
        -0x58t
        0x33t
        -0x64t
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x4ft
        0x57t
        0x4et
        0x47t
        0x52t
        0x44t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x4ft
        0x57t
        0x4et
        0x47t
        0x52t
        0x44t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    .line 127
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    return-void
.end method

.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "generator"    # Ljava/security/SecureRandom;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    .line 93
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 94
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    .line 98
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 99
    .local v0, "generator":Ljava/security/SecureRandom;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "protection":[B
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    sget-object v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->t12Protection:[B

    goto :goto_0

    .line 111
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->t11Protection:[B

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    sget-object v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->t11Protection:[B

    .line 120
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 121
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :cond_3
    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .param p1, "randomBytes"    # [B

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    .line 131
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    return-void
.end method

.method private isT11Downgrade()Z
    .locals 6

    .line 163
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    sget-object v3, Lorg/openjsse/sun/security/ssl/RandomCookie;->t11Protection:[B

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v1, 0x18

    const/16 v2, 0x20

    invoke-static/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/Utilities;->equals([BII[BII)Z

    move-result v0

    return v0
.end method

.method private isT12Downgrade()Z
    .locals 6

    .line 159
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    sget-object v3, Lorg/openjsse/sun/security/ssl/RandomCookie;->t12Protection:[B

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v1, 0x18

    const/16 v2, 0x20

    invoke-static/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/Utilities;->equals([BII[BII)Z

    move-result v0

    return v0
.end method


# virtual methods
.method isHelloRetryRequest()Z
    .locals 2

    .line 140
    sget-object v0, Lorg/openjsse/sun/security/ssl/RandomCookie;->hrrRandomBytes:[B

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method isVersionDowngrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Z
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 145
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isT12Downgrade()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isT11Downgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 149
    :cond_2
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isT11Downgrade()Z

    move-result v0

    return v0

    .line 155
    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "random_bytes = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

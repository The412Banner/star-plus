.class final Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "ClientHello.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ClientHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientHelloMessage"
.end annotation


# static fields
.field private static final NULL_COMPRESSION:[B


# instance fields
.field final cipherSuiteIds:[I

.field final cipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field final clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

.field final clientVersion:I

.field final compressionMethod:[B

.field private cookie:[B

.field final extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

.field private final isDTLS:Z

.field final sessionId:Lorg/openjsse/sun/security/ssl/SessionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->NULL_COMPRESSION:[B

    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;ILorg/openjsse/sun/security/ssl/SessionId;Ljava/util/List;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "clientVersion"    # I
    .param p3, "sessionId"    # Lorg/openjsse/sun/security/ssl/SessionId;
    .param p5, "generator"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/HandshakeContext;",
            "I",
            "Lorg/openjsse/sun/security/ssl/SessionId;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;",
            "Ljava/security/SecureRandom;",
            ")V"
        }
    .end annotation

    .line 88
    .local p4, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 89
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->isDTLS:Z

    .line 91
    iput p2, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    .line 92
    new-instance v0, Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-direct {v0, p5}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 93
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 94
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->isDTLS:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    .line 100
    :goto_0
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .line 101
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getCipherSuiteIds(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    .line 102
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 105
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->NULL_COMPRESSION:[B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    .line 106
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V
    .locals 6
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .param p3, "supportedExtensions"    # [Lorg/openjsse/sun/security/ssl/SSLExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 163
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->isDTLS:Z

    .line 165
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    .line 166
    new-instance v0, Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-direct {v0, p2}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 167
    new-instance v0, Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>([B)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    iget v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SessionId;->checkLength(I)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->isDTLS:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    .line 180
    :goto_0
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 181
    .local v0, "encodedIds":[B
    array-length v1, v0

    if-eqz v1, :cond_3

    array-length v1, v0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 187
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 189
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    aput v1, v3, v2

    .line 188
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getCipherSuites([I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .line 194
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    .line 196
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v1, p0, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    goto :goto_2

    .line 200
    :cond_2
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v1, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 202
    :goto_2
    return-void

    .line 182
    :cond_3
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid ClientHello message"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 170
    .end local v0    # "encodedIds":[B
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Ljavax/net/ssl/SSLProtocolException;
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method static synthetic access$1100(Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 71
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    return-object v0
.end method

.method private static getCipherSuiteIds(Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;)[I"
        }
    .end annotation

    .line 249
    .local p0, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    if-eqz p0, :cond_1

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 251
    .local v0, "ids":[I
    const/4 v1, 0x0

    .line 252
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 253
    .local v3, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    iget v5, v3, Lorg/openjsse/sun/security/ssl/CipherSuite;->id:I

    aput v5, v0, v1

    .line 254
    .end local v3    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    move v1, v4

    goto :goto_0

    .line 256
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0

    .line 259
    .end local v0    # "ids":[I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method private getCipherSuiteNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 276
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 277
    .local v4, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/CipherSuite;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 278
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/Utilities;->byte16HexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-object v0
.end method

.method private static getCipherSuites([I)Ljava/util/List;
    .locals 5
    .param p0, "ids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 264
    .local v0, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 265
    .local v3, "id":I
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/CipherSuite;->valueOf(I)Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v4

    .line 266
    .local v4, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    if-eqz v4, :cond_0

    .line 267
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v3    # "id":I
    .end local v4    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getEncodedCipherSuites()[B
    .locals 8

    .line 284
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 285
    .local v0, "encoded":[B
    const/4 v1, 0x0

    .line 286
    .local v1, "i":I
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 287
    .local v5, "id":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 288
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "i":I
    .restart local v1    # "i":I
    int-to-byte v7, v5

    aput-byte v7, v0, v6

    .line 286
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return-object v0
.end method

.method static readPartial(Lorg/openjsse/sun/security/ssl/TransportContext;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "tc"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v0

    .line 119
    .local v0, "isDTLS":Z
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    .line 121
    new-instance v1, Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-direct {v1, p1}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>(Ljava/nio/ByteBuffer;)V

    .line 124
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    .line 132
    :cond_0
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    .line 134
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 137
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 138
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_3

    .line 139
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 140
    .local v2, "id":I
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 141
    .local v3, "extLen":I
    add-int/lit8 v4, v3, 0x4

    sub-int/2addr v1, v4

    .line 143
    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget v4, v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    if-ne v2, v4, :cond_2

    .line 145
    if-gtz v1, :cond_1

    .line 150
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    .line 151
    return-void

    .line 146
    :cond_1
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "pre_shared_key extension is not last"

    invoke-virtual {p0, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    .end local v2    # "id":I
    .end local v3    # "extLen":I
    goto :goto_0

    .line 158
    .end local v1    # "remaining":I
    :cond_3
    return-void
.end method


# virtual methods
.method getHeaderBytes()[B
    .locals 4

    .line 231
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;-><init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    .line 234
    .local v0, "hos":Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    :try_start_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 235
    iget v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 236
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 237
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 238
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getEncodedCipherSuites()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 239
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 244
    :goto_0
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method getHelloCookieBytes()[B
    .locals 4

    .line 210
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;-><init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    .line 213
    .local v0, "hos":Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    :try_start_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 214
    iget v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 215
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 216
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 218
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getEncodedCipherSuites()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 219
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 220
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 226
    :goto_0
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 295
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 305
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SessionId;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->isDTLS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuiteIds:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 309
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sendCore(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 316
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 318
    return-void
.end method

.method sendCore(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 322
    iget v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 323
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 324
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 325
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->isDTLS:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 328
    :cond_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getEncodedCipherSuites()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 329
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 330
    return-void
.end method

.method setHelloCookie([B)V
    .locals 0
    .param p1, "cookie"    # [B

    .line 205
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 334
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->isDTLS:Z

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"ClientHello\": \'{\'\n  \"client version\"      : \"{0}\",\n  \"random\"              : \"{1}\",\n  \"session id\"          : \"{2}\",\n  \"cookie\"              : \"{3}\",\n  \"cipher suites\"       : \"{4}\",\n  \"compression methods\" : \"{5}\",\n  \"extensions\"          : [\n{6}\n  ]\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 348
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    .line 349
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    .line 350
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 351
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SessionId;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cookie:[B

    .line 352
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getCipherSuiteNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    .line 354
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 355
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 358
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 360
    .end local v0    # "messageFormat":Ljava/text/MessageFormat;
    .end local v1    # "messageFields":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"ClientHello\": \'{\'\n  \"client version\"      : \"{0}\",\n  \"random\"              : \"{1}\",\n  \"session id\"          : \"{2}\",\n  \"cipher suites\"       : \"{3}\",\n  \"compression methods\" : \"{4}\",\n  \"extensions\"          : [\n{5}\n  ]\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 372
    .restart local v0    # "messageFormat":Ljava/text/MessageFormat;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    .line 373
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    .line 374
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 375
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SessionId;->toString()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->getCipherSuiteNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->compressionMethod:[B

    .line 377
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 378
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 381
    .restart local v1    # "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

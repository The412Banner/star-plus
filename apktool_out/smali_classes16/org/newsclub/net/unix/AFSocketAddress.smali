.class public abstract Lorg/newsclub/net/unix/AFSocketAddress;
.super Ljava/net/InetSocketAddress;
.source "AFSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;
    }
.end annotation


# static fields
.field private static final ADDRESS_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

.field static final INTERNAL_DUMMY_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

.field static final INTERNAL_DUMMY_DONT_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

.field private static final SOCKADDR_MAX_LEN:I

.field private static final SOCKADDR_NATIVE_DATA_OFFSET:I

.field private static final SOCKADDR_NATIVE_FAMILY_OFFSET:I

.field static final SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;"
        }
    .end annotation
.end field

.field private final bytes:[B

.field private inetAddress:Ljava/net/InetAddress;

.field private final nativeAddress:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lorg/newsclub/net/unix/SentinelSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/newsclub/net/unix/SentinelSocketAddress;-><init>(I)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    .line 53
    new-instance v0, Lorg/newsclub/net/unix/SentinelSocketAddress;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/newsclub/net/unix/SentinelSocketAddress;-><init>(I)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    .line 54
    new-instance v0, Lorg/newsclub/net/unix/SentinelSocketAddress;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/newsclub/net/unix/SentinelSocketAddress;-><init>(I)V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_DONT_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    .line 56
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->sockAddrNativeFamilyOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_NATIVE_FAMILY_OFFSET:I

    .line 59
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->sockAddrNativeDataOffset()I

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    sput v2, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_NATIVE_DATA_OFFSET:I

    .line 62
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->sockAddrLength(I)I

    move-result v0

    goto :goto_2

    :cond_2
    const/16 v0, 0x100

    :goto_2
    sput v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_MAX_LEN:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->ADDRESS_CACHE:Ljava/util/Map;

    .line 68
    new-instance v0, Lorg/newsclub/net/unix/AFSocketAddress$1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFSocketAddress$1;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFAddressFamily;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "socketAddress"    # [B
    .param p3, "nativeAddress"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/nio/ByteBuffer;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 115
    .local p4, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    invoke-static {p2, p4}, Lorg/newsclub/net/unix/AFInetAddress;->createUnresolvedHostname([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->inetAddress:Ljava/net/InetAddress;

    .line 116
    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    .line 118
    const/4 v0, -0x1

    if-lt p1, v0, :cond_4

    .line 121
    if-lez p1, :cond_2

    .line 122
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->setPort1(Ljava/net/SocketAddress;I)V

    goto :goto_1

    .line 123
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Cannot set SocketAddress port - junixsocket JNI library is not available"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->unsupportedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/net/SocketException;

    throw v0

    .line 129
    :cond_2
    :goto_1
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->bytes:[B

    .line 134
    iput-object p4, p0, Lorg/newsclub/net/unix/AFSocketAddress;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    .line 135
    return-void

    .line 130
    :cond_3
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal address length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "port out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lorg/newsclub/net/unix/SentinelSocketAddress;",
            ">;I)V"
        }
    .end annotation

    .line 145
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/newsclub/net/unix/SentinelSocketAddress;>;"
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->inetAddress:Ljava/net/InetAddress;

    .line 146
    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    .line 147
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/newsclub/net/unix/AFSocketAddress;->bytes:[B

    .line 148
    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    .line 149
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 45
    sget v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_MAX_LEN:I

    return v0
.end method

.method protected static final getInetAddress(Ljava/io/FileDescriptor;ZLorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "fdesc"    # Ljava/io/FileDescriptor;
    .param p1, "peerName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Z",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    .line 188
    .local p2, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 189
    return-object v1

    .line 191
    :cond_0
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v0

    invoke-static {v0, p0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->sockname(ILjava/io/FileDescriptor;Z)[B

    move-result-object v0

    .line 192
    .local v0, "addr":[B
    if-nez v0, :cond_1

    .line 193
    return-object v1

    .line 195
    :cond_1
    invoke-static {v0, p2}, Lorg/newsclub/net/unix/AFInetAddress;->wrapAddress([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method static final getNativeAddressDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "limit"    # I

    .line 513
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 514
    .local v0, "direct":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 515
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 516
    return-object v0
.end method

.method protected static final getSocketAddress(Ljava/io/FileDescriptor;ZILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 3
    .param p0, "fdesc"    # Ljava/io/FileDescriptor;
    .param p1, "peerName"    # Z
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Ljava/io/FileDescriptor;",
            "ZI",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 210
    .local p3, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    return-object v1

    .line 213
    :cond_0
    invoke-virtual {p3}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v0

    invoke-static {v0, p0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->sockname(ILjava/io/FileDescriptor;Z)[B

    move-result-object v0

    .line 214
    .local v0, "addr":[B
    if-nez v0, :cond_1

    .line 215
    return-object v1

    .line 219
    :cond_1
    :try_start_0
    invoke-static {v0, p3}, Lorg/newsclub/net/unix/AFInetAddress;->wrapAddress([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/net/InetAddress;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/net/SocketException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static final isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)Z"
        }
    .end annotation

    .line 527
    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/AFInetAddress;->isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z

    move-result v0

    return v0
.end method

.method static final newSockAddrDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "length"    # I

    .line 432
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static final newSockAddrKeyBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "length"    # I

    .line 436
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .param p0, "u"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 596
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 4
    .param p0, "u"    # Ljava/net/URI;
    .param p1, "overridePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 613
    invoke-static {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->getAddressFamily(Ljava/net/URI;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    .line 614
    .local v0, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0, p0, p1}, Lorg/newsclub/net/unix/AFAddressFamily;->parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v1

    return-object v1

    .line 615
    :cond_0
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot resolve AFSocketAddress from URI scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static final ofInternal(Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 5
    .param p0, "socketAddressBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 379
    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    const-class v0, Lorg/newsclub/net/unix/AFSocketAddress;

    monitor-enter v0

    .line 380
    :try_start_0
    sget-object v1, Lorg/newsclub/net/unix/AFSocketAddress;->ADDRESS_CACHE:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 381
    .local v1, "mapPorts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 384
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;"
    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/newsclub/net/unix/AFSocketAddress;

    .line 387
    .local v4, "address":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    if-eqz v4, :cond_0

    .line 388
    monitor-exit v0

    return-object v4

    .line 393
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;"
    .end local v4    # "address":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sget v4, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_MAX_LEN:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 396
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 397
    move-object p0, v3

    .line 399
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v3

    invoke-static {v3, p0}, Lorg/newsclub/net/unix/NativeUnixSocket;->sockAddrToBytes(ILjava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 401
    .local v3, "sockAddrToBytes":[B
    if-nez v3, :cond_2

    .line 402
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_2
    invoke-static {v3, v2, p1}, Lorg/newsclub/net/unix/AFSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 406
    .end local v1    # "mapPorts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;>;"
    .end local v3    # "sockAddrToBytes":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final preprocessSocketAddress(Ljava/lang/Class;Ljava/net/SocketAddress;Lorg/newsclub/net/unix/AFSocketAddressFromHostname;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">;",
            "Ljava/net/SocketAddress;",
            "Lorg/newsclub/net/unix/AFSocketAddressFromHostname<",
            "*>;)",
            "Lorg/newsclub/net/unix/AFSocketAddress;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 228
    .local p0, "supportedAddressClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/newsclub/net/unix/AFSocketAddress;>;"
    .local p2, "afh":Lorg/newsclub/net/unix/AFSocketAddressFromHostname;, "Lorg/newsclub/net/unix/AFSocketAddressFromHostname<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    instance-of v0, p1, Lorg/newsclub/net/unix/SentinelSocketAddress;

    if-eqz v0, :cond_0

    .line 230
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/SentinelSocketAddress;

    return-object v0

    .line 233
    :cond_0
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketAddress;

    if-nez v0, :cond_1

    .line 234
    if-eqz p2, :cond_1

    .line 235
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 236
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 238
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "hostname":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/newsclub/net/unix/AFSocketAddressFromHostname;->isHostnameSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/newsclub/net/unix/AFSocketAddressFromHostname;->addressFromHost(Ljava/lang/String;I)Ljava/net/SocketAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/net/SocketException;
    throw v2

    .line 250
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "hostname":Ljava/lang/String;
    .end local v2    # "e":Ljava/net/SocketException;
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFSocketAddress;

    return-object v0

    .line 253
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only connect to endpoints of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static final resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 8
    .param p0, "socketAddress"    # [B
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">([BI",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 322
    .local p2, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    array-length v0, p0

    if-eqz v0, :cond_7

    .line 326
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 327
    const/4 p1, 0x0

    .line 330
    :cond_0
    sget-object v1, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 331
    .local v1, "direct":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v2

    invoke-static {v2, v1, p0}, Lorg/newsclub/net/unix/NativeUnixSocket;->bytesToSockAddr(ILjava/nio/ByteBuffer;[B)I

    move-result v2

    goto :goto_0

    .line 332
    :cond_1
    move v2, v0

    :goto_0
    nop

    .line 333
    .local v2, "limit":I
    if-ne v2, v0, :cond_2

    .line 335
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFAddressFamily;->getAddressConstructor()Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, p1, p0, v3}, Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;->newAFSocketAddress(I[BLjava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0

    .line 336
    :cond_2
    sget v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_MAX_LEN:I

    if-gt v2, v0, :cond_6

    .line 339
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 340
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 342
    const-class v0, Lorg/newsclub/net/unix/AFSocketAddress;

    monitor-enter v0

    .line 344
    :try_start_0
    sget-object v3, Lorg/newsclub/net/unix/AFSocketAddress;->ADDRESS_CACHE:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 345
    .local v3, "mapPorts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;>;"
    if-nez v3, :cond_3

    .line 346
    const/4 v4, 0x0

    .line 347
    .local v4, "instance":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v3, v5

    .line 348
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v6, Lorg/newsclub/net/unix/AFSocketAddress;->ADDRESS_CACHE:Ljava/util/Map;

    invoke-interface {v6, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 352
    .end local v4    # "instance":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;"
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v5, v4

    .line 353
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;"
    if-nez v5, :cond_4

    .line 354
    const/4 v4, 0x0

    .line 355
    .restart local v4    # "instance":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v5, v6

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 358
    .end local v4    # "instance":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    :cond_4
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/newsclub/net/unix/AFSocketAddress;

    .line 362
    .restart local v4    # "instance":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    :goto_1
    if-nez v4, :cond_5

    .line 363
    invoke-static {v2}, Lorg/newsclub/net/unix/AFSocketAddress;->newSockAddrKeyBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 364
    .local v6, "key":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v6, v7

    .line 367
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFAddressFamily;->getAddressConstructor()Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;

    move-result-object v7

    invoke-interface {v7, p1, p0, v6}, Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;->newAFSocketAddress(I[BLjava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v7

    move-object v4, v7

    .line 369
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v3    # "mapPorts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;>;"
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFSocketAddress;>;"
    .end local v6    # "key":Ljava/nio/ByteBuffer;
    :cond_5
    monitor-exit v0

    .line 373
    return-object v4

    .line 371
    .end local v4    # "instance":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 337
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected address length"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    .end local v1    # "direct":Ljava/nio/ByteBuffer;
    .end local v2    # "limit":I
    :cond_7
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Address cannot be empty"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static final unwrap(Ljava/lang/String;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 476
    .local p2, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-static {p0, p2}, Lorg/newsclub/net/unix/AFInetAddress;->unwrapAddress(Ljava/lang/String;Lorg/newsclub/net/unix/AFAddressFamily;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected static final unwrap(Ljava/net/InetAddress;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Ljava/net/InetAddress;",
            "I",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 455
    .local p2, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {p0, p2}, Lorg/newsclub/net/unix/AFInetAddress;->unwrapAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method static final unwrapAddressDirectBufferInternal(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 5
    .param p0, "socketAddressBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 482
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v0, :cond_2

    .line 488
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getBytes()[B

    move-result-object v0

    .line 489
    .local v0, "addr":[B
    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v1

    .line 490
    .local v1, "domain":I
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-static {v1, p0, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->bytesToSockAddr(ILjava/nio/ByteBuffer;[B)I

    move-result v2

    goto :goto_0

    .line 491
    :cond_0
    move v2, v3

    :goto_0
    nop

    .line 492
    .local v2, "len":I
    if-eq v2, v3, :cond_1

    .line 495
    return v2

    .line 493
    :cond_1
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Unsupported domain"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 485
    .end local v0    # "addr":[B
    .end local v1    # "domain":I
    .end local v2    # "len":I
    :cond_2
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public covers(Lorg/newsclub/net/unix/AFSocketAddress;)Z
    .locals 1
    .param p1, "other"    # Lorg/newsclub/net/unix/AFSocketAddress;

    .line 696
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    return-object v0
.end method

.method protected final getBytes()[B
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->bytes:[B

    return-object v0
.end method

.method public abstract getFile()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method protected final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getInetAddress(Lorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final declared-synchronized getInetAddress(Lorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    .local p1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->inetAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->bytes:[B

    invoke-static {v0, p1}, Lorg/newsclub/net/unix/AFInetAddress;->wrapAddress([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->inetAddress:Ljava/net/InetAddress;

    .line 419
    .end local p0    # "this":Lorg/newsclub/net/unix/AFSocketAddress;
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->inetAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 415
    .end local p1    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 505
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 506
    .local v0, "direct":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 507
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 509
    return-object v0
.end method

.method public abstract hasFilename()Z
.end method

.method public newBoundServerSocket()Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->newServerSocket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    .line 565
    .local v0, "serverSocket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<*>;"
    invoke-virtual {v0, p0}, Lorg/newsclub/net/unix/AFServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 566
    return-object v0
.end method

.method public newConnectedSocket()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->newSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    .line 553
    .local v0, "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<*>;"
    invoke-virtual {v0, p0}, Lorg/newsclub/net/unix/AFSocket;->connect(Ljava/net/SocketAddress;)V

    .line 554
    return-object v0
.end method

.method public newForceBoundServerSocket()Lorg/newsclub/net/unix/AFServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->newServerSocket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    .line 579
    .local v0, "serverSocket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<*>;"
    invoke-virtual {v0, p0}, Lorg/newsclub/net/unix/AFServerSocket;->forceBindAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/newsclub/net/unix/AFServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 580
    return-object v0
.end method

.method public toSocatAddressString(Lorg/newsclub/net/unix/AFSocketType;Lorg/newsclub/net/unix/AFSocketProtocol;)Ljava/lang/String;
    .locals 9
    .param p1, "socketType"    # Lorg/newsclub/net/unix/AFSocketType;
    .param p2, "socketProtocol"    # Lorg/newsclub/net/unix/AFSocketProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    sget v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_NATIVE_FAMILY_OFFSET:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    sget v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_NATIVE_DATA_OFFSET:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 653
    return-object v1

    .line 655
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFSocketProtocol;->getId()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 656
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol not (yet) supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    sget v1, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_NATIVE_FAMILY_OFFSET:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 660
    .local v0, "family":I
    if-nez p1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketType;->getId()I

    move-result v1

    invoke-static {v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->sockTypeToNative(I)I

    move-result v1

    .line 661
    .local v1, "type":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    const/16 v4, 0x3a

    if-eq v1, v2, :cond_5

    .line 664
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    :cond_5
    if-eqz p2, :cond_6

    .line 668
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFSocketProtocol;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    :cond_6
    const-string v2, ":x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 673
    .local v2, "n":I
    :goto_2
    const/4 v4, 0x1

    if-le v2, v4, :cond_7

    iget-object v4, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_7

    .line 674
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 676
    :cond_7
    sget v4, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKADDR_NATIVE_DATA_OFFSET:I

    .local v4, "pos":I
    :goto_3
    if-ge v4, v2, :cond_8

    .line 677
    iget-object v5, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 678
    .local v5, "b":B
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02x"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 680
    .end local v4    # "pos":I
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 650
    .end local v0    # "family":I
    .end local v1    # "type":I
    .end local v2    # "n":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    :goto_4
    return-object v1
.end method

.method public toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final wrapAddress()Ljava/net/InetAddress;
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->bytes:[B

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/AFInetAddress;->wrapAddress([BLorg/newsclub/net/unix/AFAddressFamily;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final writeNativeAddressTo(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketAddress;->nativeAddress:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 543
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot access native address"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

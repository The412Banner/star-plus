.class final Lorg/newsclub/net/unix/NativeUnixSocket;
.super Ljava/lang/Object;
.source "NativeUnixSocket.java"


# static fields
.field static final BIND_OPT_REUSE:I = 0x1

.field static final DOMAIN_TIPC:I = 0x1e

.field static final DOMAIN_UNIX:I = 0x1

.field static final DOMAIN_VSOCK:I = 0x28

.field static final OPT_DGRAM_MODE:I = 0x10

.field static final OPT_LOOKUP_SENDER:I = 0x1

.field static final OPT_NON_BLOCKING:I = 0x4

.field static final OPT_NON_SOCKET:I = 0x8

.field static final OPT_PEEK:I = 0x2

.field static final SOCKETSTATUS_BOUND:I = 0x1

.field static final SOCKETSTATUS_CONNECTED:I = 0x2

.field static final SOCKETSTATUS_INVALID:I = -0x1

.field static final SOCKETSTATUS_UNKNOWN:I = 0x0

.field static final SOCK_DGRAM:I = 0x2

.field static final SOCK_RDM:I = 0x4

.field static final SOCK_SEQPACKET:I = 0x5

.field static final SOCK_STREAM:I = 0x1

.field private static initError:Ljava/lang/Throwable;

.field private static loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lorg/newsclub/net/unix/NativeUnixSocket;->initError:Ljava/lang/Throwable;

    .line 80
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/newsclub/net/unix/NativeLibraryLoader;

    invoke-direct {v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v1, "nll":Lorg/newsclub/net/unix/NativeLibraryLoader;
    :try_start_1
    invoke-virtual {v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->loadLibrary()V

    .line 82
    sput-boolean v0, Lorg/newsclub/net/unix/NativeUnixSocket;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-virtual {v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .end local v1    # "nll":Lorg/newsclub/net/unix/NativeLibraryLoader;
    goto :goto_2

    .line 80
    .restart local v1    # "nll":Lorg/newsclub/net/unix/NativeLibraryLoader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    .end local v1    # "nll":Lorg/newsclub/net/unix/NativeLibraryLoader;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    sput-object v1, Lorg/newsclub/net/unix/NativeUnixSocket;->initError:Ljava/lang/Throwable;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    const-string v1, "un"

    const-string v2, "org.newsclub.net.unix.AFUNIXSocketAddress"

    invoke-static {v1, v0, v2}, Lorg/newsclub/net/unix/AFAddressFamily;->registerAddressFamily(Ljava/lang/String;ILjava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;

    .line 90
    const/16 v0, 0x1e

    const-string v1, "org.newsclub.net.unix.AFTIPCSocketAddress"

    const-string v2, "tipc"

    invoke-static {v2, v0, v1}, Lorg/newsclub/net/unix/AFAddressFamily;->registerAddressFamily(Ljava/lang/String;ILjava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;

    .line 92
    const/16 v0, 0x28

    const-string v1, "org.newsclub.net.unix.AFVSOCKSocketAddress"

    const-string v2, "vsock"

    invoke-static {v2, v0, v1}, Lorg/newsclub/net/unix/AFAddressFamily;->registerAddressFamily(Ljava/lang/String;ILjava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;

    .line 94
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static native accept(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native ancillaryBufMinLen()I
.end method

.method static native attachCloseable(Ljava/io/FileDescriptor;Ljava/io/Closeable;)V
.end method

.method static native available(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native bind(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native bytesToSockAddr(ILjava/nio/ByteBuffer;[B)I
.end method

.method static native capabilities()I
.end method

.method static native close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native configureBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native connect(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native copyFileDescriptor(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native createSocket(Ljava/io/FileDescriptor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native currentRMISocket()Ljava/net/Socket;
.end method

.method static native deregisterSelectionKey(Ljava/nio/channels/spi/AbstractSelectableChannel;Ljava/nio/channels/SelectionKey;)V
.end method

.method static native destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method static native disconnect(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static ensureSupported()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 101
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->unsupportedException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method static native finishConnect(Ljava/io/FileDescriptor;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getFD(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getSocketOption(Ljava/io/FileDescriptor;IILjava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/FileDescriptor;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getSocketOptionInt(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method static native initFD(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native initPipe(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static initPre()V
    .locals 1

    .line 121
    const-class v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->tryResolveClass(Ljava/lang/String;)V

    .line 122
    const-string v0, "java.lang.ProcessBuilder$RedirectPipeImpl"

    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->tryResolveClass(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method static native initRedirect(Ljava/io/FileDescriptor;)Ljava/lang/ProcessBuilder$Redirect;
.end method

.method static native initServerImpl(Ljava/net/ServerSocket;Lorg/newsclub/net/unix/AFSocketImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/ServerSocket;",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static isLoaded()Z
    .locals 1

    .line 97
    sget-boolean v0, Lorg/newsclub/net/unix/NativeUnixSocket;->loaded:Z

    return v0
.end method

.method static native listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native maxAddressLength()I
.end method

.method static native peerCredentials(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFUNIXSocketCredentials;)Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native poll(Lorg/newsclub/net/unix/AFSelector$PollFd;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native primaryType(Ljava/io/FileDescriptor;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native read(Ljava/io/FileDescriptor;[BIIILorg/newsclub/net/unix/AncillaryDataSupport;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;ILorg/newsclub/net/unix/AncillaryDataSupport;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static retrieveInitError()Ljava/lang/Throwable;
    .locals 1

    .line 116
    sget-object v0, Lorg/newsclub/net/unix/NativeUnixSocket;->initError:Ljava/lang/Throwable;

    return-object v0
.end method

.method static native send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILorg/newsclub/net/unix/AncillaryDataSupport;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setPort(Ljava/net/SocketAddress;I)V
.end method

.method static setPort1(Ljava/net/SocketAddress;I)V
    .locals 3
    .param p0, "addr"    # Ljava/net/SocketAddress;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 249
    if-ltz p1, :cond_0

    .line 254
    :try_start_0
    invoke-static {p0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->setPort(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .line 260
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Could not set port"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 250
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port out of range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static native setSocketOption(Ljava/io/FileDescriptor;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setSocketOptionInt(Ljava/io/FileDescriptor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sockAddrLength(I)I
.end method

.method static native sockAddrNativeDataOffset()I
.end method

.method static native sockAddrNativeFamilyOffset()I
.end method

.method static native sockAddrToBytes(ILjava/nio/ByteBuffer;)[B
.end method

.method static native sockTypeToNative(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native socketPair(IILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
.end method

.method static native socketStatus(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sockname(ILjava/io/FileDescriptor;Z)[B
.end method

.method static native tipcGetLinkName(II)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native tipcGetNodeId(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static tryResolveClass(Ljava/lang/String;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 127
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 131
    :goto_0
    return-void
.end method

.method static unsupportedException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 107
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "junixsocket is not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/newsclub/net/unix/NativeUnixSocket;->initError:Ljava/lang/Throwable;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/UnsupportedOperationException;

    .line 108
    return-object v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static native vsockGetLocalCID()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native write(Ljava/io/FileDescriptor;[BIIILorg/newsclub/net/unix/AncillaryDataSupport;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

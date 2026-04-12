.class public abstract Lorg/newsclub/net/unix/AFSocket;
.super Ljava/net/Socket;
.source "AFSocket.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSomeSocket;
.implements Lorg/newsclub/net/unix/AFSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFSocket$Constructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/net/Socket;",
        "Lorg/newsclub/net/unix/AFSomeSocket;",
        "Lorg/newsclub/net/unix/AFSocketExtensions;"
    }
.end annotation


# static fields
.field private static final PROP_LIBRARY_DISABLE_CAPABILITY_PREFIX:Ljava/lang/String; = "org.newsclub.net.unix.library.disable."

.field private static capabilities:Ljava/lang/Integer;

.field static loadedLibrary:Ljava/lang/String;


# instance fields
.field private final afh:Lorg/newsclub/net/unix/AFSocketAddressFromHostname;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketAddressFromHostname<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final channel:Lorg/newsclub/net/unix/AFSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final closeables:Lorg/newsclub/net/unix/Closeables;

.field private connectFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

.field private final created:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final impl:Lorg/newsclub/net/unix/AFSocketImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/newsclub/net/unix/AFSocket;->capabilities:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketAddressFromHostname;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFSocketAddressFromHostname<",
            "TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    .local p1, "impl":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>;"
    .local p2, "afh":Lorg/newsclub/net/unix/AFSocketAddressFromHostname;, "Lorg/newsclub/net/unix/AFSocketAddressFromHostname<TA;>;"
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 53
    new-instance v0, Lorg/newsclub/net/unix/Closeables;

    invoke-direct {v0}, Lorg/newsclub/net/unix/Closeables;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->newChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->channel:Lorg/newsclub/net/unix/AFSocketChannel;

    .line 69
    iput-object p2, p0, Lorg/newsclub/net/unix/AFSocket;->afh:Lorg/newsclub/net/unix/AFSocketAddressFromHostname;

    .line 70
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    .line 71
    return-void
.end method

.method protected static final connectTo(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;)Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "TA;>;TA;)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    .local p0, "constr":Lorg/newsclub/net/unix/AFSocket$Constructor;, "Lorg/newsclub/net/unix/AFSocket$Constructor<TA;>;"
    .local p1, "addr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lorg/newsclub/net/unix/AFSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    .line 177
    .local v0, "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocket;->connect(Ljava/net/SocketAddress;)V

    .line 178
    return-object v0
.end method

.method public static final connectTo(Lorg/newsclub/net/unix/AFSocketAddress;)Lorg/newsclub/net/unix/AFSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(TA;)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    .local p0, "addr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->getSocketConstructor()Lorg/newsclub/net/unix/AFSocket$Constructor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/newsclub/net/unix/AFSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    .line 193
    .local v0, "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<*>;"
    invoke-virtual {v0, p0}, Lorg/newsclub/net/unix/AFSocket;->connect(Ljava/net/SocketAddress;)V

    .line 194
    return-object v0
.end method

.method public static ensureSupported()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 321
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->ensureSupported()V

    .line 322
    return-void
.end method

.method private static declared-synchronized getCapabilities()I
    .locals 3

    const-class v0, Lorg/newsclub/net/unix/AFSocket;

    monitor-enter v0

    .line 373
    :try_start_0
    sget-object v1, Lorg/newsclub/net/unix/AFSocket;->capabilities:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 374
    invoke-static {}, Lorg/newsclub/net/unix/AFSocket;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/newsclub/net/unix/AFSocket;->capabilities:Ljava/lang/Integer;

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->capabilities()I

    move-result v1

    .line 379
    .local v1, "v":I
    const-string v2, "osv.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    sget-object v2, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_FD_AS_REDIRECT:Lorg/newsclub/net/unix/AFSocketCapability;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocketCapability;->getBitmask()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    .line 384
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/newsclub/net/unix/AFSocket;->capabilities:Ljava/lang/Integer;

    .line 387
    .end local v1    # "v":I
    :cond_2
    :goto_0
    sget-object v1, Lorg/newsclub/net/unix/AFSocket;->capabilities:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 372
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static final getLoadedLibrary()Ljava/lang/String;
    .locals 1

    .line 349
    sget-object v0, Lorg/newsclub/net/unix/AFSocket;->loadedLibrary:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 2

    .line 334
    :try_start_0
    invoke-static {}, Lorg/newsclub/net/unix/NativeLibraryLoader;->getJunixsocketVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isCapDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.newsclub.net.unix.library.disable."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 310
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$forceConnectAddress$0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "endpoint"    # Ljava/net/SocketAddress;
    .param p1, "orig"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method protected static final newInstance(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFSocketFactory<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 156
    .local p0, "constr":Lorg/newsclub/net/unix/AFSocket$Constructor;, "Lorg/newsclub/net/unix/AFSocket$Constructor<TA;>;"
    .local p1, "factory":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/newsclub/net/unix/AFSocket;->newInstance0(Lorg/newsclub/net/unix/AFSocket$Constructor;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketFactory;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFSocket;
    .locals 5
    .param p2, "fdObj"    # Ljava/io/FileDescriptor;
    .param p3, "localPort"    # I
    .param p4, "remotePort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFSocketFactory<",
            "TA;>;",
            "Ljava/io/FileDescriptor;",
            "II)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    .local p0, "constr":Lorg/newsclub/net/unix/AFSocket$Constructor;, "Lorg/newsclub/net/unix/AFSocket$Constructor<TA;>;"
    .local p1, "sf":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {p2}, Lorg/newsclub/net/unix/NativeUnixSocket;->socketStatus(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 116
    .local v0, "status":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    invoke-static {p0, p2, p1}, Lorg/newsclub/net/unix/AFSocket;->newInstance0(Lorg/newsclub/net/unix/AFSocket$Constructor;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v1

    .line 121
    .local v1, "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lorg/newsclub/net/unix/AFSocketImpl;->updatePorts(II)V

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 133
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid socketStatus response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :pswitch_0
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->internalDummyConnect()V

    .line 126
    goto :goto_0

    .line 128
    :pswitch_1
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->internalDummyBind()V

    .line 129
    goto :goto_0

    .line 131
    :pswitch_2
    nop

    .line 135
    :goto_0
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v2

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/newsclub/net/unix/AFSocketImpl;->setSocketAddress(Lorg/newsclub/net/unix/AFSocketAddress;)V

    .line 137
    return-object v1

    .line 117
    .end local v1    # "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    :cond_0
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a valid socket"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "status":I
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Invalid file descriptor"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static newInstance0(Lorg/newsclub/net/unix/AFSocket$Constructor;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "TA;>;",
            "Ljava/io/FileDescriptor;",
            "Lorg/newsclub/net/unix/AFSocketFactory<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 162
    .local p0, "constr":Lorg/newsclub/net/unix/AFSocket$Constructor;, "Lorg/newsclub/net/unix/AFSocket$Constructor<TA;>;"
    .local p2, "factory":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    invoke-interface {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    return-object v0
.end method

.method private preprocessSocketAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 2
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    if-eqz p1, :cond_1

    .line 240
    instance-of v0, p1, Lorg/newsclub/net/unix/SentinelSocketAddress;

    if-eqz v0, :cond_0

    .line 241
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFSocketAddress;

    return-object v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->socketAddressClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocket;->afh:Lorg/newsclub/net/unix/AFSocketAddressFromHostname;

    invoke-static {v0, p1, v1}, Lorg/newsclub/net/unix/AFSocketAddress;->preprocessSocketAddress(Ljava/lang/Class;Ljava/net/SocketAddress;Lorg/newsclub/net/unix/AFSocketAddressFromHostname;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endpoint is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final supports(Lorg/newsclub/net/unix/AFSocketCapability;)Z
    .locals 2
    .param p0, "capability"    # Lorg/newsclub/net/unix/AFSocketCapability;

    .line 424
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketCapability;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocket;->isCapDisabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/newsclub/net/unix/AFSocket;->getCapabilities()I

    move-result v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketCapability;->getBitmask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final supports(Lorg/newsclub/net/unix/AFUNIXSocketCapability;)Z
    .locals 2
    .param p0, "capability"    # Lorg/newsclub/net/unix/AFUNIXSocketCapability;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocket;->isCapDisabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/newsclub/net/unix/AFSocket;->getCapabilities()I

    move-result v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketCapability;->getBitmask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final addCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 444
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/Closeables;->add(Ljava/io/Closeable;)Z

    .line 445
    return-void
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFSocket;->preprocessSocketAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketAddress;

    .line 214
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Use AF*ServerSocket#bind or #bindOn"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    monitor-enter p0

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "superException":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    goto :goto_0

    .line 428
    .end local v0    # "superException":Ljava/io/IOException;
    .end local p0    # "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 432
    .restart local v0    # "superException":Ljava/io/IOException;
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 435
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    invoke-virtual {v1, v0}, Lorg/newsclub/net/unix/Closeables;->close(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 428
    .end local v0    # "superException":Ljava/io/IOException;
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 230
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocket;->connect0(Ljava/net/SocketAddress;I)Z

    .line 235
    return-void
.end method

.method final connect0(Ljava/net/SocketAddress;I)Z
    .locals 5
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    if-ltz p2, :cond_4

    .line 251
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 255
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->connectFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->connectFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

    invoke-interface {v0, p1}, Lorg/newsclub/net/unix/SocketAddressFilter;->apply(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object p1

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFSocket;->preprocessSocketAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    .line 261
    .local v0, "address":Lorg/newsclub/net/unix/AFSocketAddress;
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->internalDummyBind()V

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->connect0(Ljava/net/SocketAddress;I)Z

    move-result v1

    .line 266
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getPort()I

    move-result v2

    .line 268
    .local v2, "port":I
    if-lez v2, :cond_2

    .line 269
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v3

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/newsclub/net/unix/AFSocketImpl;->updatePorts(II)V

    .line 272
    .end local v2    # "port":I
    :cond_2
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->internalDummyConnect()V

    .line 273
    return v1

    .line 252
    .end local v0    # "address":Lorg/newsclub/net/unix/AFSocketAddress;
    .end local v1    # "success":Z
    :cond_3
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connectHook(Lorg/newsclub/net/unix/SocketAddressFilter;)Lorg/newsclub/net/unix/AFSocket;
    .locals 0
    .param p1, "hook"    # Lorg/newsclub/net/unix/SocketAddressFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/SocketAddressFilter;",
            ")",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSocket;->connectFilter:Lorg/newsclub/net/unix/SocketAddressFilter;

    .line 545
    return-object p0
.end method

.method public final ensureAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "minSize"    # I

    .line 369
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketImpl;->ensureAncillaryReceiveBufferSize(I)V

    .line 370
    return-void
.end method

.method public final forceConnectAddress(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFSocket$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFSocket$$ExternalSyntheticLambda0;-><init>(Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocket;->connectHook(Lorg/newsclub/net/unix/SocketAddressFilter;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    return-object v0
.end method

.method final getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "TA;>;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl(Z)Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method final getAFImpl(Z)Lorg/newsclub/net/unix/AFSocketImpl;
    .locals 3
    .param p1, "createSocket"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "TA;>;"
        }
    .end annotation

    .line 461
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 468
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    return-object v0
.end method

.method public final getAncillaryReceiveBufferSize()I
    .locals 1

    .line 359
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getAncillaryReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->channel:Lorg/newsclub/net/unix/AFSocketChannel;

    return-object v0
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final getImplExtensions()Lorg/newsclub/net/unix/AFSocketImplExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
            "TA;>;"
        }
    .end annotation

    .line 518
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl(Z)Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getImplExtensions()Lorg/newsclub/net/unix/AFSocketImplExtensions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getInputStream()Lorg/newsclub/net/unix/AFInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Lorg/newsclub/net/unix/AFInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getInputStream()Lorg/newsclub/net/unix/AFInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x0

    return-object v0

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getOutputStream()Lorg/newsclub/net/unix/AFOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Lorg/newsclub/net/unix/AFOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getOutputStream()Lorg/newsclub/net/unix/AFOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    monitor-enter p0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 481
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 479
    .end local p0    # "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method final internalDummyBind()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-super {p0, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 286
    :cond_0
    return-void
.end method

.method final internalDummyConnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 280
    :cond_0
    return-void
.end method

.method public final isBound()Z
    .locals 1

    .line 219
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-super {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 354
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-super {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 224
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract newChannel()Lorg/newsclub/net/unix/AFSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation
.end method

.method public final removeCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 453
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->closeables:Lorg/newsclub/net/unix/Closeables;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/Closeables;->remove(Ljava/io/Closeable;)Z

    .line 454
    return-void
.end method

.method public final setAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 364
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketImpl;->setAncillaryReceiveBufferSize(I)V

    .line 365
    return-void
.end method

.method protected final socketAddressClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocket;->getAFImpl(Z)Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->getSocketAddressClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 290
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->toStringSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final toStringSuffix()Ljava/lang/String;
    .locals 2

    .line 294
    .local p0, "this":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocket;->impl:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocket;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    const-string v0, "[invalid]"

    return-object v0
.end method

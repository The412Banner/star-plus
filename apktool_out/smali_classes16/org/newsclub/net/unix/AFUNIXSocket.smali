.class public final Lorg/newsclub/net/unix/AFUNIXSocket;
.super Lorg/newsclub/net/unix/AFSocket;
.source "AFUNIXSocket.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFUNIXSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSocket<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;",
        "Lorg/newsclub/net/unix/AFUNIXSocketExtensions;"
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_STRICT:Lorg/newsclub/net/unix/AFSocket$Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocket$1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSocket$1;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocket;->CONSTRUCTOR_STRICT:Lorg/newsclub/net/unix/AFSocket$Constructor;

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Lorg/newsclub/net/unix/AFSocketFactory<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 51
    .local p2, "factory":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<Lorg/newsclub/net/unix/AFUNIXSocketAddress;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketImpl$Lenient;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketImpl$Lenient;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, p2}, Lorg/newsclub/net/unix/AFUNIXSocket;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketFactory;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;",
            "Lorg/newsclub/net/unix/AFSocketFactory<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 46
    .local p1, "impl":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<Lorg/newsclub/net/unix/AFUNIXSocketAddress;>;"
    .local p2, "factory":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<Lorg/newsclub/net/unix/AFUNIXSocketAddress;>;"
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocket;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketAddressFromHostname;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketFactory;Lorg/newsclub/net/unix/AFUNIXSocket$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;
    .param p2, "x1"    # Lorg/newsclub/net/unix/AFSocketFactory;
    .param p3, "x2"    # Lorg/newsclub/net/unix/AFUNIXSocket$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocket;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketFactory;)V

    return-void
.end method

.method public static connectTo(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .param p0, "addr"    # Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lorg/newsclub/net/unix/AFSocket;->connectTo(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 161
    invoke-static {}, Lorg/newsclub/net/unix/AFSocket;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/newsclub/net/unix/AFSocketCapability;->CAPABILITY_UNIX_DOMAIN:Lorg/newsclub/net/unix/AFSocketCapability;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocket;->supports(Lorg/newsclub/net/unix/AFSocketCapability;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 173
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/newsclub/net/unix/AFUNIXSocket;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".isSupported(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    .line 177
    invoke-static {}, Lorg/newsclub/net/unix/AFSocketCapability;->values()[Lorg/newsclub/net/unix/AFSocketCapability;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 178
    .local v3, "cap":Lorg/newsclub/net/unix/AFSocketCapability;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 179
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V

    .line 180
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/newsclub/net/unix/AFSocket;->supports(Lorg/newsclub/net/unix/AFSocketCapability;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Z)V

    .line 177
    .end local v3    # "cap":Lorg/newsclub/net/unix/AFSocketCapability;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public static newInstance()Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/newsclub/net/unix/AFUNIXSocketFactory;

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/AFSocket;->newInstance(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method

.method static newInstance(Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 3
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .param p1, "localPort"    # I
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/newsclub/net/unix/AFUNIXSocketFactory;

    invoke-static {v0, v1, p0, p1, p2}, Lorg/newsclub/net/unix/AFSocket;->newInstance(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketFactory;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method

.method static newInstance(Lorg/newsclub/net/unix/AFUNIXSocketFactory;)Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .param p0, "factory"    # Lorg/newsclub/net/unix/AFUNIXSocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lorg/newsclub/net/unix/AFSocket;->newInstance(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method

.method static newLenientInstance()Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method public static newStrictInstance()Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocket;->CONSTRUCTOR_STRICT:Lorg/newsclub/net/unix/AFSocket$Constructor;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/newsclub/net/unix/AFUNIXSocketFactory;

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/AFSocket;->newInstance(Lorg/newsclub/net/unix/AFSocket$Constructor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method


# virtual methods
.method public clearReceivedFileDescriptors()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->clearReceivedFileDescriptors()V

    .line 133
    return-void
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChannel()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;
    .locals 1

    .line 114
    invoke-super {p0}, Lorg/newsclub/net/unix/AFSocket;->getChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    return-object v0
.end method

.method public getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReceivedFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->getReceivedFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasOutboundFileDescriptors()Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->hasOutboundFileDescriptors()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newChannel()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->newChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected newChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;
    .locals 1

    .line 56
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;-><init>(Lorg/newsclub/net/unix/AFUNIXSocket;)V

    return-object v0
.end method

.method public varargs setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fdescs"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V

    .line 141
    return-void
.end method

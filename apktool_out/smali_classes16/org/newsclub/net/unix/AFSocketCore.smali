.class Lorg/newsclub/net/unix/AFSocketCore;
.super Lorg/newsclub/net/unix/AFCore;
.source "AFSocketCore.java"


# static fields
.field private static final SHUT_RD_WR:I = 0x2


# instance fields
.field private final af:Lorg/newsclub/net/unix/AFAddressFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;"
        }
    .end annotation
.end field

.field final inode:Ljava/util/concurrent/atomic/AtomicLong;

.field socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Lorg/newsclub/net/unix/AFAddressFamily;Z)V
    .locals 3
    .param p1, "observed"    # Ljava/lang/Object;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "ancillaryDataSupport"    # Lorg/newsclub/net/unix/AncillaryDataSupport;
    .param p5, "datagramMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/io/FileDescriptor;",
            "Lorg/newsclub/net/unix/AncillaryDataSupport;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;Z)V"
        }
    .end annotation

    .line 45
    .local p4, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/newsclub/net/unix/AFCore;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Z)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketCore;->inode:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    iput-object p4, p0, Lorg/newsclub/net/unix/AFSocketCore;->af:Lorg/newsclub/net/unix/AFAddressFamily;

    .line 47
    return-void
.end method


# virtual methods
.method protected addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketCore;->af:Lorg/newsclub/net/unix/AFAddressFamily;

    return-object v0
.end method

.method protected doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 56
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketCore;->unblockAccepts()V

    .line 58
    invoke-super {p0}, Lorg/newsclub/net/unix/AFCore;->doClose()V

    .line 59
    return-void
.end method

.method getOption(Lorg/newsclub/net/unix/AFSocketOption;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    .local p1, "name":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->type()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->level()I

    move-result v4

    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->optionName()I

    move-result v5

    const-class v6, Ljava/lang/Integer;

    invoke-static {v1, v4, v5, v6}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOption(Ljava/io/FileDescriptor;IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 98
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 100
    :cond_1
    const-class v1, Lorg/newsclub/net/unix/NamedInteger$HasOfValue;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->level()I

    move-result v4

    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->optionName()I

    move-result v5

    const-class v6, Ljava/lang/Integer;

    invoke-static {v1, v4, v5, v6}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOption(Ljava/io/FileDescriptor;IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    .local v1, "v":I
    :try_start_0
    const-string v4, "ofValue"

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 104
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Value casting problem"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 109
    .end local v1    # "v":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->level()I

    move-result v2

    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->optionName()I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->getSocketOption(Ljava/io/FileDescriptor;IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method isConnected(Z)Z
    .locals 2
    .param p1, "boundOk"    # Z

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->socketStatus(Ljava/io/FileDescriptor;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    return v1

    .line 81
    :pswitch_1
    if-eqz p1, :cond_0

    .line 82
    return v1

    .line 90
    :cond_0
    :goto_0
    nop

    .line 91
    const/4 v0, 0x0

    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method receive(Ljava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 66
    .local v0, "socketAddressBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/newsclub/net/unix/AFSocketCore;->read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 67
    .local v1, "read":I
    if-lez v1, :cond_0

    .line 68
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketCore;->af:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-static {v0, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->ofInternal(Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v2

    return-object v2

    .line 70
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method setOption(Lorg/newsclub/net/unix/AFSocketOption;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/newsclub/net/unix/AFSocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p1, "name":Lorg/newsclub/net/unix/AFSocketOption;, "Lorg/newsclub/net/unix/AFSocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "val":Ljava/lang/Object;
    goto :goto_0

    .line 117
    .end local v0    # "val":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/newsclub/net/unix/NamedInteger;

    if-eqz v0, :cond_1

    .line 118
    move-object v0, p2

    check-cast v0, Lorg/newsclub/net/unix/NamedInteger;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/NamedInteger;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .restart local v0    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 120
    .end local v0    # "val":Ljava/lang/Object;
    :cond_1
    move-object v0, p2

    .line 122
    .restart local v0    # "val":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->level()I

    move-result v1

    .line 123
    .local v1, "level":I
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketOption;->optionName()I

    move-result v2

    .line 124
    .local v2, "optionName":I
    iget-object v3, p0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, v1, v2, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->setSocketOption(Ljava/io/FileDescriptor;IILjava/lang/Object;)V

    .line 125
    const/16 v3, 0x10f

    if-ne v1, v3, :cond_2

    const/16 v3, 0x87

    if-ne v2, v3, :cond_2

    .line 129
    const-wide/16 v3, 0x1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_1

    .line 130
    :catch_0
    move-exception v3

    .line 134
    :cond_2
    :goto_1
    return-void
.end method

.method protected unblockAccepts()V
    .locals 0

    .line 62
    return-void
.end method

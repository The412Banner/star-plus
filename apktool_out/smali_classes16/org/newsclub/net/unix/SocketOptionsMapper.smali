.class final Lorg/newsclub/net/unix/SocketOptionsMapper;
.super Ljava/lang/Object;
.source "SocketOptionsMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;
    }
.end annotation


# static fields
.field private static final SOCKET_OPTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketOption<",
            "*>;",
            "Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_SOCKET_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/SocketOptionsMapper;->SOCKET_OPTIONS:Ljava/util/Map;

    .line 57
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/newsclub/net/unix/SocketOptionsMapper;->registerSocketOption(Ljava/net/SocketOption;IZ)V

    .line 58
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    const/16 v1, 0x1001

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lorg/newsclub/net/unix/SocketOptionsMapper;->registerSocketOption(Ljava/net/SocketOption;IZ)V

    .line 59
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    const/16 v1, 0x1002

    invoke-static {v0, v1, v3}, Lorg/newsclub/net/unix/SocketOptionsMapper;->registerSocketOption(Ljava/net/SocketOption;IZ)V

    .line 60
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    const/4 v1, 0x4

    invoke-static {v0, v1, v3}, Lorg/newsclub/net/unix/SocketOptionsMapper;->registerSocketOption(Ljava/net/SocketOption;IZ)V

    .line 61
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    const/16 v1, 0x80

    invoke-static {v0, v1, v3}, Lorg/newsclub/net/unix/SocketOptionsMapper;->registerSocketOption(Ljava/net/SocketOption;IZ)V

    .line 62
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lorg/newsclub/net/unix/SocketOptionsMapper;->registerSocketOption(Ljava/net/SocketOption;IZ)V

    .line 63
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-static {v0, v3, v2}, Lorg/newsclub/net/unix/SocketOptionsMapper;->registerSocketOption(Ljava/net/SocketOption;IZ)V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    .local v0, "supportedOptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v1, Lorg/newsclub/net/unix/SocketOptionsMapper;->SOCKET_OPTIONS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 68
    .local v2, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/SocketOption<*>;Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;

    invoke-static {v3}, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;->access$000(Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketOption;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/SocketOption<*>;Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;>;"
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lorg/newsclub/net/unix/SocketOptionsMapper;->SUPPORTED_SOCKET_OPTIONS:Ljava/util/Set;

    .line 73
    .end local v0    # "supportedOptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static registerSocketOption(Ljava/net/SocketOption;IZ)V
    .locals 2
    .param p1, "socketOptionsId"    # I
    .param p2, "supported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 77
    .local p0, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Lorg/newsclub/net/unix/SocketOptionsMapper;->SOCKET_OPTIONS:Ljava/util/Map;

    new-instance v1, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;

    invoke-direct {v1, p1, p2}, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;-><init>(IZ)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 81
    .local p0, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    sget-object v0, Lorg/newsclub/net/unix/SocketOptionsMapper;->SOCKET_OPTIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;

    .line 82
    .local v0, "ref":Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;
    if-nez v0, :cond_0

    .line 83
    const/4 v1, 0x0

    return-object v1

    .line 85
    :cond_0
    invoke-static {v0}, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;->access$100(Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

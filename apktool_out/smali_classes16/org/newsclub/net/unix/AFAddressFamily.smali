.class public final Lorg/newsclub/net/unix/AFAddressFamily;
.super Ljava/lang/Object;
.source "AFAddressFamily.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final AF_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final DEFERRED_INIT_DONE:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final URI_SCHEMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private addressClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final addressClassname:Ljava/lang/String;

.field private addressConfig:Lorg/newsclub/net/unix/AFSocketAddressConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketAddressConfig<",
            "TA;>;"
        }
    .end annotation
.end field

.field private addressConstructor:Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final domain:I

.field private final juxInetAddressSuffix:Ljava/lang/String;

.field private final juxString:Ljava/lang/String;

.field private selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

.field private selectorProviderClassname:Ljava/lang/String;

.field private serverSocketConstructor:Lorg/newsclub/net/unix/AFServerSocket$Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;"
        }
    .end annotation
.end field

.field private socketConstructor:Lorg/newsclub/net/unix/AFSocket$Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFAddressFamily;->AF_MAP:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFAddressFamily;->URI_SCHEMES:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/newsclub/net/unix/AFAddressFamily;->DEFERRED_INIT_DONE:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "juxString"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "addressClassname"    # Ljava/lang/String;

    .line 72
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 73
    iput-object p1, p0, Lorg/newsclub/net/unix/AFAddressFamily;->juxString:Ljava/lang/String;

    .line 74
    iput p2, p0, Lorg/newsclub/net/unix/AFAddressFamily;->domain:I

    .line 75
    iput-object p3, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressClassname:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".junixsocket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->juxInetAddressSuffix:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static checkDeferredInit()V
    .locals 3

    .line 122
    sget-object v0, Lorg/newsclub/net/unix/AFAddressFamily;->DEFERRED_INIT_DONE:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    .line 124
    invoke-static {}, Lorg/newsclub/net/unix/AFAddressFamily;->triggerInit()V

    .line 126
    :cond_0
    return-void
.end method

.method private declared-synchronized checkProvider()V
    .locals 1

    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->socketConstructor:Lorg/newsclub/net/unix/AFSocket$Constructor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->getSelectorProvider()Ljava/nio/channels/spi/SelectorProvider;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    goto :goto_0

    .line 147
    .end local p0    # "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    :catch_0
    move-exception v0

    .line 151
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static declared-synchronized getAddressFamily(Ljava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 2
    .param p0, "juxString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;"
        }
    .end annotation

    const-class v0, Lorg/newsclub/net/unix/AFAddressFamily;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lorg/newsclub/net/unix/AFAddressFamily;->AF_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/newsclub/net/unix/AFAddressFamily;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 111
    .end local p0    # "juxString":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static getAddressFamily(Ljava/net/URI;)Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lorg/newsclub/net/unix/AFAddressFamily;->checkDeferredInit()V

    .line 116
    const-string v0, "uri"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "scheme":Ljava/lang/String;
    sget-object v1, Lorg/newsclub/net/unix/AFAddressFamily;->URI_SCHEMES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/newsclub/net/unix/AFAddressFamily;

    return-object v1
.end method

.method static declared-synchronized registerAddressFamily(Ljava/lang/String;ILjava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 5
    .param p0, "juxString"    # Ljava/lang/String;
    .param p1, "domain"    # I
    .param p2, "addressClassname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation

    const-class v0, Lorg/newsclub/net/unix/AFAddressFamily;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lorg/newsclub/net/unix/AFAddressFamily;->AF_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/newsclub/net/unix/AFAddressFamily;

    .line 83
    .local v1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 88
    monitor-exit v0

    return-object v1

    .line 85
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong domain for address family "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_1
    new-instance v2, Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-direct {v2, p0, p1, p2}, Lorg/newsclub/net/unix/AFAddressFamily;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    .line 92
    sget-object v2, Lorg/newsclub/net/unix/AFAddressFamily;->AF_MAP:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v0

    return-object v1

    .line 81
    .end local v1    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    .end local p0    # "juxString":Ljava/lang/String;
    .end local p1    # "domain":I
    .end local p2    # "addressClassname":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized registerAddressFamily(Ljava/lang/String;Ljava/lang/Class;Lorg/newsclub/net/unix/AFSocketAddressConfig;)Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 6
    .param p0, "juxString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFSocketAddressConfig<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation

    .local p1, "addressClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "config":Lorg/newsclub/net/unix/AFSocketAddressConfig;, "Lorg/newsclub/net/unix/AFSocketAddressConfig<TA;>;"
    const-class v0, Lorg/newsclub/net/unix/AFAddressFamily;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-static {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->getAddressFamily(Ljava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    .line 194
    .local v1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    if-eqz v1, :cond_6

    .line 197
    iget-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->addressClassname:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/newsclub/net/unix/AFAddressFamily;->addressClassname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected classname for address family "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_1
    :goto_0
    iget-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->addressConstructor:Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;

    if-nez v2, :cond_5

    iget-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->addressClass:Ljava/lang/Class;

    if-nez v2, :cond_5

    .line 204
    iput-object p2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->addressConfig:Lorg/newsclub/net/unix/AFSocketAddressConfig;

    .line 205
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFSocketAddressConfig;->addressConstructor()Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;

    move-result-object v2

    iput-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->addressConstructor:Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;

    .line 206
    iput-object p1, v1, Lorg/newsclub/net/unix/AFAddressFamily;->addressClass:Ljava/lang/Class;

    .line 207
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    :try_start_1
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFSocketAddressConfig;->selectorProviderClassname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProviderClassname:Ljava/lang/String;

    .line 209
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :try_start_2
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFSocketAddressConfig;->uriSchemes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    sget-object v4, Lorg/newsclub/net/unix/AFAddressFamily;->URI_SCHEMES:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 221
    sget-object v4, Lorg/newsclub/net/unix/AFAddressFamily;->URI_SCHEMES:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    nop

    .end local v3    # "scheme":Ljava/lang/String;
    goto :goto_1

    .line 218
    .restart local v3    # "scheme":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI scheme already registered; cannot register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI scheme; cannot register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_4
    monitor-exit v0

    return-object v1

    .line 209
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 202
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Address family not supported by native code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .end local v1    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    .end local p0    # "juxString":Ljava/lang/String;
    .end local p1    # "addressClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .end local p2    # "config":Lorg/newsclub/net/unix/AFSocketAddressConfig;, "Lorg/newsclub/net/unix/AFSocketAddressConfig<TA;>;"
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static declared-synchronized registerAddressFamilyImpl(Ljava/lang/String;Lorg/newsclub/net/unix/AFAddressFamily;Lorg/newsclub/net/unix/AFAddressFamilyConfig;)Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 5
    .param p0, "juxString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFAddressFamilyConfig<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation

    .local p1, "addressFamily":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    .local p2, "config":Lorg/newsclub/net/unix/AFAddressFamilyConfig;, "Lorg/newsclub/net/unix/AFAddressFamilyConfig<TA;>;"
    const-class v0, Lorg/newsclub/net/unix/AFAddressFamily;

    monitor-enter v0

    .line 242
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->getAddressFamily(Ljava/lang/String;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    .line 246
    .local v1, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    if-eqz v1, :cond_2

    .line 249
    if-ne p1, v1, :cond_1

    .line 252
    iget-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->socketConstructor:Lorg/newsclub/net/unix/AFSocket$Constructor;

    if-nez v2, :cond_0

    .line 255
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->socketConstructor()Lorg/newsclub/net/unix/AFSocket$Constructor;

    move-result-object v2

    iput-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->socketConstructor:Lorg/newsclub/net/unix/AFSocket$Constructor;

    .line 256
    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->serverSocketConstructor()Lorg/newsclub/net/unix/AFServerSocket$Constructor;

    move-result-object v2

    iput-object v2, v1, Lorg/newsclub/net/unix/AFAddressFamily;->serverSocketConstructor:Lorg/newsclub/net/unix/AFServerSocket$Constructor;

    .line 258
    invoke-static {p2}, Lorg/newsclub/net/unix/FileDescriptorCast;->registerCastingProviders(Lorg/newsclub/net/unix/AFAddressFamilyConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit v0

    return-object v1

    .line 253
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Address family inconsistency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown address family: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v1    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    .end local p0    # "juxString":Ljava/lang/String;
    .end local p1    # "addressFamily":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    .end local p2    # "config":Lorg/newsclub/net/unix/AFAddressFamilyConfig;, "Lorg/newsclub/net/unix/AFAddressFamilyConfig<TA;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized triggerInit()V
    .locals 7

    const-class v0, Lorg/newsclub/net/unix/AFAddressFamily;

    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lorg/newsclub/net/unix/AFAddressFamily;->AF_MAP:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/newsclub/net/unix/AFAddressFamily;

    .line 99
    .local v2, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    iget-object v3, v2, Lorg/newsclub/net/unix/AFAddressFamily;->addressClassname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 101
    :try_start_1
    iget-object v3, v2, Lorg/newsclub/net/unix/AFAddressFamily;->addressClassname:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 102
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "addressFamily"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    nop

    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 103
    :catch_0
    move-exception v3

    .line 107
    .end local v2    # "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    :cond_0
    :goto_1
    goto :goto_0

    .line 108
    :cond_1
    monitor-exit v0

    return-void

    .line 97
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized uriSchemes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/newsclub/net/unix/AFAddressFamily;

    monitor-enter v0

    .line 340
    :try_start_0
    invoke-static {}, Lorg/newsclub/net/unix/AFAddressFamily;->checkDeferredInit()V

    .line 341
    sget-object v1, Lorg/newsclub/net/unix/AFAddressFamily;->URI_SCHEMES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 339
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method getAddressConstructor()Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor<",
            "TA;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressConstructor:Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressConstructor:Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0
.end method

.method getDomain()I
    .locals 1

    .line 129
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    iget v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->domain:I

    return v0
.end method

.method getJuxInetAddressSuffix()Ljava/lang/String;
    .locals 1

    .line 177
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->juxInetAddressSuffix:Ljava/lang/String;

    return-object v0
.end method

.method getJuxString()Ljava/lang/String;
    .locals 1

    .line 133
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->juxString:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSelectorProvider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 5

    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 355
    .end local p0    # "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProviderClassname:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 356
    monitor-exit p0

    return-object v1

    .line 359
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProviderClassname:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "provider"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 360
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    nop

    .line 366
    :try_start_3
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 361
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate selector provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressClassname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method getServerSocketConstructor()Lorg/newsclub/net/unix/AFServerSocket$Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->checkProvider()V

    .line 163
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->serverSocketConstructor:Lorg/newsclub/net/unix/AFServerSocket$Constructor;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->serverSocketConstructor:Lorg/newsclub/net/unix/AFServerSocket$Constructor;

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0
.end method

.method getSocketAddressClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressClass:Ljava/lang/Class;

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0
.end method

.method getSocketConstructor()Lorg/newsclub/net/unix/AFSocket$Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "TA;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->checkProvider()V

    .line 155
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->socketConstructor:Lorg/newsclub/net/unix/AFSocket$Constructor;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->socketConstructor:Lorg/newsclub/net/unix/AFSocket$Constructor;

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0
.end method

.method initImplExtensions(Lorg/newsclub/net/unix/AncillaryDataSupport;)Lorg/newsclub/net/unix/AFSocketImplExtensions;
    .locals 1
    .param p1, "ancillaryDataSupport"    # Lorg/newsclub/net/unix/AncillaryDataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AncillaryDataSupport;",
            ")",
            "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
            "TA;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 269
    :sswitch_0
    new-instance v0, Lorg/newsclub/net/unix/AFVSOCKSocketImplExtensions;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFVSOCKSocketImplExtensions;-><init>(Lorg/newsclub/net/unix/AncillaryDataSupport;)V

    return-object v0

    .line 267
    :sswitch_1
    new-instance v0, Lorg/newsclub/net/unix/AFTIPCSocketImplExtensions;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFTIPCSocketImplExtensions;-><init>(Lorg/newsclub/net/unix/AncillaryDataSupport;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public newServerSocket()Lorg/newsclub/net/unix/AFServerSocket;
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

    .line 297
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->getServerSocketConstructor()Lorg/newsclub/net/unix/AFServerSocket$Constructor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/newsclub/net/unix/AFServerSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1}, Ljava/net/SocketException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1
.end method

.method public newServerSocketChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->newServerSocket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->getChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public newSocket()Lorg/newsclub/net/unix/AFSocket;
    .locals 2
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

    .line 283
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->getSocketConstructor()Lorg/newsclub/net/unix/AFSocket$Constructor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/newsclub/net/unix/AFSocket$Constructor;->newInstance(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1}, Ljava/net/SocketException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1
.end method

.method public newSocketChannel()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamily;->newSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 3
    .param p1, "u"    # Ljava/net/URI;
    .param p2, "overridePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressConfig:Lorg/newsclub/net/unix/AFSocketAddressConfig;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressConfig:Lorg/newsclub/net/unix/AFSocketAddressConfig;

    invoke-virtual {v0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddressConfig;->parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0

    .line 326
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate addresses of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/newsclub/net/unix/AFAddressFamily;->addressClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

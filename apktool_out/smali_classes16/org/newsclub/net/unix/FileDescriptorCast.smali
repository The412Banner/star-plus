.class public final Lorg/newsclub/net/unix/FileDescriptorCast;
.super Ljava/lang/Object;
.source "FileDescriptorCast.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;,
        Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;,
        Lorg/newsclub/net/unix/FileDescriptorCast$LenientFileInputStream;
    }
.end annotation


# static fields
.field private static final FD_IS_PROVIDER:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_PROVIDERS:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

.field private static final GLOBAL_PROVIDERS_FINAL:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

.field private static final PRIMARY_TYPE_PROVIDERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cpm:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

.field private final fdObj:Ljava/io/FileDescriptor;

.field private localPort:I

.field private remotePort:I


# direct methods
.method public static synthetic $r8$lambda$fKTGT0Quvuo3AKM9sDNi_H9dnHI(Ljava/io/FileDescriptor;)Ljava/io/FileInputStream;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->PRIMARY_TYPE_PROVIDERS_MAP:Ljava/util/Map;

    .line 82
    const-string v0, "osv.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/newsclub/net/unix/FileDescriptorCast$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/FileDescriptorCast$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/newsclub/net/unix/FileDescriptorCast$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/FileDescriptorCast$$ExternalSyntheticLambda1;-><init>()V

    :goto_0
    sput-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->FD_IS_PROVIDER:Ljava/util/function/Function;

    .line 84
    new-instance v0, Lorg/newsclub/net/unix/FileDescriptorCast$1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/FileDescriptorCast$1;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->GLOBAL_PROVIDERS_FINAL:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    .line 99
    new-instance v0, Lorg/newsclub/net/unix/FileDescriptorCast$2;

    invoke-direct {v0}, Lorg/newsclub/net/unix/FileDescriptorCast$2;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->GLOBAL_PROVIDERS:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "cpm"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->localPort:I

    .line 79
    iput v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->remotePort:I

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->fdObj:Ljava/io/FileDescriptor;

    .line 163
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    iput-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->cpm:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    .line 164
    return-void
.end method

.method static synthetic access$000()Ljava/util/function/Function;
    .locals 1

    .line 72
    sget-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->FD_IS_PROVIDER:Ljava/util/function/Function;

    return-object v0
.end method

.method static synthetic access$100()Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
    .locals 1

    .line 72
    sget-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->GLOBAL_PROVIDERS:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/newsclub/net/unix/FileDescriptorCast;)I
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/FileDescriptorCast;

    .line 72
    iget v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->localPort:I

    return v0
.end method

.method static synthetic access$300(Lorg/newsclub/net/unix/FileDescriptorCast;)I
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/FileDescriptorCast;

    .line 72
    iget v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->remotePort:I

    return v0
.end method

.method static synthetic access$400()Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
    .locals 1

    .line 72
    sget-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->GLOBAL_PROVIDERS_FINAL:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/io/FileDescriptor;)Ljava/io/FileInputStream;
    .locals 2
    .param p0, "x$0"    # Ljava/io/FileDescriptor;

    .line 82
    new-instance v0, Lorg/newsclub/net/unix/FileDescriptorCast$LenientFileInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$LenientFileInputStream;-><init>(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/FileDescriptorCast$1;)V

    return-object v0
.end method

.method private static registerCastingProviders(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V
    .locals 4
    .param p1, "cpm"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;",
            ")V"
        }
    .end annotation

    .line 167
    .local p0, "primaryType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->PRIMARY_TYPE_PROVIDERS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    move-object v1, v0

    .local v1, "prev":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
    if-nez v0, :cond_0

    .line 173
    return-void

    .line 170
    :cond_0
    sget-object v0, Lorg/newsclub/net/unix/FileDescriptorCast;->PRIMARY_TYPE_PROVIDERS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static registerCastingProviders(Lorg/newsclub/net/unix/AFAddressFamilyConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/newsclub/net/unix/AFSocketAddress;",
            ">(",
            "Lorg/newsclub/net/unix/AFAddressFamilyConfig<",
            "TA;>;)V"
        }
    .end annotation

    .line 177
    .local p0, "config":Lorg/newsclub/net/unix/AFAddressFamilyConfig;, "Lorg/newsclub/net/unix/AFAddressFamilyConfig<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->socketClass()Ljava/lang/Class;

    move-result-object v0

    .line 178
    .local v0, "socketClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/newsclub/net/unix/AFSocket<TA;>;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFAddressFamilyConfig;->datagramSocketClass()Ljava/lang/Class;

    move-result-object v1

    .line 180
    .local v1, "datagramSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;>;"
    new-instance v2, Lorg/newsclub/net/unix/FileDescriptorCast$3;

    invoke-direct {v2, p0, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$3;-><init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Ljava/lang/Class;)V

    invoke-static {v0, v2}, Lorg/newsclub/net/unix/FileDescriptorCast;->registerCastingProviders(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V

    .line 204
    new-instance v2, Lorg/newsclub/net/unix/FileDescriptorCast$4;

    invoke-direct {v2, p0, v1}, Lorg/newsclub/net/unix/FileDescriptorCast$4;-><init>(Lorg/newsclub/net/unix/AFAddressFamilyConfig;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lorg/newsclub/net/unix/FileDescriptorCast;->registerCastingProviders(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V

    .line 221
    return-void
.end method

.method private static triggerInit()V
    .locals 1

    .line 295
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    return-void
.end method

.method public static using(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/FileDescriptorCast;
    .locals 4
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/newsclub/net/unix/NativeUnixSocket;->primaryType(Ljava/io/FileDescriptor;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 284
    .local v0, "primaryType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v0, :cond_1

    .line 285
    const-class v0, Ljava/io/FileDescriptor;

    .line 288
    :cond_1
    invoke-static {}, Lorg/newsclub/net/unix/FileDescriptorCast;->triggerInit()V

    .line 290
    sget-object v1, Lorg/newsclub/net/unix/FileDescriptorCast;->PRIMARY_TYPE_PROVIDERS_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    .line 291
    .local v1, "map":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
    new-instance v2, Lorg/newsclub/net/unix/FileDescriptorCast;

    if-nez v1, :cond_2

    sget-object v3, Lorg/newsclub/net/unix/FileDescriptorCast;->GLOBAL_PROVIDERS:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-direct {v2, p0, v3}, Lorg/newsclub/net/unix/FileDescriptorCast;-><init>(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V

    return-object v2

    .line 281
    .end local v0    # "primaryType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "map":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    .local p1, "desiredType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->cpm:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->get(Ljava/lang/Class;)Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;

    move-result-object v0

    .line 349
    .local v0, "provider":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;, "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<+TK;>;"
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0, p0, p1}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;->provideAs(Lorg/newsclub/net/unix/FileDescriptorCast;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 351
    .local v1, "obj":Ljava/lang/Object;, "TK;"
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-object v1

    .line 354
    .end local v1    # "obj":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access file descriptor as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public availableTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->cpm:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    invoke-static {v0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->access$600(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->fdObj:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isAvailable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    .local p1, "desiredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->cpm:Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    invoke-static {v0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->access$500(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public withLocalPort(I)Lorg/newsclub/net/unix/FileDescriptorCast;
    .locals 1
    .param p1, "port"    # I

    .line 309
    if-ltz p1, :cond_0

    .line 312
    iput p1, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->localPort:I

    .line 313
    return-object p0

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public withRemotePort(I)Lorg/newsclub/net/unix/FileDescriptorCast;
    .locals 1
    .param p1, "port"    # I

    .line 326
    if-ltz p1, :cond_0

    .line 329
    iput p1, p0, Lorg/newsclub/net/unix/FileDescriptorCast;->remotePort:I

    .line 330
    return-object p0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

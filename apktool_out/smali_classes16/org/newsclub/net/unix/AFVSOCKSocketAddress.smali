.class public final Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
.super Lorg/newsclub/net/unix/AFSocketAddress;
.source "AFVSOCKSocketAddress.java"


# static fields
.field private static final PAT_VSOCK_URI_HOST_AND_PORT:Ljava/util/regex/Pattern;

.field public static final VMADDR_CID_ANY:I = -0x1

.field public static final VMADDR_CID_HOST:I = 0x2

.field public static final VMADDR_CID_HYPERVISOR:I = 0x0

.field public static final VMADDR_CID_LOCAL:I = 0x1

.field public static final VMADDR_PORT_ANY:I = -0x1

.field private static afVsock:Lorg/newsclub/net/unix/AFAddressFamily; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFVSOCKSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "^(?<port>any|[0-9a-fx\\-]+)(\\.(?<cid>any|hypervisor|local|host|[0-9a-fx\\-]+))?(?:\\:(?<javaPort>[0-9]+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->PAT_VSOCK_URI_HOST_AND_PORT:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(I[BLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "socketAddress"    # [B
    .param p3, "nativeAddress"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/newsclub/net/unix/AFSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFAddressFamily;)V

    .line 77
    return-void
.end method

.method synthetic constructor <init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFVSOCKSocketAddress$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Ljava/nio/ByteBuffer;
    .param p4, "x3"    # Lorg/newsclub/net/unix/AFVSOCKSocketAddress$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static declared-synchronized addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFVSOCKSocketAddress;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    monitor-enter v0

    .line 353
    :try_start_0
    sget-object v1, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->afVsock:Lorg/newsclub/net/unix/AFAddressFamily;

    if-nez v1, :cond_0

    .line 354
    const-string v1, "vsock"

    const-class v2, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    new-instance v3, Lorg/newsclub/net/unix/AFVSOCKSocketAddress$1;

    invoke-direct {v3}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress$1;-><init>()V

    invoke-static {v1, v2, v3}, Lorg/newsclub/net/unix/AFAddressFamily;->registerAddressFamily(Ljava/lang/String;Ljava/lang/Class;Lorg/newsclub/net/unix/AFSocketAddressConfig;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    sput-object v1, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->afVsock:Lorg/newsclub/net/unix/AFAddressFamily;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :try_start_1
    const-string v1, "org.newsclub.net.unix.vsock.AFVSOCKSelectorProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 383
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->afVsock:Lorg/newsclub/net/unix/AFAddressFamily;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 352
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static isSupportedAddress(Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 323
    invoke-static {}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedAddress(Ljava/net/SocketAddress;)Z
    .locals 1
    .param p0, "addr"    # Ljava/net/SocketAddress;

    .line 334
    instance-of v0, p0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    return v0
.end method

.method public static of(Ljava/net/URI;)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 395
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 14
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "overridePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 410
    const-string v0, "Invalid VSOCK URI: "

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "vsock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v2, "http+vsock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "https+vsock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v6

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 416
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_0
    nop

    .line 419
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 421
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 422
    if-eqz v1, :cond_1

    .line 423
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 424
    .local v2, "at":I
    if-ltz v2, :cond_1

    .line 425
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    .end local v2    # "at":I
    :cond_1
    if-eqz v1, :cond_9

    .line 434
    :try_start_0
    sget-object v2, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->PAT_VSOCK_URI_HOST_AND_PORT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 435
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 439
    const-string v7, "cid"

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "cidStr":Ljava/lang/String;
    const-string v8, "port"

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 441
    .local v8, "portStr":Ljava/lang/String;
    const-string v9, "javaPort"

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .local v9, "javaPortStr":Ljava/lang/String;
    const-string v10, ""

    if-nez v7, :cond_2

    move-object v11, v10

    goto :goto_2

    :cond_2
    move-object v11, v7

    :goto_2
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "any"

    sparse-switch v12, :sswitch_data_1

    :cond_3
    goto :goto_3

    :sswitch_3
    :try_start_2
    const-string v12, "hypervisor"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_4

    :sswitch_4
    const-string v3, "local"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_4

    :sswitch_5
    const-string v3, "host"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    goto :goto_4

    :sswitch_6
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_4

    :sswitch_7
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_4

    :goto_3
    move v3, v6

    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 459
    invoke-static {v7}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_5

    .line 456
    :pswitch_1
    const/4 v3, 0x2

    .line 457
    .local v3, "cid":I
    goto :goto_5

    .line 453
    .end local v3    # "cid":I
    :pswitch_2
    const/4 v3, 0x1

    .line 454
    .restart local v3    # "cid":I
    goto :goto_5

    .line 450
    .end local v3    # "cid":I
    :pswitch_3
    const/4 v3, 0x0

    .line 451
    .restart local v3    # "cid":I
    goto :goto_5

    .line 447
    .end local v3    # "cid":I
    :pswitch_4
    const/4 v3, -0x1

    .line 448
    .restart local v3    # "cid":I
    nop

    .line 464
    :goto_5
    if-nez v8, :cond_4

    move-object v11, v10

    goto :goto_6

    :cond_4
    move-object v11, v8

    :goto_6
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_2

    :cond_5
    goto :goto_7

    :sswitch_8
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_8

    :sswitch_9
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_8

    :goto_7
    move v4, v6

    :goto_8
    packed-switch v4, :pswitch_data_2

    .line 470
    invoke-static {v8}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_9

    .line 467
    :pswitch_5
    const/4 v4, -0x1

    .line 468
    .local v4, "port":I
    nop

    .line 474
    :goto_9
    if-eq p1, v6, :cond_6

    move v5, p1

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 475
    .local v5, "javaPort":I
    :goto_a
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 476
    invoke-static {v9}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 479
    :cond_7
    invoke-static {v5, v4, v3}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(III)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0

    .line 436
    .end local v3    # "cid":I
    .end local v4    # "port":I
    .end local v5    # "javaPort":I
    .end local v7    # "cidStr":Ljava/lang/String;
    .end local v8    # "portStr":Ljava/lang/String;
    .end local v9    # "javaPortStr":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v1    # "host":Ljava/lang/String;
    .end local p0    # "uri":Ljava/net/URI;
    .end local p1    # "overridePort":I
    throw v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 480
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "host":Ljava/lang/String;
    .restart local p0    # "uri":Ljava/net/URI;
    .restart local p1    # "overridePort":I
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/net/SocketException;

    throw v0

    .line 430
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get hostname from URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x1cc86766 -> :sswitch_2
        -0xc505189 -> :sswitch_1
        0x6b4c93a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x179ec -> :sswitch_6
        0x30f5a8 -> :sswitch_5
        0x625df6b -> :sswitch_4
        0x6cc03317 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_9
        0x179ec -> :sswitch_8
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static ofAnyHostPort()Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 158
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofAnyHypervisorPort()Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 112
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofAnyLocalPort()Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 135
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofAnyPort()Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 169
    const/4 v0, -0x1

    invoke-static {v0, v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofHostPort(I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofHypervisorPort(I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalPort(I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "port"    # I
    .param p1, "cid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 89
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(III)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofPortAndCID(III)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 2
    .param p0, "javaPort"    # I
    .param p1, "vsockPort"    # I
    .param p2, "cid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 195
    invoke-static {p1, p2}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->toBytes(II)[B

    move-result-object v0

    invoke-static {}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    return-object v0
.end method

.method public static ofPortWithAnyCID(I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 181
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->ofPortAndCID(II)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "v"    # Ljava/lang/String;

    .line 543
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 545
    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 548
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static toBytes(II)[B
    .locals 2
    .param p0, "port"    # I
    .param p1, "cid"    # I

    .line 339
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 340
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 343
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1
.end method

.method public static unwrap(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 224
    invoke-static {}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/lang/String;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    return-object v0
.end method

.method public static unwrap(Ljava/net/InetAddress;I)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 209
    invoke-static {}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/net/InetAddress;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    return-object v0
.end method

.method public static unwrap(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    .locals 2
    .param p0, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 236
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->isSupportedAddress(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    move-object v0, p0

    check-cast v0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    return-object v0

    .line 238
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public covers(Lorg/newsclub/net/unix/AFSocketAddress;)Z
    .locals 5
    .param p1, "covered"    # Lorg/newsclub/net/unix/AFSocketAddress;

    .line 566
    invoke-super {p0, p1}, Lorg/newsclub/net/unix/AFSocketAddress;->covers(Lorg/newsclub/net/unix/AFSocketAddress;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 567
    return v1

    .line 568
    :cond_0
    instance-of v0, p1, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    if-eqz v0, :cond_5

    .line 569
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;

    .line 571
    .local v0, "other":Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKCID()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 572
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKPort()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 573
    return v1

    .line 575
    :cond_1
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKPort()I

    move-result v2

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKPort()I

    move-result v4

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1

    .line 577
    :cond_3
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKPort()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 578
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKCID()I

    move-result v2

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKCID()I

    move-result v4

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    return v1

    .line 582
    .end local v0    # "other":Lorg/newsclub/net/unix/AFVSOCKSocketAddress;
    :cond_5
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVSOCKCID()I
    .locals 2

    .line 261
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 262
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 263
    .local v1, "a":I
    return v1
.end method

.method public getVSOCKPort()I
    .locals 2

    .line 250
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 251
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 252
    .local v1, "a":I
    return v1
.end method

.method public getVSOCKReserved1()I
    .locals 2

    .line 272
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 273
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 274
    .local v1, "a":I
    return v1
.end method

.method public hasFilename()Z
    .locals 1

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 279
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getPort()I

    move-result v0

    .line 281
    .local v0, "port":I
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getBytes()[B

    move-result-object v1

    .line 282
    .local v1, "bytes":[B
    array-length v2, v1

    const/16 v3, 0xc

    const-string v4, "port="

    const-string v5, "["

    const-string v6, ""

    if-eq v2, v3, :cond_1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";UNKNOWN]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 286
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 287
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 288
    .local v3, "reserved1":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 289
    .local v7, "vsockPort":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 292
    .local v8, "cid":I
    const/4 v9, -0x1

    if-lt v7, v9, :cond_2

    .line 293
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "vsockPortString":Ljava/lang/String;
    goto :goto_1

    .line 295
    .end local v9    # "vsockPortString":Ljava/lang/String;
    :cond_2
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "0x%08x"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 298
    .restart local v9    # "vsockPortString":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ";"

    if-nez v3, :cond_3

    move-object v12, v6

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reserved1="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "vsockPort="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ";cid="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, "typeString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .locals 9
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "vsock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "http+vsock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "https+vsock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 494
    invoke-super {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddress;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 492
    :pswitch_0
    nop

    .line 497
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getBytes()[B

    move-result-object v0

    .line 498
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 499
    invoke-super {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddress;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    return-object v1

    .line 502
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKPort()I

    move-result v2

    move v3, v2

    .local v3, "port":I
    packed-switch v2, :pswitch_data_1

    .line 511
    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "portStr":Ljava/lang/String;
    goto :goto_2

    .line 508
    .end local v2    # "portStr":Ljava/lang/String;
    :pswitch_1
    const-string v2, "any"

    .line 509
    .restart local v2    # "portStr":Ljava/lang/String;
    nop

    .line 515
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getVSOCKCID()I

    move-result v4

    move v5, v4

    .local v5, "cid":I
    packed-switch v4, :pswitch_data_2

    .line 533
    invoke-static {v5}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "cidStr":Ljava/lang/String;
    goto :goto_3

    .line 530
    .end local v4    # "cidStr":Ljava/lang/String;
    :pswitch_2
    const-string v4, "host"

    .line 531
    .restart local v4    # "cidStr":Ljava/lang/String;
    goto :goto_3

    .line 527
    .end local v4    # "cidStr":Ljava/lang/String;
    :pswitch_3
    const-string v4, "local"

    .line 528
    .restart local v4    # "cidStr":Ljava/lang/String;
    goto :goto_3

    .line 524
    .end local v4    # "cidStr":Ljava/lang/String;
    :pswitch_4
    const-string v4, "hypervisor"

    .line 525
    .restart local v4    # "cidStr":Ljava/lang/String;
    goto :goto_3

    .line 521
    .end local v4    # "cidStr":Ljava/lang/String;
    :pswitch_5
    const-string v4, "any"

    .line 522
    .restart local v4    # "cidStr":Ljava/lang/String;
    nop

    .line 537
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    new-instance v6, Lorg/newsclub/net/unix/HostAndPort;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFVSOCKSocketAddress;->getPort()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/newsclub/net/unix/HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, p1, p2}, Lorg/newsclub/net/unix/HostAndPort;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1cc86766 -> :sswitch_2
        -0xc505189 -> :sswitch_1
        0x6b4c93a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

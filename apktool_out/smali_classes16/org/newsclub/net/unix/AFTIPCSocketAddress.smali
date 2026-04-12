.class public final Lorg/newsclub/net/unix/AFTIPCSocketAddress;
.super Lorg/newsclub/net/unix/AFSocketAddress;
.source "AFTIPCSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;,
        Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    }
.end annotation


# static fields
.field private static final PAT_TIPC_URI_HOST_AND_PORT:Ljava/util/regex/Pattern;

.field public static final TIPC_RESERVED_TYPES:I = 0x40

.field public static final TIPC_TOP_SRV:I = 0x1

.field private static afTipc:Lorg/newsclub/net/unix/AFAddressFamily; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFTIPCSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const-string v0, "^((?:(?:(?<scope>cluster|node|default|[0-9a-fx]+)\\-)?(?<type>service|service-range|socket)\\.)|(?<scope2>cluster|node|default|[0-9a-fx]+)\\-(?<type2>[0-9a-fx]+)\\.)?(?<a>[0-9a-fx]+)\\.(?<b>[0-9a-fx]+)(?:\\.(?<c>[0-9a-fx]+))?(?:\\:(?<javaPort>[0-9]+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->PAT_TIPC_URI_HOST_AND_PORT:Ljava/util/regex/Pattern;

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

    .line 263
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/newsclub/net/unix/AFSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFAddressFamily;)V

    .line 264
    return-void
.end method

.method synthetic constructor <init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFTIPCSocketAddress$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Ljava/nio/ByteBuffer;
    .param p4, "x3"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static declared-synchronized addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFTIPCSocketAddress;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    monitor-enter v0

    .line 644
    :try_start_0
    sget-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->afTipc:Lorg/newsclub/net/unix/AFAddressFamily;

    if-nez v1, :cond_0

    .line 645
    const-string v1, "tipc"

    const-class v2, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    new-instance v3, Lorg/newsclub/net/unix/AFTIPCSocketAddress$1;

    invoke-direct {v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$1;-><init>()V

    invoke-static {v1, v2, v3}, Lorg/newsclub/net/unix/AFAddressFamily;->registerAddressFamily(Ljava/lang/String;Ljava/lang/Class;Lorg/newsclub/net/unix/AFSocketAddressConfig;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    sput-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->afTipc:Lorg/newsclub/net/unix/AFAddressFamily;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :try_start_1
    const-string v1, "org.newsclub.net.unix.tipc.AFTIPCSelectorProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 674
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->afTipc:Lorg/newsclub/net/unix/AFAddressFamily;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 643
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

    .line 612
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedAddress(Ljava/net/SocketAddress;)Z
    .locals 1
    .param p0, "addr"    # Ljava/net/SocketAddress;

    .line 623
    instance-of v0, p0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return v0
.end method

.method public static of(Ljava/net/URI;)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 694
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 20
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "overridePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 709
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Invalid TIPC URI: "

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v8, -0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v4, "https+tipc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "http+tipc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "tipc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v8

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 715
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :pswitch_0
    nop

    .line 718
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 720
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_1

    .line 722
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 723
    .local v4, "at":I
    if-ltz v4, :cond_1

    .line 724
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    .end local v4    # "at":I
    :cond_1
    if-eqz v0, :cond_12

    .line 731
    if-eq v2, v8, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 732
    .local v4, "port":I
    :goto_2
    if-eq v4, v8, :cond_3

    .line 733
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_3

    .line 732
    :cond_3
    move-object v9, v0

    .line 736
    .end local v0    # "host":Ljava/lang/String;
    .local v9, "host":Ljava/lang/String;
    :goto_3
    :try_start_0
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->PAT_TIPC_URI_HOST_AND_PORT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 737
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 741
    const-string v10, "type"

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 742
    .local v10, "typeStr":Ljava/lang/String;
    const-string v11, "scope"

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 743
    .local v11, "scopeStr":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 744
    :try_start_1
    const-string v12, "type2"

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 745
    const-string v12, "scope2"

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v12

    goto :goto_4

    .line 815
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v10    # "typeStr":Ljava/lang/String;
    .end local v11    # "scopeStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_15

    .line 747
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v10    # "typeStr":Ljava/lang/String;
    .restart local v11    # "scopeStr":Ljava/lang/String;
    :cond_4
    :goto_4
    :try_start_2
    const-string v12, "a"

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 748
    .local v12, "strA":Ljava/lang/String;
    const-string v13, "b"

    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 749
    .local v13, "strB":Ljava/lang/String;
    const-string v14, "c"

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 750
    .local v14, "strC":Ljava/lang/String;
    const-string v15, "javaPort"

    invoke-virtual {v0, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 753
    .local v15, "javaPortStr":Ljava/lang/String;
    const-string v5, ""

    if-nez v10, :cond_5

    move-object/from16 v17, v5

    goto :goto_5

    :cond_5
    move-object/from16 v17, v10

    :goto_5
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v19, 0x3

    sparse-switch v18, :sswitch_data_1

    :cond_6
    goto :goto_6

    :sswitch_3
    :try_start_4
    const-string v6, "service"

    move-object/from16 v7, v17

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    goto :goto_7

    :sswitch_4
    move-object/from16 v7, v17

    const-string v6, "service-range"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_7

    :sswitch_5
    move-object/from16 v7, v17

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move/from16 v6, v19

    goto :goto_7

    :sswitch_6
    move-object/from16 v7, v17

    const-string v6, "socket"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    goto :goto_7

    :goto_6
    move v6, v8

    :goto_7
    packed-switch v6, :pswitch_data_1

    .line 767
    :try_start_5
    invoke-static {v10}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v6
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 764
    :pswitch_1
    :try_start_6
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    .line 765
    .local v6, "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    goto :goto_9

    .line 761
    .end local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    :pswitch_2
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SOCKET_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    .line 762
    .restart local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    goto :goto_9

    .line 758
    .end local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    :pswitch_3
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    .line 759
    .restart local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    goto :goto_9

    .line 755
    .end local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    :pswitch_4
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 756
    .restart local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    goto :goto_9

    .line 767
    .end local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    :goto_8
    :try_start_7
    invoke-static {v6}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    move-result-object v6

    .line 772
    .restart local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    :goto_9
    if-nez v11, :cond_7

    move-object v7, v5

    goto :goto_a

    :cond_7
    move-object v7, v11

    :goto_a
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v17
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    sparse-switch v17, :sswitch_data_2

    :cond_8
    goto :goto_b

    :sswitch_7
    :try_start_8
    const-string v5, "default"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    goto :goto_c

    :sswitch_8
    const-string v5, "cluster"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    goto :goto_c

    :sswitch_9
    const-string v5, "node"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_c

    :sswitch_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v5, :cond_8

    move/from16 v5, v19

    goto :goto_c

    :goto_b
    move v5, v8

    :goto_c
    packed-switch v5, :pswitch_data_2

    .line 790
    :try_start_9
    invoke-static {v11}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v5
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_e

    .line 783
    :pswitch_5
    :try_start_a
    sget-object v5, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    if-eq v6, v5, :cond_a

    sget-object v5, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    if-ne v6, v5, :cond_9

    goto :goto_d

    .line 786
    :cond_9
    sget-object v5, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    .line 788
    .local v5, "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    goto :goto_f

    .line 784
    .end local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    :cond_a
    :goto_d
    sget-object v5, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_CLUSTER:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    .restart local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    goto :goto_f

    .line 780
    .end local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    :pswitch_6
    sget-object v5, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    .line 781
    .restart local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    goto :goto_f

    .line 777
    .end local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    :pswitch_7
    sget-object v5, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NODE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    .line 778
    .restart local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    goto :goto_f

    .line 774
    .end local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    :pswitch_8
    sget-object v5, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_CLUSTER:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0

    .line 775
    .restart local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    goto :goto_f

    .line 790
    .end local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    :goto_e
    :try_start_b
    invoke-static {v5}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    move-result-object v5

    .line 794
    .restart local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    :goto_f
    invoke-static {v12}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v7

    .line 795
    .local v7, "a":I
    invoke-static {v13}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v16
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2

    move/from16 v17, v16

    .line 798
    .local v17, "b":I
    if-eqz v14, :cond_c

    :try_start_c
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_b

    goto :goto_10

    .line 805
    :cond_b
    invoke-static {v14}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v16
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0

    move/from16 v8, v16

    .local v16, "c":I
    goto :goto_11

    .line 799
    .end local v16    # "c":I
    :cond_c
    :goto_10
    :try_start_d
    sget-object v8, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2

    if-ne v6, v8, :cond_d

    .line 800
    move/from16 v8, v17

    .local v8, "c":I
    goto :goto_11

    .line 802
    .end local v8    # "c":I
    :cond_d
    const/4 v8, 0x0

    .line 808
    .restart local v8    # "c":I
    :goto_11
    if-eqz v15, :cond_f

    :try_start_e
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_13

    :cond_f
    :goto_12
    move/from16 v18, v4

    .line 810
    .local v18, "javaPort":I
    :goto_13
    move-object/from16 v19, v0

    const/4 v0, -0x1

    .end local v0    # "m":Ljava/util/regex/Matcher;
    .local v19, "m":Ljava/util/regex/Matcher;
    if-eq v2, v0, :cond_10

    .line 811
    move/from16 v18, p1

    move/from16 v0, v18

    goto :goto_14

    .line 810
    :cond_10
    move/from16 v0, v18

    .line 814
    .end local v18    # "javaPort":I
    .local v0, "javaPort":I
    :goto_14
    move/from16 v16, v4

    move/from16 v2, v17

    .end local v4    # "port":I
    .end local v17    # "b":I
    .local v2, "b":I
    .local v16, "port":I
    :try_start_f
    invoke-static {v6, v5, v7, v2, v8}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toBytes(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)[B

    move-result-object v4

    move/from16 v17, v2

    .end local v2    # "b":I
    .restart local v17    # "b":I
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v2

    check-cast v2, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v2

    .line 738
    .end local v5    # "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .end local v6    # "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    .end local v7    # "a":I
    .end local v8    # "c":I
    .end local v10    # "typeStr":Ljava/lang/String;
    .end local v11    # "scopeStr":Ljava/lang/String;
    .end local v12    # "strA":Ljava/lang/String;
    .end local v13    # "strB":Ljava/lang/String;
    .end local v14    # "strC":Ljava/lang/String;
    .end local v15    # "javaPortStr":Ljava/lang/String;
    .end local v16    # "port":I
    .end local v17    # "b":I
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .local v0, "m":Ljava/util/regex/Matcher;
    .restart local v4    # "port":I
    :cond_11
    move-object/from16 v19, v0

    move/from16 v16, v4

    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "port":I
    .restart local v16    # "port":I
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v9    # "host":Ljava/lang/String;
    .end local v16    # "port":I
    .end local p0    # "uri":Ljava/net/URI;
    .end local p1    # "overridePort":I
    throw v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1

    .line 815
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v16    # "port":I
    .restart local p0    # "uri":Ljava/net/URI;
    .restart local p1    # "overridePort":I
    :catch_1
    move-exception v0

    goto :goto_15

    .end local v16    # "port":I
    .restart local v4    # "port":I
    :catch_2
    move-exception v0

    move/from16 v16, v4

    .line 816
    .end local v4    # "port":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "port":I
    :goto_15
    new-instance v2, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/net/SocketException;

    throw v2

    .line 729
    .end local v9    # "host":Ljava/lang/String;
    .end local v16    # "port":I
    .local v0, "host":Ljava/lang/String;
    :cond_12
    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get hostname from URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x365328 -> :sswitch_2
        0x7db524b -> :sswitch_1
        0x6a6c17c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3577e08d -> :sswitch_6
        0x0 -> :sswitch_5
        0x43dd7825 -> :sswitch_4
        0x7643c6b5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_a
        0x33ae02 -> :sswitch_9
        0x33fb11fa -> :sswitch_8
        0x5c13d641 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static ofService(II)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 2
    .param p0, "type"    # I
    .param p1, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 291
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_CLUSTER:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->ofService(Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofService(ILorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 2
    .param p0, "javaPort"    # I
    .param p1, "scope"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p2, "type"    # I
    .param p3, "instance"    # I
    .param p4, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 327
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toBytes(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)[B

    move-result-object v0

    .line 328
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    .line 327
    invoke-static {v0, p0, v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v0
.end method

.method public static ofService(Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;II)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p0, "scope"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p1, "type"    # I
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->ofService(Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofService(Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p0, "scope"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p1, "type"    # I
    .param p2, "instance"    # I
    .param p3, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->ofService(ILorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofServiceRange(III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 2
    .param p0, "type"    # I
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    sget-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_CLUSTER:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    invoke-static {v0, v1, p0, p1, p2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->ofServiceRange(ILorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofServiceRange(ILorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 2
    .param p0, "javaPort"    # I
    .param p1, "scope"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p2, "type"    # I
    .param p3, "lower"    # I
    .param p4, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 377
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toBytes(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)[B

    move-result-object v0

    .line 378
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    .line 377
    invoke-static {v0, p0, v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v0
.end method

.method public static ofServiceRange(Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p0, "scope"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p1, "type"    # I
    .param p2, "lower"    # I
    .param p3, "upper"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->ofServiceRange(ILorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofSocket(II)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p0, "ref"    # I
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->ofSocket(III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofSocket(III)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 3
    .param p0, "javaPort"    # I
    .param p1, "ref"    # I
    .param p2, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 411
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SOCKET_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    sget-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toBytes(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)[B

    move-result-object v0

    .line 412
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    .line 411
    invoke-static {v0, p0, v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v0
.end method

.method public static ofTopologyService()Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 422
    sget-object v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    sget-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toBytes(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)[B

    move-result-object v0

    .line 423
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    .line 422
    invoke-static {v0, v3, v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v0
.end method

.method private static parseUnsignedInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "v"    # Ljava/lang/String;

    .line 427
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 430
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static toBytes(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)[B
    .locals 2
    .param p0, "addrType"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    .param p1, "scope"    # Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .line 628
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 629
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 630
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 631
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 632
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 634
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1
.end method

.method private toTipcInt(I)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # I

    .line 678
    if-gez p1, :cond_0

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 681
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unwrap(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 460
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/lang/String;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v0
.end method

.method public static unwrap(Ljava/net/InetAddress;I)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 445
    invoke-static {}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/net/InetAddress;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v0
.end method

.method public static unwrap(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFTIPCSocketAddress;
    .locals 2
    .param p0, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 472
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-static {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->isSupportedAddress(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    move-object v0, p0

    check-cast v0, Lorg/newsclub/net/unix/AFTIPCSocketAddress;

    return-object v0

    .line 474
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScope()Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    .locals 3

    .line 485
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    .line 486
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 487
    sget-object v1, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    return-object v1

    .line 489
    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    move-result-object v1

    return-object v1
.end method

.method public getTIPCDomain()I
    .locals 2

    .line 520
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 521
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 522
    .local v1, "a":I
    return v1
.end method

.method public getTIPCInstance()I
    .locals 2

    .line 509
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 510
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 511
    .local v1, "a":I
    return v1
.end method

.method public getTIPCLower()I
    .locals 2

    .line 531
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 532
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 533
    .local v1, "a":I
    return v1
.end method

.method public getTIPCNodeHash()I
    .locals 2

    .line 564
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 565
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 566
    .local v1, "a":I
    return v1
.end method

.method public getTIPCRef()I
    .locals 2

    .line 553
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 554
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 555
    .local v1, "a":I
    return v1
.end method

.method public getTIPCType()I
    .locals 2

    .line 498
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 499
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 500
    .local v1, "a":I
    return v1
.end method

.method public getTIPCUpper()I
    .locals 2

    .line 542
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 543
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 544
    .local v1, "a":I
    return v1
.end method

.method public hasFilename()Z
    .locals 1

    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 571
    invoke-virtual/range {p0 .. p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getPort()I

    move-result v0

    .line 573
    .local v0, "port":I
    invoke-virtual/range {p0 .. p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v1

    .line 574
    .local v1, "bytes":[B
    array-length v2, v1

    const/16 v3, 0x14

    const-string v4, ""

    const-string v5, "port="

    const-string v6, "["

    if-eq v2, v3, :cond_1

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";UNKNOWN]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 578
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 579
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 580
    .local v3, "typeId":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 581
    .local v7, "scopeId":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 582
    .local v8, "a":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 583
    .local v9, "b":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 585
    .local v10, "c":I
    int-to-byte v11, v7

    invoke-static {v11}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    move-result-object v11

    .line 587
    .local v11, "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    invoke-static {v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    move-result-object v12

    .line 588
    .local v12, "type":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    invoke-static {v12, v11, v8, v9, v10}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->access$000(Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;III)Ljava/lang/String;

    move-result-object v13

    .line 590
    .local v13, "typeString":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .locals 13
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "https+tipc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "http+tipc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "tipc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 829
    invoke-super {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddress;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 827
    :pswitch_0
    nop

    .line 832
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getBytes()[B

    move-result-object v0

    .line 833
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    .line 834
    invoke-super {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddress;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    return-object v1

    .line 837
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 838
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    move-result-object v2

    .line 839
    .local v2, "addrType":Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->ofValue(I)Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    move-result-object v3

    .line 841
    .local v3, "scope":Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 844
    .local v5, "haveScope":Z
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NOT_SPECIFIED:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    if-ne v3, v6, :cond_2

    .line 845
    const-string v6, "default-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 846
    :cond_2
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_CLUSTER:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    if-ne v3, v6, :cond_5

    .line 847
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    if-eq v2, v6, :cond_4

    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    if-ne v2, v6, :cond_3

    goto :goto_2

    .line 851
    :cond_3
    const-string v6, "cluster-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 849
    :cond_4
    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    .line 853
    :cond_5
    sget-object v6, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->SCOPE_NODE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;

    if-ne v3, v6, :cond_6

    .line 854
    const-string v6, "node-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 856
    :cond_6
    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$Scope;->value()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toTipcInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    :goto_3
    const/4 v6, 0x0

    .line 861
    .local v6, "addrTypeImplied":Z
    sget-object v7, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    if-ne v2, v7, :cond_8

    .line 862
    if-nez v5, :cond_7

    .line 863
    const/4 v6, 0x1

    goto :goto_4

    .line 865
    :cond_7
    const-string v7, "service"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 867
    :cond_8
    sget-object v7, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SERVICE_RANGE:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    if-ne v2, v7, :cond_9

    .line 868
    const-string v7, "service-range"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 869
    :cond_9
    sget-object v7, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->SOCKET_ADDR:Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;

    if-ne v2, v7, :cond_a

    .line 870
    const-string v7, "socket"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 872
    :cond_a
    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFTIPCSocketAddress$AddressType;->value()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toTipcInt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :goto_4
    const/16 v7, 0x2e

    if-nez v6, :cond_b

    .line 875
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    :cond_b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 879
    .local v8, "a":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 880
    .local v9, "b":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 882
    .local v10, "c":I
    invoke-direct {p0, v8}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toTipcInt(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 884
    invoke-direct {p0, v9}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toTipcInt(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    if-eqz v10, :cond_c

    .line 886
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 887
    invoke-direct {p0, v10}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->toTipcInt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :cond_c
    new-instance v7, Lorg/newsclub/net/unix/HostAndPort;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFTIPCSocketAddress;->getPort()I

    move-result v12

    invoke-direct {v7, v11, v12}, Lorg/newsclub/net/unix/HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, p1, p2}, Lorg/newsclub/net/unix/HostAndPort;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v7

    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x365328 -> :sswitch_2
        0x7db524b -> :sswitch_1
        0x6a6c17c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

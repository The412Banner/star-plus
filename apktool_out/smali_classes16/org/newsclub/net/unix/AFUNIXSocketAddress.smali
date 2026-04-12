.class public final Lorg/newsclub/net/unix/AFUNIXSocketAddress;
.super Lorg/newsclub/net/unix/AFSocketAddress;
.source "AFUNIXSocketAddress.java"


# static fields
.field private static final ADDRESS_CHARSET:Ljava/nio/charset/Charset;

.field static final AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ADDRESS_CHARSET:Ljava/nio/charset/Charset;

    .line 56
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress$1;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress$1;-><init>()V

    .line 57
    const-string v1, "un"

    const-class v2, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    invoke-static {v1, v2, v0}, Lorg/newsclub/net/unix/AFAddressFamily;->registerAddressFamily(Ljava/lang/String;Ljava/lang/Class;Lorg/newsclub/net/unix/AFSocketAddressConfig;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    .line 56
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

    .line 83
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/newsclub/net/unix/AFSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFAddressFamily;)V

    .line 84
    return-void
.end method

.method synthetic constructor <init>(I[BLjava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFUNIXSocketAddress$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Ljava/nio/ByteBuffer;
    .param p4, "x3"    # Lorg/newsclub/net/unix/AFUNIXSocketAddress$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "socketFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;-><init>(Ljava/io/File;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "socketFile"    # Ljava/io/File;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 110
    invoke-static {p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPathAsBytes()[B

    move-result-object v0

    invoke-static {p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 110
    invoke-direct {p0, p2, v0, v1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;-><init>(I[BLjava/nio/ByteBuffer;)V

    .line 112
    return-void
.end method

.method public static addressCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 421
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ADDRESS_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation

    .line 493
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->getInstance()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    return-object v0
.end method

.method public static inAbstractNamespace(Ljava/lang/String;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->inAbstractNamespace(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static inAbstractNamespace(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 349
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ADDRESS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 350
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 351
    .local v1, "addr":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    invoke-static {v1, p1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of([BI)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v2

    return-object v2
.end method

.method public static isSupportedAddress(Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 472
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFInetAddress;->isSupportedAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedAddress(Ljava/net/SocketAddress;)Z
    .locals 1
    .param p0, "addr"    # Ljava/net/SocketAddress;

    .line 483
    instance-of v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    return v0
.end method

.method static newTempPath(Z)Ljava/io/File;
    .locals 4
    .param p0, "deleteOnExit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v0, "jux"

    const-string v1, ".sock"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 265
    .local v0, "f":Ljava/io/File;
    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete temporary file that we just created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static of(Ljava/io/File;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "socketFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 2
    .param p0, "socketFile"    # Ljava/io/File;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ADDRESS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of([BI)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "u"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 206
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 5
    .param p0, "u"    # Ljava/net/URI;
    .param p1, "overridePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "https+unix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "http+unix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "unix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Invalid URI"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_0
    invoke-static {p0}, Lorg/newsclub/net/unix/HostAndPort;->parseFrom(Ljava/net/URI;)Lorg/newsclub/net/unix/HostAndPort;

    move-result-object v0

    .line 234
    .local v0, "hp":Lorg/newsclub/net/unix/HostAndPort;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/HostAndPort;->getHostname()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eq p1, v2, :cond_1

    move v2, p1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lorg/newsclub/net/unix/HostAndPort;->getPort()I

    move-result v2

    :goto_2
    invoke-static {v1, v2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v1

    return-object v1

    .line 221
    .end local v0    # "hp":Lorg/newsclub/net/unix/HostAndPort;
    :pswitch_1
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "auth":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 225
    move-object v0, v1

    .line 230
    .end local v1    # "auth":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eq p1, v2, :cond_4

    move v2, p1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v2

    :goto_3
    invoke-static {v1, v2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v1

    return-object v1

    .line 227
    .restart local v1    # "auth":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find UNIX socket path component from URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ff57c -> :sswitch_3
        0x36d988 -> :sswitch_2
        0x7dbd8ab -> :sswitch_1
        0x6a6c9e28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static of(Ljava/nio/file/Path;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "socketPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/nio/file/Path;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/nio/file/Path;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 2
    .param p0, "socketPath"    # Ljava/nio/file/Path;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ADDRESS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of([BI)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of([B)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "socketAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of([BI)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static of([BI)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "socketAddress"    # [B
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->resolveAddress([BILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    return-object v0
.end method

.method public static ofNewTempFile()Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ofNewTempPath(I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static ofNewTempPath(I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->newTempPath(Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method private static prettyPrint([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B

    .line 356
    array-length v0, p0

    .line 357
    .local v0, "dataLength":I
    if-nez v0, :cond_0

    .line 358
    const-string v1, ""

    return-object v1

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 362
    aget-byte v3, p0, v2

    .line 363
    .local v3, "c":B
    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    .line 364
    int-to-char v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    :cond_1
    const-string v4, "\\x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .end local v3    # "c":B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static unwrap(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 317
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/lang/String;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    return-object v0
.end method

.method public static unwrap(Ljava/net/InetAddress;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 285
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-static {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrap(Ljava/net/InetAddress;ILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    return-object v0
.end method

.method public static unwrap(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 2
    .param p0, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 298
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->isSupportedAddress(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->isInAbstractNamespace()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getBytes()[B

    move-result-object v0

    .line 457
    .local v0, "bytes":[B
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 460
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ADDRESS_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 458
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "No name"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    .end local v0    # "bytes":[B
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Socket is in abstract namespace"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .line 391
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getBytes()[B

    move-result-object v0

    .line 392
    .local v0, "bytes":[B
    array-length v1, v0

    if-nez v1, :cond_0

    .line 393
    const-string v1, ""

    return-object v1

    .line 394
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-eqz v1, :cond_1

    .line 395
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->ADDRESS_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 398
    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 399
    .local v1, "by":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 400
    aget-byte v3, v1, v2

    .line 401
    .local v3, "b":B
    if-nez v3, :cond_2

    .line 402
    const/16 v4, 0x40

    aput-byte v4, v1, v2

    goto :goto_1

    .line 403
    :cond_2
    const/16 v4, 0x20

    if-lt v3, v4, :cond_3

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_3

    goto :goto_1

    .line 406
    :cond_3
    const/16 v4, 0x2e

    aput-byte v4, v1, v2

    .line 399
    .end local v3    # "b":B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public getPathAsBytes()[B
    .locals 1

    .line 431
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getBytes()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hasFilename()Z
    .locals 3

    .line 446
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getBytes()[B

    move-result-object v0

    .line 447
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-byte v1, v0, v2

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isInAbstractNamespace()Z
    .locals 3

    .line 440
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getBytes()[B

    move-result-object v0

    .line 441
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-byte v1, v0, v2

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public bridge synthetic newBoundServerSocket()Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->newBoundServerSocket()Lorg/newsclub/net/unix/AFUNIXServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public newBoundServerSocket()Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-super {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->newBoundServerSocket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method public bridge synthetic newConnectedSocket()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->newConnectedSocket()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method public newConnectedSocket()Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    invoke-super {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->newConnectedSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method

.method public bridge synthetic newForceBoundServerSocket()Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->newForceBoundServerSocket()Lorg/newsclub/net/unix/AFUNIXServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public newForceBoundServerSocket()Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-super {p0}, Lorg/newsclub/net/unix/AFSocketAddress;->newForceBoundServerSocket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 375
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPort()I

    move-result v0

    .line 376
    .local v0, "port":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->prettyPrint([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    return-object v1
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

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "file"

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "https+unix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "http+unix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "unix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 515
    invoke-super {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketAddress;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 512
    :pswitch_0
    new-instance v0, Lorg/newsclub/net/unix/HostAndPort;

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/newsclub/net/unix/HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 513
    .local v0, "hp":Lorg/newsclub/net/unix/HostAndPort;
    invoke-virtual {v0, p1, p2}, Lorg/newsclub/net/unix/HostAndPort;->toURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    return-object v1

    .line 502
    .end local v0    # "hp":Lorg/newsclub/net/unix/HostAndPort;
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPort()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Ljava/net/URI;

    const-string v4, "localhost"

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 505
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ff57c -> :sswitch_3
        0x36d988 -> :sswitch_2
        0x7dbd8ab -> :sswitch_1
        0x6a6c9e28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

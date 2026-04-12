.class public final Lorg/newsclub/net/unix/AFUNIXSocketFactory$URIScheme;
.super Lorg/newsclub/net/unix/AFUNIXSocketFactory;
.source "AFUNIXSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "URIScheme"
.end annotation


# static fields
.field private static final FILE_SCHEME_LOCALHOST:Ljava/lang/String; = "localhost"

.field private static final FILE_SCHEME_PREFIX:Ljava/lang/String; = "file://"

.field private static final FILE_SCHEME_PREFIX_ENCODED:Ljava/lang/String; = "file%"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFUNIXSocketFactory;-><init>()V

    .line 180
    return-void
.end method

.method private static stripBrackets(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;

    .line 183
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 190
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic addressFromHost(Ljava/lang/String;I)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$URIScheme;->addressFromHost(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public addressFromHost(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 201
    invoke-static {p1}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$URIScheme;->stripBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    const-string v0, "file%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1}, Ljava/net/SocketException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "path":Ljava/lang/String;
    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "socketFile":Ljava/io/File;
    invoke-static {v1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v2

    return-object v2

    .line 221
    .end local v1    # "socketFile":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Path must be absolute"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_3
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Path is empty"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    .end local v0    # "path":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported scheme"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic connectTo(Lorg/newsclub/net/unix/AFSocketAddress;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    check-cast p1, Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    invoke-super {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketFactory;->connectTo(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object p1

    return-object p1
.end method

.method public isHostnameSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$URIScheme;->stripBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

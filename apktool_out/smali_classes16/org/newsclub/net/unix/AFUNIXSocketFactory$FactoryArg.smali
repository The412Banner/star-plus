.class public final Lorg/newsclub/net/unix/AFUNIXSocketFactory$FactoryArg;
.super Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;
.source "AFUNIXSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FactoryArg"
.end annotation


# instance fields
.field private final socketFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 113
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;-><init>()V

    .line 114
    const-string v0, "File was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lorg/newsclub/net/unix/AFUNIXSocketFactory$FactoryArg;->socketFile:Ljava/io/File;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "socketPath"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$DefaultSocketHostnameSocketFactory;-><init>()V

    .line 102
    const-string v0, "Socket path was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketFactory$FactoryArg;->socketFile:Ljava/io/File;

    .line 105
    return-void
.end method


# virtual methods
.method public bridge synthetic addressFromHost(Ljava/lang/String;I)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketFactory$FactoryArg;->addressFromHost(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public addressFromHost(Ljava/lang/String;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketFactory$FactoryArg;->socketFile:Ljava/io/File;

    invoke-static {v0, p2}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/io/File;I)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/Handler;
.super Lsun/net/www/protocol/https/Handler;
.source "Handler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lsun/net/www/protocol/https/Handler;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/https/Handler;-><init>(Ljava/lang/String;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0}, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/HttpsURLConnectionOldImpl;

    invoke-direct {v0, p1, p2, p0}, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/HttpsURLConnectionOldImpl;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/Handler;)V

    return-object v0
.end method

.class public abstract Lorg/newsclub/net/unix/AFAddressFamilyConfig;
.super Ljava/lang/Object;
.source "AFAddressFamilyConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lorg/newsclub/net/unix/AFAddressFamilyConfig;, "Lorg/newsclub/net/unix/AFAddressFamilyConfig<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected abstract datagramChannelClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method protected abstract datagramSocketClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method protected abstract datagramSocketConstructor()Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramSocket$Constructor<",
            "TA;>;"
        }
    .end annotation
.end method

.method protected abstract serverSocketChannelClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method protected abstract serverSocketClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method protected abstract serverSocketConstructor()Lorg/newsclub/net/unix/AFServerSocket$Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocket$Constructor<",
            "TA;>;"
        }
    .end annotation
.end method

.method protected abstract socketChannelClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method protected abstract socketClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method protected abstract socketConstructor()Lorg/newsclub/net/unix/AFSocket$Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket$Constructor<",
            "TA;>;"
        }
    .end annotation
.end method

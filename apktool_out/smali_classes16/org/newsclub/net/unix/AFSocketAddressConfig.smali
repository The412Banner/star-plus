.class public abstract Lorg/newsclub/net/unix/AFSocketAddressConfig;
.super Ljava/lang/Object;
.source "AFSocketAddressConfig.java"


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

    .line 38
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketAddressConfig;, "Lorg/newsclub/net/unix/AFSocketAddressConfig<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract addressConstructor()Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor<",
            "TA;>;"
        }
    .end annotation
.end method

.method protected abstract parseURI(Ljava/net/URI;I)Lorg/newsclub/net/unix/AFSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "I)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract selectorProviderClassname()Ljava/lang/String;
.end method

.method protected abstract uriSchemes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

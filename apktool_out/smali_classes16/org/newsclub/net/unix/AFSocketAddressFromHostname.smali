.class public interface abstract Lorg/newsclub/net/unix/AFSocketAddressFromHostname;
.super Ljava/lang/Object;
.source "AFSocketAddressFromHostname.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addressFromHost(Ljava/lang/String;I)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public isHostnameSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 48
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketAddressFromHostname;, "Lorg/newsclub/net/unix/AFSocketAddressFromHostname<TA;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

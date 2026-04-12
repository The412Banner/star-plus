.class public interface abstract Lorg/newsclub/net/unix/SocketAddressFilter;
.super Ljava/lang/Object;
.source "SocketAddressFilter.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract apply(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

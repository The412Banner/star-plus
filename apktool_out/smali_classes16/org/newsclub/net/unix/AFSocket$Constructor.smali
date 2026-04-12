.class public interface abstract Lorg/newsclub/net/unix/AFSocket$Constructor;
.super Ljava/lang/Object;
.source "AFSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Constructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract newInstance(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketFactory;)Lorg/newsclub/net/unix/AFSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Lorg/newsclub/net/unix/AFSocketFactory<",
            "TA;>;)",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

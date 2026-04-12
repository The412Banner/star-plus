.class public interface abstract Lorg/newsclub/net/unix/AFSocketAddress$AFSocketAddressConstructor;
.super Ljava/lang/Object;
.source "AFSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "AFSocketAddressConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract newAFSocketAddress(I[BLjava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

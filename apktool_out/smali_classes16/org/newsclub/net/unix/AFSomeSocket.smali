.class public interface abstract Lorg/newsclub/net/unix/AFSomeSocket;
.super Ljava/lang/Object;
.source "AFSomeSocket.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# virtual methods
.method public abstract getLocalSocketAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getRemoteSocketAddress()Ljava/net/SocketAddress;
.end method

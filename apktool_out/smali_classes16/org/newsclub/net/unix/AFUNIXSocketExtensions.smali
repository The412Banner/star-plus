.class public interface abstract Lorg/newsclub/net/unix/AFUNIXSocketExtensions;
.super Ljava/lang/Object;
.source "AFUNIXSocketExtensions.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSocketExtensions;


# virtual methods
.method public abstract clearReceivedFileDescriptors()V
.end method

.method public abstract getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getReceivedFileDescriptors()[Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasOutboundFileDescriptors()Z
.end method

.method public varargs abstract setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.class final Lorg/newsclub/net/unix/AFUNIXSocketImpl$Lenient;
.super Lorg/newsclub/net/unix/AFUNIXSocketImpl;
.source "AFUNIXSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFUNIXSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Lenient"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->getOptionLenient(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 43
    invoke-super {p0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->setOptionLenient(ILjava/lang/Object;)V

    .line 44
    return-void
.end method

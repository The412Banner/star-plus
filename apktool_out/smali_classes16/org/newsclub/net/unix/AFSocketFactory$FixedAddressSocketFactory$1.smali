.class Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory$1;
.super Ljava/net/Socket;
.source "AFSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->createSocket()Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;

    .line 169
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory$1;->this$0:Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory$1;->this$0:Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->access$000(Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 173
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory$1;->this$0:Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;->access$000(Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-super {p0, v0, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 178
    return-void
.end method

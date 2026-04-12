.class public final synthetic Lorg/newsclub/net/unix/AFServerSocket$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/newsclub/net/unix/SocketAddressFilter;


# instance fields
.field public final synthetic f$0:Ljava/net/SocketAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/net/SocketAddress;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/newsclub/net/unix/AFServerSocket$$ExternalSyntheticLambda0;->f$0:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocket$$ExternalSyntheticLambda0;->f$0:Ljava/net/SocketAddress;

    invoke-static {v0, p1}, Lorg/newsclub/net/unix/AFServerSocket;->lambda$forceBindAddress$0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

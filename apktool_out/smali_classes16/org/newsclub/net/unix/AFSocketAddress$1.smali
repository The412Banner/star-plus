.class Lorg/newsclub/net/unix/AFSocketAddress$1;
.super Ljava/lang/ThreadLocal;
.source "AFSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketAddress$1;->initialValue()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/nio/ByteBuffer;
    .locals 1

    .line 72
    invoke-static {}, Lorg/newsclub/net/unix/AFSocketAddress;->access$000()I

    move-result v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->newSockAddrDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

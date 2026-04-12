.class final Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;
.super Ljava/lang/Object;
.source "SocketOptionsMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/SocketOptionsMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocketOptionRef"
.end annotation


# instance fields
.field private final optionId:I

.field private final supported:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "optionId"    # I
    .param p2, "supported"    # Z

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;->optionId:I

    .line 95
    iput-boolean p2, p0, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;->supported:Z

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;)Z
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;

    .line 89
    iget-boolean v0, p0, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;->supported:Z

    return v0
.end method

.method static synthetic access$100(Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;)I
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;

    .line 89
    iget v0, p0, Lorg/newsclub/net/unix/SocketOptionsMapper$SocketOptionRef;->optionId:I

    return v0
.end method

.class final Lorg/newsclub/net/unix/AFSelector$PollFd;
.super Ljava/lang/Object;
.source "AFSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PollFd"
.end annotation


# instance fields
.field final fds:[Ljava/io/FileDescriptor;

.field final keys:[Lorg/newsclub/net/unix/AFSelectionKey;

.field final ops:[I

.field final rops:[I


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "pipeSourceFd"    # Ljava/io/FileDescriptor;

    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/newsclub/net/unix/AFSelector$PollFd;-><init>(Ljava/io/FileDescriptor;I)V

    .line 323
    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 3
    .param p1, "pipeSourceFd"    # Ljava/io/FileDescriptor;
    .param p2, "op"    # I

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->fds:[Ljava/io/FileDescriptor;

    .line 327
    filled-new-array {p2}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->ops:[I

    .line 328
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->rops:[I

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->keys:[Lorg/newsclub/net/unix/AFSelectionKey;

    .line 330
    return-void
.end method

.method constructor <init>([Lorg/newsclub/net/unix/AFSelectionKey;[Ljava/io/FileDescriptor;[I)V
    .locals 2
    .param p1, "keys"    # [Lorg/newsclub/net/unix/AFSelectionKey;
    .param p2, "fds"    # [Ljava/io/FileDescriptor;
    .param p3, "ops"    # [I

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->keys:[Lorg/newsclub/net/unix/AFSelectionKey;

    .line 335
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    .line 338
    iput-object p2, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->fds:[Ljava/io/FileDescriptor;

    .line 339
    iput-object p3, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->ops:[I

    .line 340
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector$PollFd;->rops:[I

    .line 341
    return-void

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

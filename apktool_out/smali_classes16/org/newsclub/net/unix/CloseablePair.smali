.class public Lorg/newsclub/net/unix/CloseablePair;
.super Ljava/lang/Object;
.source "CloseablePair.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final alsoClose:Ljava/io/Closeable;

.field private final first:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final second:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/newsclub/net/unix/CloseablePair;, "Lorg/newsclub/net/unix/CloseablePair<TT;>;"
    .local p1, "a":Ljava/io/Closeable;, "TT;"
    .local p2, "b":Ljava/io/Closeable;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/newsclub/net/unix/CloseablePair;-><init>(Ljava/io/Closeable;Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 0
    .param p3, "alsoClose"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/io/Closeable;",
            ")V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/newsclub/net/unix/CloseablePair;, "Lorg/newsclub/net/unix/CloseablePair<TT;>;"
    .local p1, "a":Ljava/io/Closeable;, "TT;"
    .local p2, "b":Ljava/io/Closeable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lorg/newsclub/net/unix/CloseablePair;->first:Ljava/io/Closeable;

    .line 58
    iput-object p2, p0, Lorg/newsclub/net/unix/CloseablePair;->second:Ljava/io/Closeable;

    .line 59
    iput-object p3, p0, Lorg/newsclub/net/unix/CloseablePair;->alsoClose:Ljava/io/Closeable;

    .line 60
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/newsclub/net/unix/CloseablePair;, "Lorg/newsclub/net/unix/CloseablePair<TT;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/CloseablePair;->first:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 65
    iget-object v0, p0, Lorg/newsclub/net/unix/CloseablePair;->second:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 66
    iget-object v0, p0, Lorg/newsclub/net/unix/CloseablePair;->alsoClose:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/newsclub/net/unix/CloseablePair;->alsoClose:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 69
    :cond_0
    return-void
.end method

.method public final getFirst()Ljava/io/Closeable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/newsclub/net/unix/CloseablePair;, "Lorg/newsclub/net/unix/CloseablePair<TT;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/CloseablePair;->first:Ljava/io/Closeable;

    return-object v0
.end method

.method public final getSecond()Ljava/io/Closeable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/newsclub/net/unix/CloseablePair;, "Lorg/newsclub/net/unix/CloseablePair<TT;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/CloseablePair;->second:Ljava/io/Closeable;

    return-object v0
.end method

.class Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;
.super Ljava/lang/Object;
.source "AFSelector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/channels/SelectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field current:Ljava/nio/channels/SelectionKey;

.field final synthetic this$0:Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->this$0:Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;

    iput-object p2, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->current:Ljava/nio/channels/SelectionKey;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->next()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/channels/SelectionKey;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->current:Ljava/nio/channels/SelectionKey;

    .line 387
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->current:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 392
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->current:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->this$0:Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;->current:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    return-void
.end method

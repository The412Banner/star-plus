.class final Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;
.super Ljava/util/concurrent/CompletableFuture;
.source "CompletableFutureCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/CompletableFutureCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallCancelCompletableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;, "Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 146
    iput-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;->call:Lretrofit2/Call;

    .line 147
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 151
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;, "Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture<TT;>;"
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

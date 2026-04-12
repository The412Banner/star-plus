.class public final Landroidx/core/os/HandlerKt;
.super Ljava/lang/Object;
.source "Handler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Handler.kt\nandroidx/core/os/HandlerKt\n*L\n1#1,69:1\n38#1,7:70\n65#1,3:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0086\u0008\u001a1\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0086\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "postAtTime",
        "Ljava/lang/Runnable;",
        "Landroid/os/Handler;",
        "uptimeMillis",
        "",
        "token",
        "",
        "action",
        "Lkotlin/Function0;",
        "",
        "postDelayed",
        "delayInMillis",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final postAtTime(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "$this$postAtTime"    # Landroid/os/Handler;
    .param p1, "uptimeMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$postAtTime":I
    const-string v1, "$this$postAtTime"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v1, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;

    invoke-direct {v1, p4}, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 66
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v1, p3, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 67
    return-object v1
.end method

.method public static synthetic postAtTime$default(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "$this$postAtTime"    # Landroid/os/Handler;
    .param p1, "uptimeMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 62
    const/4 p3, 0x0

    :cond_0
    const/4 p5, 0x0

    .local p5, "$i$f$postAtTime":I
    const-string p6, "$this$postAtTime"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "action"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance p6, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;

    invoke-direct {p6, p4}, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p6, Ljava/lang/Runnable;

    .line 78
    .local p6, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, p6, p3, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 79
    return-object p6
.end method

.method public static final postDelayed(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "$this$postDelayed"    # Landroid/os/Handler;
    .param p1, "delayInMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$postDelayed":I
    const-string v1, "$this$postDelayed"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;

    invoke-direct {v1, p4}, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 39
    .local v1, "runnable":Ljava/lang/Runnable;
    if-nez p3, :cond_0

    .line 40
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p0, v1, p3, p1, p2}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 43
    :goto_0
    nop

    .line 44
    return-object v1
.end method

.method public static synthetic postDelayed$default(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "$this$postDelayed"    # Landroid/os/Handler;
    .param p1, "delayInMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 35
    const/4 p3, 0x0

    :cond_0
    const/4 p5, 0x0

    .local p5, "$i$f$postDelayed":I
    const-string p6, "$this$postDelayed"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "action"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance p6, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;

    invoke-direct {p6, p4}, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p6, Ljava/lang/Runnable;

    .line 71
    .local p6, "runnable":Ljava/lang/Runnable;
    if-nez p3, :cond_1

    .line 72
    invoke-virtual {p0, p6, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {p0, p6, p3, p1, p2}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 75
    :goto_0
    nop

    .line 76
    return-object p6
.end method

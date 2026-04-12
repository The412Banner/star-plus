.class public final Lokhttp3/internal/concurrent/TaskRunner$runnable$1;
.super Ljava/lang/Object;
.source "TaskRunner.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/concurrent/TaskRunner;-><init>(Lokhttp3/internal/concurrent/TaskRunner$Backend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$runnable$1\n+ 2 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n*L\n1#1,314:1\n35#2,20:315\n*E\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$runnable$1\n*L\n62#1,20:315\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/concurrent/TaskRunner$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;)V
    .locals 0
    .param p1, "this$0"    # Lokhttp3/internal/concurrent/TaskRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 57
    :goto_0
    nop

    .line 58
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v0

    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-synchronized-TaskRunner$runnable$1$run$task$1":I
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    .end local v1    # "$i$a$-synchronized-TaskRunner$runnable$1$run$task$1":I
    monitor-exit v0

    if-eqz v2, :cond_4

    move-object v0, v2

    .line 62
    .local v0, "task":Lokhttp3/internal/concurrent/Task;
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/Task;->getQueue$okhttp()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v1, "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    const/4 v2, 0x0

    .line 315
    .local v2, "$i$f$logElapsed":I
    const-wide/16 v3, -0x1

    .line 316
    .local v3, "startNs$iv":J
    sget-object v5, Lokhttp3/internal/concurrent/TaskRunner;->Companion:Lokhttp3/internal/concurrent/TaskRunner$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/concurrent/TaskRunner$Companion;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    .line 317
    .local v5, "loggingEnabled$iv":Z
    if-eqz v5, :cond_0

    .line 318
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v3

    .line 319
    const-string/jumbo v6, "starting"

    invoke-static {v0, v1, v6}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 322
    :cond_0
    const/4 v6, 0x0

    .line 323
    .local v6, "completedNormally$iv":Z
    nop

    .line 324
    const/4 v7, 0x0

    .line 63
    .local v7, "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    const/4 v8, 0x0

    .line 64
    .local v8, "completedNormally":Z
    nop

    .line 65
    :try_start_1
    iget-object v9, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-static {v9, v0}, Lokhttp3/internal/concurrent/TaskRunner;->access$runTask(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    const/4 v8, 0x1

    .line 69
    nop

    .line 72
    nop

    .line 73
    .end local v8    # "completedNormally":Z
    nop

    .end local v7    # "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    :try_start_2
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    .local v7, "result$iv":Ljava/lang/Object;
    const/4 v6, 0x1

    .line 326
    nop

    .line 328
    if-eqz v5, :cond_1

    .line 329
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    .line 330
    .local v8, "elapsedNs$iv":J
    nop

    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finished run in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 334
    .end local v8    # "elapsedNs$iv":J
    :cond_1
    nop

    .line 326
    nop

    .line 334
    .end local v1    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v2    # "$i$f$logElapsed":I
    .end local v3    # "startNs$iv":J
    .end local v5    # "loggingEnabled$iv":Z
    .end local v6    # "completedNormally$iv":Z
    .end local v7    # "result$iv":Ljava/lang/Object;
    nop

    .end local v0    # "task":Lokhttp3/internal/concurrent/Task;
    goto :goto_0

    .line 72
    .restart local v0    # "task":Lokhttp3/internal/concurrent/Task;
    .restart local v1    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .restart local v2    # "$i$f$logElapsed":I
    .restart local v3    # "startNs$iv":J
    .restart local v5    # "loggingEnabled$iv":Z
    .restart local v6    # "completedNormally$iv":Z
    .local v7, "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    .local v8, "completedNormally":Z
    :catchall_0
    move-exception v9

    .line 69
    nop

    .line 70
    :try_start_3
    iget-object v10, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v10}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v10

    move-object v11, p0

    check-cast v11, Ljava/lang/Runnable;

    invoke-interface {v10, v11}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->execute(Ljava/lang/Runnable;)V

    .end local v0    # "task":Lokhttp3/internal/concurrent/Task;
    .end local v1    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v2    # "$i$f$logElapsed":I
    .end local v3    # "startNs$iv":J
    .end local v5    # "loggingEnabled$iv":Z
    .end local v6    # "completedNormally$iv":Z
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 326
    .end local v7    # "$i$a$-logElapsed-TaskRunner$runnable$1$run$1":I
    .end local v8    # "completedNormally":Z
    .restart local v0    # "task":Lokhttp3/internal/concurrent/Task;
    .restart local v1    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .restart local v2    # "$i$f$logElapsed":I
    .restart local v3    # "startNs$iv":J
    .restart local v5    # "loggingEnabled$iv":Z
    .restart local v6    # "completedNormally$iv":Z
    :catchall_1
    move-exception v7

    .line 328
    if-eqz v5, :cond_3

    .line 329
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    .line 330
    .local v8, "elapsedNs$iv":J
    if-eqz v6, :cond_2

    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finished run in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed a run in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 334
    .end local v8    # "elapsedNs$iv":J
    :cond_3
    :goto_1
    throw v7

    .line 60
    .end local v0    # "task":Lokhttp3/internal/concurrent/Task;
    .end local v1    # "queue$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v2    # "$i$f$logElapsed":I
    .end local v3    # "startNs$iv":J
    .end local v5    # "loggingEnabled$iv":Z
    .end local v6    # "completedNormally$iv":Z
    :cond_4
    return-void

    .line 58
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

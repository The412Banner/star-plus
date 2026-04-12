.class public final Lokio/AsyncTimeout$sink$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,327:1\n147#2,11:328\n147#2,11:339\n147#2,11:350\n*E\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n*L\n103#1,11:328\n109#1,11:339\n113#1,11:350\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "okio/AsyncTimeout$sink$1",
        "Lokio/Sink;",
        "close",
        "",
        "flush",
        "timeout",
        "Lokio/AsyncTimeout;",
        "toString",
        "",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lokio/AsyncTimeout;
    .param p2, "$captured_local_variable$1"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 113
    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    .local v0, "this_$iv":Lokio/AsyncTimeout;
    const/4 v1, 0x0

    .line 350
    .local v1, "$i$f$withTimeout":I
    const/4 v2, 0x0

    .line 351
    .local v2, "throwOnTimeout$iv":Z
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 352
    nop

    .line 353
    const/4 v3, 0x0

    .line 113
    .local v3, "$i$a$-withTimeout-AsyncTimeout$sink$1$close$1":I
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v5}, Lokio/Sink;->close()V

    .end local v3    # "$i$a$-withTimeout-AsyncTimeout$sink$1$close$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .local v3, "result$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    .line 355
    nop

    .line 359
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v5

    .line 360
    .local v5, "timedOut$iv":Z
    if-nez v5, :cond_0

    .line 355
    .end local v5    # "timedOut$iv":Z
    nop

    .line 114
    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v1    # "$i$f$withTimeout":I
    .end local v2    # "throwOnTimeout$iv":Z
    .end local v3    # "result$iv":Ljava/lang/Object;
    return-void

    .line 360
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v1    # "$i$f$withTimeout":I
    .restart local v2    # "throwOnTimeout$iv":Z
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "timedOut$iv":Z
    :cond_0
    invoke-virtual {v0, v4}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 357
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v5    # "timedOut$iv":Z
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 356
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e$iv":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v1    # "$i$f$withTimeout":I
    .end local v2    # "throwOnTimeout$iv":Z
    :goto_0
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .end local v3    # "e$iv":Ljava/io/IOException;
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v1    # "$i$f$withTimeout":I
    .restart local v2    # "throwOnTimeout$iv":Z
    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v5

    .line 360
    .restart local v5    # "timedOut$iv":Z
    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v5    # "timedOut$iv":Z
    :cond_2
    throw v3
.end method

.method public flush()V
    .locals 6

    .line 109
    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    .local v0, "this_$iv":Lokio/AsyncTimeout;
    const/4 v1, 0x0

    .line 339
    .local v1, "$i$f$withTimeout":I
    const/4 v2, 0x0

    .line 340
    .local v2, "throwOnTimeout$iv":Z
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 341
    nop

    .line 342
    const/4 v3, 0x0

    .line 109
    .local v3, "$i$a$-withTimeout-AsyncTimeout$sink$1$flush$1":I
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v5}, Lokio/Sink;->flush()V

    .end local v3    # "$i$a$-withTimeout-AsyncTimeout$sink$1$flush$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .local v3, "result$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    .line 344
    nop

    .line 348
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v5

    .line 349
    .local v5, "timedOut$iv":Z
    if-nez v5, :cond_0

    .line 344
    .end local v5    # "timedOut$iv":Z
    nop

    .line 110
    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v1    # "$i$f$withTimeout":I
    .end local v2    # "throwOnTimeout$iv":Z
    .end local v3    # "result$iv":Ljava/lang/Object;
    return-void

    .line 349
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v1    # "$i$f$withTimeout":I
    .restart local v2    # "throwOnTimeout$iv":Z
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "timedOut$iv":Z
    :cond_0
    invoke-virtual {v0, v4}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 346
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v5    # "timedOut$iv":Z
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 345
    :catch_0
    move-exception v3

    .line 346
    .local v3, "e$iv":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v1    # "$i$f$withTimeout":I
    .end local v2    # "throwOnTimeout$iv":Z
    :goto_0
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    .end local v3    # "e$iv":Ljava/io/IOException;
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v1    # "$i$f$withTimeout":I
    .restart local v2    # "throwOnTimeout$iv":Z
    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v5

    .line 349
    .restart local v5    # "timedOut$iv":Z
    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .end local v5    # "timedOut$iv":Z
    :cond_2
    throw v3
.end method

.method public timeout()Lokio/AsyncTimeout;
    .locals 1

    .line 116
    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lokio/AsyncTimeout$sink$1;->timeout()Lokio/AsyncTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 11
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 87
    move-wide v0, p2

    .line 88
    .local v0, "remaining":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "toWrite":J
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .local v4, "s":Lokio/Segment;
    :goto_1
    const/high16 v5, 0x10000

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 93
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    .line 94
    .local v5, "segmentSize":I
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 95
    cmp-long v6, v2, v0

    if-ltz v6, :cond_0

    .line 96
    move-wide v2, v0

    .line 97
    goto :goto_2

    .line 99
    :cond_0
    iget-object v6, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v6

    .line 92
    .end local v5    # "segmentSize":I
    goto :goto_1

    .line 103
    :cond_1
    :goto_2
    iget-object v5, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    .local v5, "this_$iv":Lokio/AsyncTimeout;
    const/4 v6, 0x0

    .line 328
    .local v6, "$i$f$withTimeout":I
    const/4 v7, 0x0

    .line 329
    .local v7, "throwOnTimeout$iv":Z
    invoke-virtual {v5}, Lokio/AsyncTimeout;->enter()V

    .line 330
    nop

    .line 331
    const/4 v8, 0x0

    .line 103
    .local v8, "$i$a$-withTimeout-AsyncTimeout$sink$1$write$1":I
    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v10, p1, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .end local v8    # "$i$a$-withTimeout-AsyncTimeout$sink$1$write$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .local v8, "result$iv":Ljava/lang/Object;
    const/4 v7, 0x1

    .line 333
    nop

    .line 337
    invoke-virtual {v5}, Lokio/AsyncTimeout;->exit()Z

    move-result v10

    .line 338
    .local v10, "timedOut$iv":Z
    if-nez v10, :cond_2

    .line 333
    .end local v10    # "timedOut$iv":Z
    nop

    .line 104
    .end local v5    # "this_$iv":Lokio/AsyncTimeout;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "throwOnTimeout$iv":Z
    .end local v8    # "result$iv":Ljava/lang/Object;
    sub-long/2addr v0, v2

    .line 88
    .end local v2    # "toWrite":J
    .end local v4    # "s":Lokio/Segment;
    goto :goto_0

    .line 338
    .restart local v2    # "toWrite":J
    .restart local v4    # "s":Lokio/Segment;
    .restart local v5    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v6    # "$i$f$withTimeout":I
    .restart local v7    # "throwOnTimeout$iv":Z
    .restart local v8    # "result$iv":Ljava/lang/Object;
    .restart local v10    # "timedOut$iv":Z
    :cond_2
    invoke-virtual {v5, v9}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    .line 335
    .end local v8    # "result$iv":Ljava/lang/Object;
    .end local v10    # "timedOut$iv":Z
    :catchall_0
    move-exception v8

    goto :goto_4

    .line 334
    :catch_0
    move-exception v8

    .line 335
    .local v8, "e$iv":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Lokio/AsyncTimeout;->exit()Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v8

    check-cast v10, Ljava/lang/Throwable;

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v8}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    .end local v0    # "remaining":J
    .end local v2    # "toWrite":J
    .end local v4    # "s":Lokio/Segment;
    .end local v5    # "this_$iv":Lokio/AsyncTimeout;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "throwOnTimeout$iv":Z
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    :goto_3
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v8    # "e$iv":Ljava/io/IOException;
    .restart local v0    # "remaining":J
    .restart local v2    # "toWrite":J
    .restart local v4    # "s":Lokio/Segment;
    .restart local v5    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v6    # "$i$f$withTimeout":I
    .restart local v7    # "throwOnTimeout$iv":Z
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_4
    invoke-virtual {v5}, Lokio/AsyncTimeout;->exit()Z

    move-result v10

    .line 338
    .restart local v10    # "timedOut$iv":Z
    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v5, v9}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v8

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .end local v10    # "timedOut$iv":Z
    :cond_4
    throw v8

    .line 106
    .end local v2    # "toWrite":J
    .end local v4    # "s":Lokio/Segment;
    .end local v5    # "this_$iv":Lokio/AsyncTimeout;
    .end local v6    # "$i$f$withTimeout":I
    .end local v7    # "throwOnTimeout$iv":Z
    :cond_5
    return-void
.end method

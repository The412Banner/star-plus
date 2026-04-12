.class public final Lokio/AsyncTimeout$source$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,327:1\n147#2,11:328\n147#2,11:339\n*E\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n*L\n129#1,11:328\n133#1,11:339\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "okio/AsyncTimeout$source$1",
        "Lokio/Source;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "timeout",
        "Lokio/AsyncTimeout;",
        "toString",
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
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lokio/AsyncTimeout;
    .param p2, "$captured_local_variable$1"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            ")V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 133
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

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

    .line 133
    .local v3, "$i$a$-withTimeout-AsyncTimeout$source$1$close$1":I
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-interface {v5}, Lokio/Source;->close()V

    .end local v3    # "$i$a$-withTimeout-AsyncTimeout$source$1$close$1":I
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

    .line 134
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

.method public read(Lokio/Buffer;J)J
    .locals 7
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    .local v0, "this_$iv":Lokio/AsyncTimeout;
    const/4 v1, 0x0

    .line 328
    .local v1, "$i$f$withTimeout":I
    const/4 v2, 0x0

    .line 329
    .local v2, "throwOnTimeout$iv":Z
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 330
    nop

    .line 331
    const/4 v3, 0x0

    .line 129
    .local v3, "$i$a$-withTimeout-AsyncTimeout$source$1$read$1":I
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-interface {v5, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .end local v3    # "$i$a$-withTimeout-AsyncTimeout$source$1$read$1":I
    .local v5, "result$iv":J
    const/4 v2, 0x1

    .line 333
    nop

    .line 337
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v3

    .line 338
    .local v3, "timedOut$iv":Z
    if-nez v3, :cond_0

    .line 333
    .end local v3    # "timedOut$iv":Z
    nop

    .line 129
    .end local v0    # "this_$iv":Lokio/AsyncTimeout;
    .end local v1    # "$i$f$withTimeout":I
    .end local v2    # "throwOnTimeout$iv":Z
    .end local v5    # "result$iv":J
    return-wide v5

    .line 338
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v1    # "$i$f$withTimeout":I
    .restart local v2    # "throwOnTimeout$iv":Z
    .restart local v3    # "timedOut$iv":Z
    .restart local v5    # "result$iv":J
    :cond_0
    invoke-virtual {v0, v4}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 335
    .end local v3    # "timedOut$iv":Z
    .end local v5    # "result$iv":J
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 334
    :catch_0
    move-exception v3

    .line 335
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
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    :goto_0
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v3    # "e$iv":Ljava/io/IOException;
    .restart local v0    # "this_$iv":Lokio/AsyncTimeout;
    .restart local v1    # "$i$f$withTimeout":I
    .restart local v2    # "throwOnTimeout$iv":Z
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v5

    .line 338
    .local v5, "timedOut$iv":Z
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

    .line 136
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lokio/AsyncTimeout$source$1;->timeout()Lokio/AsyncTimeout;

    move-result-object v0

    check-cast v0, Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

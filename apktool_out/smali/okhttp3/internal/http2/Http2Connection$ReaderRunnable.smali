.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReaderRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1006:1\n92#2,11:1007\n92#2,11:1018\n92#2,11:1031\n92#2,11:1043\n37#3,2:1029\n37#3,2:1054\n563#4:1042\n563#4:1056\n*E\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n687#1,11:1007\n715#1,11:1018\n758#1,11:1031\n806#1,11:1043\n753#1,2:1029\n824#1,2:1054\n797#1:1042\n841#1:1056\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0003H\u0016J8\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000cH\u0016J \u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0010H\u0016J.\u0010$\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000c2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\t\u0010)\u001a\u00020\u0003H\u0096\u0002J \u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000cH\u0016J(\u0010.\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u0017H\u0016J&\u00102\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00103\u001a\u00020\u000c2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\u0018\u00105\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u00106\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u00068"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/Function0;",
        "",
        "reader",
        "Lokhttp3/internal/http2/Http2Reader;",
        "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V",
        "getReader$okhttp",
        "()Lokhttp3/internal/http2/Http2Reader;",
        "ackSettings",
        "alternateService",
        "streamId",
        "",
        "origin",
        "",
        "protocol",
        "Lokio/ByteString;",
        "host",
        "port",
        "maxAge",
        "",
        "applyAndAckSettings",
        "clearPrevious",
        "",
        "settings",
        "Lokhttp3/internal/http2/Settings;",
        "data",
        "inFinished",
        "source",
        "Lokio/BufferedSource;",
        "length",
        "goAway",
        "lastGoodStreamId",
        "errorCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "debugData",
        "headers",
        "associatedStreamId",
        "headerBlock",
        "",
        "Lokhttp3/internal/http2/Header;",
        "invoke",
        "ping",
        "ack",
        "payload1",
        "payload2",
        "priority",
        "streamDependency",
        "weight",
        "exclusive",
        "pushPromise",
        "promisedStreamId",
        "requestHeaders",
        "rstStream",
        "windowUpdate",
        "windowSizeIncrement",
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
.field private final reader:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 1
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Connection;
    .param p2, "reader"    # Lokhttp3/internal/http2/Http2Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Reader;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .line 779
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "protocol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public final applyAndAckSettings(ZLokhttp3/internal/http2/Settings;)V
    .locals 28
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lokhttp3/internal/http2/Settings;

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    const-string/jumbo v0, "settings"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v14, v0

    .line 735
    .local v14, "delta":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v15, v0

    .line 736
    .local v15, "streamsToNotify":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v11, v0

    .line 737
    .local v11, "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v16

    monitor-enter v16

    const/16 v17, 0x0

    .line 738
    .local v17, "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    :try_start_0
    iget-object v10, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v0, 0x0

    .line 739
    .local v0, "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    :try_start_1
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getPeerSettings()Lokhttp3/internal/http2/Settings;

    move-result-object v1

    move-object v9, v1

    .line 740
    .local v9, "previousPeerSettings":Lokhttp3/internal/http2/Settings;
    if-eqz p1, :cond_0

    .line 741
    move-object v1, v13

    goto :goto_0

    .line 743
    :cond_0
    new-instance v1, Lokhttp3/internal/http2/Settings;

    invoke-direct {v1}, Lokhttp3/internal/http2/Settings;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Lokhttp3/internal/http2/Settings;
    const/4 v3, 0x0

    .line 744
    .local v3, "$i$a$-apply-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1$1":I
    invoke-virtual {v2, v9}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 745
    invoke-virtual {v2, v13}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 746
    .end local v2    # "$this$apply":Lokhttp3/internal/http2/Settings;
    .end local v3    # "$i$a$-apply-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 743
    nop

    .line 740
    :goto_0
    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 749
    iget-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v7, v1

    .line 750
    .local v7, "peerInitialWindowSize":J
    invoke-virtual {v9}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v7, v1

    iput-wide v1, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 751
    nop

    .line 752
    iget-wide v1, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    :try_start_2
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 753
    :cond_1
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 1029
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v1

    .line 1030
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    new-array v4, v6, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v4, [Lokhttp3/internal/http2/Http2Stream;

    goto :goto_2

    .restart local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v2    # "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v11    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v15    # "streamsToNotify":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v17    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    .end local p1    # "clearPrevious":Z
    .end local p2    # "settings":Lokhttp3/internal/http2/Settings;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    .end local v7    # "peerInitialWindowSize":J
    .end local v9    # "previousPeerSettings":Lokhttp3/internal/http2/Settings;
    .restart local v11    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v15    # "streamsToNotify":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v17    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    .restart local p1    # "clearPrevious":Z
    .restart local p2    # "settings":Lokhttp3/internal/http2/Settings;
    :catchall_0
    move-exception v0

    move-object/from16 v26, v10

    move-object v1, v12

    move-object v5, v14

    move-object v14, v11

    goto/16 :goto_7

    .line 752
    .restart local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    .restart local v7    # "peerInitialWindowSize":J
    .restart local v9    # "previousPeerSettings":Lokhttp3/internal/http2/Settings;
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 751
    :goto_2
    :try_start_3
    iput-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 756
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v2, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Connection;->setPeerSettings(Lokhttp3/internal/http2/Settings;)V

    .line 758
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getSettingsListenerQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "name$iv":Ljava/lang/String;
    move-object v5, v1

    .line 1031
    .local v5, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    const-wide/16 v3, 0x0

    .line 1032
    .local v3, "delayNanos$iv":J
    const/16 v18, 0x1

    .local v18, "cancelable$iv":Z
    const/16 v19, 0x0

    .line 1035
    .local v19, "$i$f$execute":I
    new-instance v20, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$synchronized$lambda$1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v1, v20

    move-wide v12, v3

    .end local v3    # "delayNanos$iv":J
    .local v12, "delayNanos$iv":J
    move/from16 v3, v18

    move-object v4, v2

    move/from16 v21, v0

    move-object v0, v5

    .end local v5    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .local v0, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .local v21, "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    move/from16 v5, v18

    move/from16 v22, v6

    move-object/from16 v6, p0

    move-wide/from16 v23, v7

    .end local v7    # "peerInitialWindowSize":J
    .local v23, "peerInitialWindowSize":J
    move-object v7, v11

    move/from16 v8, p1

    move-object/from16 v25, v9

    .end local v9    # "previousPeerSettings":Lokhttp3/internal/http2/Settings;
    .local v25, "previousPeerSettings":Lokhttp3/internal/http2/Settings;
    move-object/from16 v9, p2

    move-object/from16 v26, v10

    move-object v10, v14

    move-object/from16 v27, v14

    move-object v14, v11

    .end local v11    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v14, "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v27, "delta":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v11, v15

    :try_start_4
    invoke-direct/range {v1 .. v11}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$$inlined$synchronized$lambda$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;Lkotlin/jvm/internal/Ref$ObjectRef;ZLokhttp3/internal/http2/Settings;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v1, v20

    check-cast v1, Lokhttp3/internal/concurrent/Task;

    .line 1040
    nop

    .line 1035
    invoke-virtual {v0, v1, v12, v13}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 1041
    nop

    .line 761
    .end local v0    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v12    # "delayNanos$iv":J
    .end local v18    # "cancelable$iv":Z
    .end local v19    # "$i$f$execute":I
    .end local v23    # "peerInitialWindowSize":J
    .end local v25    # "previousPeerSettings":Lokhttp3/internal/http2/Settings;
    nop

    .end local v21    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 738
    :try_start_5
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 762
    nop

    .line 763
    move-object/from16 v1, p0

    :try_start_6
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v0

    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, v2}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 737
    .end local v17    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    :catchall_1
    move-exception v0

    move-object/from16 v5, v27

    goto :goto_8

    .line 764
    .restart local v17    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v2, v0}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 766
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 767
    nop

    .end local v17    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 737
    monitor-exit v16

    .line 768
    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_5

    .line 769
    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v0

    move/from16 v6, v22

    :goto_4
    if-ge v6, v2, :cond_4

    aget-object v3, v0, v6

    .line 770
    .local v3, "stream":Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v3

    const/4 v4, 0x0

    .line 771
    .local v4, "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$2":I
    move-object/from16 v5, v27

    .end local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .local v5, "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :try_start_8
    iget-wide v7, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v7, v8}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 772
    .end local v4    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 770
    monitor-exit v3

    .line 769
    nop

    .end local v3    # "stream":Lokhttp3/internal/http2/Http2Stream;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v27, v5

    goto :goto_4

    .line 770
    .restart local v3    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 769
    .end local v3    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .end local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_4
    move-object/from16 v5, v27

    .end local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    goto :goto_5

    .line 768
    .end local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_5
    move-object/from16 v5, v27

    .line 775
    .end local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_5
    return-void

    .line 737
    .end local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    :goto_6
    move-object/from16 v5, v27

    .end local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    goto :goto_8

    .line 738
    .end local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v17    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    .restart local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_5
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, v27

    .end local v27    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    goto :goto_7

    .end local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v11    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v14, "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_6
    move-exception v0

    move-object/from16 v26, v10

    move-object v1, v12

    move-object v5, v14

    move-object v14, v11

    .end local v11    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .local v14, "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_7
    :try_start_9
    monitor-exit v26

    .end local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v14    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v15    # "streamsToNotify":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "clearPrevious":Z
    .end local p2    # "settings":Lokhttp3/internal/http2/Settings;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 737
    .end local v17    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$applyAndAckSettings$1":I
    .restart local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v14    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v15    # "streamsToNotify":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "clearPrevious":Z
    .restart local p2    # "settings":Lokhttp3/internal/http2/Settings;
    :catchall_7
    move-exception v0

    goto :goto_8

    .end local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v11    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v14, "delta":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_8
    move-exception v0

    move-object v1, v12

    move-object v5, v14

    move-object v14, v11

    .end local v11    # "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "delta":Lkotlin/jvm/internal/Ref$LongRef;
    .local v14, "newPeerSettings":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_8
    monitor-exit v16

    throw v0
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->pushDataLater$okhttp(ILokio/BufferedSource;IZ)V

    .line 641
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 644
    .local v0, "dataStream":Lokhttp3/internal/http2/Http2Stream;
    if-nez v0, :cond_1

    .line 645
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V

    .line 646
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 647
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 648
    return-void

    .line 650
    :cond_1
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V

    .line 651
    if-eqz p1, :cond_2

    .line 652
    sget-object v1, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    .line 654
    :cond_2
    return-void
.end method

.method public final getReader$okhttp()Lokhttp3/internal/http2/Http2Reader;
    .locals 1

    .line 610
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    return-object v0
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 8
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    const/4 v2, 0x0

    .line 824
    .local v2, "$i$a$-synchronized-Http2Connection$ReaderRunnable$goAway$1":I
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 1054
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 1055
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v7, v6, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v5, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v7, [Lokhttp3/internal/http2/Http2Stream;

    move-object v0, v7

    .line 825
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lokhttp3/internal/http2/Http2Connection;->access$setShutdown$p(Lokhttp3/internal/http2/Http2Connection;Z)V

    .line 826
    .end local v2    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$goAway$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    monitor-exit v1

    .line 829
    array-length v1, v0

    :goto_0
    if-ge v6, v1, :cond_1

    aget-object v2, v0, v6

    .line 830
    .local v2, "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 831
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v2, v3}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 832
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    .line 829
    :cond_0
    nop

    .end local v2    # "http2Stream":Lokhttp3/internal/http2/Http2Stream;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 835
    :cond_1
    return-void

    .line 1055
    .local v2, "$i$a$-synchronized-Http2Connection$ReaderRunnable$goAway$1":I
    .restart local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$toTypedArray":I
    .restart local v5    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    .end local p3    # "debugData":Lokio/ByteString;
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    .end local v2    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$goAway$1":I
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    .restart local v0    # "streamsCopy":[Lokhttp3/internal/http2/Http2Stream;
    .restart local p1    # "lastGoodStreamId":I
    .restart local p2    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    .restart local p3    # "debugData":Lokio/ByteString;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 23
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .param p4, "headerBlock"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v11, p1

    move/from16 v10, p2

    move-object/from16 v9, p4

    const-string v0, "headerBlock"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iget-object v0, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v10}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v10, v9, v11}, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater$okhttp(ILjava/util/List;Z)V

    .line 664
    return-void

    .line 666
    :cond_0
    const/4 v1, 0x0

    .line 667
    .local v1, "stream":Lokhttp3/internal/http2/Http2Stream;
    iget-object v8, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v8

    const/4 v0, 0x0

    .line 668
    .local v0, "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    :try_start_0
    iget-object v2, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v10}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v7, v2

    .line 670
    .end local v1    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .local v7, "stream":Lokhttp3/internal/http2/Http2Stream;
    if-nez v7, :cond_4

    .line 672
    :try_start_1
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$isShutdown$p(Lokhttp3/internal/http2/Http2Connection;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    monitor-exit v8

    return-void

    .line 675
    .restart local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    :cond_1
    :try_start_2
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getLastGoodStreamId$okhttp()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt v10, v1, :cond_2

    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    monitor-exit v8

    return-void

    .line 678
    .restart local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    :cond_2
    :try_start_3
    rem-int/lit8 v1, v10, 0x2

    iget-object v2, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getNextStreamId$okhttp()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v1, v2, :cond_3

    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    monitor-exit v8

    return-void

    .line 681
    .restart local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    :cond_3
    :try_start_4
    invoke-static/range {p4 .. p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v18

    .line 682
    .local v18, "headers":Lokhttp3/Headers;
    new-instance v1, Lokhttp3/internal/http2/Http2Stream;

    iget-object v15, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v14, p2

    move/from16 v17, p1

    invoke-direct/range {v13 .. v18}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    move-object v13, v1

    .line 683
    .local v13, "newStream":Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, v10}, Lokhttp3/internal/http2/Http2Connection;->setLastGoodStreamId$okhttp(I)V

    .line 684
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getStreams$okhttp()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getTaskRunner$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] onStream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "name$iv":Ljava/lang/String;
    move-object v14, v1

    .line 1007
    .local v14, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    const-wide/16 v5, 0x0

    .line 1008
    .local v5, "delayNanos$iv":J
    const/4 v15, 0x1

    .local v15, "cancelable$iv":Z
    const/16 v16, 0x0

    .line 1011
    .local v16, "$i$f$execute":I
    new-instance v17, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, v17

    move v3, v15

    move-object v4, v2

    move-wide/from16 v19, v5

    .end local v5    # "delayNanos$iv":J
    .local v19, "delayNanos$iv":J
    move v5, v15

    move-object v6, v13

    move-object/from16 v21, v7

    .end local v7    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .local v21, "stream":Lokhttp3/internal/http2/Http2Stream;
    move-object/from16 v7, p0

    move-object/from16 v22, v8

    move-object/from16 v8, v21

    move/from16 v9, p2

    move-object/from16 v10, p4

    move v12, v11

    move/from16 v11, p1

    :try_start_5
    invoke-direct/range {v1 .. v11}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Stream;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Lokhttp3/internal/http2/Http2Stream;ILjava/util/List;Z)V

    move-object/from16 v1, v17

    check-cast v1, Lokhttp3/internal/concurrent/Task;

    .line 1016
    nop

    .line 1011
    move-wide/from16 v3, v19

    .end local v19    # "delayNanos$iv":J
    .local v3, "delayNanos$iv":J
    invoke-virtual {v14, v1, v3, v4}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1017
    nop

    .line 697
    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "delayNanos$iv":J
    .end local v13    # "newStream":Lokhttp3/internal/http2/Http2Stream;
    .end local v14    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v15    # "cancelable$iv":Z
    .end local v16    # "$i$f$execute":I
    .end local v18    # "headers":Lokhttp3/Headers;
    monitor-exit v22

    return-void

    .line 667
    :catchall_0
    move-exception v0

    move-object/from16 v1, v21

    goto :goto_0

    .end local v21    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v7    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move v12, v11

    move-object/from16 v1, v21

    .end local v7    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v21    # "stream":Lokhttp3/internal/http2/Http2Stream;
    goto :goto_0

    .line 699
    .end local v21    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    .restart local v7    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_4
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move v12, v11

    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$headers$1":I
    .end local v7    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v21    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :try_start_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 667
    monitor-exit v22

    .line 702
    invoke-static/range {p4 .. p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v0

    move-object/from16 v1, v21

    .end local v21    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v1    # "stream":Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual {v1, v0, v12}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    .line 703
    return-void

    .line 667
    .end local v1    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v21    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :catchall_2
    move-exception v0

    move-object/from16 v1, v21

    .end local v21    # "stream":Lokhttp3/internal/http2/Http2Stream;
    .restart local v1    # "stream":Lokhttp3/internal/http2/Http2Stream;
    goto :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v22, v8

    move v12, v11

    :goto_0
    monitor-exit v22

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 609
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke()V
    .locals 6

    .line 613
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 614
    .local v0, "connectionErrorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 615
    .local v1, "streamErrorCode":Lokhttp3/internal/http2/ErrorCode;
    const/4 v2, 0x0

    check-cast v2, Ljava/io/IOException;

    .line 616
    .local v2, "errorException":Ljava/io/IOException;
    nop

    .line 617
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    move-object v4, p0

    check-cast v4, Lokhttp3/internal/http2/Http2Reader$Handler;

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 618
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    move-object v4, p0

    check-cast v4, Lokhttp3/internal/http2/Http2Reader$Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    move-object v0, v3

    .line 621
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_1

    .line 629
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 622
    :catch_0
    move-exception v3

    .line 623
    .local v3, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 624
    :try_start_1
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    move-object v0, v4

    .line 625
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 627
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 628
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 629
    nop

    .line 630
    return-void

    .line 627
    :goto_2
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 628
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public ping(ZII)V
    .locals 15
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 786
    move-object v9, p0

    if-eqz p1, :cond_1

    .line 787
    iget-object v1, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    const/4 v0, 0x0

    .line 788
    .local v0, "$i$a$-synchronized-Http2Connection$ReaderRunnable$ping$1":I
    const-wide/16 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1042
    :try_start_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 796
    :pswitch_0
    iget-object v4, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v4}, Lokhttp3/internal/http2/Http2Connection;->access$getAwaitPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-static {v4, v5, v6}, Lokhttp3/internal/http2/Http2Connection;->access$setAwaitPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 797
    iget-object v2, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .local v2, "$this$notifyAll$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1042
    .local v3, "$i$f$notifyAll":I
    if-eqz v2, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .end local v2    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$notifyAll":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .restart local v2    # "$this$notifyAll$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$notifyAll":I
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ack":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    throw v4

    .line 793
    .end local v2    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$notifyAll":I
    .restart local p1    # "ack":Z
    .restart local p2    # "payload1":I
    .restart local p3    # "payload2":I
    :pswitch_1
    iget-object v4, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v4}, Lokhttp3/internal/http2/Http2Connection;->access$getDegradedPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v5

    add-long/2addr v2, v5

    invoke-static {v4, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->access$setDegradedPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    goto :goto_1

    .line 790
    :pswitch_2
    iget-object v4, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v4}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v5

    add-long/2addr v2, v5

    invoke-static {v4, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->access$setIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 787
    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$ping$1":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 788
    .restart local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$ping$1":I
    :goto_0
    nop

    .line 787
    .end local v0    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$ping$1":I
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1

    throw v0

    .line 806
    :cond_1
    iget-object v0, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v0

    .local v0, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, "name$iv":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 1044
    .local v10, "delayNanos$iv":J
    const/4 v12, 0x1

    .local v12, "cancelable$iv":Z
    const/4 v13, 0x0

    .line 1047
    .local v13, "$i$f$execute":I
    new-instance v14, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$1;

    move-object v1, v14

    move v3, v12

    move-object v4, v2

    move v5, v12

    move-object v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;II)V

    check-cast v14, Lokhttp3/internal/concurrent/Task;

    .line 1052
    nop

    .line 1047
    invoke-virtual {v0, v14, v10, v11}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 1053
    nop

    .line 809
    .end local v0    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v10    # "delayNanos$iv":J
    .end local v12    # "cancelable$iv":Z
    .end local v13    # "$i$f$execute":I
    :goto_3
    nop

    .line 810
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 860
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .param p3, "requestHeaders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "requestHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater$okhttp(ILjava/util/List;)V

    .line 868
    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->pushedStream$okhttp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->pushResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V

    .line 708
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 711
    .local v0, "rstStream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 712
    :cond_1
    return-void
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
    .locals 17
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lokhttp3/internal/http2/Settings;

    move-object/from16 v8, p0

    const-string/jumbo v0, "settings"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    iget-object v0, v8, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v10

    .local v10, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " applyAndAckSettings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1018
    .local v11, "name$iv":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 1019
    .local v12, "delayNanos$iv":J
    const/4 v14, 0x1

    .local v14, "cancelable$iv":Z
    const/4 v15, 0x0

    .line 1022
    .local v15, "$i$f$execute":I
    new-instance v16, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;

    move-object/from16 v0, v16

    move-object v1, v11

    move v2, v14

    move-object v3, v11

    move v4, v14

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;ZLokhttp3/internal/http2/Settings;)V

    move-object/from16 v0, v16

    check-cast v0, Lokhttp3/internal/concurrent/Task;

    .line 1027
    nop

    .line 1022
    invoke-virtual {v10, v0, v12, v13}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 1028
    nop

    .line 718
    .end local v10    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v11    # "name$iv":Ljava/lang/String;
    .end local v12    # "delayNanos$iv":J
    .end local v14    # "cancelable$iv":Z
    .end local v15    # "$i$f$execute":I
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 838
    if-nez p1, :cond_1

    .line 839
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    const/4 v1, 0x0

    .line 840
    .local v1, "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$1":I
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->getWriteBytesMaximum()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->access$setWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 841
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .local v2, "$this$notifyAll$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1056
    .local v3, "$i$f$notifyAll":I
    if-eqz v2, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 842
    .end local v2    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$notifyAll":I
    nop

    .end local v1    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    monitor-exit v0

    goto :goto_0

    .line 1056
    .restart local v1    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$1":I
    .restart local v2    # "$this$notifyAll$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$notifyAll":I
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "streamId":I
    .end local p2    # "windowSizeIncrement":J
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    .end local v1    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$1":I
    .end local v2    # "$this$notifyAll$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$notifyAll":I
    .restart local p1    # "streamId":I
    .restart local p2    # "windowSizeIncrement":J
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 844
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 845
    .local v0, "stream":Lokhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_2

    .line 846
    monitor-enter v0

    const/4 v1, 0x0

    .line 847
    .local v1, "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$2":I
    :try_start_2
    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 848
    .end local v1    # "$i$a$-synchronized-Http2Connection$ReaderRunnable$windowUpdate$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 846
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 850
    .end local v0    # "stream":Lokhttp3/internal/http2/Http2Stream;
    :cond_2
    :goto_0
    nop

    .line 851
    return-void
.end method

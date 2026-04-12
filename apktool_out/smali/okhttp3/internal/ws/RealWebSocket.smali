.class public final Lokhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"

# interfaces
.implements Lokhttp3/WebSocket;
.implements Lokhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/RealWebSocket$Message;,
        Lokhttp3/internal/ws/RealWebSocket$Close;,
        Lokhttp3/internal/ws/RealWebSocket$Streams;,
        Lokhttp3/internal/ws/RealWebSocket$WriterTask;,
        Lokhttp3/internal/ws/RealWebSocket$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealWebSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n+ 2 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,654:1\n84#2,4:655\n93#2,10:664\n1#3:659\n608#4,4:660\n*E\n*S KotlinDebug\n*F\n+ 1 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n*L\n269#1,4:655\n512#1,10:664\n457#1,4:660\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0018\u0000 `2\u00020\u00012\u00020\u0002:\u0005_`abcB?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0010J\u0016\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u000206J\u0008\u00107\u001a\u000203H\u0016J\u001f\u00108\u001a\u0002032\u0006\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0000\u00a2\u0006\u0002\u0008=J\u001a\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020%2\u0008\u0010@\u001a\u0004\u0018\u00010\u0018H\u0016J \u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020%2\u0008\u0010@\u001a\u0004\u0018\u00010\u00182\u0006\u0010A\u001a\u00020\u000cJ\u000e\u0010B\u001a\u0002032\u0006\u0010C\u001a\u00020DJ\u001c\u0010E\u001a\u0002032\n\u0010F\u001a\u00060Gj\u0002`H2\u0008\u00109\u001a\u0004\u0018\u00010:J\u0016\u0010I\u001a\u0002032\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010*\u001a\u00020+J\u0006\u0010J\u001a\u000203J\u0018\u0010K\u001a\u0002032\u0006\u0010?\u001a\u00020%2\u0006\u0010@\u001a\u00020\u0018H\u0016J\u0010\u0010L\u001a\u0002032\u0006\u0010M\u001a\u00020\u0018H\u0016J\u0010\u0010L\u001a\u0002032\u0006\u0010N\u001a\u00020 H\u0016J\u0010\u0010O\u001a\u0002032\u0006\u0010P\u001a\u00020 H\u0016J\u0010\u0010Q\u001a\u0002032\u0006\u0010P\u001a\u00020 H\u0016J\u000e\u0010R\u001a\u00020\u00122\u0006\u0010P\u001a\u00020 J\u0006\u0010S\u001a\u00020\u0012J\u0008\u0010!\u001a\u00020\u000cH\u0016J\u0006\u0010\'\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0008\u0010T\u001a\u00020\u0006H\u0016J\u0008\u0010U\u001a\u000203H\u0002J\u0010\u0010V\u001a\u00020\u00122\u0006\u0010M\u001a\u00020\u0018H\u0016J\u0010\u0010V\u001a\u00020\u00122\u0006\u0010N\u001a\u00020 H\u0016J\u0018\u0010V\u001a\u00020\u00122\u0006\u0010W\u001a\u00020 2\u0006\u0010X\u001a\u00020%H\u0002J\u0006\u0010)\u001a\u00020%J\u0006\u0010Y\u001a\u000203J\r\u0010Z\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008[J\r\u0010\\\u001a\u000203H\u0000\u00a2\u0006\u0002\u0008]J\u000c\u0010^\u001a\u00020\u0012*\u00020\u000eH\u0002R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006d"
    }
    d2 = {
        "Lokhttp3/internal/ws/RealWebSocket;",
        "Lokhttp3/WebSocket;",
        "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;",
        "taskRunner",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "originalRequest",
        "Lokhttp3/Request;",
        "listener",
        "Lokhttp3/WebSocketListener;",
        "random",
        "Ljava/util/Random;",
        "pingIntervalMillis",
        "",
        "extensions",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "minimumDeflateSize",
        "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;JLokhttp3/internal/ws/WebSocketExtensions;J)V",
        "awaitingPong",
        "",
        "call",
        "Lokhttp3/Call;",
        "enqueuedClose",
        "failed",
        "key",
        "",
        "getListener$okhttp",
        "()Lokhttp3/WebSocketListener;",
        "messageAndCloseQueue",
        "Ljava/util/ArrayDeque;",
        "",
        "name",
        "pongQueue",
        "Lokio/ByteString;",
        "queueSize",
        "reader",
        "Lokhttp3/internal/ws/WebSocketReader;",
        "receivedCloseCode",
        "",
        "receivedCloseReason",
        "receivedPingCount",
        "receivedPongCount",
        "sentPingCount",
        "streams",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "taskQueue",
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "writer",
        "Lokhttp3/internal/ws/WebSocketWriter;",
        "writerTask",
        "Lokhttp3/internal/concurrent/Task;",
        "awaitTermination",
        "",
        "timeout",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "cancel",
        "checkUpgradeSuccess",
        "response",
        "Lokhttp3/Response;",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "checkUpgradeSuccess$okhttp",
        "close",
        "code",
        "reason",
        "cancelAfterCloseMillis",
        "connect",
        "client",
        "Lokhttp3/OkHttpClient;",
        "failWebSocket",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "initReaderAndWriter",
        "loopReader",
        "onReadClose",
        "onReadMessage",
        "text",
        "bytes",
        "onReadPing",
        "payload",
        "onReadPong",
        "pong",
        "processNextFrame",
        "request",
        "runWriter",
        "send",
        "data",
        "formatOpcode",
        "tearDown",
        "writeOneFrame",
        "writeOneFrame$okhttp",
        "writePingFrame",
        "writePingFrame$okhttp",
        "isValid",
        "Close",
        "Companion",
        "Message",
        "Streams",
        "WriterTask",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field public static final Companion:Lokhttp3/internal/ws/RealWebSocket$Companion;

.field public static final DEFAULT_MINIMUM_DEFLATE_SIZE:J = 0x400L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private awaitingPong:Z

.field private call:Lokhttp3/Call;

.field private enqueuedClose:Z

.field private extensions:Lokhttp3/internal/ws/WebSocketExtensions;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field private final listener:Lokhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private minimumDeflateSize:J

.field private name:Ljava/lang/String;

.field private final originalRequest:Lokhttp3/Request;

.field private final pingIntervalMillis:J

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lokhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private receivedPingCount:I

.field private receivedPongCount:I

.field private sentPingCount:I

.field private streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

.field private taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

.field private writer:Lokhttp3/internal/ws/WebSocketWriter;

.field private writerTask:Lokhttp3/internal/concurrent/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/ws/RealWebSocket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/ws/RealWebSocket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->Companion:Lokhttp3/internal/ws/RealWebSocket$Companion;

    .line 629
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;JLokhttp3/internal/ws/WebSocketExtensions;J)V
    .locals 17
    .param p1, "taskRunner"    # Lokhttp3/internal/concurrent/TaskRunner;
    .param p2, "originalRequest"    # Lokhttp3/Request;
    .param p3, "listener"    # Lokhttp3/WebSocketListener;
    .param p4, "random"    # Ljava/util/Random;
    .param p5, "pingIntervalMillis"    # J
    .param p7, "extensions"    # Lokhttp3/internal/ws/WebSocketExtensions;
    .param p8, "minimumDeflateSize"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string/jumbo v4, "taskRunner"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "originalRequest"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "listener"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "random"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    iput-object v2, v0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    iput-object v3, v0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    move-wide/from16 v6, p5

    iput-wide v6, v0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    move-object/from16 v4, p7

    iput-object v4, v0, Lokhttp3/internal/ws/RealWebSocket;->extensions:Lokhttp3/internal/ws/WebSocketExtensions;

    move-wide/from16 v8, p8

    iput-wide v8, v0, Lokhttp3/internal/ws/RealWebSocket;->minimumDeflateSize:J

    .line 85
    invoke-virtual/range {p1 .. p1}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v10

    iput-object v10, v0, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 98
    new-instance v10, Ljava/util/ArrayDeque;

    invoke-direct {v10}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v10, v0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 101
    new-instance v10, Ljava/util/ArrayDeque;

    invoke-direct {v10}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v10, v0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    .line 110
    const/4 v10, -0x1

    iput v10, v0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 130
    nop

    .line 131
    iget-object v10, v0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v10}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    const-string v11, "GET"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 135
    sget-object v11, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const/16 v10, 0x10

    new-array v12, v10, [B

    .line 659
    move-object v10, v12

    .local v10, "$this$apply":[B
    const/4 v13, 0x0

    .line 135
    .local v13, "$i$a$-apply-RealWebSocket$2":I
    iget-object v14, v0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-virtual {v14, v10}, Ljava/util/Random;->nextBytes([B)V

    .end local v10    # "$this$apply":[B
    .end local v13    # "$i$a$-apply-RealWebSocket$2":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v10

    invoke-virtual {v10}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 136
    return-void

    .line 131
    :cond_0
    const/4 v10, 0x0

    .line 132
    .local v10, "$i$a$-require-RealWebSocket$1":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request must be GET: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v12}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 131
    .end local v10    # "$i$a$-require-RealWebSocket$1":I
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Throwable;

    throw v11
.end method

.method public static final synthetic access$getExtensions$p(Lokhttp3/internal/ws/RealWebSocket;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/ws/RealWebSocket;

    .line 53
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->extensions:Lokhttp3/internal/ws/WebSocketExtensions;

    return-object v0
.end method

.method public static final synthetic access$getMessageAndCloseQueue$p(Lokhttp3/internal/ws/RealWebSocket;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/ws/RealWebSocket;

    .line 53
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public static final synthetic access$getName$p(Lokhttp3/internal/ws/RealWebSocket;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/ws/RealWebSocket;

    .line 53
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isValid(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketExtensions;)Z
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/ws/RealWebSocket;
    .param p1, "$this$access_u24isValid"    # Lokhttp3/internal/ws/WebSocketExtensions;

    .line 53
    invoke-direct {p0, p1}, Lokhttp3/internal/ws/RealWebSocket;->isValid(Lokhttp3/internal/ws/WebSocketExtensions;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setExtensions$p(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketExtensions;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/ws/RealWebSocket;
    .param p1, "<set-?>"    # Lokhttp3/internal/ws/WebSocketExtensions;

    .line 53
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->extensions:Lokhttp3/internal/ws/WebSocketExtensions;

    return-void
.end method

.method public static final synthetic access$setName$p(Lokhttp3/internal/ws/RealWebSocket;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/ws/RealWebSocket;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->name:Ljava/lang/String;

    return-void
.end method

.method private final isValid(Lokhttp3/internal/ws/WebSocketExtensions;)Z
    .locals 3
    .param p1, "$this$isValid"    # Lokhttp3/internal/ws/WebSocketExtensions;

    .line 209
    iget-boolean v0, p1, Lokhttp3/internal/ws/WebSocketExtensions;->unknownValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 212
    :cond_0
    iget-object v0, p1, Lokhttp3/internal/ws/WebSocketExtensions;->clientMaxWindowBits:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    return v1

    .line 215
    :cond_1
    iget-object v0, p1, Lokhttp3/internal/ws/WebSocketExtensions;->serverMaxWindowBits:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lokhttp3/internal/ws/WebSocketExtensions;->serverMaxWindowBits:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    if-gt v2, v0, :cond_2

    const/16 v2, 0xf

    if-ge v2, v0, :cond_3

    :cond_2
    return v1

    .line 218
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private final runWriter()V
    .locals 9

    .line 457
    move-object v0, p0

    .local v0, "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 660
    .local v1, "$i$f$assertThreadHoldsLock":I
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MUST hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 663
    :cond_1
    :goto_0
    nop

    .line 459
    .end local v0    # "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadHoldsLock":I
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writerTask:Lokhttp3/internal/concurrent/Task;

    .line 460
    .local v0, "writerTask":Lokhttp3/internal/concurrent/Task;
    if-eqz v0, :cond_2

    .line 461
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V

    .line 463
    :cond_2
    return-void
.end method

.method private final declared-synchronized send(Lokio/ByteString;I)Z
    .locals 6
    .param p1, "data"    # Lokio/ByteString;
    .param p2, "formatOpcode"    # I

    monitor-enter p0

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    iget-wide v2, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 406
    const/16 v0, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return v1

    .line 411
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 412
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lokhttp3/internal/ws/RealWebSocket$Message;-><init>(ILokio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 402
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 401
    .end local p1    # "data":Lokio/ByteString;
    .end local p2    # "formatOpcode":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string/jumbo v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->idleLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 316
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 143
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 144
    return-void
.end method

.method public final checkUpgradeSuccess$okhttp(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)V
    .locals 8
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "exchange"    # Lokhttp3/internal/connection/Exchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x65

    const/16 v2, 0x27

    if-ne v0, v1, :cond_4

    .line 228
    const-string v0, "Connection"

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v3, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "headerConnection":Ljava/lang/String;
    const-string v4, "Upgrade"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    invoke-static {p1, v4, v1, v3, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "headerUpgrade":Ljava/lang/String;
    const-string/jumbo v6, "websocket"

    invoke-static {v6, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    const-string v5, "Sec-WebSocket-Accept"

    invoke-static {p1, v5, v1, v3, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "headerAccept":Ljava/lang/String;
    sget-object v3, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "acceptExpected":Ljava/lang/String;
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    if-eqz p2, :cond_0

    .line 250
    return-void

    .line 248
    :cond_0
    new-instance v2, Ljava/net/ProtocolException;

    const-string v5, "Web Socket exchange missing: bad interceptor?"

    invoke-direct {v2, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 243
    :cond_1
    new-instance v5, Ljava/net/ProtocolException;

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' but was \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-direct {v5, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 236
    .end local v1    # "headerAccept":Ljava/lang/String;
    .end local v3    # "acceptExpected":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 230
    .end local v4    # "headerUpgrade":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 224
    .end local v0    # "headerConnection":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 427
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized close(ILjava/lang/String;J)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cancelAfterCloseMillis"    # J

    monitor-enter p0

    .line 435
    :try_start_0
    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-virtual {v0, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 437
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lokio/ByteString;

    .line 438
    .local v0, "reasonBytes":Lokio/ByteString;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 439
    sget-object v3, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v3, p2}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    move-object v0, v3

    .line 440
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x7b

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 441
    .local v1, "$i$a$-require-RealWebSocket$close$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reason.size() > 123: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .end local v1    # "$i$a$-require-RealWebSocket$close$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 445
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v3, :cond_3

    goto :goto_2

    .line 448
    :cond_3
    iput-boolean v2, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 451
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v3, Lokhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v3, p1, v0, p3, p4}, Lokhttp3/internal/ws/RealWebSocket$Close;-><init>(ILokio/ByteString;J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return v2

    .line 445
    :cond_4
    :goto_2
    monitor-exit p0

    return v1

    .line 434
    .end local v0    # "reasonBytes":Lokio/ByteString;
    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "cancelAfterCloseMillis":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final connect(Lokhttp3/OkHttpClient;)V
    .locals 5
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    const-string v1, "Sec-WebSocket-Extensions"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/net/ProtocolException;

    .line 149
    nop

    .line 148
    const-string v1, "Request header not permitted: \'Sec-WebSocket-Extensions\'"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 149
    nop

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 150
    return-void

    .line 153
    :cond_0
    nop

    .line 156
    nop

    .line 153
    nop

    .line 155
    nop

    .line 153
    nop

    .line 154
    nop

    .line 153
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 154
    sget-object v2, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 155
    sget-object v2, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 153
    nop

    .line 157
    .local v0, "webSocketClient":Lokhttp3/OkHttpClient;
    nop

    .line 163
    nop

    .line 157
    nop

    .line 162
    nop

    .line 157
    nop

    .line 161
    nop

    .line 157
    nop

    .line 160
    nop

    .line 157
    nop

    .line 159
    nop

    .line 157
    nop

    .line 158
    nop

    .line 157
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 158
    const-string/jumbo v3, "websocket"

    const-string v4, "Upgrade"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 159
    const-string v3, "Connection"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 160
    const-string v3, "Sec-WebSocket-Key"

    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 161
    const-string v3, "Sec-WebSocket-Version"

    const-string v4, "13"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 162
    const-string/jumbo v3, "permessage-deflate"

    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 157
    nop

    .line 164
    .local v1, "request":Lokhttp3/Request;
    new-instance v2, Lokhttp3/internal/connection/RealCall;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    check-cast v2, Lokhttp3/Call;

    iput-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    .line 165
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lokhttp3/internal/ws/RealWebSocket$connect$1;

    invoke-direct {v3, p0, v1}, Lokhttp3/internal/ws/RealWebSocket$connect$1;-><init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;)V

    check-cast v3, Lokhttp3/Callback;

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 205
    return-void
.end method

.method public final failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "response"    # Lokhttp3/Response;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "streamsToClose":Lokhttp3/internal/ws/RealWebSocket$Streams;
    const/4 v1, 0x0

    .line 578
    .local v1, "readerToClose":Lokhttp3/internal/ws/WebSocketReader;
    const/4 v2, 0x0

    .line 579
    .local v2, "writerToClose":Lokhttp3/internal/ws/WebSocketWriter;
    monitor-enter p0

    const/4 v3, 0x0

    .line 580
    .local v3, "$i$a$-synchronized-RealWebSocket$failWebSocket$1":I
    :try_start_0
    iget-boolean v4, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .end local v3    # "$i$a$-synchronized-RealWebSocket$failWebSocket$1":I
    monitor-exit p0

    return-void

    .line 581
    .restart local v3    # "$i$a$-synchronized-RealWebSocket$failWebSocket$1":I
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    .line 582
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    move-object v0, v4

    .line 583
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lokhttp3/internal/ws/RealWebSocket$Streams;

    iput-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 584
    iget-object v5, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    move-object v1, v5

    .line 585
    move-object v5, v4

    check-cast v5, Lokhttp3/internal/ws/WebSocketReader;

    iput-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    .line 586
    iget-object v5, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v2, v5

    .line 587
    move-object v5, v4

    check-cast v5, Lokhttp3/internal/ws/WebSocketWriter;

    iput-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 588
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v4}, Lokhttp3/internal/concurrent/TaskQueue;->shutdown()V

    .line 589
    .end local v3    # "$i$a$-synchronized-RealWebSocket$failWebSocket$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 579
    monitor-exit p0

    .line 591
    nop

    .line 592
    :try_start_2
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v4, p0

    check-cast v4, Lokhttp3/WebSocket;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, p2}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 595
    :cond_1
    if-eqz v1, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 596
    :cond_2
    if-eqz v2, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 597
    :cond_3
    nop

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v3

    .line 594
    if-eqz v0, :cond_4

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 595
    :cond_4
    if-eqz v1, :cond_5

    move-object v4, v1

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 596
    :cond_5
    if-eqz v2, :cond_6

    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    throw v3

    .line 579
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final getListener$okhttp()Lokhttp3/WebSocketListener;
    .locals 1

    .line 57
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    return-object v0
.end method

.method public final initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "streams"    # Lokhttp3/internal/ws/RealWebSocket$Streams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const-string v0, "name"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streams"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v0, v10, Lokhttp3/internal/ws/RealWebSocket;->extensions:Lokhttp3/internal/ws/WebSocketExtensions;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    .line 255
    .local v13, "extensions":Lokhttp3/internal/ws/WebSocketExtensions;
    monitor-enter p0

    const/4 v0, 0x0

    .line 256
    .local v0, "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    :try_start_0
    iput-object v11, v10, Lokhttp3/internal/ws/RealWebSocket;->name:Ljava/lang/String;

    .line 257
    iput-object v12, v10, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 258
    new-instance v9, Lokhttp3/internal/ws/WebSocketWriter;

    .line 259
    invoke-virtual/range {p2 .. p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getClient()Z

    move-result v2

    .line 260
    invoke-virtual/range {p2 .. p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getSink()Lokio/BufferedSink;

    move-result-object v3

    .line 261
    iget-object v4, v10, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    .line 262
    iget-boolean v5, v13, Lokhttp3/internal/ws/WebSocketExtensions;->perMessageDeflate:Z

    .line 263
    invoke-virtual/range {p2 .. p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getClient()Z

    move-result v1

    invoke-virtual {v13, v1}, Lokhttp3/internal/ws/WebSocketExtensions;->noContextTakeover(Z)Z

    move-result v6

    .line 264
    iget-wide v7, v10, Lokhttp3/internal/ws/RealWebSocket;->minimumDeflateSize:J

    .line 258
    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/ws/WebSocketWriter;-><init>(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V

    iput-object v9, v10, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 266
    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$WriterTask;

    invoke-direct {v1, v10}, Lokhttp3/internal/ws/RealWebSocket$WriterTask;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V

    check-cast v1, Lokhttp3/internal/concurrent/Task;

    iput-object v1, v10, Lokhttp3/internal/ws/RealWebSocket;->writerTask:Lokhttp3/internal/concurrent/Task;

    .line 267
    iget-wide v1, v10, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v10, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    move-wide v14, v1

    .line 269
    .local v14, "pingIntervalNanos":J
    iget-object v1, v10, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "name$iv":Ljava/lang/String;
    move-object v9, v1

    .local v9, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    const/16 v16, 0x0

    .line 655
    .local v16, "$i$f$schedule":I
    new-instance v17, Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$$inlined$synchronized$lambda$1;

    move-object/from16 v1, v17

    move-object v3, v2

    move-wide v4, v14

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v18, v0

    move-object v0, v9

    .end local v9    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .local v0, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .local v18, "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$$inlined$synchronized$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;JLokhttp3/internal/ws/RealWebSocket;Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;Lokhttp3/internal/ws/WebSocketExtensions;)V

    move-object/from16 v1, v17

    check-cast v1, Lokhttp3/internal/concurrent/Task;

    .line 657
    nop

    .line 655
    invoke-virtual {v0, v1, v14, v15}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 658
    goto :goto_0

    .line 267
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v14    # "pingIntervalNanos":J
    .end local v16    # "$i$f$schedule":I
    .end local v18    # "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    .local v0, "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    :cond_0
    move/from16 v18, v0

    .line 274
    .end local v0    # "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    .restart local v18    # "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    :goto_0
    iget-object v0, v10, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 277
    .end local v18    # "$i$a$-synchronized-RealWebSocket$initReaderAndWriter$1":I
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    .line 279
    new-instance v0, Lokhttp3/internal/ws/WebSocketReader;

    .line 280
    invoke-virtual/range {p2 .. p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getClient()Z

    move-result v2

    .line 281
    invoke-virtual/range {p2 .. p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getSource()Lokio/BufferedSource;

    move-result-object v3

    .line 282
    move-object v4, v10

    check-cast v4, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 283
    iget-boolean v5, v13, Lokhttp3/internal/ws/WebSocketExtensions;->perMessageDeflate:Z

    .line 284
    invoke-virtual/range {p2 .. p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;->getClient()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v13, v1}, Lokhttp3/internal/ws/WebSocketExtensions;->noContextTakeover(Z)Z

    move-result v6

    .line 279
    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V

    iput-object v0, v10, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    .line 286
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loopReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    :goto_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    const-string/jumbo v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_b

    .line 359
    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 360
    .local v4, "toClose":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Lokhttp3/internal/ws/WebSocketReader;

    .line 361
    .local v5, "readerToClose":Ljava/lang/Object;
    move-object v6, v3

    check-cast v6, Lokhttp3/internal/ws/WebSocketWriter;

    .line 362
    .local v6, "writerToClose":Ljava/lang/Object;
    monitor-enter p0

    const/4 v7, 0x0

    .line 363
    .local v7, "$i$a$-synchronized-RealWebSocket$onReadClose$1":I
    :try_start_0
    iget v8, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-ne v8, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_a

    .line 364
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 365
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 366
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    move-object v4, v0

    .line 368
    move-object v0, v3

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Streams;

    iput-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 369
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    move-object v5, v0

    .line 370
    move-object v0, v3

    check-cast v0, Lokhttp3/internal/ws/WebSocketReader;

    iput-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    .line 371
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    move-object v6, v0

    .line 372
    move-object v0, v3

    check-cast v0, Lokhttp3/internal/ws/WebSocketWriter;

    iput-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 373
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->shutdown()V

    .line 375
    .end local v7    # "$i$a$-synchronized-RealWebSocket$onReadClose$1":I
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    monitor-exit p0

    .line 377
    nop

    .line 378
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v1, p0

    check-cast v1, Lokhttp3/WebSocket;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 380
    if-eqz v4, :cond_3

    .line 381
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v1, p0

    check-cast v1, Lokhttp3/WebSocket;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :cond_3
    if-eqz v4, :cond_4

    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 385
    :cond_4
    if-eqz v5, :cond_5

    move-object v0, v5

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 386
    :cond_5
    if-eqz v6, :cond_6

    move-object v0, v6

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    :cond_6
    nop

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    .line 384
    if-eqz v4, :cond_7

    move-object v1, v4

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 385
    :cond_7
    if-eqz v5, :cond_8

    move-object v1, v5

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 386
    :cond_8
    if-eqz v6, :cond_9

    move-object v1, v6

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_9
    throw v0

    .line 659
    .restart local v7    # "$i$a$-synchronized-RealWebSocket$onReadClose$1":I
    :cond_a
    const/4 v0, 0x0

    .line 363
    .local v0, "$i$a$-check-RealWebSocket$onReadClose$1$1":I
    :try_start_2
    const-string v1, "already closed"

    .end local v0    # "$i$a$-check-RealWebSocket$onReadClose$1$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v4    # "toClose":Ljava/lang/Object;
    .end local v5    # "readerToClose":Ljava/lang/Object;
    .end local v6    # "writerToClose":Ljava/lang/Object;
    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 362
    .end local v7    # "$i$a$-synchronized-RealWebSocket$onReadClose$1":I
    .restart local v4    # "toClose":Ljava/lang/Object;
    .restart local v5    # "readerToClose":Ljava/lang/Object;
    .restart local v6    # "writerToClose":Ljava/lang/Object;
    .restart local p1    # "code":I
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    .end local v4    # "toClose":Ljava/lang/Object;
    .end local v5    # "readerToClose":Ljava/lang/Object;
    .end local v6    # "writerToClose":Ljava/lang/Object;
    :cond_b
    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v1, p0

    check-cast v1, Lokhttp3/WebSocket;

    invoke-virtual {v0, v1, p1}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onReadMessage(Lokio/ByteString;)V
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v1, p0

    check-cast v1, Lokhttp3/WebSocket;

    invoke-virtual {v0, v1, p1}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    .line 339
    return-void
.end method

.method public declared-synchronized onReadPing(Lokio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 345
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 347
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 343
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    .end local p1    # "payload":Lokio/ByteString;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lokio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 351
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    .end local p1    # "payload":Lokio/ByteString;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized pong(Lokio/ByteString;)Z
    .locals 1
    .param p1, "payload"    # Lokio/ByteString;

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 421
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0}, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 419
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 418
    .end local p1    # "payload":Lokio/ByteString;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final processNextFrame()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    nop

    .line 304
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 305
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 308
    nop

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 140
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized receivedPingCount()I
    .locals 1

    monitor-enter p0

    .line 327
    :try_start_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 327
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized receivedPongCount()I
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 329
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .line 138
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v0

    return v0
.end method

.method public send(Lokio/ByteString;)Z
    .locals 1
    .param p1, "bytes"    # Lokio/ByteString;

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized sentPingCount()I
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 325
    .end local p0    # "this":Lokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final tearDown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->shutdown()V

    .line 322
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->idleLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 323
    return-void
.end method

.method public final writeOneFrame$okhttp()Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    move-object/from16 v15, p0

    const/4 v1, 0x0

    .line 481
    .local v1, "writer":Lokhttp3/internal/ws/WebSocketWriter;
    const/4 v2, 0x0

    .line 482
    .local v2, "pong":Lokio/ByteString;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v14, v0

    .line 483
    .local v14, "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v13, v0

    .line 484
    .local v13, "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v0

    .line 485
    .local v12, "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v5, v3

    check-cast v5, Lokhttp3/internal/ws/RealWebSocket$Streams;

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v11, v0

    .line 486
    .local v11, "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v5, v3

    check-cast v5, Lokhttp3/internal/ws/WebSocketReader;

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v0

    .line 487
    .local v10, "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v5, v3

    check-cast v5, Lokhttp3/internal/ws/WebSocketWriter;

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v0

    .line 489
    .local v9, "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    monitor-enter p0

    const/4 v0, 0x0

    .line 490
    .local v0, "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    :try_start_0
    iget-boolean v5, v15, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 491
    nop

    .end local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    monitor-exit p0

    return v6

    .line 494
    .restart local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    :cond_0
    :try_start_1
    iget-object v5, v15, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    move-object v8, v5

    .line 495
    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .local v8, "writer":Lokhttp3/internal/ws/WebSocketWriter;
    :try_start_2
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    move-object v7, v1

    .line 496
    .end local v2    # "pong":Lokio/ByteString;
    .local v7, "pong":Lokio/ByteString;
    if-nez v7, :cond_4

    .line 497
    :try_start_3
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 498
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v1, v1, Lokhttp3/internal/ws/RealWebSocket$Close;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_3

    .line 499
    :try_start_4
    iget v1, v15, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    iput v1, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 500
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    iput-object v1, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 501
    iget v1, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v1, v4, :cond_1

    .line 502
    :try_start_5
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 503
    move-object v1, v3

    check-cast v1, Lokhttp3/internal/ws/RealWebSocket$Streams;

    iput-object v3, v15, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

    .line 504
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 505
    move-object v1, v3

    check-cast v1, Lokhttp3/internal/ws/WebSocketReader;

    iput-object v3, v15, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;

    .line 506
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    iput-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 507
    move-object v1, v3

    check-cast v1, Lokhttp3/internal/ws/WebSocketWriter;

    iput-object v3, v15, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    .line 508
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskQueue;->shutdown()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v19, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object v3, v14

    goto/16 :goto_0

    .line 489
    .end local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    :catchall_0
    move-exception v0

    move-object v2, v7

    move-object v1, v8

    move-object v6, v9

    move-object v5, v10

    move-object v4, v11

    move-object v9, v12

    move-object v7, v13

    move-object v3, v14

    goto/16 :goto_3

    .line 511
    .restart local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    :cond_1
    :try_start_6
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Lokhttp3/internal/ws/RealWebSocket$Close;

    invoke-virtual {v1}, Lokhttp3/internal/ws/RealWebSocket$Close;->getCancelAfterCloseMillis()J

    move-result-wide v1

    move-wide v5, v1

    .line 512
    .local v5, "cancelAfterCloseMillis":J
    iget-object v1, v15, Lokhttp3/internal/ws/RealWebSocket;->taskQueue:Lokhttp3/internal/concurrent/TaskQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lokhttp3/internal/ws/RealWebSocket;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cancel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 664
    .local v1, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .local v2, "name$iv":Ljava/lang/String;
    .local v3, "delayNanos$iv":J
    const/16 v16, 0x1

    .local v16, "cancelable$iv":Z
    const/16 v17, 0x0

    .line 667
    .local v17, "$i$f$execute":I
    new-instance v18, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v19, v0

    move-object v0, v1

    .end local v1    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .local v0, "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .local v19, "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    move-object/from16 v1, v18

    move-wide/from16 v20, v3

    .end local v3    # "delayNanos$iv":J
    .local v20, "delayNanos$iv":J
    move/from16 v3, v16

    move-object v4, v2

    move-wide/from16 v22, v5

    .end local v5    # "cancelAfterCloseMillis":J
    .local v22, "cancelAfterCloseMillis":J
    move/from16 v5, v16

    move-object/from16 v6, p0

    move-object/from16 v24, v7

    .end local v7    # "pong":Lokio/ByteString;
    .local v24, "pong":Lokio/ByteString;
    move-object v7, v8

    move-object/from16 v25, v8

    .end local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .local v25, "writer":Lokhttp3/internal/ws/WebSocketWriter;
    move-object/from16 v8, v24

    move-object/from16 v26, v9

    .end local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v26, "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v9, v14

    move-object/from16 v27, v10

    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v27, "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v10, v13

    move-object/from16 v28, v11

    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v28, "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v11, v12

    move-object/from16 v29, v12

    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v29, "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v12, v28

    move-object/from16 v30, v13

    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .local v30, "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v13, v27

    move-object/from16 v31, v14

    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v31, "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v14, v26

    :try_start_7
    invoke-direct/range {v1 .. v14}, Lokhttp3/internal/ws/RealWebSocket$writeOneFrame$$inlined$synchronized$lambda$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketWriter;Lokio/ByteString;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v1, v18

    check-cast v1, Lokhttp3/internal/concurrent/Task;

    .line 672
    nop

    .line 667
    move-wide/from16 v3, v20

    .end local v20    # "delayNanos$iv":J
    .restart local v3    # "delayNanos$iv":J
    invoke-virtual {v0, v1, v3, v4}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 673
    nop

    .line 515
    .end local v0    # "this_$iv":Lokhttp3/internal/concurrent/TaskQueue;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "delayNanos$iv":J
    .end local v16    # "cancelable$iv":Z
    .end local v17    # "$i$f$execute":I
    .end local v22    # "cancelAfterCloseMillis":J
    move-object/from16 v3, v31

    goto/16 :goto_0

    .line 511
    .end local v19    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .restart local v7    # "pong":Lokio/ByteString;
    .restart local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_2
    move/from16 v19, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .end local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .end local v7    # "pong":Lokio/ByteString;
    .end local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v19    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type okhttp3.internal.ws.RealWebSocket.Close"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 489
    .end local v19    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v3, v31

    goto/16 :goto_3

    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "pong":Lokio/ByteString;
    .restart local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_2
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v3, v31

    .end local v7    # "pong":Lokio/ByteString;
    .end local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto/16 :goto_3

    .line 516
    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .restart local v7    # "pong":Lokio/ByteString;
    .restart local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_3
    move/from16 v19, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .end local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .end local v7    # "pong":Lokio/ByteString;
    .end local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v19    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v3, v31

    .end local v31    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_8
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v0, :cond_5

    .line 517
    nop

    .end local v19    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    monitor-exit p0

    return v6

    .line 489
    :catchall_3
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    goto/16 :goto_3

    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v7    # "pong":Lokio/ByteString;
    .restart local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_4
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object v3, v14

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .end local v7    # "pong":Lokio/ByteString;
    .end local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    goto/16 :goto_3

    .line 496
    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .restart local v7    # "pong":Lokio/ByteString;
    .restart local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_4
    move/from16 v19, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object v3, v14

    .line 518
    .end local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .end local v7    # "pong":Lokio/ByteString;
    .end local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v9    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v19    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_5
    :goto_0
    nop

    .line 520
    nop

    .end local v19    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$1":I
    :try_start_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    .line 489
    monitor-exit p0

    .line 522
    nop

    .line 523
    if-eqz v24, :cond_6

    .line 524
    :try_start_a
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .local v1, "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .local v2, "pong":Lokio/ByteString;
    :try_start_b
    invoke-virtual {v1, v2}, Lokhttp3/internal/ws/WebSocketWriter;->writePong(Lokio/ByteString;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    goto/16 :goto_1

    .line 548
    :catchall_5
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    goto/16 :goto_2

    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v2    # "pong":Lokio/ByteString;
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    :catchall_6
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v2    # "pong":Lokio/ByteString;
    goto/16 :goto_2

    .line 525
    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v2    # "pong":Lokio/ByteString;
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    :cond_6
    move-object/from16 v2, v24

    move-object/from16 v1, v25

    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v2    # "pong":Lokio/ByteString;
    :try_start_c
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v0, v0, Lokhttp3/internal/ws/RealWebSocket$Message;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    if-eqz v0, :cond_8

    .line 526
    :try_start_d
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_7

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Message;

    move-object v4, v0

    .line 527
    .local v4, "message":Lokhttp3/internal/ws/RealWebSocket$Message;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lokhttp3/internal/ws/RealWebSocket$Message;->getFormatOpcode()I

    move-result v0

    invoke-virtual {v4}, Lokhttp3/internal/ws/RealWebSocket$Message;->getData()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(ILokio/ByteString;)V

    .line 528
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/4 v0, 0x0

    .line 529
    .local v0, "$i$a$-synchronized-RealWebSocket$writeOneFrame$2":I
    :try_start_e
    iget-wide v5, v15, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v4}, Lokhttp3/internal/ws/RealWebSocket$Message;->getData()Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, v15, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 530
    .end local v0    # "$i$a$-synchronized-RealWebSocket$writeOneFrame$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 528
    :try_start_f
    monitor-exit p0

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    goto :goto_1

    :catchall_7
    move-exception v0

    monitor-exit p0

    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v2    # "pong":Lokio/ByteString;
    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    throw v0

    .line 526
    .end local v4    # "message":Lokhttp3/internal/ws/RealWebSocket$Message;
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v2    # "pong":Lokio/ByteString;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type okhttp3.internal.ws.RealWebSocket.Message"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v2    # "pong":Lokio/ByteString;
    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 531
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v2    # "pong":Lokio/ByteString;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_8
    :try_start_10
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v0, v0, Lokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v0, :cond_e

    .line 532
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_d

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Close;

    .line 533
    .local v0, "close":Lokhttp3/internal/ws/RealWebSocket$Close;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/internal/ws/RealWebSocket$Close;->getCode()I

    move-result v4

    invoke-virtual {v0}, Lokhttp3/internal/ws/RealWebSocket$Close;->getReason()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lokhttp3/internal/ws/WebSocketWriter;->writeClose(ILokio/ByteString;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 536
    move-object/from16 v4, v28

    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_11
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lokhttp3/internal/ws/RealWebSocket$Streams;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    if-eqz v5, :cond_9

    .line 537
    :try_start_12
    iget-object v5, v15, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;

    move-object v6, v15

    check-cast v6, Lokhttp3/WebSocket;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-object/from16 v7, v30

    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .local v7, "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :try_start_13
    iget v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    move-object/from16 v9, v29

    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v9, "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_14
    iget-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v8, v10}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .end local v0    # "close":Lokhttp3/internal/ws/RealWebSocket$Close;
    goto :goto_1

    .line 548
    :catchall_8
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    goto/16 :goto_2

    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_9
    move-exception v0

    move-object/from16 v9, v29

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto/16 :goto_2

    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_a
    move-exception v0

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto/16 :goto_2

    .line 536
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v0    # "close":Lokhttp3/internal/ws/RealWebSocket$Close;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_9
    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .line 541
    .end local v0    # "close":Lokhttp3/internal/ws/RealWebSocket$Close;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    nop

    .line 543
    nop

    .line 545
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/ws/RealWebSocket$Streams;

    if-eqz v0, :cond_a

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 546
    :cond_a
    move-object/from16 v5, v27

    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v5, "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/ws/WebSocketReader;

    if-eqz v0, :cond_b

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 547
    :cond_b
    move-object/from16 v6, v26

    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v6, "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/ws/WebSocketWriter;

    if-eqz v0, :cond_c

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 543
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 548
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_b
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto :goto_2

    .line 532
    .end local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_d
    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type okhttp3.internal.ws.RealWebSocket.Close"

    invoke-direct {v0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v2    # "pong":Lokio/ByteString;
    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    throw v0

    .line 540
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v2    # "pong":Lokio/ByteString;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_e
    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v2    # "pong":Lokio/ByteString;
    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 548
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v2    # "pong":Lokio/ByteString;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_c
    move-exception v0

    goto :goto_2

    .end local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_d
    move-exception v0

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .line 545
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_2
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lokhttp3/internal/ws/RealWebSocket$Streams;

    if-eqz v8, :cond_f

    check-cast v8, Ljava/io/Closeable;

    invoke-static {v8}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 546
    :cond_f
    iget-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lokhttp3/internal/ws/WebSocketReader;

    if-eqz v8, :cond_10

    check-cast v8, Ljava/io/Closeable;

    invoke-static {v8}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 547
    :cond_10
    iget-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lokhttp3/internal/ws/WebSocketWriter;

    if-eqz v8, :cond_11

    check-cast v8, Ljava/io/Closeable;

    invoke-static {v8}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_11
    throw v0

    .line 489
    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v2    # "pong":Lokio/ByteString;
    .end local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "pong":Lokio/ByteString;
    .restart local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_e
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    .end local v24    # "pong":Lokio/ByteString;
    .end local v25    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v26    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v27    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v28    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v30    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v2    # "pong":Lokio/ByteString;
    .restart local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto :goto_3

    .end local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .local v9, "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_f
    move-exception v0

    move-object v1, v8

    move-object v6, v9

    move-object v5, v10

    move-object v4, v11

    move-object v9, v12

    move-object v7, v13

    move-object v3, v14

    .end local v8    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v1    # "writer":Lokhttp3/internal/ws/WebSocketWriter;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .local v9, "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto :goto_3

    .end local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .local v9, "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_10
    move-exception v0

    move-object v6, v9

    move-object v5, v10

    move-object v4, v11

    move-object v9, v12

    move-object v7, v13

    move-object v3, v14

    .end local v10    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v3    # "messageOrClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "streamsToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "readerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "writerToClose":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "receivedCloseCode":Lkotlin/jvm/internal/Ref$IntRef;
    .local v9, "receivedCloseReason":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public final writePingFrame$okhttp()V
    .locals 7

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "writer":Lokhttp3/internal/ws/WebSocketWriter;
    const/4 v1, 0x0

    .line 554
    .local v1, "failedPing":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 555
    .local v2, "$i$a$-synchronized-RealWebSocket$writePingFrame$1":I
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .end local v2    # "$i$a$-synchronized-RealWebSocket$writePingFrame$1":I
    monitor-exit p0

    return-void

    .line 556
    .restart local v2    # "$i$a$-synchronized-RealWebSocket$writePingFrame$1":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;

    if-eqz v3, :cond_3

    move-object v0, v3

    .line 557
    iget-boolean v3, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    iget v3, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    move v1, v3

    .line 558
    iget v3, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    .line 559
    iput-boolean v5, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    .line 560
    .end local v2    # "$i$a$-synchronized-RealWebSocket$writePingFrame$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    monitor-exit p0

    .line 562
    const/4 v2, 0x0

    if-eq v1, v4, :cond_2

    .line 563
    new-instance v3, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 564
    iget-wide v5, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms (after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " successful ping/pongs)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Exception;

    .line 564
    nop

    .line 563
    invoke-virtual {p0, v3, v2}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 565
    return-void

    .line 568
    :cond_2
    nop

    .line 569
    :try_start_2
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0, v3}, Lokhttp3/internal/ws/WebSocketWriter;->writePing(Lokio/ByteString;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 570
    :catch_0
    move-exception v3

    .line 571
    .local v3, "e":Ljava/io/IOException;
    move-object v4, v3

    check-cast v4, Ljava/lang/Exception;

    invoke-virtual {p0, v4, v2}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V

    .line 572
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 573
    return-void

    .line 556
    :cond_3
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.class Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;
.super Ljava/io/InputStream;
.source "SSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInputStream"
.end annotation


# instance fields
.field private volatile appDataIsAvailable:Z

.field private buffer:Ljava/nio/ByteBuffer;

.field private volatile hasDepleted:Z

.field private volatile isClosing:Z

.field private final oneByte:[B

.field private final readLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 878
    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->oneByte:[B

    .line 887
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 894
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->appDataIsAvailable:Z

    .line 895
    const/16 p1, 0x1000

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 896
    return-void
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 876
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->deplete()V

    return-void
.end method

.method private checkEOF()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    const-string v1, "Connection has closed: "

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 1103
    return v2

    .line 1105
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1109
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1110
    return v2

    .line 1111
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    if-eqz v0, :cond_4

    .line 1112
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    if-nez v0, :cond_3

    .line 1113
    return v2

    .line 1115
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1121
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private deplete()V
    .locals 2

    .line 1129
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    .line 1134
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLockedDeplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1139
    goto :goto_0

    .line 1138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1139
    throw v0

    .line 1141
    :cond_1
    :goto_0
    return-void

    .line 1130
    :cond_2
    :goto_1
    return-void
.end method

.method private readLockedDeplete()V
    .locals 5

    .line 1151
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->hasDepleted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1155
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    instance-of v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    if-nez v0, :cond_1

    .line 1156
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    .line 1162
    .local v0, "socketInputRecord":Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    .line 1163
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->getSoTimeout()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1162
    :goto_0
    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->deplete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1170
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1164
    :catch_0
    move-exception v2

    .line 1165
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_3

    const-string v3, "ssl"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1166
    const-string v3, "input stream close depletion failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->hasDepleted:Z

    .line 1171
    nop

    .line 1172
    return-void

    .line 1170
    :goto_2
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->hasDepleted:Z

    .line 1171
    throw v2

    .line 1152
    .end local v0    # "socketInputRecord":Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->appDataIsAvailable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->checkEOF()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 906
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v1, "ssl"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Closing input stream"

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    goto :goto_0

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    const-string v1, "input stream close failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->oneByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->read([BII)I

    move-result v0

    .line 918
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 919
    const/4 v1, -0x1

    return v1

    .line 922
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->oneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    if-eqz p1, :cond_12

    .line 941
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_11

    .line 945
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 946
    return v0

    .line 949
    :cond_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->checkEOF()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 950
    return v2

    .line 954
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 955
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 956
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 957
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->access$200(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Z)V

    .line 961
    :cond_2
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    const-string v4, "Connection or inbound has closed"

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 962
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v1

    if-nez v1, :cond_10

    .line 971
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->hasDepleted:Z

    const-string v5, "ssl"

    if-eqz v1, :cond_4

    .line 972
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_3

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 973
    const-string v1, "The input stream has been depleted"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    :cond_3
    return v2

    .line 983
    :cond_4
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 986
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v1

    if-nez v1, :cond_e

    .line 992
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->hasDepleted:Z

    if-eqz v1, :cond_7

    .line 993
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_5

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 994
    const-string v1, "The input stream is closing"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 997
    :cond_5
    nop

    .line 1037
    :try_start_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    if-eqz v0, :cond_6

    .line 1038
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLockedDeplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    :cond_6
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    nop

    .line 997
    return v2

    .line 1041
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    throw v0

    .line 1000
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->available()I

    move-result v1

    .line 1001
    .local v1, "remains":I
    if-lez v1, :cond_9

    .line 1002
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1003
    .local v0, "howmany":I
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1005
    nop

    .line 1037
    :try_start_3
    iget-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    if-eqz v2, :cond_8

    .line 1038
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLockedDeplete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1041
    :cond_8
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    nop

    .line 1005
    return v0

    .line 1041
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    throw v2

    .line 1008
    .end local v0    # "howmany":I
    :cond_9
    :try_start_4
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->appDataIsAvailable:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1010
    :try_start_5
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->access$300(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1011
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_b

    .line 1012
    nop

    .line 1037
    :try_start_6
    iget-boolean v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    if-eqz v3, :cond_a

    .line 1038
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLockedDeplete()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1041
    :cond_a
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    nop

    .line 1012
    return v2

    .line 1041
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    throw v2

    .line 1015
    :cond_b
    :try_start_7
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 1018
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1019
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1020
    .local v4, "volume":I
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1, p2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1021
    iput-boolean v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->appDataIsAvailable:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1023
    nop

    .line 1037
    :try_start_8
    iget-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    if-eqz v2, :cond_c

    .line 1038
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLockedDeplete()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1041
    :cond_c
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    nop

    .line 1023
    return v4

    .line 1041
    :catchall_3
    move-exception v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    throw v2

    .line 1024
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "volume":I
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-static {v3, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->access$400(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1029
    nop

    .line 1037
    :try_start_a
    iget-boolean v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    if-eqz v3, :cond_d

    .line 1038
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLockedDeplete()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1041
    :cond_d
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    nop

    .line 1029
    return v2

    .line 1041
    :catchall_4
    move-exception v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    throw v2

    .line 987
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "remains":I
    :cond_e
    :try_start_b
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1036
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_5
    move-exception v0

    .line 1037
    :try_start_c
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->isClosing:Z

    if-eqz v1, :cond_f

    .line 1038
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLockedDeplete()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1041
    :cond_f
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    nop

    .line 1043
    throw v0

    .line 1041
    :catchall_6
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1042
    throw v0

    .line 963
    :cond_10
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bytes to read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the target buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 1058
    .local v0, "skipArray":[B
    const-wide/16 v1, 0x0

    .line 1060
    .local v1, "skipped":J
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1062
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 1063
    :try_start_0
    array-length v3, v0

    int-to-long v3, v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1064
    .local v3, "len":I
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    .local v4, "r":I
    if-gtz v4, :cond_0

    .line 1066
    goto :goto_1

    .line 1068
    :cond_0
    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 1069
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 1070
    .end local v3    # "len":I
    .end local v4    # "r":I
    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1073
    throw v3

    .line 1072
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->readLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1073
    nop

    .line 1075
    return-wide v1
.end method

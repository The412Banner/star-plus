.class Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;
.super Ljava/io/OutputStream;
.source "SSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppOutputStream"
.end annotation


# instance fields
.field private final oneByte:[B

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;


# direct methods
.method private constructor <init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V
    .locals 0

    .line 1202
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1204
    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->oneByte:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;

    .line 1202
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v1, "ssl"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Closing output stream"

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    goto :goto_0

    .line 1277
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    const-string v1, "output stream close failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->oneByte:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1209
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->write([BII)V

    .line 1210
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    if-eqz p1, :cond_6

    .line 1217
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_5

    .line 1221
    if-nez p3, :cond_0

    .line 1230
    return-void

    .line 1234
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 1235
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 1236
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->access$200(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Z)V

    .line 1241
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 1242
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1250
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->deliver([BII)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    nop

    .line 1263
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->seqNumIsHuge()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 1264
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->atKeyLimit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1265
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->access$500(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    .line 1267
    :cond_3
    return-void

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "ssle":Ljavax/net/ssl/SSLException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 1251
    .end local v0    # "ssle":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v0

    .line 1253
    .local v0, "she":Ljavax/net/ssl/SSLHandshakeException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;->this$0:Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 1243
    .end local v0    # "she":Ljavax/net/ssl/SSLHandshakeException;
    :cond_4
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection or outbound has closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_5
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

    .line 1216
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the source buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

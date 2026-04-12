.class public Lorg/openjsse/javax/net/ssl/SSLEngineResult;
.super Ljavax/net/ssl/SSLEngineResult;
.source "SSLEngineResult.java"


# instance fields
.field private final needUnwrapAgain:Z

.field private final sequenceNumber:J


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    .locals 8
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I

    .line 102
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V
    .locals 0
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I
    .param p5, "sequenceNumber"    # J
    .param p7, "needUnwrapAgain"    # Z

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 141
    iput-wide p5, p0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;->sequenceNumber:J

    .line 142
    iput-boolean p7, p0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;->needUnwrapAgain:Z

    .line 143
    return-void
.end method


# virtual methods
.method public final needUnwrapAgain()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;->needUnwrapAgain:Z

    return v0
.end method

.method public final sequenceNumber()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;->sequenceNumber:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;->sequenceNumber:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sequenceNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;->sequenceNumber:J

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0
.end method

.class public Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
.super Ljava/io/ByteArrayOutputStream;
.source "HandshakeOutStream.java"


# instance fields
.field outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V
    .locals 0
    .param p1, "outputRecord"    # Lorg/openjsse/sun/security/ssl/OutputRecord;

    .line 49
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    .line 51
    return-void
.end method

.method private static checkOverflow(II)V
    .locals 3
    .param p0, "length"    # I
    .param p1, "limit"    # I

    .line 162
    if-ge p0, p1, :cond_0

    .line 168
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field length overflow, the field length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method complete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 60
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->buf:[B

    iget v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->count:I

    invoke-virtual {v0, v2, v1, v3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encodeHandshake([BII)V

    goto :goto_0

    .line 64
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->buf:[B

    iget v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->count:I

    .line 66
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 65
    const-string v1, "outbound has closed, ignore outbound handshake messages"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->reset()V

    .line 73
    :cond_2
    return-void

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "handshake message is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->flush()V

    .line 91
    :cond_0
    return-void
.end method

.method public putBytes16([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    goto :goto_0

    .line 144
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 145
    array-length v1, p1

    invoke-super {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 147
    :goto_0
    return-void
.end method

.method putBytes24([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt24(I)V

    goto :goto_0

    .line 153
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt24(I)V

    .line 154
    array-length v1, p1

    invoke-super {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    :goto_0
    return-void
.end method

.method putBytes8([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    goto :goto_0

    .line 135
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 136
    array-length v1, p1

    invoke-super {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 138
    :goto_0
    return-void
.end method

.method putInt16(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/high16 v0, 0x10000

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 109
    shr-int/lit8 v0, p1, 0x8

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    return-void
.end method

.method putInt24(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/high16 v0, 0x1000000

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 115
    shr-int/lit8 v0, p1, 0x10

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    shr-int/lit8 v0, p1, 0x8

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    return-void
.end method

.method putInt32(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    shr-int/lit8 v0, p1, 0x18

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    shr-int/lit8 v0, p1, 0x10

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    shr-int/lit8 v0, p1, 0x8

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 125
    return-void
.end method

.method putInt8(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/16 v0, 0x100

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 104
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 82
    const/high16 v0, 0x1000000

    invoke-static {p3, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 83
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 84
    return-void
.end method

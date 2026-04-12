.class public Lcn/sherlock/com/sun/media/sound/RIFFWriter;
.super Ljava/io/OutputStream;
.source "RIFFWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessFileWriter;,
        Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;,
        Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;
    }
.end annotation


# instance fields
.field private childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

.field private chunksizepointer:J

.field private chunktype:I

.field private open:Z

.field private raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

.field private startpointer:J

.field private writeoverride:Z


# direct methods
.method private constructor <init>(Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;Ljava/lang/String;I)V
    .locals 9
    .param p1, "raf"    # Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "chunktype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->open:Z

    .line 170
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeoverride:Z

    .line 186
    const-wide/16 v2, 0x0

    if-nez p3, :cond_0

    .line 187
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 188
    invoke-interface {p1, v2, v3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->setLength(J)V

    .line 189
    :cond_0
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    .line 190
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->getPointer()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    rem-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    .line 191
    invoke-interface {p1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->write(I)V

    .line 193
    :cond_1
    const/4 v4, 0x4

    const-string v5, "    "

    const-string v6, "ascii"

    if-nez p3, :cond_2

    .line 194
    const-string v1, "RIFF"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->write([B)V

    goto :goto_0

    .line 195
    :cond_2
    if-ne p3, v1, :cond_3

    .line 196
    const-string v1, "LIST"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->write([B)V

    goto :goto_0

    .line 198
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->write([B)V

    .line 200
    :goto_0
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->getPointer()J

    move-result-wide v7

    iput-wide v7, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunksizepointer:J

    .line 201
    const/4 v1, 0x2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    .line 202
    invoke-virtual {p0, v2, v3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 203
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    .line 204
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->getPointer()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->startpointer:J

    .line 205
    if-eq p3, v1, :cond_4

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->write([B)V

    .line 208
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessFileWriter;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessFileWriter;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessFileWriter;

    invoke-direct {v0, p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessFileWriter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;Ljava/lang/String;I)V

    .line 174
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->open:Z

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->close()V

    .line 231
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    .line 234
    :cond_1
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    .line 235
    .local v0, "bakchunktype":I
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-interface {v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->getPointer()J

    move-result-wide v2

    .line 236
    .local v2, "fpointer":J
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    iget-wide v5, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunksizepointer:J

    invoke-interface {v4, v5, v6}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->seek(J)V

    .line 237
    const/4 v4, 0x2

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    .line 238
    iget-wide v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->startpointer:J

    sub-long v4, v2, v4

    invoke-virtual {p0, v4, v5}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeUnsignedInt(J)V

    .line 240
    if-nez v0, :cond_2

    .line 241
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-interface {v4}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->close()V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-interface {v4, v2, v3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->seek(J)V

    .line 244
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->open:Z

    .line 245
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    .line 246
    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->getPointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWriteOverride()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeoverride:Z

    return v0
.end method

.method public seek(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-interface {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->seek(J)V

    .line 212
    return-void
.end method

.method public setWriteOverride(Z)V
    .locals 0
    .param p1, "writeoverride"    # Z

    .line 219
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeoverride:Z

    .line 220
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeoverride:Z

    if-nez v0, :cond_1

    .line 250
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->close()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only chunks can write bytes!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-interface {v0, p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->write(I)V

    .line 260
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeoverride:Z

    if-nez v0, :cond_1

    .line 264
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->close()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only chunks can write bytes!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-interface {v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;->write([BII)V

    .line 274
    return-void
.end method

.method public writeByte(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 323
    return-void
.end method

.method public writeChunk(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->close()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    .line 298
    :cond_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    invoke-direct {v0, v2, p1, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    .line 299
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    return-object v0

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only LIST and RIFF can write chunks!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 334
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 335
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 336
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 337
    return-void
.end method

.method public writeList(Ljava/lang/String;)Lcn/sherlock/com/sun/media/sound/RIFFWriter;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->chunktype:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->close()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    .line 285
    :cond_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->raf:Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;-><init>(Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    .line 286
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->childchunk:Lcn/sherlock/com/sun/media/sound/RIFFWriter;

    return-object v0

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only LIST and RIFF can write lists!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeLong(J)V
    .locals 2
    .param p1, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 342
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 343
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 344
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 345
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 346
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 347
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 348
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 349
    return-void
.end method

.method public writeShort(S)V
    .locals 1
    .param p1, "b"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 328
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 329
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 305
    .local v0, "buff":[B
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 306
    return-void
.end method

.method public writeString(Ljava/lang/String;I)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 311
    .local v0, "buff":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-le v1, p2, :cond_0

    .line 312
    invoke-virtual {p0, v0, v2, p2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([BII)V

    goto :goto_1

    .line 314
    :cond_0
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write([B)V

    .line 315
    array-length v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 316
    invoke-virtual {p0, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->write(I)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public writeUnsignedByte(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeByte(I)V

    .line 354
    return-void
.end method

.method public writeUnsignedInt(J)V
    .locals 1
    .param p1, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeInt(I)V

    .line 364
    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/RIFFWriter;->writeShort(S)V

    .line 359
    return-void
.end method

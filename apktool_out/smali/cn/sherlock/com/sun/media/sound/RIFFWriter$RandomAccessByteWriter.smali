.class Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;
.super Ljava/lang/Object;
.source "RIFFWriter.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/RIFFWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessByteWriter"
.end annotation


# instance fields
.field buff:[B

.field length:I

.field pos:I

.field s:[B

.field stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->length:I

    .line 108
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->pos:I

    .line 113
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->stream:Ljava/io/OutputStream;

    .line 114
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->stream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    const/4 v2, 0x0

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 126
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 127
    return-void
.end method

.method public getPointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public seek(J)V
    .locals 1
    .param p1, "chunksizepointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    long-to-int v0, p1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->pos:I

    .line 118
    return-void
.end method

.method public setLength(J)V
    .locals 5
    .param p1, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    long-to-int v0, p1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->length:I

    .line 156
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->length:I

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    .local v0, "newlen":I
    new-array v1, v0, [B

    .line 159
    .local v1, "newbuff":[B
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    .line 162
    .end local v0    # "newlen":I
    .end local v1    # "newbuff":[B
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->s:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->s:[B

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->s:[B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 133
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->s:[B

    invoke-virtual {p0, v0, v3, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->write([BII)V

    .line 134
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->write([BII)V

    .line 148
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->pos:I

    add-int/2addr v0, p3

    .line 138
    .local v0, "newsize":I
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->length:I

    if-le v0, v1, :cond_0

    .line 139
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->setLength(J)V

    .line 140
    :cond_0
    add-int v1, p2, p3

    .line 141
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 142
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->buff:[B

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcn/sherlock/com/sun/media/sound/RIFFWriter$RandomAccessByteWriter;->pos:I

    aget-byte v5, p1, v2

    aput-byte v5, v3, v4

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

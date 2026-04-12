.class public final Lorg/apache/commons/compress/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final COPY_BUF_SIZE:I = 0x1f58

.field private static final SKIP_BUF:[B

.field private static final SKIP_BUF_SIZE:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 257
    if-eqz p0, :cond_0

    .line 259
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 263
    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/16 v0, 0x1f58

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 84
    new-array v0, p2, [B

    .line 85
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 86
    .local v1, "n":I
    const-wide/16 v2, 0x0

    .line 87
    .local v2, "count":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v1, v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_0

    .line 88
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 91
    :cond_0
    return-wide v2

    .line 82
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v2    # "count":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffersize must be bigger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Ljava/io/File;[B)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 146
    return v1

    .line 145
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "array":[B
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "array":[B
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    if-ltz p3, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 187
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 188
    .local v1, "x":I
    :goto_0
    if-eq v0, p3, :cond_1

    .line 189
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 190
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 191
    goto :goto_1

    .line 193
    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    .line 195
    :cond_1
    :goto_1
    return v0

    .line 185
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 214
    .local v0, "expectedLength":I
    const/4 v1, 0x0

    .line 215
    .local v1, "read":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 216
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 217
    .local v2, "readNow":I
    if-gtz v2, :cond_0

    .line 218
    goto :goto_1

    .line 220
    :cond_0
    add-int/2addr v1, v2

    .line 221
    .end local v2    # "readNow":I
    goto :goto_0

    .line 222
    :cond_1
    :goto_1
    if-lt v1, v0, :cond_2

    .line 225
    return-void

    .line 223
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "numToSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    move-wide v0, p1

    .line 112
    .local v0, "available":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 113
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 114
    .local v4, "skipped":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 115
    goto :goto_1

    .line 117
    :cond_0
    sub-long/2addr p1, v4

    .line 118
    .end local v4    # "skipped":J
    goto :goto_0

    .line 120
    :cond_1
    :goto_1
    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    .line 121
    sget-object v4, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    .line 122
    const-wide/16 v5, 0x1000

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 121
    const/4 v6, 0x0

    invoke-static {p0, v4, v6, v5}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 123
    .local v4, "read":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 124
    goto :goto_2

    .line 126
    :cond_2
    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 127
    .end local v4    # "read":I
    goto :goto_1

    .line 128
    :cond_3
    :goto_2
    sub-long v2, v0, p1

    return-wide v2
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 248
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

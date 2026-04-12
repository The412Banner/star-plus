.class public Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
.super Ljava/lang/Object;
.source "ModelByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private file:Ljava/io/File;

.field private fileoffset:J

.field private final len:J

.field private offset:J

.field private root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;


# direct methods
.method static bridge synthetic -$$Nest$fgetfile(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileoffset(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)J
    .locals 2

    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->fileoffset:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetroot(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object p0
.end method

.method private constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;JJZ)V
    .locals 8
    .param p1, "parent"    # Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .param p2, "beginIndex"    # J
    .param p4, "endIndex"    # J
    .param p6, "independent"    # Z

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 140
    iget-object v0, p1, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    .line 142
    iget-wide v2, p1, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->len:J

    .line 143
    .local v2, "parent_len":J
    cmp-long v4, p2, v0

    if-gez v4, :cond_0

    .line 144
    const-wide/16 p2, 0x0

    .line 145
    :cond_0
    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 146
    move-wide p2, v2

    .line 147
    :cond_1
    cmp-long v4, p4, v0

    if-gez v4, :cond_2

    .line 148
    const-wide/16 p4, 0x0

    .line 149
    :cond_2
    cmp-long v4, p4, v2

    if-lez v4, :cond_3

    .line 150
    move-wide p4, v2

    .line 151
    :cond_3
    cmp-long v4, p2, p4

    if-lez v4, :cond_4

    .line 152
    move-wide p2, p4

    .line 153
    :cond_4
    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    .line 154
    sub-long v4, p4, p2

    iput-wide v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->len:J

    .line 155
    if-eqz p6, :cond_6

    .line 156
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v4, v4, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    .line 157
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v4, v4, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    if-eqz v4, :cond_5

    .line 158
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v4, v4, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    .line 159
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-wide v4, v4, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->fileoffset:J

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->fileoffset:J

    .line 160
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    goto :goto_0

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    .line 163
    :goto_0
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 165
    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 180
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->fileoffset:J

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->len:J

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "offset"    # J
    .param p4, "len"    # J

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 186
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    .line 187
    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->fileoffset:J

    .line 188
    iput-wide p4, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->len:J

    .line 189
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 168
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    .line 170
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->len:J

    .line 171
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 174
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    .line 175
    int-to-long v0, p2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    .line 176
    int-to-long v0, p3

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->len:J

    .line 177
    return-void
.end method

.method public static loadAll(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;>;"
    const/4 v0, 0x0

    .line 257
    .local v0, "selfile":Ljava/io/File;
    const/4 v1, 0x0

    .line 259
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 260
    .local v3, "mbuff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    iget-object v4, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-object v3, v4

    .line 261
    iget-object v4, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    if-nez v4, :cond_0

    .line 262
    goto :goto_0

    .line 263
    :cond_0
    iget-object v4, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    if-eqz v4, :cond_1

    .line 264
    goto :goto_0

    .line 265
    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 266
    :cond_2
    if-eqz v1, :cond_3

    .line 267
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 268
    const/4 v1, 0x0

    .line 270
    :cond_3
    iget-object v4, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    move-object v0, v4

    .line 271
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    const-string/jumbo v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v4

    .line 273
    :cond_4
    iget-wide v4, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->fileoffset:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 274
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 276
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 277
    .local v5, "read":I
    array-length v6, v4

    .line 278
    .local v6, "avail":I
    :goto_1
    if-eq v5, v6, :cond_6

    .line 279
    sub-int v7, v6, v5

    const/high16 v8, 0x10000

    if-le v7, v8, :cond_5

    .line 280
    invoke-virtual {v1, v4, v5, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 281
    add-int/2addr v5, v8

    goto :goto_1

    .line 283
    :cond_5
    sub-int v7, v6, v5

    invoke-virtual {v1, v4, v5, v7}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 284
    move v5, v6

    goto :goto_1

    .line 289
    :cond_6
    iput-object v4, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    .line 290
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v3    # "mbuff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .end local v4    # "buffer":[B
    .end local v5    # "read":I
    .end local v6    # "avail":I
    goto :goto_0

    .line 293
    :cond_7
    if-eqz v1, :cond_8

    .line 294
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 296
    :cond_8
    return-void

    .line 293
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_9

    .line 294
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 295
    :cond_9
    throw v2
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    return-object v0
.end method

.method public arrayOffset()J
    .locals 4

    .line 233
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    if-eq v0, p0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    add-long/2addr v0, v2

    return-wide v0

    .line 235
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    return-wide v0
.end method

.method public capacity()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->len:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 247
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->fileoffset:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    .line 203
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    if-nez v0, :cond_0

    .line 205
    :try_start_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer$RandomFileInputStream;-><init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->array()[B

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 211
    return-object v0
.end method

.method public getRoot()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    return-object v0
.end method

.method public load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    if-eq v0, p0, :cond_0

    .line 300
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->load()V

    .line 301
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    if-eqz v0, :cond_1

    .line 304
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 310
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 311
    .local v0, "is":Ljava/io/DataInputStream;
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    .line 312
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->offset:J

    .line 313
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 314
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 316
    return-void

    .line 306
    .end local v0    # "is":Ljava/io/DataInputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No file associated with this ByteBuffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subbuffer(J)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 2
    .param p1, "beginIndex"    # J

    .line 216
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->subbuffer(JJ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public subbuffer(JJ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 6
    .param p1, "beginIndex"    # J
    .param p3, "endIndex"    # J

    .line 220
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->subbuffer(JJZ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public subbuffer(JJZ)Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    .locals 8
    .param p1, "beginIndex"    # J
    .param p3, "endIndex"    # J
    .param p5, "independent"    # Z

    .line 225
    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;JJZ)V

    return-object v7
.end method

.method public unload()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    if-eq v0, p0, :cond_0

    .line 320
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->unload()V

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    .line 328
    return-void

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No file associated with this ByteBuffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->root:Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->buffer:[B

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 194
    .local v0, "is":Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 196
    .local v1, "buff":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "ret":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 197
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 198
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "buff":[B
    .end local v3    # "ret":I
    :cond_0
    goto :goto_1

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->arrayOffset()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->capacity()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 200
    :goto_1
    return-void
.end method

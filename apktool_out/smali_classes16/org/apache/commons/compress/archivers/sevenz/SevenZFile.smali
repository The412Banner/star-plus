.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_FILE_NAME:Ljava/lang/String; = "unknown archive"

.field private static final PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private channel:Ljava/nio/channels/SeekableByteChannel;

.field private compressedBytesReadFromCurrentEntry:J

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private final options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

.field private password:[B

.field private uncompressedBytesReadFromCurrentEntry:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 1506
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "fileName"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 2
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [C

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 371
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 9
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    .line 145
    const/4 v7, 0x1

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 9
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "password"    # [C
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object v6

    .line 129
    const/4 v7, 0x1

    move-object v3, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    const/4 v4, 0x0

    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 328
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .param p4, "closeOnError"    # Z
    .param p5, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 92
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "succeeded":Z
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 334
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 335
    iput-object p5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    .line 337
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 338
    if-eqz p3, :cond_0

    .line 339
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_0

    .line 341
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_0
    const/4 v0, 0x1

    .line 345
    .end local v1    # "succeeded":Z
    .local v0, "succeeded":Z
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 346
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 349
    :cond_1
    return-void

    .line 345
    .end local v0    # "succeeded":Z
    .restart local v1    # "succeeded":Z
    :catchall_0
    move-exception v0

    if-nez v1, :cond_2

    if-eqz p4, :cond_2

    .line 346
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 348
    :cond_2
    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [C

    const-string v1, "unknown archive"

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    .line 306
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [C
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p1, "x1"    # J

    .line 83
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method private static assertFitsIntoInt(Ljava/lang/String;J)V
    .locals 3
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1522
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1525
    return-void

    .line 1523
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 16
    .param p1, "folder"    # Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .param p2, "folderOffset"    # J
    .param p4, "firstPackStreamIndex"    # I
    .param p5, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    move-wide/from16 v3, p2

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1241
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v8, v8, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v9, v8, p4

    invoke-direct {v6, v7, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    .line 1271
    .local v2, "inputStreamStack":Ljava/io/InputStream;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1272
    .local v5, "methods":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1273
    .local v14, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    iget-wide v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 1276
    iget-object v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v15

    .line 1277
    .local v15, "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 1278
    invoke-virtual {v1, v14}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v9

    iget-object v12, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v13

    .line 1277
    move-object v8, v2

    move-object v11, v14

    invoke-static/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v2

    .line 1279
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 1280
    invoke-static {v15}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v8

    invoke-virtual {v8, v14, v2}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v15, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    .line 1279
    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1281
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local v15    # "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    goto :goto_0

    .line 1274
    .restart local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Multi input/output stream coders are not yet supported"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1282
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    move-object/from16 v6, p5

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 1283
    iget-boolean v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v7, :cond_2

    .line 1284
    new-instance v13, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 1285
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v9

    iget-wide v11, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v7, v13

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 1284
    return-object v13

    .line 1287
    :cond_2
    return-object v2
.end method

.method private buildDecodingStream(I)V
    .locals 21
    .param p1, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1152
    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    if-eqz v0, :cond_a

    .line 1155
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget v8, v0, v7

    .line 1156
    .local v8, "folderIndex":I
    if-gez v8, :cond_0

    .line 1157
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1160
    return-void

    .line 1162
    :cond_0
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v0, v7

    .line 1163
    .local v9, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v10, 0x0

    .line 1164
    .local v10, "isInSameFolder":Z
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v11, v0, v8

    .line 1165
    .local v11, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v12, v0, v8

    .line 1166
    .local v12, "firstPackStreamIndex":I
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v2, 0x20

    add-long/2addr v0, v2

    iget-object v2, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v3, v2, v12

    add-long v13, v0, v3

    .line 1168
    .local v13, "folderOffset":J
    iget v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v0, v8, :cond_2

    .line 1175
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    add-int/lit8 v1, v7, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 1180
    iget v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-eq v0, v7, :cond_1

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1181
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aget v0, v0, v8

    .line 1182
    .local v0, "folderFirstFileIndex":I
    iget-object v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v1, v1, v0

    .line 1183
    .local v1, "folderFirstFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 1185
    .end local v0    # "folderFirstFileIndex":I
    .end local v1    # "folderFirstFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    .line 1188
    :cond_2
    iput v8, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 1189
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1190
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 1191
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1192
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 1195
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v13

    move v4, v12

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 1202
    :goto_0
    iget v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-eq v0, v7, :cond_8

    .line 1203
    iget-object v0, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aget v0, v0, v8

    .line 1204
    .local v0, "filesToSkipStartIndex":I
    if-eqz v10, :cond_5

    .line 1205
    iget v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ge v1, v7, :cond_4

    .line 1207
    iget v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 1212
    :cond_4
    iget-object v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1213
    iget-object v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1, v13, v14}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1217
    :cond_5
    :goto_1
    move v1, v0

    .local v1, "i":I
    :goto_2
    if-ge v1, v7, :cond_7

    .line 1218
    iget-object v2, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v2, v2, v1

    .line 1219
    .local v2, "fileToSkip":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v4, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    move v5, v8

    .end local v8    # "folderIndex":I
    .local v5, "folderIndex":I
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object/from16 v16, v3

    .line 1220
    .local v16, "fileStreamToSkip":Ljava/io/InputStream;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1221
    new-instance v3, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v17

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v19

    move-object v15, v3

    invoke-direct/range {v15 .. v20}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .end local v16    # "fileStreamToSkip":Ljava/io/InputStream;
    .local v3, "fileStreamToSkip":Ljava/io/InputStream;
    goto :goto_3

    .line 1220
    .end local v3    # "fileStreamToSkip":Ljava/io/InputStream;
    .restart local v16    # "fileStreamToSkip":Ljava/io/InputStream;
    :cond_6
    move-object/from16 v3, v16

    .line 1223
    .end local v16    # "fileStreamToSkip":Ljava/io/InputStream;
    .restart local v3    # "fileStreamToSkip":Ljava/io/InputStream;
    :goto_3
    iget-object v4, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 1217
    .end local v2    # "fileToSkip":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v3    # "fileStreamToSkip":Ljava/io/InputStream;
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p1

    move v8, v5

    goto :goto_2

    .end local v5    # "folderIndex":I
    .restart local v8    # "folderIndex":I
    :cond_7
    move v5, v8

    .end local v8    # "folderIndex":I
    .restart local v5    # "folderIndex":I
    goto :goto_4

    .line 1202
    .end local v0    # "filesToSkipStartIndex":I
    .end local v1    # "i":I
    .end local v5    # "folderIndex":I
    .restart local v8    # "folderIndex":I
    :cond_8
    move v5, v8

    .line 1230
    .end local v8    # "folderIndex":I
    .restart local v5    # "folderIndex":I
    :goto_4
    new-instance v0, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object/from16 v16, v0

    .line 1231
    .local v16, "fileStream":Ljava/io/InputStream;
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1232
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v17

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v19

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .end local v16    # "fileStream":Ljava/io/InputStream;
    .local v0, "fileStream":Ljava/io/InputStream;
    goto :goto_5

    .line 1231
    .end local v0    # "fileStream":Ljava/io/InputStream;
    .restart local v16    # "fileStream":Ljava/io/InputStream;
    :cond_9
    move-object/from16 v0, v16

    .line 1235
    .end local v16    # "fileStream":Ljava/io/InputStream;
    .restart local v0    # "fileStream":Ljava/io/InputStream;
    :goto_5
    iget-object v1, v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    return-void

    .line 1153
    .end local v0    # "fileStream":Ljava/io/InputStream;
    .end local v5    # "folderIndex":I
    .end local v9    # "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v10    # "isInSameFolder":Z
    .end local v11    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v12    # "firstPackStreamIndex":I
    .end local v13    # "folderOffset":J
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Archive doesn\'t contain stream information to read entries"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 11
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 1101
    .local v0, "streamMap":Lorg/apache/commons/compress/archivers/sevenz/StreamMap;
    const/4 v1, 0x0

    .line 1102
    .local v1, "nextFolderPackStreamIndex":I
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1103
    .local v2, "numFolders":I
    :goto_0
    new-array v4, v2, [I

    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 1104
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 1105
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aput v1, v5, v4

    .line 1106
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v5, v5

    add-int/2addr v1, v5

    .line 1104
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1109
    .end local v4    # "i":I
    :cond_1
    const-wide/16 v4, 0x0

    .line 1110
    .local v4, "nextPackStreamOffset":J
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v6, :cond_2

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v3, v3

    .line 1111
    .local v3, "numPackSizes":I
    :cond_2
    new-array v6, v3, [J

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 1112
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 1113
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aput-wide v4, v7, v6

    .line 1114
    iget-object v7, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v8, v7, v6

    add-long/2addr v4, v8

    .line 1112
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1117
    .end local v6    # "i":I
    :cond_3
    new-array v6, v2, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 1118
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 1119
    const/4 v6, 0x0

    .line 1120
    .local v6, "nextFolderIndex":I
    const/4 v7, 0x0

    .line 1121
    .local v7, "nextFolderUnpackStreamIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v9, v9

    if-ge v8, v9, :cond_b

    .line 1122
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v7, :cond_4

    .line 1123
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    const/4 v10, -0x1

    aput v10, v9, v8

    .line 1124
    goto :goto_7

    .line 1126
    :cond_4
    if-nez v7, :cond_8

    .line 1127
    :goto_4
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_6

    .line 1128
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aput v8, v9, v6

    .line 1129
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v9, :cond_5

    .line 1130
    goto :goto_5

    .line 1127
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1133
    :cond_6
    :goto_5
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_7

    goto :goto_6

    .line 1134
    :cond_7
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Too few folders in archive"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1137
    :cond_8
    :goto_6
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aput v6, v9, v8

    .line 1138
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1139
    goto :goto_7

    .line 1141
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 1142
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v7, v9, :cond_a

    .line 1143
    add-int/lit8 v6, v6, 0x1

    .line 1144
    const/4 v7, 0x0

    .line 1121
    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1148
    .end local v8    # "i":I
    :cond_b
    iput-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 1149
    return-void
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1307
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 1309
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1313
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    .line 1317
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 1318
    .local v0, "stream":Ljava/io/InputStream;
    const-wide v4, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {v0, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1320
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_1
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    goto :goto_0

    .line 1317
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1319
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    .line 1323
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 1310
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 1426
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 7
    .param p1, "startHeader"    # Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .param p2, "password"    # [B
    .param p3, "verifyCrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    const-string v0, "nextHeaderSize"

    iget-wide v1, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 517
    iget-wide v0, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v0, v0

    .line 518
    .local v0, "nextHeaderSizeInt":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v2, 0x20

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v4, v2

    invoke-interface {v1, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 519
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 520
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 521
    if-eqz p3, :cond_1

    .line 522
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 523
    .local v2, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 524
    iget-wide v3, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "NextHeader CRC mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 529
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    :cond_1
    :goto_0
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 530
    .local v2, "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 531
    .local v3, "nid":I
    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    .line 532
    invoke-direct {p0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 534
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    move-object v2, v4

    .line 535
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 537
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 538
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 542
    return-object v2

    .line 540
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Broken or unsupported archive: no Header"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 1440
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 1441
    return v1

    .line 1444
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1445
    aget-byte v2, p0, v0

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 1446
    return v1

    .line 1444
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1449
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 4
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 909
    .local v0, "areAllDefined":I
    if-eqz v0, :cond_1

    .line 910
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 911
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 912
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 911
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 915
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    .line 917
    .restart local v1    # "bits":Ljava/util/BitSet;
    :goto_1
    return-object v1
.end method

.method private readArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 589
    .local v0, "nid":I
    :goto_0
    if-eqz v0, :cond_0

    .line 590
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 591
    .local v1, "propertySize":J
    const-string v3, "propertySize"

    invoke-static {v3, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 592
    long-to-int v3, v1

    new-array v3, v3, [B

    .line 593
    .local v3, "property":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 594
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 595
    .end local v1    # "propertySize":J
    .end local v3    # "property":[B
    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method private readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 922
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 923
    .local v1, "mask":I
    const/4 v2, 0x0

    .line 924
    .local v2, "cache":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 925
    if-nez v1, :cond_0

    .line 926
    const/16 v1, 0x80

    .line 927
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 929
    :cond_0
    and-int v4, v2, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 930
    ushr-int/lit8 v1, v1, 0x1

    .line 924
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 932
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;
    .locals 17
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 603
    iget-object v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    .line 604
    .local v4, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const/4 v5, 0x0

    .line 605
    .local v5, "firstPackStreamIndex":I
    const-wide/16 v6, 0x20

    iget-wide v8, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v8, v6

    const-wide/16 v6, 0x0

    add-long/2addr v8, v6

    .line 608
    .local v8, "folderOffset":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 609
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v6, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v7, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v10, v7, v3

    invoke-direct {v0, v6, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 611
    .local v0, "inputStreamStack":Ljava/io/InputStream;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 612
    .local v6, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v10, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v12, 0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_0

    iget-wide v10, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_0

    .line 615
    iget-object v10, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 616
    invoke-virtual {v4, v6}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v12

    iget-object v7, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v16

    .line 615
    move-object v11, v0

    move-object v14, v6

    move-object/from16 v15, p3

    invoke-static/range {v10 .. v16}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v0

    .line 617
    .end local v6    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    goto :goto_0

    .line 613
    .restart local v6    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v7, "Multi input/output stream coders are not yet supported"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    .end local v6    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    iget-boolean v3, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v3, :cond_2

    .line 619
    new-instance v3, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 620
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v12

    iget-wide v14, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v10, v3

    move-object v11, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v0, v3

    goto :goto_1

    .line 618
    :cond_2
    move-object v3, v0

    .line 622
    .end local v0    # "inputStreamStack":Ljava/io/InputStream;
    .local v3, "inputStreamStack":Ljava/io/InputStream;
    :goto_1
    const-string v0, "unpackSize"

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 623
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v6, v0, [B

    .line 624
    .local v6, "nextHeader":[B
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v0

    .line 625
    .local v7, "nextHeaderInputStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v7, v6}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 627
    .end local v7    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 624
    .restart local v7    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v0

    move-object v10, v0

    .end local v3    # "inputStreamStack":Ljava/io/InputStream;
    .end local v4    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v5    # "firstPackStreamIndex":I
    .end local v6    # "nextHeader":[B
    .end local v7    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    .end local v8    # "folderOffset":J
    .end local p1    # "header":Ljava/nio/ByteBuffer;
    .end local p2    # "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .end local p3    # "password":[B
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 626
    .restart local v3    # "inputStreamStack":Ljava/io/InputStream;
    .restart local v4    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v5    # "firstPackStreamIndex":I
    .restart local v6    # "nextHeader":[B
    .restart local v7    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    .restart local v8    # "folderOffset":J
    .restart local p1    # "header":Ljava/nio/ByteBuffer;
    .restart local p2    # "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .restart local p3    # "password":[B
    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v12, v0

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v11
.end method

.method private readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 20
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 937
    .local v3, "numFiles":J
    const-string v5, "numFiles"

    invoke-static {v5, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 938
    long-to-int v5, v3

    new-array v5, v5, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 939
    .local v5, "files":[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 940
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    aput-object v7, v5, v6

    .line 939
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 942
    .end local v6    # "i":I
    :cond_0
    const/4 v6, 0x0

    .line 943
    .local v6, "isEmptyStream":Ljava/util/BitSet;
    const/4 v7, 0x0

    .line 944
    .local v7, "isEmptyFile":Ljava/util/BitSet;
    const/4 v8, 0x0

    .line 946
    .local v8, "isAnti":Ljava/util/BitSet;
    :goto_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 947
    .local v9, "propertyType":I
    if-nez v9, :cond_9

    .line 948
    nop

    .line 1072
    .end local v9    # "propertyType":I
    const/4 v9, 0x0

    .line 1073
    .local v9, "nonEmptyFileCounter":I
    const/4 v12, 0x0

    .line 1074
    .local v12, "emptyFileCounter":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v14, v5

    if-ge v13, v14, :cond_8

    .line 1075
    aget-object v14, v5, v13

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v6, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-nez v17, :cond_1

    goto :goto_3

    :cond_1
    move v10, v15

    goto :goto_4

    :cond_2
    :goto_3
    move/from16 v10, v16

    :goto_4
    invoke-virtual {v14, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 1076
    aget-object v10, v5, v13

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1077
    iget-object v10, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    if-eqz v10, :cond_3

    .line 1080
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 1081
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1082
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 1083
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v14, v11, v9

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 1084
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v14, v11, v9

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 1085
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1078
    :cond_3
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Archive contains file with streams but no subStreamsInfo"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1087
    :cond_4
    aget-object v10, v5, v13

    if-eqz v7, :cond_6

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    move v11, v15

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v11, v16

    :goto_6
    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 1088
    aget-object v10, v5, v13

    if-eqz v8, :cond_7

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_7

    move/from16 v11, v16

    goto :goto_7

    :cond_7
    move v11, v15

    :goto_7
    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1089
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 1090
    aget-object v10, v5, v13

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 1091
    add-int/lit8 v12, v12, 0x1

    .line 1074
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1094
    .end local v13    # "i":I
    :cond_8
    iput-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1095
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1096
    return-void

    .line 950
    .end local v12    # "emptyFileCounter":I
    .local v9, "propertyType":I
    :cond_9
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 951
    .local v10, "size":J
    const-string v12, "Unimplemented"

    packed-switch v9, :pswitch_data_0

    .line 1065
    :pswitch_0
    move-wide v15, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .local v15, "numFiles":J
    .local v18, "isEmptyFile":Ljava/util/BitSet;
    .local v19, "isAnti":Ljava/util/BitSet;
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-ltz v2, :cond_1e

    goto/16 :goto_10

    .line 1057
    .end local v15    # "numFiles":J
    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :pswitch_1
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-ltz v12, :cond_a

    move-wide v15, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_10

    .line 1058
    :cond_a
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Incomplete kDummy property"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1051
    :pswitch_2
    new-instance v12, Ljava/io/IOException;

    const-string v13, "kStartPos is unsupported, please report"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1037
    :pswitch_3
    array-length v13, v5

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v13

    .line 1038
    .local v13, "attributesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 1039
    .local v14, "external":I
    if-nez v14, :cond_d

    .line 1042
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9
    array-length v15, v5

    if-ge v12, v15, :cond_c

    .line 1043
    aget-object v15, v5, v12

    invoke-virtual {v13, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {v15, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 1044
    aget-object v2, v5, v12

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1045
    aget-object v2, v5, v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual {v2, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    .line 1042
    :cond_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    goto :goto_9

    .line 1048
    .end local v12    # "i":I
    :cond_c
    move-wide v15, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_10

    .line 1040
    :cond_d
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1023
    .end local v13    # "attributesDefined":Ljava/util/BitSet;
    .end local v14    # "external":I
    :pswitch_4
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1024
    .local v2, "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 1025
    .local v13, "external":I
    if-nez v13, :cond_10

    .line 1028
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    array-length v14, v5

    if-ge v12, v14, :cond_f

    .line 1029
    aget-object v14, v5, v12

    invoke-virtual {v2, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 1030
    aget-object v14, v5, v12

    invoke-virtual {v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1031
    aget-object v14, v5, v12

    move-wide v15, v3

    move-object v4, v2

    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .local v4, "timesDefined":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    goto :goto_b

    .line 1030
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_e
    move-wide v15, v3

    move-object v4, v2

    .line 1028
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object v2, v4

    move-wide v3, v15

    goto :goto_a

    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_f
    move-wide v15, v3

    move-object v4, v2

    .line 1034
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .end local v12    # "i":I
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_10

    .line 1026
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_10
    move-object v4, v2

    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1009
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v13    # "external":I
    :pswitch_5
    move-wide v15, v3

    .end local v3    # "numFiles":J
    .restart local v15    # "numFiles":J
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1010
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 1011
    .local v3, "external":I
    if-nez v3, :cond_13

    .line 1014
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    array-length v12, v5

    if-ge v4, v12, :cond_12

    .line 1015
    aget-object v12, v5, v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 1016
    aget-object v12, v5, v4

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1017
    aget-object v12, v5, v4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    .line 1014
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1020
    .end local v4    # "i":I
    :cond_12
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_10

    .line 1012
    :cond_13
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 995
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .local v3, "numFiles":J
    :pswitch_6
    move-wide v15, v3

    .end local v3    # "numFiles":J
    .restart local v15    # "numFiles":J
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 996
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 997
    .local v3, "external":I
    if-nez v3, :cond_16

    .line 1000
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_d
    array-length v12, v5

    if-ge v4, v12, :cond_15

    .line 1001
    aget-object v12, v5, v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 1002
    aget-object v12, v5, v4

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1003
    aget-object v12, v5, v4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    .line 1000
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1006
    .end local v4    # "i":I
    :cond_15
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_10

    .line 998
    :cond_16
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 971
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .local v3, "numFiles":J
    :pswitch_7
    move-wide v15, v3

    .end local v3    # "numFiles":J
    .restart local v15    # "numFiles":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 972
    .local v2, "external":I
    if-nez v2, :cond_1b

    .line 975
    const-wide/16 v3, 0x1

    sub-long v12, v10, v3

    and-long/2addr v12, v3

    const-wide/16 v17, 0x0

    cmp-long v12, v12, v17

    if-nez v12, :cond_1a

    .line 978
    const-string v12, "file names length"

    sub-long v13, v10, v3

    invoke-static {v12, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 979
    sub-long v3, v10, v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 980
    .local v3, "names":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 981
    const/4 v4, 0x0

    .line 982
    .local v4, "nextFile":I
    const/4 v12, 0x0

    .line 983
    .local v12, "nextName":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_e
    array-length v14, v3

    if-ge v13, v14, :cond_18

    .line 984
    aget-byte v14, v3, v13

    if-nez v14, :cond_17

    add-int/lit8 v14, v13, 0x1

    aget-byte v14, v3, v14

    if-nez v14, :cond_17

    .line 985
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "nextFile":I
    .local v14, "nextFile":I
    aget-object v4, v5, v4

    move/from16 v17, v2

    .end local v2    # "external":I
    .local v17, "external":I
    new-instance v2, Ljava/lang/String;

    move-object/from16 v18, v7

    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    sub-int v7, v13, v12

    move-object/from16 v19, v8

    .end local v8    # "isAnti":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    const-string v8, "UTF-16LE"

    invoke-direct {v2, v3, v12, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 986
    add-int/lit8 v2, v13, 0x2

    move v12, v2

    move v4, v14

    .end local v12    # "nextName":I
    .local v2, "nextName":I
    goto :goto_f

    .line 984
    .end local v14    # "nextFile":I
    .end local v17    # "external":I
    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .local v2, "external":I
    .restart local v4    # "nextFile":I
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    .restart local v12    # "nextName":I
    :cond_17
    move/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .line 983
    .end local v2    # "external":I
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .restart local v17    # "external":I
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    :goto_f
    add-int/lit8 v13, v13, 0x2

    move/from16 v2, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_e

    .end local v17    # "external":I
    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .restart local v2    # "external":I
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :cond_18
    move/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .line 989
    .end local v2    # "external":I
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .end local v13    # "i":I
    .restart local v17    # "external":I
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    array-length v2, v3

    if-ne v12, v2, :cond_19

    array-length v2, v5

    if-ne v4, v2, :cond_19

    goto :goto_10

    .line 990
    :cond_19
    new-instance v2, Ljava/io/IOException;

    const-string v7, "Error parsing file names"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 976
    .end local v3    # "names":[B
    .end local v4    # "nextFile":I
    .end local v12    # "nextName":I
    .end local v17    # "external":I
    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .restart local v2    # "external":I
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :cond_1a
    move/from16 v17, v2

    .end local v2    # "external":I
    .restart local v17    # "external":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File names length invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 973
    .end local v17    # "external":I
    .restart local v2    # "external":I
    :cond_1b
    move/from16 v17, v2

    .end local v2    # "external":I
    .restart local v17    # "external":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not implemented"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 964
    .end local v15    # "numFiles":J
    .end local v17    # "external":I
    .local v3, "numFiles":J
    :pswitch_8
    move-wide v15, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    if-eqz v6, :cond_1c

    .line 967
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 968
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .local v2, "isAnti":Ljava/util/BitSet;
    move-object v8, v2

    move-object/from16 v7, v18

    goto :goto_11

    .line 965
    .end local v2    # "isAnti":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 957
    .end local v15    # "numFiles":J
    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :pswitch_9
    move-wide v15, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    if-eqz v6, :cond_1d

    .line 960
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 961
    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .local v2, "isEmptyFile":Ljava/util/BitSet;
    move-object v7, v2

    move-object/from16 v8, v19

    goto :goto_11

    .line 958
    .end local v2    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    :cond_1d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    .end local v15    # "numFiles":J
    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :pswitch_a
    move-wide v15, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v3    # "numFiles":J
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 954
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .local v2, "isEmptyStream":Ljava/util/BitSet;
    move-object v6, v2

    goto :goto_11

    .line 1071
    .end local v2    # "isEmptyStream":Ljava/util/BitSet;
    .end local v9    # "propertyType":I
    .end local v10    # "size":J
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    :goto_10
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    .end local v18    # "isEmptyFile":Ljava/util/BitSet;
    .end local v19    # "isAnti":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :goto_11
    move-object/from16 v2, p2

    move-wide v3, v15

    goto/16 :goto_1

    .line 1066
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .restart local v9    # "propertyType":I
    .restart local v10    # "size":J
    .restart local v18    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v19    # "isAnti":Ljava/util/BitSet;
    :cond_1e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete property of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 20
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    move-object/from16 v0, p1

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 824
    .local v1, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 825
    .local v2, "numCoders":J
    const-string v4, "numCoders"

    invoke-static {v4, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 826
    long-to-int v4, v2

    new-array v4, v4, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 827
    .local v4, "coders":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    const-wide/16 v5, 0x0

    .line 828
    .local v5, "totalInStreams":J
    const-wide/16 v7, 0x0

    .line 829
    .local v7, "totalOutStreams":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v4

    if-ge v9, v10, :cond_6

    .line 830
    new-instance v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    invoke-direct {v10}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    aput-object v10, v4, v9

    .line 831
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 832
    .local v10, "bits":I
    and-int/lit8 v14, v10, 0xf

    .line 833
    .local v14, "idSize":I
    and-int/lit8 v15, v10, 0x10

    const/16 v16, 0x1

    if-nez v15, :cond_0

    move/from16 v15, v16

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 834
    .local v15, "isSimple":Z
    :goto_1
    and-int/lit8 v17, v10, 0x20

    if-eqz v17, :cond_1

    move/from16 v17, v16

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    .line 835
    .local v17, "hasAttributes":Z
    :goto_2
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_2

    move/from16 v11, v16

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 837
    .local v11, "moreAlternativeMethods":Z
    :goto_3
    aget-object v12, v4, v9

    new-array v13, v14, [B

    iput-object v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 838
    aget-object v12, v4, v9

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 839
    if-eqz v15, :cond_3

    .line 840
    aget-object v12, v4, v9

    move-wide/from16 v18, v2

    const-wide/16 v2, 0x1

    .end local v2    # "numCoders":J
    .local v18, "numCoders":J
    iput-wide v2, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 841
    aget-object v12, v4, v9

    iput-wide v2, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    goto :goto_4

    .line 843
    .end local v18    # "numCoders":J
    .restart local v2    # "numCoders":J
    :cond_3
    move-wide/from16 v18, v2

    .end local v2    # "numCoders":J
    .restart local v18    # "numCoders":J
    aget-object v2, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 844
    aget-object v2, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 846
    :goto_4
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    add-long/2addr v5, v2

    .line 847
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    add-long/2addr v7, v2

    .line 848
    if-eqz v17, :cond_4

    .line 849
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 850
    .local v2, "propertiesSize":J
    const-string v12, "propertiesSize"

    invoke-static {v12, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 851
    aget-object v12, v4, v9

    long-to-int v13, v2

    new-array v13, v13, [B

    iput-object v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 852
    aget-object v12, v4, v9

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 855
    .end local v2    # "propertiesSize":J
    :cond_4
    if-nez v11, :cond_5

    .line 829
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, v18

    goto/16 :goto_0

    .line 856
    .restart local v10    # "bits":I
    .restart local v11    # "moreAlternativeMethods":Z
    .restart local v14    # "idSize":I
    .restart local v15    # "isSimple":Z
    .restart local v17    # "hasAttributes":Z
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    .end local v18    # "numCoders":J
    .local v2, "numCoders":J
    :cond_6
    move-wide/from16 v18, v2

    .line 860
    .end local v2    # "numCoders":J
    .end local v9    # "i":I
    .restart local v18    # "numCoders":J
    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 861
    const-string v2, "totalInStreams"

    invoke-static {v2, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 862
    iput-wide v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 863
    const-string v2, "totalOutStreams"

    invoke-static {v2, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 864
    iput-wide v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 866
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-eqz v2, :cond_e

    .line 869
    const-wide/16 v2, 0x1

    sub-long v9, v7, v2

    .line 870
    .local v9, "numBindPairs":J
    const-string v2, "numBindPairs"

    invoke-static {v2, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 871
    long-to-int v2, v9

    new-array v2, v2, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 872
    .local v2, "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v11, v2

    if-ge v3, v11, :cond_7

    .line 873
    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    aput-object v11, v2, v3

    .line 874
    aget-object v11, v2, v3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 875
    aget-object v11, v2, v3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 877
    .end local v3    # "i":I
    :cond_7
    iput-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 879
    cmp-long v3, v5, v9

    if-ltz v3, :cond_d

    .line 882
    sub-long v11, v5, v9

    .line 883
    .local v11, "numPackedStreams":J
    const-string v3, "numPackedStreams"

    invoke-static {v3, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 884
    long-to-int v3, v11

    new-array v3, v3, [J

    .line 885
    .local v3, "packedStreams":[J
    const-wide/16 v13, 0x1

    cmp-long v13, v11, v13

    if-nez v13, :cond_b

    .line 887
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    long-to-int v14, v5

    if-ge v13, v14, :cond_9

    .line 888
    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v14

    if-gez v14, :cond_8

    .line 889
    goto :goto_7

    .line 887
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 892
    :cond_9
    :goto_7
    long-to-int v14, v5

    if-eq v13, v14, :cond_a

    .line 895
    int-to-long v14, v13

    const/16 v16, 0x0

    aput-wide v14, v3, v16

    .line 896
    .end local v13    # "i":I
    goto :goto_9

    .line 893
    .restart local v13    # "i":I
    :cond_a
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 897
    .end local v13    # "i":I
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    long-to-int v14, v11

    if-ge v13, v14, :cond_c

    .line 898
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    aput-wide v14, v3, v13

    .line 897
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 901
    .end local v13    # "i":I
    :cond_c
    :goto_9
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 903
    return-object v1

    .line 880
    .end local v3    # "packedStreams":[J
    .end local v11    # "numPackedStreams":J
    :cond_d
    new-instance v3, Ljava/io/IOException;

    const-string v11, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 867
    .end local v2    # "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    .end local v9    # "numBindPairs":J
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Total output streams can\'t be 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readFully(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1466
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1467
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1468
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1469
    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 4
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 561
    .local v0, "nid":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 562
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 563
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 566
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 571
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 572
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 573
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 576
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 577
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 578
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 581
    :cond_2
    if-nez v0, :cond_3

    .line 584
    return-void

    .line 582
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Badly terminated header, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Additional streams unsupported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 11
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 432
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 433
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 434
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 435
    .local v1, "signature":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 436
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 440
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 441
    .local v2, "archiveVersionMajor":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 442
    .local v3, "archiveVersionMinor":B
    if-nez v2, :cond_4

    .line 447
    const/4 v4, 0x0

    .line 448
    .local v4, "headerLooksValid":Z
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 449
    .local v5, "startHeaderCrc":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 451
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v7

    .line 452
    .local v7, "currentPosition":J
    const/16 v9, 0x14

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 453
    .local v9, "peekBuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 454
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v10, v7, v8}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 456
    :cond_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 457
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    if-eqz v10, :cond_0

    .line 458
    const/4 v4, 0x1

    .line 459
    nop

    .line 462
    .end local v7    # "currentPosition":J
    .end local v9    # "peekBuf":Ljava/nio/ByteBuffer;
    :cond_1
    goto :goto_0

    .line 463
    :cond_2
    const/4 v4, 0x1

    .line 466
    :goto_0
    if-eqz v4, :cond_3

    .line 467
    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v7

    .line 468
    .local v7, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    const/4 v8, 0x1

    invoke-direct {p0, v7, p1, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v8

    return-object v8

    .line 471
    .end local v7    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v7

    return-object v7

    .line 443
    .end local v4    # "headerLooksValid":Z
    .end local v5    # "startHeaderCrc":J
    :cond_4
    new-instance v4, Ljava/io/IOException;

    .line 444
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 443
    const-string v6, "Unsupported 7z version (%d,%d)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 437
    .end local v2    # "archiveVersionMajor":B
    .end local v3    # "archiveVersionMinor":B
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad 7z signature"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 10
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 658
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 659
    .local v0, "numPackStreams":J
    const-string v2, "numPackStreams"

    invoke-static {v2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 660
    long-to-int v2, v0

    .line 661
    .local v2, "numPackStreamsInt":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 662
    .local v3, "nid":I
    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 663
    new-array v4, v2, [J

    iput-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 664
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 665
    iget-object v5, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 664
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 667
    .end local v4    # "i":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 670
    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 671
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 672
    new-array v4, v2, [J

    iput-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 673
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 674
    iget-object v5, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 675
    iget-object v5, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    aput-wide v6, v5, v4

    .line 673
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 679
    .end local v4    # "i":I
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 682
    :cond_4
    if-nez v3, :cond_5

    .line 685
    return-void

    .line 683
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Badly terminated PackInfo ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 9
    .param p1, "startHeaderCrc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    .line 549
    .local v0, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v8, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v4, 0x14

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    move-object v2, v8

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 551
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 552
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 553
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    nop

    .line 555
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 554
    return-object v0

    .line 549
    :catchall_0
    move-exception v2

    .end local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "startHeaderCrc":J
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    .restart local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "startHeaderCrc":J
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method private readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 3
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 633
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 634
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 635
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 638
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 639
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 640
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 643
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 646
    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 647
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 648
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 651
    :cond_2
    if-nez v0, :cond_3

    .line 654
    return-void

    .line 652
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Badly terminated StreamsInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 21
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 739
    .local v6, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 738
    .end local v6    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 741
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    .line 743
    .local v1, "totalUnpackStreams":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 744
    .local v2, "nid":I
    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    .line 745
    const/4 v1, 0x0

    .line 746
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    .line 747
    .local v8, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    .line 748
    .local v9, "numStreams":J
    const-string v11, "numStreams"

    invoke-static {v11, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 749
    long-to-int v11, v9

    iput v11, v8, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 750
    int-to-long v11, v1

    add-long/2addr v11, v9

    long-to-int v1, v11

    .line 746
    .end local v8    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v9    # "numStreams":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 752
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 755
    :cond_2
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 756
    .local v4, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    new-array v6, v1, [J

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 757
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 758
    new-array v6, v1, [J

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 760
    const/4 v6, 0x0

    .line 761
    .local v6, "nextUnpackStream":I
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x9

    if-ge v9, v8, :cond_5

    aget-object v11, v7, v9

    .line 762
    .local v11, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v12, :cond_3

    .line 763
    goto :goto_4

    .line 765
    :cond_3
    const-wide/16 v12, 0x0

    .line 766
    .local v12, "sum":J
    if-ne v2, v10, :cond_4

    .line 767
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    iget v14, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v14, v5

    if-ge v10, v14, :cond_4

    .line 768
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    .line 769
    .local v14, "size":J
    iget-object v3, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v17, v6, 0x1

    .end local v6    # "nextUnpackStream":I
    .local v17, "nextUnpackStream":I
    aput-wide v14, v3, v6

    .line 770
    add-long/2addr v12, v14

    .line 767
    .end local v14    # "size":J
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v17

    goto :goto_3

    .line 773
    .end local v10    # "i":I
    .end local v17    # "nextUnpackStream":I
    .restart local v6    # "nextUnpackStream":I
    :cond_4
    iget-object v3, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v10, v6, 0x1

    .end local v6    # "nextUnpackStream":I
    .local v10, "nextUnpackStream":I
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v14

    sub-long/2addr v14, v12

    aput-wide v14, v3, v6

    move v6, v10

    .line 761
    .end local v10    # "nextUnpackStream":I
    .end local v11    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v12    # "sum":J
    .restart local v6    # "nextUnpackStream":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 775
    :cond_5
    if-ne v2, v10, :cond_6

    .line 776
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 779
    :cond_6
    const/4 v3, 0x0

    .line 780
    .local v3, "numDigests":I
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_9

    aget-object v10, v7, v9

    .line 781
    .local v10, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v11, v5, :cond_7

    iget-boolean v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v11, :cond_8

    .line 782
    :cond_7
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/2addr v3, v11

    .line 780
    .end local v10    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 786
    :cond_9
    const/16 v7, 0xa

    if-ne v2, v7, :cond_f

    .line 787
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct {v7, v8, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 788
    .local v9, "hasMissingCrc":Ljava/util/BitSet;
    new-array v10, v3, [J

    .line 789
    .local v10, "missingCrcs":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v3, :cond_b

    .line 790
    invoke-virtual {v9, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 791
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 789
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 794
    .end local v11    # "i":I
    :cond_b
    const/4 v11, 0x0

    .line 795
    .local v11, "nextCrc":I
    const/4 v12, 0x0

    .line 796
    .local v12, "nextMissingCrc":I
    iget-object v13, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v14, v13

    move v15, v12

    move v12, v11

    const/4 v11, 0x0

    .end local v11    # "nextCrc":I
    .local v12, "nextCrc":I
    .local v15, "nextMissingCrc":I
    :goto_7
    if-ge v11, v14, :cond_e

    aget-object v5, v13, v11

    .line 797
    .local v5, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move/from16 v17, v1

    .end local v1    # "totalUnpackStreams":I
    .local v17, "totalUnpackStreams":I
    iget v1, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "nid":I
    .local v18, "nid":I
    if-ne v1, v2, :cond_c

    iget-boolean v1, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v1, :cond_c

    .line 798
    iget-object v1, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v1, v12, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 799
    iget-object v1, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move/from16 v16, v3

    .end local v3    # "numDigests":I
    .local v16, "numDigests":I
    iget-wide v2, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v2, v1, v12

    .line 800
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 797
    .end local v16    # "numDigests":I
    .restart local v3    # "numDigests":I
    :cond_c
    move/from16 v16, v3

    .line 802
    .end local v3    # "numDigests":I
    .restart local v16    # "numDigests":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v2, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v1, v2, :cond_d

    .line 803
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v9, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v2, v12, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 804
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v19, v10, v15

    aput-wide v19, v2, v12

    .line 805
    add-int/lit8 v12, v12, 0x1

    .line 806
    add-int/lit8 v15, v15, 0x1

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 796
    .end local v1    # "i":I
    .end local v5    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_d
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    const/4 v5, 0x1

    goto :goto_7

    .line 811
    .end local v16    # "numDigests":I
    .end local v17    # "totalUnpackStreams":I
    .end local v18    # "nid":I
    .local v1, "totalUnpackStreams":I
    .restart local v2    # "nid":I
    .restart local v3    # "numDigests":I
    :cond_e
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v3

    .end local v1    # "totalUnpackStreams":I
    .end local v2    # "nid":I
    .end local v3    # "numDigests":I
    .restart local v16    # "numDigests":I
    .restart local v17    # "totalUnpackStreams":I
    .restart local v18    # "nid":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .end local v18    # "nid":I
    .restart local v2    # "nid":I
    goto :goto_a

    .line 786
    .end local v9    # "hasMissingCrc":Ljava/util/BitSet;
    .end local v10    # "missingCrcs":[J
    .end local v12    # "nextCrc":I
    .end local v15    # "nextMissingCrc":I
    .end local v16    # "numDigests":I
    .end local v17    # "totalUnpackStreams":I
    .restart local v1    # "totalUnpackStreams":I
    .restart local v3    # "numDigests":I
    :cond_f
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v3

    .line 814
    .end local v1    # "totalUnpackStreams":I
    .end local v3    # "numDigests":I
    .restart local v16    # "numDigests":I
    .restart local v17    # "totalUnpackStreams":I
    :goto_a
    if-nez v2, :cond_10

    .line 818
    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 819
    return-void

    .line 815
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Badly terminated SubStreamsInfo"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readUint64(Ljava/nio/ByteBuffer;)J
    .locals 10
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1411
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    .line 1412
    .local v0, "firstByte":J
    const/16 v2, 0x80

    .line 1413
    .local v2, "mask":I
    const-wide/16 v3, 0x0

    .line 1414
    .local v3, "value":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 1415
    int-to-long v6, v2

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1416
    add-int/lit8 v6, v2, -0x1

    int-to-long v6, v6

    and-long/2addr v6, v0

    mul-int/lit8 v8, v5, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v6, v3

    return-wide v6

    .line 1418
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v6, v6

    .line 1419
    .local v6, "nextByte":J
    mul-int/lit8 v8, v5, 0x8

    shl-long v8, v6, v8

    or-long/2addr v3, v8

    .line 1420
    ushr-int/lit8 v2, v2, 0x1

    .line 1414
    .end local v6    # "nextByte":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1422
    .end local v5    # "i":I
    :cond_1
    return-wide v3
.end method

.method private readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 17
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 689
    .local v0, "nid":I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 692
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 693
    .local v1, "numFolders":J
    const-string v3, "numFolders"

    invoke-static {v3, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 694
    long-to-int v3, v1

    .line 695
    .local v3, "numFoldersInt":I
    new-array v4, v3, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 696
    .local v4, "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move-object/from16 v5, p2

    iput-object v4, v5, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 697
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 698
    .local v6, "external":I
    if-nez v6, :cond_8

    .line 701
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_0

    .line 702
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v8

    aput-object v8, v4, v7

    .line 701
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 705
    .end local v7    # "i":I
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 706
    const/16 v7, 0xc

    if-ne v0, v7, :cond_7

    .line 709
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_2

    aget-object v10, v4, v9

    .line 710
    .local v10, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const-string v11, "totalOutputStreams"

    iget-wide v12, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    invoke-static {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoInt(Ljava/lang/String;J)V

    .line 711
    iget-wide v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v11, v11

    new-array v11, v11, [J

    iput-object v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 712
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    int-to-long v12, v11

    iget-wide v14, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 713
    iget-object v12, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    aput-wide v13, v12, v11

    .line 712
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 709
    .end local v10    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v11    # "i":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 717
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 718
    const/16 v7, 0xa

    if-ne v0, v7, :cond_5

    .line 719
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    invoke-direct {v7, v9, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v10

    .line 720
    .local v10, "crcsDefined":Ljava/util/BitSet;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v3, :cond_4

    .line 721
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 722
    aget-object v12, v4, v11

    const/4 v13, 0x1

    iput-boolean v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 723
    aget-object v12, v4, v11

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    iput-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_4

    .line 725
    :cond_3
    aget-object v12, v4, v11

    iput-boolean v8, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 720
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 729
    .end local v11    # "i":I
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_5

    .line 718
    .end local v10    # "crcsDefined":Ljava/util/BitSet;
    :cond_5
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    .line 732
    :goto_5
    if-nez v0, :cond_6

    .line 735
    return-void

    .line 733
    :cond_6
    new-instance v8, Ljava/io/IOException;

    const-string v10, "Badly terminated UnpackInfo"

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 707
    :cond_7
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    new-instance v8, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected kCodersUnpackSize, got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 699
    :cond_8
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    new-instance v8, Ljava/io/IOException;

    const-string v10, "External unsupported"

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 690
    .end local v1    # "numFolders":J
    .end local v3    # "numFoldersInt":I
    .end local v4    # "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v6    # "external":I
    :cond_9
    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v5, p2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected kFolder, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static skipBytesFully(Ljava/nio/ByteBuffer;J)J
    .locals 4
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "bytesToSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1454
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1456
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1457
    .local v0, "current":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1458
    .local v1, "maxSkip":I
    int-to-long v2, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 1459
    int-to-long p1, v1

    .line 1461
    :cond_1
    long-to-int v2, p1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1462
    return-wide p1
.end method

.method private tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 17
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 477
    .local v3, "nidBuf":Ljava/nio/ByteBuffer;
    const-wide/32 v4, 0x100000

    .line 479
    .local v4, "searchLimit":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v6

    const-wide/16 v8, 0x14

    add-long/2addr v6, v8

    .line 482
    .local v6, "previousDataSize":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    add-long/2addr v8, v10

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v12

    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    .line 483
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    .local v8, "minPos":J
    goto :goto_0

    .line 485
    .end local v8    # "minPos":J
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 487
    .restart local v8    # "minPos":J
    :goto_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    .line 489
    .local v10, "pos":J
    :goto_1
    cmp-long v0, v10, v8

    if-lez v0, :cond_4

    .line 490
    sub-long/2addr v10, v12

    .line 491
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v10, v11}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 492
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 493
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 494
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v14, 0x0

    aget-byte v15, v0, v14

    .line 496
    .local v15, "nid":I
    const/16 v0, 0x17

    if-eq v15, v0, :cond_2

    if-ne v15, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v2, p1

    move-object/from16 v16, v3

    goto :goto_3

    .line 499
    :cond_2
    :goto_2
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 500
    .local v0, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    move-object/from16 v16, v3

    .end local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    .local v16, "nidBuf":Ljava/nio/ByteBuffer;
    sub-long v2, v10, v6

    :try_start_1
    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 501
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    move-object/from16 v2, p1

    :try_start_2
    invoke-direct {v1, v0, v2, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v3

    .line 504
    .local v3, "result":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    iget-object v14, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v14, :cond_3

    iget-object v14, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v14, v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v14, :cond_3

    .line 505
    return-object v3

    .line 509
    .end local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v3    # "result":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    :cond_3
    goto :goto_3

    .line 507
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_3

    .end local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    .local v3, "nidBuf":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    .line 511
    .end local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    .end local v15    # "nid":I
    .restart local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    :goto_3
    move-object/from16 v3, v16

    const/4 v2, 0x1

    goto :goto_1

    .line 512
    .end local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    :cond_4
    move-object/from16 v16, v3

    .end local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    .restart local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Start header corrupt and unable to guess end header"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static utf16Decode([C)[B
    .locals 2
    .param p0, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    if-nez p0, :cond_0

    .line 1510
    const/4 v0, 0x0

    return-object v0

    .line 1512
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1513
    .local v0, "encoded":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1514
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 1516
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 1517
    .local v1, "e":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1518
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_2

    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 384
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 387
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 388
    goto :goto_0

    .line 383
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 384
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 387
    :cond_1
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 388
    throw v2

    .line 390
    :cond_2
    :goto_0
    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 4

    .line 1494
    const-string v0, "unknown archive"

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1498
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "lastSegment":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1500
    .local v1, "dotPos":I
    if-lez v1, :cond_1

    .line 1501
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1503
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1495
    .end local v0    # "lastSegment":Ljava/lang/String;
    .end local v1    # "dotPos":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    const/4 v0, -0x1

    .line 1340
    .local v0, "entryIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1341
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 1342
    move v0, v1

    .line 1343
    goto :goto_1

    .line 1340
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1347
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 1351
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(I)V

    .line 1352
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 1353
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget v1, v1, v0

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 1354
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1348
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 401
    const/4 v0, 0x0

    return-object v0

    .line 403
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 404
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    .line 405
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getUseDefaultNameForUnnamedEntries()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 408
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(I)V

    .line 409
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 410
    return-object v0
.end method

.method public getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
    .locals 1

    .line 1397
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1298
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1299
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 1300
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 1302
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1366
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1380
    if-nez p3, :cond_0

    .line 1381
    const/4 v0, 0x0

    return v0

    .line 1383
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1384
    .local v0, "cnt":I
    if-lez v0, :cond_1

    .line 1385
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 1387
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1473
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;
.super Ljava/io/FilterInputStream;
.source "SevenZFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p2, "x0"    # Ljava/io/InputStream;

    .line 1243
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private count(I)V
    .locals 5
    .param p1, "c"    # I

    .line 1268
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->access$000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->access$002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J

    .line 1269
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1247
    .local v0, "r":I
    if-ltz v0, :cond_0

    .line 1248
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->count(I)V

    .line 1250
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

    .line 1254
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1258
    if-nez p3, :cond_0

    .line 1259
    const/4 v0, 0x0

    return v0

    .line 1261
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1262
    .local v0, "r":I
    if-ltz v0, :cond_1

    .line 1263
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->count(I)V

    .line 1265
    :cond_1
    return v0
.end method

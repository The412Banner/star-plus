.class public Lcom/github/luben/zstd/ZstdDictDecompress;
.super Lcom/github/luben/zstd/SharedDictBase;
.source "ZstdDictDecompress.java"


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "dict"    # [B

    .line 23
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/github/luben/zstd/ZstdDictDecompress;-><init>([BII)V

    .line 24
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4
    .param p1, "dict"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 33
    invoke-direct {p0}, Lcom/github/luben/zstd/SharedDictBase;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDictDecompress;->nativePtr:J

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdDictDecompress;->init([BII)V

    .line 37
    iget-wide v2, p0, Lcom/github/luben/zstd/ZstdDictDecompress;->nativePtr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDictDecompress;->storeFence()V

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ZSTD_createDDict failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native free()V
.end method

.method private native init([BII)V
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .line 5
    invoke-super {p0}, Lcom/github/luben/zstd/SharedDictBase;->close()V

    return-void
.end method

.method doClose()V
    .locals 4

    .line 48
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDictDecompress;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDictDecompress;->free()V

    .line 50
    iput-wide v2, p0, Lcom/github/luben/zstd/ZstdDictDecompress;->nativePtr:J

    .line 52
    :cond_0
    return-void
.end method

.class Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;
.super Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;
.source "ZstdDirectBufferCompressingStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;-><init>(Ljava/nio/ByteBuffer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;


# direct methods
.method constructor <init>(Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .param p2, "target"    # Ljava/nio/ByteBuffer;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;->this$0:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;

    invoke-direct {p0, p2, p3}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method protected flushBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "toFlush"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;->this$0:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->flushBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

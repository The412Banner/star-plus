.class public Lcom/winlator/cmod/renderer/VertexAttribute;
.super Ljava/lang/Object;
.source "VertexAttribute.java"


# instance fields
.field private buffer:Ljava/nio/Buffer;

.field private bufferId:I

.field private final itemSize:B

.field private location:I

.field private final name:Ljava/lang/String;

.field private needsUpdate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "itemSize"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->needsUpdate:Z

    .line 17
    iput-object p1, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->name:Ljava/lang/String;

    .line 18
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->itemSize:B

    .line 19
    return-void
.end method


# virtual methods
.method public bind(I)V
    .locals 7
    .param p1, "programId"    # I

    .line 47
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/VertexAttribute;->update()V

    .line 48
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    .line 49
    :cond_0
    const v0, 0x8892

    iget v1, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 50
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 51
    iget v1, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    iget-byte v2, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->itemSize:B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 52
    return-void
.end method

.method public clear()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    .line 74
    :cond_0
    return-void
.end method

.method public count()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-byte v1, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->itemSize:B

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/VertexAttribute;->clear()V

    .line 62
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    if-lez v0, :cond_0

    .line 63
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 64
    .local v0, "bufferIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 65
    iput v2, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    .line 67
    .end local v0    # "bufferIds":[I
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    .line 55
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 56
    :cond_0
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 57
    return-void
.end method

.method public getLocation()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->location:I

    return v0
.end method

.method public put([F)V
    .locals 1
    .param p1, "array"    # [F

    .line 26
    invoke-static {p1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->needsUpdate:Z

    .line 28
    return-void
.end method

.method public update()V
    .locals 5

    .line 31
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->needsUpdate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 33
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 34
    .local v2, "bufferIds":[I
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 35
    aget v0, v2, v1

    iput v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    .line 38
    .end local v2    # "bufferIds":[I
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 39
    .local v0, "size":I
    iget v2, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->bufferId:I

    const v3, 0x8892

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 40
    iget-object v2, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->buffer:Ljava/nio/Buffer;

    const v4, 0x88e4

    invoke-static {v3, v0, v2, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 42
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 43
    iput-boolean v1, p0, Lcom/winlator/cmod/renderer/VertexAttribute;->needsUpdate:Z

    .line 44
    return-void

    .line 31
    .end local v0    # "size":I
    :cond_2
    :goto_0
    return-void
.end method

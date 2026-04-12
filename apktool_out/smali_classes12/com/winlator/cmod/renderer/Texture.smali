.class public Lcom/winlator/cmod/renderer/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field protected format:I

.field private magFilter:I

.field private minFilter:I

.field protected needsUpdate:Z

.field protected textureId:I

.field protected unpackAlignment:B

.field private wrapS:I

.field private wrapT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    .line 13
    const v0, 0x812f

    iput v0, p0, Lcom/winlator/cmod/renderer/Texture;->wrapS:I

    .line 14
    iput v0, p0, Lcom/winlator/cmod/renderer/Texture;->wrapT:I

    .line 15
    const/16 v0, 0x2601

    iput v0, p0, Lcom/winlator/cmod/renderer/Texture;->magFilter:I

    .line 16
    iput v0, p0, Lcom/winlator/cmod/renderer/Texture;->minFilter:I

    .line 17
    const v0, 0x80e1

    iput v0, p0, Lcom/winlator/cmod/renderer/Texture;->format:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/Texture;->needsUpdate:Z

    .line 19
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/winlator/cmod/renderer/Texture;->unpackAlignment:B

    return-void
.end method


# virtual methods
.method public allocateTexture(SSLjava/nio/ByteBuffer;)V
    .locals 14
    .param p1, "width"    # S
    .param p2, "height"    # S
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .line 23
    move-object v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 24
    .local v2, "textureIds":[I
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 25
    aget v1, v2, v3

    iput v1, v0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    .line 27
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 28
    const/16 v1, 0xcf5

    const/4 v4, 0x4

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 29
    iget v1, v0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    const/16 v4, 0xde1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    if-eqz p3, :cond_0

    .line 32
    iget v7, v0, Lcom/winlator/cmod/renderer/Texture;->format:I

    iget v11, v0, Lcom/winlator/cmod/renderer/Texture;->format:I

    const/16 v12, 0x1401

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v13, p3

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 35
    :cond_0
    const/16 v1, 0x2802

    iget v5, v0, Lcom/winlator/cmod/renderer/Texture;->wrapS:I

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 36
    const/16 v1, 0x2803

    iget v5, v0, Lcom/winlator/cmod/renderer/Texture;->wrapT:I

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 37
    const/16 v1, 0x2800

    iget v5, v0, Lcom/winlator/cmod/renderer/Texture;->magFilter:I

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 38
    const/16 v1, 0x2801

    iget v5, v0, Lcom/winlator/cmod/renderer/Texture;->minFilter:I

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 40
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 41
    return-void
.end method

.method public copyFromFramebuffer(ISS)V
    .locals 12
    .param p1, "framebuffer"    # I
    .param p2, "width"    # S
    .param p3, "height"    # S

    .line 115
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/Texture;->isAllocated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3, v1}, Lcom/winlator/cmod/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    .line 116
    :cond_0
    const v0, 0x8d40

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 117
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 118
    iget v2, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v7, 0x0

    move v9, p2

    move v10, p3

    invoke-static/range {v4 .. v11}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 120
    const/4 v2, 0x0

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 122
    invoke-static {v1}, Lcom/winlator/cmod/XrActivity;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/winlator/cmod/XrActivity;->getInstance()Lcom/winlator/cmod/XrActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->bindFramebuffer()V

    .line 123
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 126
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    if-lez v0, :cond_0

    .line 127
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 128
    .local v0, "textureIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 129
    iput v2, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    .line 131
    .end local v0    # "textureIds":[I
    :cond_0
    return-void
.end method

.method protected generateTextureId()V
    .locals 3

    .line 134
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 135
    .local v1, "textureIds":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 136
    aget v0, v1, v2

    iput v0, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    .line 137
    return-void
.end method

.method public getFormat()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->format:I

    return v0
.end method

.method public getMagFilter()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->magFilter:I

    return v0
.end method

.method public getMinFilter()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->minFilter:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    return v0
.end method

.method public getWrapS()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->wrapS:I

    return v0
.end method

.method public getWrapT()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->wrapT:I

    return v0
.end method

.method public isAllocated()Z
    .locals 1

    .line 107
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedsUpdate()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/Texture;->needsUpdate:Z

    return v0
.end method

.method public setFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .line 80
    iput p1, p0, Lcom/winlator/cmod/renderer/Texture;->format:I

    .line 81
    return-void
.end method

.method public setMagFilter(I)V
    .locals 0
    .param p1, "magFilter"    # I

    .line 64
    iput p1, p0, Lcom/winlator/cmod/renderer/Texture;->magFilter:I

    .line 65
    return-void
.end method

.method public setMinFilter(I)V
    .locals 0
    .param p1, "minFilter"    # I

    .line 72
    iput p1, p0, Lcom/winlator/cmod/renderer/Texture;->minFilter:I

    .line 73
    return-void
.end method

.method public setNeedsUpdate(Z)V
    .locals 0
    .param p1, "needsUpdate"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/winlator/cmod/renderer/Texture;->needsUpdate:Z

    .line 89
    return-void
.end method

.method protected setTextureParameters()V
    .locals 3

    .line 140
    const/16 v0, 0x2802

    iget v1, p0, Lcom/winlator/cmod/renderer/Texture;->wrapS:I

    const/16 v2, 0xde1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 141
    const/16 v0, 0x2803

    iget v1, p0, Lcom/winlator/cmod/renderer/Texture;->wrapT:I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 142
    const/16 v0, 0x2800

    iget v1, p0, Lcom/winlator/cmod/renderer/Texture;->magFilter:I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 143
    const/16 v0, 0x2801

    iget v1, p0, Lcom/winlator/cmod/renderer/Texture;->minFilter:I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 144
    return-void
.end method

.method public setWrapS(I)V
    .locals 0
    .param p1, "wrapS"    # I

    .line 48
    iput p1, p0, Lcom/winlator/cmod/renderer/Texture;->wrapS:I

    .line 49
    return-void
.end method

.method public setWrapT(I)V
    .locals 0
    .param p1, "wrapT"    # I

    .line 56
    iput p1, p0, Lcom/winlator/cmod/renderer/Texture;->wrapT:I

    .line 57
    return-void
.end method

.method public updateFromDrawable(Lcom/winlator/cmod/xserver/Drawable;)V
    .locals 11
    .param p1, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 92
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 93
    .local v9, "data":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/Texture;->isAllocated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-short v0, p1, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-short v1, p1, Lcom/winlator/cmod/xserver/Drawable;->height:S

    invoke-virtual {p0, v0, v1, v9}, Lcom/winlator/cmod/renderer/Texture;->allocateTexture(SSLjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/Texture;->needsUpdate:Z

    if-eqz v0, :cond_2

    .line 99
    iget v0, p0, Lcom/winlator/cmod/renderer/Texture;->textureId:I

    const/16 v10, 0xde1

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    iget-short v4, p1, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-short v5, p1, Lcom/winlator/cmod/xserver/Drawable;->height:S

    iget v6, p0, Lcom/winlator/cmod/renderer/Texture;->format:I

    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 101
    const/4 v0, 0x0

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 102
    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/Texture;->needsUpdate:Z

    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.class public Lcom/winlator/cmod/renderer/RenderTarget;
.super Lcom/winlator/cmod/renderer/Texture;
.source "RenderTarget.java"


# instance fields
.field private framebuffer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/Texture;-><init>()V

    .line 14
    return-void
.end method

.method private generateFramebuffer()V
    .locals 3

    .line 19
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 21
    .local v1, "framebuffers":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 23
    aget v0, v1, v2

    iput v0, p0, Lcom/winlator/cmod/renderer/RenderTarget;->framebuffer:I

    .line 24
    return-void
.end method


# virtual methods
.method public allocateFramebuffer(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 29
    iget v0, p0, Lcom/winlator/cmod/renderer/RenderTarget;->framebuffer:I

    if-eqz v0, :cond_0

    .line 30
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/RenderTarget;->generateFramebuffer()V

    .line 37
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/RenderTarget;->generateTextureId()V

    .line 40
    iget v0, p0, Lcom/winlator/cmod/renderer/RenderTarget;->framebuffer:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 43
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 46
    const/16 v0, 0xcf5

    iget-byte v2, p0, Lcom/winlator/cmod/renderer/RenderTarget;->unpackAlignment:B

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 49
    iget v0, p0, Lcom/winlator/cmod/renderer/RenderTarget;->textureId:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    iget v5, p0, Lcom/winlator/cmod/renderer/RenderTarget;->format:I

    iget v9, p0, Lcom/winlator/cmod/renderer/RenderTarget;->format:I

    const/16 v10, 0x1401

    const/4 v11, 0x0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 58
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/RenderTarget;->setTextureParameters()V

    .line 61
    const v0, 0x8ce0

    iget v3, p0, Lcom/winlator/cmod/renderer/RenderTarget;->textureId:I

    invoke-static {v1, v0, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 67
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 70
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 71
    return-void
.end method

.method public getFramebuffer()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/winlator/cmod/renderer/RenderTarget;->framebuffer:I

    return v0
.end method

.class public Lcom/winlator/cmod/renderer/EffectComposer;
.super Ljava/lang/Object;
.source "EffectComposer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectComposer"


# instance fields
.field private final effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/renderer/effects/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private isRendering:Z

.field private readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

.field private final renderer:Lcom/winlator/cmod/renderer/GLRenderer;

.field private writeBuffer:Lcom/winlator/cmod/renderer/RenderTarget;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/renderer/GLRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/winlator/cmod/renderer/GLRenderer;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->isRendering:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    .line 28
    return-void
.end method

.method private initBuffers()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/winlator/cmod/renderer/RenderTarget;

    invoke-direct {v0}, Lcom/winlator/cmod/renderer/RenderTarget;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/GLRenderer;->getSurfaceWidth()I

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v2}, Lcom/winlator/cmod/renderer/GLRenderer;->getSurfaceHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/renderer/RenderTarget;->allocateFramebuffer(II)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->writeBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lcom/winlator/cmod/renderer/RenderTarget;

    invoke-direct {v0}, Lcom/winlator/cmod/renderer/RenderTarget;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->writeBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    .line 42
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->writeBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/GLRenderer;->getSurfaceWidth()I

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v2}, Lcom/winlator/cmod/renderer/GLRenderer;->getSurfaceHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/renderer/RenderTarget;->allocateFramebuffer(II)V

    .line 45
    :cond_1
    return-void
.end method

.method private renderEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V
    .locals 5
    .param p1, "effect"    # Lcom/winlator/cmod/renderer/effects/Effect;

    .line 151
    invoke-virtual {p1}, Lcom/winlator/cmod/renderer/effects/Effect;->getMaterial()Lcom/winlator/cmod/renderer/material/ShaderMaterial;

    move-result-object v0

    .line 152
    .local v0, "material":Lcom/winlator/cmod/renderer/material/ShaderMaterial;
    if-nez v0, :cond_0

    .line 154
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->use()V

    .line 161
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/GLRenderer;->getQuadVertices()Lcom/winlator/cmod/renderer/VertexAttribute;

    move-result-object v1

    iget v2, v0, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->programId:I

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/renderer/VertexAttribute;->bind(I)V

    .line 165
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget v1, v1, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget v2, v2, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceHeight:I

    int-to-float v2, v2

    const-string v3, "resolution"

    invoke-virtual {v0, v3, v1, v2}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->setUniformVec2(Ljava/lang/String;FF)V

    .line 166
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 167
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/RenderTarget;->getTextureId()I

    move-result v1

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 168
    const-string v1, "screenTexture"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->setUniformInt(Ljava/lang/String;I)V

    .line 172
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget-object v1, v1, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/VertexAttribute;->count()I

    move-result v1

    const/4 v4, 0x5

    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 176
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 178
    return-void
.end method

.method private swapBuffers()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->writeBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    .line 183
    .local v0, "tmp":Lcom/winlator/cmod/renderer/RenderTarget;
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    iput-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->writeBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    .line 184
    iput-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    .line 186
    return-void
.end method


# virtual methods
.method public declared-synchronized addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/winlator/cmod/renderer/effects/Effect;

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local p0    # "this":Lcom/winlator/cmod/renderer/EffectComposer;
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget-object v0, v0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 47
    .end local p1    # "effect":Lcom/winlator/cmod/renderer/effects/Effect;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/winlator/cmod/renderer/effects/Effect;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "effectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/renderer/effects/Effect;

    .line 65
    .local v1, "effect":Lcom/winlator/cmod/renderer/effects/Effect;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/renderer/effects/Effect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 69
    .end local v1    # "effect":Lcom/winlator/cmod/renderer/effects/Effect;
    .end local p0    # "this":Lcom/winlator/cmod/renderer/EffectComposer;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 63
    .end local p1    # "effectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized hasEffects()Z
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    .line 78
    .local v0, "hasEffects":Z
    monitor-exit p0

    return v0

    .line 75
    .end local v0    # "hasEffects":Z
    .end local p0    # "this":Lcom/winlator/cmod/renderer/EffectComposer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/winlator/cmod/renderer/effects/Effect;

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget-object v0, v0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/winlator/cmod/renderer/EffectComposer;
    .end local p1    # "effect":Lcom/winlator/cmod/renderer/effects/Effect;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized render()V
    .locals 9

    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->isRendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/EffectComposer;->isRendering:Z

    .line 103
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/EffectComposer;->initBuffers()V

    .line 106
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/EffectComposer;->hasEffects()Z

    move-result v1

    const v2, 0x8d40

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->readBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/RenderTarget;->getFramebuffer()I

    move-result v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_0

    .line 110
    .end local p0    # "this":Lcom/winlator/cmod/renderer/EffectComposer;
    :cond_1
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/GLRenderer;->drawFrame()V

    .line 119
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/renderer/effects/Effect;

    .line 120
    .local v4, "effect":Lcom/winlator/cmod/renderer/effects/Effect;
    iget-object v5, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    iget-object v6, p0, Lcom/winlator/cmod/renderer/EffectComposer;->effects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v3

    .line 121
    .local v5, "renderToScreen":Z
    :goto_2
    if-eqz v5, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/winlator/cmod/renderer/EffectComposer;->writeBuffer:Lcom/winlator/cmod/renderer/RenderTarget;

    invoke-virtual {v6}, Lcom/winlator/cmod/renderer/RenderTarget;->getFramebuffer()I

    move-result v6

    .line 124
    .local v6, "targetFramebuffer":I
    :goto_3
    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 127
    iget-object v7, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget v7, v7, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceWidth:I

    iget-object v8, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget v8, v8, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceHeight:I

    invoke-static {v3, v3, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 128
    iget-object v7, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v7, v0}, Lcom/winlator/cmod/renderer/GLRenderer;->setViewportNeedsUpdate(Z)V

    .line 132
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 136
    invoke-direct {p0, v4}, Lcom/winlator/cmod/renderer/EffectComposer;->renderEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 140
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/EffectComposer;->swapBuffers()V

    .line 142
    .end local v4    # "effect":Lcom/winlator/cmod/renderer/effects/Effect;
    .end local v5    # "renderToScreen":Z
    .end local v6    # "targetFramebuffer":I
    goto :goto_1

    .line 144
    :cond_4
    iput-boolean v3, p0, Lcom/winlator/cmod/renderer/EffectComposer;->isRendering:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized toggleToonEffect()V
    .locals 3

    monitor-enter p0

    .line 190
    :try_start_0
    const-class v0, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    .line 191
    .local v0, "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 193
    const-string v1, "EffectComposer"

    const-string v2, "ToonEffect removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local p0    # "this":Lcom/winlator/cmod/renderer/EffectComposer;
    :cond_0
    new-instance v1, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    invoke-direct {v1}, Lcom/winlator/cmod/renderer/effects/ToonEffect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 196
    const-string v1, "EffectComposer"

    const-string v2, "ToonEffect added"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/renderer/EffectComposer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    iget-object v1, v1, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v1}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 189
    .end local v0    # "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

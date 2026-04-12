.class public Lcom/winlator/cmod/xserver/DrawableManager;
.super Lcom/winlator/cmod/xserver/XResourceManager;
.source "DrawableManager.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;


# instance fields
.field private final drawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xserver/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 12
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/XResourceManager;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    .line 13
    iput-object p1, p0, Lcom/winlator/cmod/xserver/DrawableManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 14
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/PixmapManager;->addOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public createDrawable(ISSB)Lcom/winlator/cmod/xserver/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "width"    # S
    .param p3, "height"    # S
    .param p4, "depth"    # B

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DrawableManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v0, p4}, Lcom/winlator/cmod/xserver/PixmapManager;->getVisualForDepth(B)Lcom/winlator/cmod/xserver/Visual;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/xserver/DrawableManager;->createDrawable(ISSLcom/winlator/cmod/xserver/Visual;)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public createDrawable(ISSLcom/winlator/cmod/xserver/Visual;)Lcom/winlator/cmod/xserver/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "width"    # S
    .param p3, "height"    # S
    .param p4, "visual"    # Lcom/winlator/cmod/xserver/Visual;

    .line 31
    if-nez p1, :cond_1

    .line 32
    new-instance v0, Lcom/winlator/cmod/xserver/Drawable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/winlator/cmod/xserver/Drawable;-><init>(IIILcom/winlator/cmod/xserver/Visual;)V

    .line 33
    .local v0, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    return-object v0

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Drawable with id 0 has null data at creation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    .end local v0    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_2
    new-instance v0, Lcom/winlator/cmod/xserver/Drawable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/winlator/cmod/xserver/Drawable;-><init>(IIILcom/winlator/cmod/xserver/Visual;)V

    .line 40
    .restart local v0    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 43
    iget-object v1, p0, Lcom/winlator/cmod/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    return-object v0

    .line 41
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has null data at creation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;
    .locals 4
    .param p1, "id"    # I

    .line 18
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Drawable;

    .line 19
    .local v0, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has null data when fetched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getVisual()Lcom/winlator/cmod/xserver/Visual;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DrawableManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/PixmapManager;->visual:Lcom/winlator/cmod/xserver/Visual;

    return-object v0
.end method

.method public onFreeResource(Lcom/winlator/cmod/xserver/XResource;)V
    .locals 5
    .param p1, "resource"    # Lcom/winlator/cmod/xserver/XResource;

    .line 69
    instance-of v0, p1, Lcom/winlator/cmod/xserver/Pixmap;

    if-eqz v0, :cond_1

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/winlator/cmod/xserver/Pixmap;

    .line 71
    .local v0, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    iget-object v1, v0, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    .line 72
    .local v1, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    iget v2, v1, Lcom/winlator/cmod/xserver/Drawable;->id:I

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/xserver/DrawableManager;->removeDrawable(I)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable for Pixmap with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget v4, v4, Lcom/winlator/cmod/xserver/Drawable;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has null data during free."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    .end local v0    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v1    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_1
    :goto_0
    return-void
.end method

.method public removeDrawable(I)V
    .locals 4
    .param p1, "id"    # I

    .line 48
    iget-object v0, p0, Lcom/winlator/cmod/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Drawable;

    .line 49
    .local v0, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getTexture()Lcom/winlator/cmod/renderer/Texture;

    move-result-object v1

    .line 57
    .local v1, "texture":Lcom/winlator/cmod/renderer/Texture;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/xserver/DrawableManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v2

    iget-object v2, v2, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/winlator/cmod/xserver/DrawableManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/winlator/cmod/xserver/DrawableManager$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/renderer/Texture;)V

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getOnDestroyListener()Lcom/winlator/cmod/core/Callback;

    move-result-object v2

    .line 60
    .local v2, "onDestroyListener":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Lcom/winlator/cmod/xserver/Drawable;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 62
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/xserver/Drawable;->setOnDrawListener(Ljava/lang/Runnable;)V

    .line 63
    iget-object v3, p0, Lcom/winlator/cmod/xserver/DrawableManager;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 64
    return-void

    .line 53
    .end local v1    # "texture":Lcom/winlator/cmod/renderer/Texture;
    .end local v2    # "onDestroyListener":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Lcom/winlator/cmod/xserver/Drawable;>;"
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has null data during removal."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to remove non-existent Drawable with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

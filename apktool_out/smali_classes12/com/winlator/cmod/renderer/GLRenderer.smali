.class public Lcom/winlator/cmod/renderer/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;
.implements Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;,
        Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
    }
.end annotation


# instance fields
.field private final cursorMaterial:Lcom/winlator/cmod/renderer/material/CursorMaterial;

.field private cursorVisible:Z

.field private final effectComposer:Lcom/winlator/cmod/renderer/EffectComposer;

.field private fullscreen:Z

.field private magnifierEnabled:Z

.field private magnifierZoom:F

.field public final quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

.field private final renderableWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final rootCursorDrawable:Lcom/winlator/cmod/xserver/Drawable;

.field private screenOffsetYRelativeToCursor:Z

.field public surfaceHeight:I

.field public surfaceWidth:I

.field private final tmpXForm1:[F

.field private final tmpXForm2:[F

.field private toggleFullscreen:Z

.field private unviewableWMClasses:[Ljava/lang/String;

.field public final viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

.field public viewportNeedsUpdate:Z

.field private final windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;

.field public final xServerView:Lcom/winlator/cmod/widget/XServerView;


# direct methods
.method public static synthetic $r8$lambda$IOk7hZqzUyPRxUPS57lQrqy_OLA(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;IILcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/renderer/GLRenderer;->lambda$captureScreenshot$0(Lcom/winlator/cmod/xserver/Window;IILcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fNICTU6HGKeWAPEFGOoXRIWv2fQ(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/renderer/GLRenderer;->lambda$onUpdateWindowGeometry$1(Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method public static synthetic $r8$lambda$suhOOwDBBAC3ignWeJZZ6tKruNE(Lcom/winlator/cmod/renderer/GLRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/renderer/GLRenderer;->updateScene()V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/widget/XServerView;Lcom/winlator/cmod/xserver/XServer;)V
    .locals 3
    .param p1, "xServerView"    # Lcom/winlator/cmod/widget/XServerView;
    .param p2, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/winlator/cmod/renderer/VertexAttribute;

    const-string v1, "position"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/renderer/VertexAttribute;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    .line 41
    invoke-static {}, Lcom/winlator/cmod/math/XForm;->getInstance()[F

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm1:[F

    .line 42
    invoke-static {}, Lcom/winlator/cmod/math/XForm;->getInstance()[F

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm2:[F

    .line 43
    new-instance v0, Lcom/winlator/cmod/renderer/material/CursorMaterial;

    invoke-direct {v0}, Lcom/winlator/cmod/renderer/material/CursorMaterial;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/cmod/renderer/material/CursorMaterial;

    .line 44
    new-instance v0, Lcom/winlator/cmod/renderer/material/WindowMaterial;

    invoke-direct {v0}, Lcom/winlator/cmod/renderer/material/WindowMaterial;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    .line 45
    new-instance v0, Lcom/winlator/cmod/renderer/ViewTransformation;

    invoke-direct {v0}, Lcom/winlator/cmod/renderer/ViewTransformation;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->fullscreen:Z

    .line 50
    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->toggleFullscreen:Z

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 52
    iput-boolean v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorVisible:Z

    .line 53
    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->unviewableWMClasses:[Ljava/lang/String;

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierZoom:F

    .line 56
    iput-boolean v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierEnabled:Z

    .line 71
    iput-object p1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    .line 72
    iput-object p2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 73
    new-instance v0, Lcom/winlator/cmod/renderer/EffectComposer;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/renderer/EffectComposer;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;)V

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->effectComposer:Lcom/winlator/cmod/renderer/EffectComposer;

    .line 74
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/GLRenderer;->createRootCursorDrawable()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->rootCursorDrawable:Lcom/winlator/cmod/xserver/Drawable;

    .line 76
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/renderer/VertexAttribute;->put([F)V

    .line 83
    iget-object v0, p2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;)V

    .line 84
    iget-object v0, p2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/Pointer;->addOnPointerMotionListener(Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;)V

    .line 85
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private collectRenderableWindows(Lcom/winlator/cmod/xserver/Window;II)V
    .locals 7
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 400
    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    if-eq p1, v0, :cond_4

    .line 402
    const/4 v0, 0x1

    .line 403
    .local v0, "viewable":Z
    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->unviewableWMClasses:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 404
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "wmClass":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->unviewableWMClasses:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 406
    .local v5, "unviewableWMClass":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 407
    iget-object v2, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->disableAllDescendants()V

    .line 408
    :cond_1
    const/4 v0, 0x0

    .line 409
    goto :goto_1

    .line 405
    .end local v5    # "unviewableWMClass":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "wmClass":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 414
    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    new-instance v2, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;-><init>(Lcom/winlator/cmod/xserver/Drawable;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v0    # "viewable":Z
    :cond_4
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Window;

    .line 417
    .local v1, "child":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getX()S

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getY()S

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {p0, v1, v2, v3}, Lcom/winlator/cmod/renderer/GLRenderer;->collectRenderableWindows(Lcom/winlator/cmod/xserver/Window;II)V

    .line 418
    .end local v1    # "child":Lcom/winlator/cmod/xserver/Window;
    goto :goto_2

    .line 419
    :cond_5
    return-void
.end method

.method private createRootCursorDrawable()Lcom/winlator/cmod/xserver/Drawable;
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 386
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 387
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 388
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f5

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 389
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/winlator/cmod/xserver/Drawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private findDrawable(Lcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Drawable;
    .locals 4
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 109
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v0

    return-object v0

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/xserver/Window;

    .line 113
    .local v2, "child":Lcom/winlator/cmod/xserver/Window;
    iget-object v3, v2, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-direct {p0, v2}, Lcom/winlator/cmod/renderer/GLRenderer;->findDrawable(Lcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    .line 115
    .local v3, "childContent":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v3, :cond_2

    return-object v3

    .line 117
    .end local v2    # "child":Lcom/winlator/cmod/xserver/Window;
    .end local v3    # "childContent":Lcom/winlator/cmod/xserver/Drawable;
    :cond_2
    goto :goto_0

    .line 118
    :cond_3
    return-object v0
.end method

.method private synthetic lambda$captureScreenshot$0(Lcom/winlator/cmod/xserver/Window;IILcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "callback"    # Lcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "content":Lcom/winlator/cmod/xserver/Drawable;
    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 96
    .local v1, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/winlator/cmod/renderer/GLRenderer;->findDrawable(Lcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 97
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 99
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0, v0, p2, p3}, Lcom/winlator/cmod/renderer/GLRenderer;->takeScreenshotInternal(Lcom/winlator/cmod/xserver/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p4, v1}, Lcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;->onScreenshotTaken(Landroid/graphics/Bitmap;)V

    .line 102
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p4, v1}, Lcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;->onScreenshotTaken(Landroid/graphics/Bitmap;)V

    .line 105
    :goto_0
    return-void

    .line 95
    .local v1, "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method private synthetic lambda$onUpdateWindowGeometry$1(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 306
    invoke-direct {p0, p1}, Lcom/winlator/cmod/renderer/GLRenderer;->updateWindowPosition(Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method private renderCursor()V
    .locals 9

    .line 361
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/cmod/renderer/material/CursorMaterial;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/material/CursorMaterial;->use()V

    .line 362
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/cmod/renderer/material/CursorMaterial;

    const-string v1, "viewSize"

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/renderer/material/CursorMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v1, v1

    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 363
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/cmod/renderer/material/CursorMaterial;

    iget v1, v1, Lcom/winlator/cmod/renderer/material/CursorMaterial;->programId:I

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/renderer/VertexAttribute;->bind(I)V

    .line 365
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 366
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getPointWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 367
    .local v1, "pointWindow":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->getCursor()Lcom/winlator/cmod/xserver/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 368
    .local v2, "cursor":Lcom/winlator/cmod/xserver/Cursor;
    :goto_0
    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v3

    .line 369
    .local v3, "x":S
    iget-object v4, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedY()S

    move-result v4

    .line 371
    .local v4, "y":S
    if-eqz v2, :cond_1

    .line 372
    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Cursor;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/winlator/cmod/xserver/Cursor;->cursorImage:Lcom/winlator/cmod/xserver/Drawable;

    iget v6, v2, Lcom/winlator/cmod/xserver/Cursor;->hotSpotX:I

    sub-int v6, v3, v6

    iget v7, v2, Lcom/winlator/cmod/xserver/Cursor;->hotSpotY:I

    sub-int v7, v4, v7

    iget-object v8, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/cmod/renderer/material/CursorMaterial;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/winlator/cmod/renderer/GLRenderer;->renderDrawable(Lcom/winlator/cmod/xserver/Drawable;IILcom/winlator/cmod/renderer/material/ShaderMaterial;)V

    goto :goto_1

    .line 374
    :cond_1
    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->rootCursorDrawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-object v6, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorMaterial:Lcom/winlator/cmod/renderer/material/CursorMaterial;

    invoke-direct {p0, v5, v3, v4, v6}, Lcom/winlator/cmod/renderer/GLRenderer;->renderDrawable(Lcom/winlator/cmod/xserver/Drawable;IILcom/winlator/cmod/renderer/material/ShaderMaterial;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v1    # "pointWindow":Lcom/winlator/cmod/xserver/Window;
    .end local v2    # "cursor":Lcom/winlator/cmod/xserver/Cursor;
    .end local v3    # "x":S
    .end local v4    # "y":S
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 376
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_3
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/VertexAttribute;->disable()V

    .line 377
    return-void

    .line 365
    .restart local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method private renderDrawable(Lcom/winlator/cmod/xserver/Drawable;IILcom/winlator/cmod/renderer/material/ShaderMaterial;)V
    .locals 7
    .param p1, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "material"    # Lcom/winlator/cmod/renderer/material/ShaderMaterial;

    .line 311
    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p1, Lcom/winlator/cmod/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Drawable;->getTexture()Lcom/winlator/cmod/renderer/Texture;

    move-result-object v1

    .line 314
    .local v1, "texture":Lcom/winlator/cmod/renderer/Texture;
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/renderer/Texture;->updateFromDrawable(Lcom/winlator/cmod/xserver/Drawable;)V

    .line 316
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm1:[F

    int-to-float v3, p2

    int-to-float v4, p3

    iget-short v5, p1, Lcom/winlator/cmod/xserver/Drawable;->width:S

    int-to-float v5, v5

    iget-short v6, p1, Lcom/winlator/cmod/xserver/Drawable;->height:S

    int-to-float v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/winlator/cmod/math/XForm;->set([FFFFF)[F

    .line 317
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm1:[F

    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm1:[F

    iget-object v4, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm2:[F

    invoke-static {v2, v3, v4}, Lcom/winlator/cmod/math/XForm;->multiply([F[F[F)[F

    .line 319
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 320
    invoke-virtual {v1}, Lcom/winlator/cmod/renderer/Texture;->getTextureId()I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 321
    const-string v2, "texture"

    invoke-virtual {p4, v2}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 322
    const-string v2, "xform"

    invoke-virtual {p4, v2}, Lcom/winlator/cmod/renderer/material/ShaderMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm1:[F

    array-length v5, v5

    iget-object v6, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm1:[F

    invoke-static {v2, v5, v6, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 323
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    invoke-virtual {v2}, Lcom/winlator/cmod/renderer/VertexAttribute;->count()I

    move-result v2

    const/4 v5, 0x5

    invoke-static {v5, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 324
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 325
    .end local v1    # "texture":Lcom/winlator/cmod/renderer/Texture;
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renderWindows()V
    .locals 10

    .line 329
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/material/WindowMaterial;->use()V

    .line 330
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    const-string v1, "viewSize"

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/renderer/material/WindowMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v1, v1

    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 331
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    iget v1, v1, Lcom/winlator/cmod/renderer/material/WindowMaterial;->programId:I

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/renderer/VertexAttribute;->bind(I)V

    .line 333
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 334
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    const/4 v1, 0x0

    .line 335
    .local v1, "startIndex":I
    :try_start_0
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    .line 336
    .local v2, "screenWidth":I
    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v3, v3, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    .line 338
    .local v3, "screenHeight":I
    iget-object v4, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 339
    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;

    .line 340
    .local v5, "rWin":Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
    iget-object v6, v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->content:Lcom/winlator/cmod/xserver/Drawable;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->content:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v6, v6, Lcom/winlator/cmod/xserver/Drawable;->width:S

    if-lt v6, v2, :cond_0

    iget-object v6, v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->content:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v6, v6, Lcom/winlator/cmod/xserver/Drawable;->height:S

    if-lt v6, v3, :cond_0

    .line 341
    move v1, v4

    .line 342
    goto :goto_1

    .line 338
    .end local v5    # "rWin":Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 346
    .end local v4    # "i":I
    :cond_1
    :goto_1
    move v4, v1

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 347
    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;

    .line 348
    .local v5, "window":Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
    iget-object v6, v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->content:Lcom/winlator/cmod/xserver/Drawable;

    iget v7, v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->rootX:I

    iget v8, v5, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->rootY:I

    iget-object v9, p0, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/winlator/cmod/renderer/GLRenderer;->renderDrawable(Lcom/winlator/cmod/xserver/Drawable;IILcom/winlator/cmod/renderer/material/ShaderMaterial;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v5    # "window":Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 350
    .end local v1    # "startIndex":I
    .end local v2    # "screenWidth":I
    .end local v3    # "screenHeight":I
    .end local v4    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 352
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_3
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/VertexAttribute;->disable()V

    .line 354
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 355
    .local v0, "error":I
    if-eqz v0, :cond_4

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenGL Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLRenderer"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_4
    return-void

    .line 333
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v1
.end method

.method private takeScreenshotInternal(Lcom/winlator/cmod/xserver/Drawable;II)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "content"    # Lcom/winlator/cmod/xserver/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    move/from16 v3, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 123
    .end local p2    # "width":I
    .local v12, "width":I
    move/from16 v3, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 125
    .end local p3    # "height":I
    .local v13, "height":I
    iget-object v14, v2, Lcom/winlator/cmod/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v14

    .line 126
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Drawable;->getTexture()Lcom/winlator/cmod/renderer/Texture;

    move-result-object v3

    move-object v15, v3

    .line 127
    .local v15, "texture":Lcom/winlator/cmod/renderer/Texture;
    invoke-virtual {v15, v2}, Lcom/winlator/cmod/renderer/Texture;->updateFromDrawable(Lcom/winlator/cmod/xserver/Drawable;)V

    .line 129
    new-array v3, v0, [I

    move-object v11, v3

    .line 130
    .local v11, "framebuffers":[I
    const/4 v10, 0x0

    invoke-static {v0, v11, v10}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 131
    aget v3, v11, v10

    const v9, 0x8d40

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 133
    new-array v3, v0, [I

    move-object v8, v3

    .line 134
    .local v8, "textures":[I
    invoke-static {v0, v8, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 135
    aget v3, v8, v10

    const/16 v7, 0xde1

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 136
    const/16 v16, 0x1401

    const/16 v17, 0x0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/16 v18, 0x0

    const/16 v19, 0x1908

    move v6, v12

    move v0, v7

    move v7, v13

    move-object v0, v8

    .end local v8    # "textures":[I
    .local v0, "textures":[I
    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v16

    move-object v2, v11

    .end local v11    # "framebuffers":[I
    .local v2, "framebuffers":[I
    move-object/from16 v11, v17

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 137
    const/4 v10, 0x0

    aget v3, v0, v10

    const v4, 0x8ce0

    const/16 v5, 0xde1

    const v11, 0x8d40

    invoke-static {v11, v4, v5, v3, v10}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 139
    invoke-static {v11}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v3

    const v4, 0x8cd5

    if-eq v3, v4, :cond_0

    .line 140
    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 141
    const/4 v3, 0x1

    invoke-static {v3, v2, v10}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 142
    invoke-static {v3, v0, v10}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 143
    monitor-exit v14

    const/4 v3, 0x0

    return-object v3

    .line 146
    :cond_0
    invoke-static {v10, v10, v12, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 147
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 148
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 150
    iget-object v4, v1, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    invoke-virtual {v4}, Lcom/winlator/cmod/renderer/material/WindowMaterial;->use()V

    .line 151
    iget-object v4, v1, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    iget-object v5, v1, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    iget v5, v5, Lcom/winlator/cmod/renderer/material/WindowMaterial;->programId:I

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/renderer/VertexAttribute;->bind(I)V

    .line 152
    iget-object v4, v1, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    const-string v5, "viewSize"

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/renderer/material/WindowMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v4

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 154
    invoke-static {}, Lcom/winlator/cmod/math/XForm;->getInstance()[F

    move-result-object v4

    move-object v8, v4

    .line 156
    .local v8, "screenshotXForm":[F
    int-to-float v4, v12

    int-to-float v5, v13

    invoke-static {v8, v3, v3, v4, v5}, Lcom/winlator/cmod/math/XForm;->set([FFFFF)[F

    .line 158
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 159
    invoke-virtual {v15}, Lcom/winlator/cmod/renderer/Texture;->getTextureId()I

    move-result v3

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 160
    iget-object v3, v1, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    const-string v4, "texture"

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/renderer/material/WindowMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 161
    iget-object v3, v1, Lcom/winlator/cmod/renderer/GLRenderer;->windowMaterial:Lcom/winlator/cmod/renderer/material/WindowMaterial;

    const-string v4, "xform"

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/renderer/material/WindowMaterial;->getUniformLocation(Ljava/lang/String;)I

    move-result v3

    array-length v4, v8

    invoke-static {v3, v4, v8, v10}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 162
    iget-object v3, v1, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    invoke-virtual {v3}, Lcom/winlator/cmod/renderer/VertexAttribute;->count()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4, v10, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 164
    mul-int v3, v12, v13

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v7, v3

    .line 165
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 166
    const/16 v16, 0x1908

    const/16 v17, 0x1401

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v12

    move v6, v13

    move-object/from16 p2, v7

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .local p2, "buffer":Ljava/nio/ByteBuffer;
    move/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "screenshotXForm":[F
    .local v16, "screenshotXForm":[F
    move/from16 v8, v17

    move v10, v9

    move-object/from16 v9, p2

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 168
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v9, v3

    .line 169
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v8, p2

    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 172
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v7, v3

    .line 173
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v7, v10, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 174
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    move-object v3, v9

    move v6, v12

    move-object/from16 v17, v7

    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .local v17, "matrix":Landroid/graphics/Matrix;
    move v7, v13

    move-object/from16 v18, v8

    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v8, v17

    move-object/from16 v19, v9

    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    move v9, v10

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 175
    .local v3, "flippedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    const/4 v4, 0x0

    invoke-static {v11, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 178
    const/4 v5, 0x1

    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 179
    invoke-static {v5, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 180
    iput-boolean v5, v1, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 182
    monitor-exit v14

    return-object v3

    .line 183
    .end local v0    # "textures":[I
    .end local v2    # "framebuffers":[I
    .end local v3    # "flippedBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "texture":Lcom/winlator/cmod/renderer/Texture;
    .end local v16    # "screenshotXForm":[F
    .end local v17    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateScene()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v2, 0x0

    sget-object v3, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 394
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Window;->getX()S

    move-result v2

    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Window;->getY()S

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/winlator/cmod/renderer/GLRenderer;->collectRenderableWindows(Lcom/winlator/cmod/xserver/Window;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 397
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 393
    .restart local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private updateWindowPosition(Lcom/winlator/cmod/xserver/Window;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 422
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->renderableWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;

    .line 423
    .local v1, "renderableWindow":Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
    iget-object v2, v1, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->content:Lcom/winlator/cmod/xserver/Drawable;

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 424
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getRootX()S

    move-result v0

    iput v0, v1, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->rootX:I

    .line 425
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getRootY()S

    move-result v0

    iput v0, v1, Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;->rootY:I

    .line 426
    goto :goto_1

    .line 428
    .end local v1    # "renderableWindow":Lcom/winlator/cmod/renderer/GLRenderer$RenderableWindow;
    :cond_0
    goto :goto_0

    .line 429
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public captureScreenshot(Lcom/winlator/cmod/xserver/Window;IILcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;)V
    .locals 8
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "callback"    # Lcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;

    .line 91
    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    new-instance v7, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;IILcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;)V

    invoke-virtual {v0, v7}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    .line 106
    return-void

    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method public drawFrame()V
    .locals 13

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "xrFrame":Z
    const/4 v1, 0x0

    .line 237
    .local v1, "xrImmersive":Z
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/winlator/cmod/XrActivity;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->getImmersive()Z

    move-result v1

    .line 239
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->getInstance()Lcom/winlator/cmod/XrActivity;

    move-result-object v2

    invoke-static {}, Lcom/winlator/cmod/XrActivity;->getSBS()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/winlator/cmod/XrActivity;->beginFrame(ZZ)Z

    move-result v0

    .line 242
    :cond_0
    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierEnabled:Z

    if-eqz v2, :cond_2

    .line 243
    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->fullscreen:Z

    if-eqz v2, :cond_1

    .line 244
    iget v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceWidth:I

    iget v4, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceHeight:I

    invoke-static {v3, v3, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v2, v2, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetX:I

    iget-object v4, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v4, v4, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetY:I

    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v5, v5, Lcom/winlator/cmod/renderer/ViewTransformation;->viewWidth:I

    iget-object v6, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v6, v6, Lcom/winlator/cmod/renderer/ViewTransformation;->viewHeight:I

    invoke-static {v2, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 249
    :goto_0
    iput-boolean v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 252
    :cond_2
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 254
    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierEnabled:Z

    const/16 v4, 0xc11

    if-eqz v2, :cond_9

    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, "pointerX":F
    const/4 v3, 0x0

    .line 257
    .local v3, "pointerY":F
    iget-boolean v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_3

    iget v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierZoom:F

    goto :goto_1

    :cond_3
    move v5, v6

    .line 259
    .local v5, "magnifierZoom":F
    :goto_1
    cmpl-float v7, v5, v6

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v7, :cond_4

    .line 260
    iget-object v7, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget-object v10, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v10, v10, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v10, v10, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v10, v10

    mul-float/2addr v10, v9

    sub-float/2addr v7, v10

    iget-object v10, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v10, v10, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v10, v10, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v10, v10

    sub-float v11, v6, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v7, v8, v10}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v2

    .line 263
    :cond_4
    iget-boolean v7, p0, Lcom/winlator/cmod/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    if-nez v7, :cond_5

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_8

    .line 264
    :cond_5
    cmpl-float v7, v5, v6

    if-eqz v7, :cond_6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto :goto_2

    :cond_6
    move v6, v9

    .line 265
    .local v6, "scaleY":F
    :goto_2
    iget-object v7, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v7, v7, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    int-to-float v7, v7

    iget-boolean v10, p0, Lcom/winlator/cmod/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    if-eqz v10, :cond_7

    const/high16 v9, 0x3e800000    # 0.25f

    :cond_7
    mul-float/2addr v7, v9

    .line 266
    .local v7, "offsetY":F
    iget-object v9, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v9, v9, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v9}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    sub-float/2addr v9, v7

    iget-object v10, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v10, v10, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v10, v10, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    int-to-float v10, v10

    mul-float/2addr v10, v6

    invoke-static {v9, v8, v10}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v3

    .line 269
    .end local v6    # "scaleY":F
    .end local v7    # "offsetY":F
    :cond_8
    iget-object v7, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm2:[F

    neg-float v8, v2

    neg-float v9, v3

    const/4 v12, 0x0

    move v10, v5

    move v11, v5

    invoke-static/range {v7 .. v12}, Lcom/winlator/cmod/math/XForm;->makeTransform([FFFFFF)[F

    .line 270
    .end local v2    # "pointerX":F
    .end local v3    # "pointerY":F
    .end local v5    # "magnifierZoom":F
    goto :goto_3

    .line 271
    :cond_9
    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->fullscreen:Z

    if-nez v2, :cond_b

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "pointerY":I
    iget-boolean v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    if-eqz v5, :cond_a

    .line 274
    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v5, v5, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    div-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    .line 275
    .local v5, "halfScreenHeight":S
    iget-object v6, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v3, v5}, Lcom/winlator/cmod/math/Mathf;->clamp(III)I

    move-result v2

    .line 278
    .end local v5    # "halfScreenHeight":S
    :cond_a
    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm2:[F

    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v6, v3, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneOffsetX:F

    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v3, v3, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneOffsetY:F

    int-to-float v7, v2

    sub-float v7, v3, v7

    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v8, v3, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneScaleX:F

    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v9, v3, Lcom/winlator/cmod/renderer/ViewTransformation;->sceneScaleY:F

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/winlator/cmod/math/XForm;->makeTransform([FFFFFF)[F

    .line 280
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 281
    iget-object v3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v3, v3, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetX:I

    iget-object v5, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v5, v5, Lcom/winlator/cmod/renderer/ViewTransformation;->viewOffsetY:I

    iget-object v6, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v6, v6, Lcom/winlator/cmod/renderer/ViewTransformation;->viewWidth:I

    iget-object v7, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget v7, v7, Lcom/winlator/cmod/renderer/ViewTransformation;->viewHeight:I

    invoke-static {v3, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 282
    .end local v2    # "pointerY":I
    goto :goto_3

    .line 283
    :cond_b
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->tmpXForm2:[F

    invoke-static {v2}, Lcom/winlator/cmod/math/XForm;->identity([F)[F

    .line 287
    :goto_3
    invoke-direct {p0}, Lcom/winlator/cmod/renderer/GLRenderer;->renderWindows()V

    .line 289
    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorVisible:Z

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/winlator/cmod/renderer/GLRenderer;->renderCursor()V

    .line 291
    :cond_c
    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierEnabled:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->fullscreen:Z

    if-nez v2, :cond_d

    .line 292
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 295
    :cond_d
    if-eqz v0, :cond_e

    .line 296
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->getInstance()Lcom/winlator/cmod/XrActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/XrActivity;->endFrame()V

    .line 297
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->updateControllers()V

    .line 298
    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v2}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    .line 300
    :cond_e
    return-void
.end method

.method public getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->effectComposer:Lcom/winlator/cmod/renderer/EffectComposer;

    return-object v0
.end method

.method public getMagnifierZoom()F
    .locals 1

    .line 436
    iget v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierZoom:F

    return v0
.end method

.method public getQuadVertices()Lcom/winlator/cmod/renderer/VertexAttribute;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->quadVertices:Lcom/winlator/cmod/renderer/VertexAttribute;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceWidth:I

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorVisible:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->fullscreen:Z

    return v0
.end method

.method public isScreenOffsetYRelativeToCursor()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    return v0
.end method

.method public isViewportNeedsUpdate()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    return v0
.end method

.method public onChangeWindowZOrder(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 304
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    new-instance v1, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 217
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->toggleFullscreen:Z

    if-eqz v0, :cond_0

    .line 218
    iget-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->fullscreen:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->fullscreen:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->toggleFullscreen:Z

    .line 220
    iput-boolean v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->effectComposer:Lcom/winlator/cmod/renderer/EffectComposer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->effectComposer:Lcom/winlator/cmod/renderer/EffectComposer;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/EffectComposer;->hasEffects()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceHeight:I

    if-lez v0, :cond_1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->effectComposer:Lcom/winlator/cmod/renderer/EffectComposer;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/EffectComposer;->render()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/GLRenderer;->drawFrame()V

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/renderer/GLRenderer;->drawFrame()V

    .line 232
    :goto_1
    return-void
.end method

.method public onMapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 302
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    new-instance v1, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public onPointerMove(SS)V
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 308
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/winlator/cmod/XrActivity;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->getInstance()Lcom/winlator/cmod/XrActivity;

    move-result-object v0

    .line 202
    .local v0, "activity":Lcom/winlator/cmod/XrActivity;
    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->init()V

    .line 203
    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->getWidth()I

    move-result p2

    .line 204
    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->getHeight()I

    move-result p3

    .line 205
    const/4 v1, 0x0

    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 206
    iput-boolean v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierEnabled:Z

    .line 209
    .end local v0    # "activity":Lcom/winlator/cmod/XrActivity;
    :cond_0
    iput p2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceWidth:I

    .line 210
    iput p3, p0, Lcom/winlator/cmod/renderer/GLRenderer;->surfaceHeight:I

    .line 211
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewTransformation:Lcom/winlator/cmod/renderer/ViewTransformation;

    iget-object v1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    iget-object v2, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/winlator/cmod/renderer/ViewTransformation;->update(IIII)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    .line 213
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 188
    invoke-static {}, Lcom/winlator/cmod/renderer/GPUImage;->checkIsSupported()V

    .line 189
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 190
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 191
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 192
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 193
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 194
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 195
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 196
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 303
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    new-instance v1, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public onUpdateWindowAttributes(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "mask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 307
    const/16 v0, 0x4000

    invoke-virtual {p2, v0}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    :cond_0
    return-void
.end method

.method public onUpdateWindowContent(Lcom/winlator/cmod/xserver/Window;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 305
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/winlator/cmod/xserver/Window;Z)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "resized"    # Z

    .line 306
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    if-eqz p2, :cond_0

    new-instance v1, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/renderer/GLRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "cursorVisible"    # Z

    .line 431
    iput-boolean p1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->cursorVisible:Z

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public setMagnifierZoom(F)V
    .locals 1
    .param p1, "magnifierZoom"    # F

    .line 437
    iput p1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->magnifierZoom:F

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public setScreenOffsetYRelativeToCursor(Z)V
    .locals 1
    .param p1, "screenOffsetYRelativeToCursor"    # Z

    .line 434
    iput-boolean p1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->screenOffsetYRelativeToCursor:Z

    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    return-void
.end method

.method public varargs setUnviewableWMClasses([Ljava/lang/String;)V
    .locals 0
    .param p1, "unviewableWMNames"    # [Ljava/lang/String;

    .line 444
    iput-object p1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->unviewableWMClasses:[Ljava/lang/String;

    return-void
.end method

.method public setViewportNeedsUpdate(Z)V
    .locals 0
    .param p1, "viewportNeedsUpdate"    # Z

    .line 441
    iput-boolean p1, p0, Lcom/winlator/cmod/renderer/GLRenderer;->viewportNeedsUpdate:Z

    return-void
.end method

.method public toggleFullscreen()V
    .locals 1

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->toggleFullscreen:Z

    .line 381
    iget-object v0, p0, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    .line 382
    return-void
.end method

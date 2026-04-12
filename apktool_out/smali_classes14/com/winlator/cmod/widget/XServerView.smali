.class public Lcom/winlator/cmod/widget/XServerView;
.super Landroid/opengl/GLSurfaceView;
.source "XServerView.java"


# instance fields
.field private final renderer:Lcom/winlator/cmod/renderer/GLRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/winlator/cmod/xserver/XServer;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 17
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/XServerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/XServerView;->setEGLContextClientVersion(I)V

    .line 20
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/winlator/cmod/widget/XServerView;->setEGLConfigChooser(IIIIII)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/XServerView;->setPreserveEGLContextOnPause(Z)V

    .line 22
    new-instance v0, Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-direct {v0, p0, p2}, Lcom/winlator/cmod/renderer/GLRenderer;-><init>(Lcom/winlator/cmod/widget/XServerView;Lcom/winlator/cmod/xserver/XServer;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/XServerView;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    .line 23
    iget-object v0, p0, Lcom/winlator/cmod/widget/XServerView;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/XServerView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/XServerView;->setRenderMode(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/winlator/cmod/widget/XServerView;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    return-object v0
.end method

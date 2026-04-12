.class public Lcom/winlator/cmod/widget/InputControlsView;
.super Landroid/view/View;
.source "InputControlsView.java"


# static fields
.field public static final DEFAULT_OVERLAY_OPACITY:F = 0.4f

.field private static final MOUSE_WHEEL_DELTA:B = 0x78t


# instance fields
.field private final cursor:Landroid/graphics/Point;

.field private final customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

.field private editMode:Z

.field private focusOnStick:Z

.field private hideControlsRunnable:Ljava/lang/Runnable;

.field private final icons:[Landroid/graphics/Bitmap;

.field private final mouseMoveOffset:Landroid/graphics/PointF;

.field private mouseMoveTimer:Ljava/util/Timer;

.field private moveCursor:Z

.field private offsetX:F

.field private offsetY:F

.field private overlayOpacity:F

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private preferences:Landroid/content/SharedPreferences;

.field private profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

.field private readyToDraw:Z

.field private selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

.field private showTouchscreenControls:Z

.field private snappingSize:I

.field private stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

.field private timeoutHandler:Landroid/os/Handler;

.field private touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

.field private xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmouseMoveOffset(Lcom/winlator/cmod/widget/InputControlsView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetxServer(Lcom/winlator/cmod/widget/InputControlsView;)Lcom/winlator/cmod/xserver/XServer;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    .line 55
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->path:Landroid/graphics/Path;

    .line 56
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    .line 57
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->readyToDraw:Z

    .line 58
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->moveCursor:Z

    .line 64
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->overlayOpacity:F

    .line 67
    const/16 v1, 0x400

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    .line 70
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    .line 71
    iput-boolean v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->showTouchscreenControls:Z

    .line 78
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->focusOnStick:Z

    .line 92
    new-instance v0, Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    invoke-direct {v0, p1}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    .line 93
    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->initView()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeoutHandler"    # Landroid/os/Handler;
    .param p3, "hideControlsRunnable"    # Ljava/lang/Runnable;

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    .line 55
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->path:Landroid/graphics/Path;

    .line 56
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    .line 57
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->readyToDraw:Z

    .line 58
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->moveCursor:Z

    .line 64
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->overlayOpacity:F

    .line 67
    const/16 v1, 0x400

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    .line 70
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    .line 71
    iput-boolean v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->showTouchscreenControls:Z

    .line 78
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->focusOnStick:Z

    .line 99
    new-instance v0, Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    invoke-direct {v0, p1}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    .line 100
    iput-object p2, p0, Lcom/winlator/cmod/widget/InputControlsView;->timeoutHandler:Landroid/os/Handler;

    .line 101
    iput-object p3, p0, Lcom/winlator/cmod/widget/InputControlsView;->hideControlsRunnable:Ljava/lang/Runnable;

    .line 102
    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->initView()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focusOnStick"    # Z

    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    .line 55
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->path:Landroid/graphics/Path;

    .line 56
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    .line 57
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->readyToDraw:Z

    .line 58
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->moveCursor:Z

    .line 64
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->overlayOpacity:F

    .line 67
    const/16 v1, 0x400

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    .line 70
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    .line 71
    iput-boolean v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->showTouchscreenControls:Z

    .line 78
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->focusOnStick:Z

    .line 107
    new-instance v0, Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    invoke-direct {v0, p1}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    .line 108
    iput-boolean p2, p0, Lcom/winlator/cmod/widget/InputControlsView;->focusOnStick:Z

    .line 109
    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->initView()V

    .line 111
    if-eqz p2, :cond_0

    .line 112
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :goto_0
    return-void
.end method

.method private createMouseMoveTimer()V
    .locals 9

    .line 382
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    .line 383
    .local v0, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v1

    .line 385
    .local v1, "cursorSpeed":F
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    .line 386
    iget-object v3, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    new-instance v4, Lcom/winlator/cmod/widget/InputControlsView$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/winlator/cmod/widget/InputControlsView$1;-><init>(Lcom/winlator/cmod/widget/InputControlsView;Lcom/winlator/cmod/winhandler/WinHandler;F)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x10

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 401
    .end local v1    # "cursorSpeed":F
    :cond_0
    return-void
.end method

.method private declared-synchronized deselectAllElements()V
    .locals 3

    monitor-enter p0

    .line 284
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 285
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ControlElement;

    .local v1, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setSelected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    goto :goto_0

    .line 288
    .end local p0    # "this":Lcom/winlator/cmod/widget/InputControlsView;
    :cond_0
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 244
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3d800000    # 0.0625f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 246
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v1, -0x39d7d8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 250
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 215
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3d800000    # 0.0625f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 220
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v2, -0xcfcfd0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxWidth()I

    move-result v1

    .line 224
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxHeight()I

    move-result v8

    .line 226
    .local v8, "height":I
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_0

    .line 227
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v8

    iget-object v7, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    int-to-float v4, v9

    int-to-float v5, v1

    int-to-float v6, v9

    iget-object v7, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    iget v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    add-int/2addr v9, v2

    goto :goto_0

    .line 231
    .end local v9    # "i":I
    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v9

    .line 232
    .local v9, "cx":F
    int-to-float v2, v8

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v10

    .line 233
    .local v10, "cy":F
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const v3, -0xbdbdbe

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_1

    .line 236
    int-to-float v4, v11

    iget v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    add-int/2addr v2, v11

    int-to-float v6, v2

    iget-object v7, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v9

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    int-to-float v3, v11

    iget v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    add-int/2addr v2, v11

    int-to-float v5, v2

    iget-object v7, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v10

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 235
    iget v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v11, v2

    goto :goto_1

    .line 240
    .end local v11    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    return-void
.end method

.method private initView()V
    .locals 2

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setClickable(Z)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setFocusable(Z)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setFocusableInTouchMode(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->requestFocus()Z

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setBackgroundColor(I)V

    .line 124
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080107

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 125
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->preferences:Landroid/content/SharedPreferences;

    .line 129
    return-void
.end method

.method private declared-synchronized intersectElement(FF)Lcom/winlator/cmod/inputcontrols/ControlElement;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 330
    .local v1, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    invoke-virtual {v1, p1, p2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->containsPoint(FF)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    .line 331
    .end local v1    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    :cond_0
    goto :goto_0

    .line 333
    .end local p0    # "this":Lcom/winlator/cmod/widget/InputControlsView;
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 327
    .end local p1    # "x":F
    .end local p2    # "y":F
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private processJoystickInput(Lcom/winlator/cmod/inputcontrols/ExternalController;)V
    .locals 17
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 404
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    move-object v8, v1

    .line 409
    .local v8, "axes":[I
    iget-object v1, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v1, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    iget-object v2, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v2, v2, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    iget-object v3, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v3, v3, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    iget-object v4, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v4, v4, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    iget-object v5, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    .line 412
    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/GamepadState;->getDPadX()B

    move-result v5

    int-to-float v5, v5

    iget-object v9, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v9}, Lcom/winlator/cmod/inputcontrols/GamepadState;->getDPadY()B

    move-result v9

    int-to-float v9, v9

    new-array v0, v0, [F

    const/4 v10, 0x0

    aput v1, v0, v10

    const/4 v11, 0x1

    aput v2, v0, v11

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    aput v5, v0, v1

    const/4 v1, 0x5

    aput v9, v0, v1

    move-object v9, v0

    .line 415
    .local v9, "values":[F
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    array-length v0, v8

    if-ge v12, v0, :cond_4

    .line 416
    aget v13, v9, v12

    .line 417
    .local v13, "value":F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e19999a    # 0.15f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 418
    invoke-static {v13}, Lcom/winlator/cmod/math/Mathf;->sign(F)B

    move-result v14

    .line 419
    .local v14, "sign":B
    aget v0, v8, v12

    invoke-static {v0, v14}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v15

    .line 420
    .local v15, "keyCode":I
    invoke-virtual {v7, v15}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v16

    .line 421
    .local v16, "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    if-eqz v16, :cond_0

    .line 422
    invoke-virtual/range {v16 .. v16}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZFZ)V

    .line 424
    .end local v14    # "sign":B
    .end local v15    # "keyCode":I
    .end local v16    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    :cond_0
    goto :goto_2

    .line 425
    :cond_1
    const/4 v0, -0x1

    move v14, v0

    .restart local v14    # "sign":B
    :goto_1
    if-gt v14, v11, :cond_3

    .line 426
    aget v0, v8, v12

    invoke-static {v0, v14}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v15

    .line 427
    .restart local v15    # "keyCode":I
    invoke-virtual {v7, v15}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v16

    .line 428
    .restart local v16    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    if-eqz v16, :cond_2

    .line 429
    invoke-virtual/range {v16 .. v16}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZFZ)V

    .line 425
    .end local v15    # "keyCode":I
    .end local v16    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    :cond_2
    add-int/lit8 v0, v14, 0x2

    int-to-byte v14, v0

    goto :goto_1

    .line 415
    .end local v13    # "value":F
    .end local v14    # "sign":B
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 435
    .end local v12    # "i":I
    :cond_4
    iget-object v0, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v0, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    const/16 v1, 0x68

    invoke-direct {v6, v7, v0, v1, v10}, Lcom/winlator/cmod/widget/InputControlsView;->processTriggerInput(Lcom/winlator/cmod/inputcontrols/ExternalController;FIZ)V

    .line 436
    iget-object v0, v7, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v0, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    const/16 v1, 0x69

    invoke-direct {v6, v7, v0, v1, v10}, Lcom/winlator/cmod/widget/InputControlsView;->processTriggerInput(Lcom/winlator/cmod/inputcontrols/ExternalController;FIZ)V

    .line 438
    iget-object v0, v6, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 439
    .local v0, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    :goto_3
    if-eqz v0, :cond_6

    .line 440
    invoke-virtual {v0, v7}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState(Lcom/winlator/cmod/inputcontrols/ExternalController;)V

    .line 442
    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private processTriggerInput(Lcom/winlator/cmod/inputcontrols/ExternalController;FIZ)V
    .locals 8
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;
    .param p2, "value"    # F
    .param p3, "keyCode"    # I
    .param p4, "sendUpdate"    # Z

    .line 445
    invoke-virtual {p1, p3}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v6

    .line 446
    .local v6, "binding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    if-eqz v6, :cond_2

    .line 447
    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 448
    .local v7, "isPressed":Z
    if-eqz v7, :cond_1

    .line 449
    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZFZ)V

    goto :goto_1

    .line 451
    :cond_1
    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZFZ)V

    .line 454
    .end local v7    # "isPressed":Z
    :cond_2
    :goto_1
    return-void
.end method

.method private resetTouchscreenTimeout()V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->hideControlsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->hideControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 573
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->hideControlsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 575
    :cond_0
    return-void
.end method

.method private selectElement(Lcom/winlator/cmod/inputcontrols/ControlElement;)V
    .locals 2
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 291
    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->deselectAllElements()V

    .line 292
    if-eqz p1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 294
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setSelected(Z)V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 297
    return-void
.end method


# virtual methods
.method public declared-synchronized addElement()Z
    .locals 2

    monitor-enter p0

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;-><init>(Lcom/winlator/cmod/widget/InputControlsView;)V

    .line 258
    .local v0, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setX(I)V

    .line 259
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setY(I)V

    .line 260
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->addElement(Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    .line 261
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 262
    invoke-direct {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->selectElement(Lcom/winlator/cmod/inputcontrols/ControlElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 265
    .end local v0    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    .end local p0    # "this":Lcom/winlator/cmod/widget/InputControlsView;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 255
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 346
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public getIcon(B)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "id"    # B

    .line 711
    and-int/lit16 v0, p1, 0xff

    .line 712
    .local v0, "index":I
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 716
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->customIconManager:Lcom/winlator/cmod/inputcontrols/CustomIconManager;

    int-to-short v3, v0

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/inputcontrols/CustomIconManager;->loadIcon(S)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 721
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputcontrols/icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 725
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_2
    goto :goto_1

    .line 721
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "index":I
    .end local v1    # "context":Landroid/content/Context;
    .end local p1    # "id":B
    :cond_3
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 723
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "index":I
    .restart local v1    # "context":Landroid/content/Context;
    .restart local p1    # "id":B
    :catch_0
    move-exception v2

    .line 724
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load asset icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputControlsView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->icons:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getMaxHeight()I
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 2

    .line 320
    iget v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->overlayOpacity:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProfile()Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    .locals 1

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 300
    .end local p0    # "this":Lcom/winlator/cmod/widget/InputControlsView;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSecondaryColor()I
    .locals 4

    .line 324
    iget v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->overlayOpacity:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x77

    const/16 v2, 0xbd

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getSelectedElement()Lcom/winlator/cmod/inputcontrols/ControlElement;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    return-object v0
.end method

.method public getSnappingSize()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    return v0
.end method

.method public getStickElement()Lcom/winlator/cmod/inputcontrols/ControlElement;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    return-object v0
.end method

.method public getTouchpadView()Lcom/winlator/cmod/widget/TouchpadView;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    return-object v0
.end method

.method public getXServer()Lcom/winlator/cmod/xserver/XServer;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    return-object v0
.end method

.method public handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V
    .locals 2
    .param p1, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;
    .param p2, "isActionDown"    # Z

    .line 598
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZF)V

    .line 599
    return-void
.end method

.method public handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;ZF)V
    .locals 1
    .param p1, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;
    .param p2, "isActionDown"    # Z
    .param p3, "offset"    # F

    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZF)V

    .line 627
    return-void
.end method

.method public handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;Z)V
    .locals 1
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;
    .param p2, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;
    .param p3, "isActionDown"    # Z

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZF)V

    .line 603
    return-void
.end method

.method public handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZF)V
    .locals 6
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;
    .param p2, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;
    .param p3, "isActionDown"    # Z
    .param p4, "offset"    # F

    .line 630
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZFZ)V

    .line 631
    return-void
.end method

.method public handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;ZFZ)V
    .locals 7
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;
    .param p2, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;
    .param p3, "isActionDown"    # Z
    .param p4, "offset"    # F
    .param p5, "sendUpdate"    # Z

    .line 634
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 635
    .local v0, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    :goto_0
    invoke-virtual {p2}, Lcom/winlator/cmod/inputcontrols/Binding;->isGamepad()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 636
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/winlator/cmod/inputcontrols/ExternalController;->remappedState:Lcom/winlator/cmod/inputcontrols/GamepadState;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getGamepadState()Lcom/winlator/cmod/inputcontrols/GamepadState;

    move-result-object v1

    .line 637
    .local v1, "state":Lcom/winlator/cmod/inputcontrols/GamepadState;
    :goto_1
    invoke-virtual {p2}, Lcom/winlator/cmod/inputcontrols/Binding;->ordinal()I

    move-result v3

    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_BUTTON_A:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/Binding;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    .line 638
    .local v3, "buttonIdx":I
    const/16 v4, 0xb

    const/high16 v5, 0x3f800000    # 1.0f

    if-gt v3, v4, :cond_8

    .line 639
    const/16 v6, 0xa

    if-ne v3, v6, :cond_4

    .line 640
    if-eqz p3, :cond_3

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_2

    move v2, p4

    goto :goto_2

    :cond_2
    move v2, v5

    :cond_3
    :goto_2
    iput v2, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    goto/16 :goto_10

    .line 641
    :cond_4
    if-ne v3, v4, :cond_7

    .line 642
    if-eqz p3, :cond_6

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_5

    move v2, p4

    goto :goto_3

    :cond_5
    move v2, v5

    :cond_6
    :goto_3
    iput v2, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    goto/16 :goto_10

    .line 644
    :cond_7
    invoke-virtual {v1, v3, p3}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    goto/16 :goto_10

    .line 646
    :cond_8
    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v4, :cond_1a

    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v4, :cond_9

    goto/16 :goto_d

    .line 650
    :cond_9
    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v4, :cond_16

    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v4, :cond_a

    goto/16 :goto_a

    .line 654
    :cond_a
    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v4, :cond_12

    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v4, :cond_b

    goto :goto_7

    .line 658
    :cond_b
    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v4, :cond_e

    sget-object v4, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v4, :cond_c

    goto :goto_4

    .line 662
    :cond_c
    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v2, :cond_d

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v2, :cond_d

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v2, :cond_d

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v2, :cond_1e

    .line 664
    :cond_d
    iget-object v2, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    invoke-virtual {p2}, Lcom/winlator/cmod/inputcontrols/Binding;->ordinal()I

    move-result v4

    sget-object v5, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_DPAD_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/Binding;->ordinal()I

    move-result v5

    sub-int/2addr v4, v5

    aput-boolean p3, v2, v4

    goto/16 :goto_10

    .line 659
    :cond_e
    :goto_4
    if-eqz p3, :cond_f

    cmpl-float v4, p4, v2

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_5
    move v4, v5

    .line 660
    .local v4, "val":F
    if-eqz p3, :cond_11

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v2, :cond_10

    neg-float v2, v4

    goto :goto_6

    :cond_10
    move v2, v4

    :cond_11
    :goto_6
    iput v2, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    .line 661
    .end local v4    # "val":F
    goto :goto_10

    .line 655
    :cond_12
    :goto_7
    if-eqz p3, :cond_13

    cmpl-float v4, p4, v2

    if-nez v4, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_8
    move v4, v5

    .line 656
    .restart local v4    # "val":F
    if-eqz p3, :cond_15

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_RIGHT_THUMB_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v2, :cond_14

    neg-float v2, v4

    goto :goto_9

    :cond_14
    move v2, v4

    :cond_15
    :goto_9
    iput v2, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    .line 657
    .end local v4    # "val":F
    goto :goto_10

    .line 651
    :cond_16
    :goto_a
    if-eqz p3, :cond_17

    cmpl-float v4, p4, v2

    if-nez v4, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_b
    move v4, v5

    .line 652
    .restart local v4    # "val":F
    if-eqz p3, :cond_19

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v2, :cond_18

    neg-float v2, v4

    goto :goto_c

    :cond_18
    move v2, v4

    :cond_19
    :goto_c
    iput v2, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    .line 653
    .end local v4    # "val":F
    goto :goto_10

    .line 647
    :cond_1a
    :goto_d
    if-eqz p3, :cond_1b

    cmpl-float v4, p4, v2

    if-nez v4, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_e
    move v4, v5

    .line 648
    .restart local v4    # "val":F
    if-eqz p3, :cond_1d

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v2, :cond_1c

    neg-float v2, v4

    goto :goto_f

    :cond_1c
    move v2, v4

    :cond_1d
    :goto_f
    iput v2, v1, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    .line 649
    .end local v4    # "val":F
    nop

    .line 667
    :cond_1e
    :goto_10
    if-eqz v0, :cond_20

    if-eqz p5, :cond_20

    .line 668
    if-eqz p1, :cond_1f

    .line 669
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState(Lcom/winlator/cmod/inputcontrols/ExternalController;)V

    goto :goto_11

    .line 671
    :cond_1f
    invoke-virtual {v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState()V

    .line 673
    .end local v1    # "state":Lcom/winlator/cmod/inputcontrols/GamepadState;
    .end local v3    # "buttonIdx":I
    :cond_20
    :goto_11
    goto/16 :goto_19

    .line 675
    :cond_21
    sget-object v1, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p2, v1, :cond_2f

    sget-object v1, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v1, :cond_22

    goto/16 :goto_16

    .line 679
    :cond_22
    sget-object v1, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p2, v1, :cond_2b

    sget-object v1, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v1, :cond_23

    goto :goto_13

    .line 684
    :cond_23
    invoke-virtual {p2}, Lcom/winlator/cmod/inputcontrols/Binding;->getPointerButton()Lcom/winlator/cmod/xserver/Pointer$Button;

    move-result-object v1

    .line 685
    .local v1, "pointerButton":Lcom/winlator/cmod/xserver/Pointer$Button;
    const/4 v2, 0x0

    if-eqz p3, :cond_28

    .line 686
    if-eqz v1, :cond_27

    .line 687
    iget-object v3, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 688
    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    if-ne v1, v3, :cond_24

    const/16 v3, 0x78

    goto :goto_12

    :cond_24
    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    if-ne v1, v3, :cond_25

    const/16 v3, -0x78

    goto :goto_12

    :cond_25
    move v3, v2

    .line 689
    .local v3, "wheelDelta":I
    :goto_12
    invoke-static {v1, v4}, Lcom/winlator/cmod/winhandler/MouseEventFlags;->getFlagFor(Lcom/winlator/cmod/xserver/Pointer$Button;Z)I

    move-result v4

    invoke-virtual {v0, v4, v2, v2, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 690
    .end local v3    # "wheelDelta":I
    goto/16 :goto_19

    .line 691
    :cond_26
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto/16 :goto_19

    .line 694
    :cond_27
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, p2, Lcom/winlator/cmod/inputcontrols/Binding;->keycode:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectKeyPress(Lcom/winlator/cmod/xserver/XKeycode;)V

    goto :goto_19

    .line 697
    :cond_28
    if-eqz v1, :cond_2a

    .line 698
    iget-object v3, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 699
    invoke-static {v1, v2}, Lcom/winlator/cmod/winhandler/MouseEventFlags;->getFlagFor(Lcom/winlator/cmod/xserver/Pointer$Button;Z)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_19

    .line 701
    :cond_29
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V

    goto :goto_19

    .line 704
    :cond_2a
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, p2, Lcom/winlator/cmod/inputcontrols/Binding;->keycode:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/XServer;->injectKeyRelease(Lcom/winlator/cmod/xserver/XKeycode;)V

    goto :goto_19

    .line 680
    .end local v1    # "pointerButton":Lcom/winlator/cmod/xserver/Pointer$Button;
    :cond_2b
    :goto_13
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    if-eqz p3, :cond_2e

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_2c

    move v2, p4

    goto :goto_15

    :cond_2c
    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v2, :cond_2d

    goto :goto_14

    :cond_2d
    move v3, v4

    :goto_14
    int-to-float v2, v3

    :cond_2e
    :goto_15
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 681
    if-eqz p3, :cond_33

    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->createMouseMoveTimer()V

    goto :goto_19

    .line 676
    :cond_2f
    :goto_16
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveOffset:Landroid/graphics/PointF;

    if-eqz p3, :cond_32

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_30

    move v2, p4

    goto :goto_18

    :cond_30
    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p2, v2, :cond_31

    goto :goto_17

    :cond_31
    move v3, v4

    :goto_17
    int-to-float v2, v3

    :cond_32
    :goto_18
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 677
    if-eqz p3, :cond_33

    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->createMouseMoveTimer()V

    .line 708
    :cond_33
    :goto_19
    return-void
.end method

.method public handleStickInput(Lcom/winlator/cmod/inputcontrols/Binding;FF)V
    .locals 3
    .param p1, "firstBinding"    # Lcom/winlator/cmod/inputcontrols/Binding;
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F

    .line 606
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/Binding;->isGamepad()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getGamepadState()Lcom/winlator/cmod/inputcontrols/GamepadState;

    move-result-object v0

    .line 608
    .local v0, "state":Lcom/winlator/cmod/inputcontrols/GamepadState;
    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 609
    .local v1, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    :goto_0
    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_UP:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_DOWN:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_LEFT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/winlator/cmod/inputcontrols/Binding;->GAMEPAD_LEFT_THUMB_RIGHT:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 613
    .local v2, "isLeftStick":Z
    :goto_2
    if-eqz v2, :cond_4

    .line 614
    iput p2, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    .line 615
    iput p3, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    goto :goto_3

    .line 617
    :cond_4
    iput p2, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    .line 618
    iput p3, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    .line 620
    :goto_3
    if-eqz v1, :cond_5

    .line 621
    invoke-virtual {v1}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState()V

    .line 623
    :cond_5
    return-void
.end method

.method public initializeStickElement(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scale"    # F

    .line 194
    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/inputcontrols/ControlElement;-><init>(Lcom/winlator/cmod/widget/InputControlsView;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 195
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setType(Lcom/winlator/cmod/inputcontrols/ControlElement$Type;)V

    .line 196
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setX(I)V

    .line 197
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setY(I)V

    .line 198
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0, p3}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setScale(F)V

    .line 199
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 200
    return-void
.end method

.method public isFocusedOnStick()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->focusOnStick:Z

    return v0
.end method

.method public isShowTouchscreenControls()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->showTouchscreenControls:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->mouseMoveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 374
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 375
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->isFocusedOnStick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 149
    .local v0, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 150
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    move v0, v2

    .line 151
    .local v0, "height":I
    goto :goto_0

    .line 152
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local p0    # "this":Lcom/winlator/cmod/widget/InputControlsView;
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getWidth()I

    move-result v0

    move v1, v0

    .line 153
    .restart local v1    # "width":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->getHeight()I

    move-result v0

    .line 156
    .restart local v0    # "height":I
    :goto_0
    if-eqz v1, :cond_6

    if-nez v0, :cond_1

    goto :goto_2

    .line 161
    :cond_1
    div-int/lit8 v2, v1, 0x64

    iput v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    .line 162
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->readyToDraw:Z

    .line 164
    iget-boolean v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    if-eqz v2, :cond_2

    .line 165
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/InputControlsView;->drawGrid(Landroid/graphics/Canvas;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/InputControlsView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    if-eqz v2, :cond_3

    .line 170
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v2, p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->draw(Landroid/graphics/Canvas;)V

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->showTouchscreenControls:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->isFocusedOnStick()Z

    move-result v2

    if-nez v2, :cond_5

    .line 174
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->isElementsLoaded()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v2, p0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->loadElements(Lcom/winlator/cmod/widget/InputControlsView;)V

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 176
    .local v3, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    invoke-virtual {v3, p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;->draw(Landroid/graphics/Canvas;)V

    .line 177
    .end local v3    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    goto :goto_1

    .line 180
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 157
    :cond_6
    :goto_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/winlator/cmod/widget/InputControlsView;->readyToDraw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 458
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v0

    .line 460
    .local v0, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v1

    .line 463
    .local v1, "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 466
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 470
    :cond_1
    invoke-direct {p0, v0}, Lcom/winlator/cmod/widget/InputControlsView;->processJoystickInput(Lcom/winlator/cmod/inputcontrols/ExternalController;)V

    .line 471
    const/4 v2, 0x1

    return v2

    .line 474
    .end local v0    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    .end local v1    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 578
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v0

    .line 580
    .local v0, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    if-eqz v0, :cond_2

    .line 581
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v2

    .line 582
    .local v2, "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    if-eqz v2, :cond_2

    .line 583
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 584
    .local v3, "action":I
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 585
    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    goto :goto_0

    .line 587
    :cond_0
    if-ne v3, v4, :cond_1

    .line 588
    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getBinding()Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v5

    invoke-virtual {p0, v0, v5, v1}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/ExternalController;Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    .line 590
    :cond_1
    :goto_0
    return v4

    .line 594
    .end local v0    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    .end local v2    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    .end local v3    # "action":I
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/winlator/cmod/widget/InputControlsView;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "touchscreen_haptics_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 480
    .local v2, "hapticsEnabled":Z
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/widget/InputControlsView;->resetTouchscreenTimeout()V

    .line 482
    iget-boolean v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->readyToDraw:Z

    if-eqz v3, :cond_3

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 498
    :pswitch_0
    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    if-eqz v3, :cond_3

    .line 499
    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Lcom/winlator/cmod/widget/InputControlsView;->offsetX:F

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setX(I)V

    .line 500
    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, v0, Lcom/winlator/cmod/widget/InputControlsView;->offsetY:F

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setY(I)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v3}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 507
    :cond_0
    iget-boolean v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->moveCursor:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->cursor:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, v0, Lcom/winlator/cmod/widget/InputControlsView;->snappingSize:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/winlator/cmod/math/Mathf;->roundTo(FF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 508
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    goto :goto_0

    .line 485
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 486
    .local v3, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 487
    .local v6, "y":F
    invoke-direct {v0, v3, v6}, Lcom/winlator/cmod/widget/InputControlsView;->intersectElement(FF)Lcom/winlator/cmod/inputcontrols/ControlElement;

    move-result-object v7

    .line 488
    .local v7, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    iput-boolean v4, v0, Lcom/winlator/cmod/widget/InputControlsView;->moveCursor:Z

    .line 489
    if-eqz v7, :cond_2

    .line 490
    invoke-virtual {v7}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getX()S

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    iput v8, v0, Lcom/winlator/cmod/widget/InputControlsView;->offsetX:F

    .line 491
    invoke-virtual {v7}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getY()S

    move-result v8

    int-to-float v8, v8

    sub-float v8, v6, v8

    iput v8, v0, Lcom/winlator/cmod/widget/InputControlsView;->offsetY:F

    .line 492
    iput-boolean v5, v0, Lcom/winlator/cmod/widget/InputControlsView;->moveCursor:Z

    .line 494
    :cond_2
    invoke-direct {v0, v7}, Lcom/winlator/cmod/widget/InputControlsView;->selectElement(Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    .line 495
    nop

    .line 514
    .end local v3    # "x":F
    .end local v6    # "y":F
    .end local v7    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    :cond_3
    :goto_0
    iget-boolean v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v3, :cond_d

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 516
    .local v3, "actionIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 517
    .local v6, "pointerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 518
    .local v7, "actionMasked":I
    const/4 v8, 0x0

    .line 520
    .local v8, "handled":Z
    packed-switch v7, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_5

    .line 548
    :pswitch_4
    const/4 v5, 0x0

    .local v5, "i":B
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    int-to-byte v9, v9

    .local v9, "count":B
    :goto_1
    if-ge v5, v9, :cond_7

    .line 549
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 550
    .local v10, "x":F
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 551
    .local v11, "y":F
    const/4 v8, 0x0

    .line 552
    iget-object v12, v0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v12}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 553
    .local v13, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    invoke-virtual {v13, v5, v10, v11}, Lcom/winlator/cmod/inputcontrols/ControlElement;->handleTouchMove(IFF)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v8, 0x1

    .line 554
    .end local v13    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    :cond_4
    goto :goto_2

    .line 555
    :cond_5
    if-nez v8, :cond_6

    iget-object v12, v0, Lcom/winlator/cmod/widget/InputControlsView;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v12, v1}, Lcom/winlator/cmod/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 548
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_6
    add-int/lit8 v10, v5, 0x1

    int-to-byte v5, v10

    goto :goto_1

    .line 557
    .end local v5    # "i":B
    .end local v9    # "count":B
    :cond_7
    goto/16 :goto_5

    .line 562
    :pswitch_5
    iget-object v5, v0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/winlator/cmod/inputcontrols/ControlElement;

    .local v9, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    invoke-virtual {v9, v6}, Lcom/winlator/cmod/inputcontrols/ControlElement;->handleTouchUp(I)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    .line 563
    .end local v9    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    :cond_9
    if-nez v8, :cond_d

    iget-object v5, v0, Lcom/winlator/cmod/widget/InputControlsView;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v5, v1}, Lcom/winlator/cmod/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 523
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 524
    .local v9, "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 525
    .local v10, "y":F
    iget-object v11, v0, Lcom/winlator/cmod/widget/InputControlsView;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v11, v4}, Lcom/winlator/cmod/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 526
    iget-object v11, v0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v11}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getElements()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 527
    .local v12, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    invoke-virtual {v12, v6, v9, v10}, Lcom/winlator/cmod/inputcontrols/ControlElement;->handleTouchDown(IFF)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 528
    const/4 v8, 0x1

    .line 529
    if-eqz v2, :cond_a

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/widget/InputControlsView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "vibrator"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 531
    .local v13, "vibrator":Landroid/os/Vibrator;
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 532
    nop

    .line 533
    const-wide/16 v14, 0x32

    const/4 v4, -0x1

    invoke-static {v14, v15, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 540
    .end local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_a
    invoke-virtual {v12, v5}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBindingAt(I)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v4

    sget-object v13, Lcom/winlator/cmod/inputcontrols/Binding;->MOUSE_LEFT_BUTTON:Lcom/winlator/cmod/inputcontrols/Binding;

    if-ne v4, v13, :cond_b

    .line 541
    iget-object v4, v0, Lcom/winlator/cmod/widget/InputControlsView;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/widget/TouchpadView;->setPointerButtonLeftEnabled(Z)V

    .line 543
    .end local v12    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    :cond_b
    const/4 v4, 0x1

    goto :goto_4

    .line 544
    :cond_c
    if-nez v8, :cond_d

    iget-object v4, v0, Lcom/winlator/cmod/widget/InputControlsView;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-virtual {v4, v1}, Lcom/winlator/cmod/widget/TouchpadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 567
    .end local v3    # "actionIndex":I
    .end local v6    # "pointerId":I
    .end local v7    # "actionMasked":I
    .end local v8    # "handled":Z
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_d
    :goto_5
    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized removeElement()Z
    .locals 2

    monitor-enter p0

    .line 269
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    iget-object v1, p0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->removeElement(Lcom/winlator/cmod/inputcontrols/ControlElement;)V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->selectedElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 272
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 273
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 276
    .end local p0    # "this":Lcom/winlator/cmod/widget/InputControlsView;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetStickPosition()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 186
    .local v0, "boundingBox":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 187
    .local v1, "centerX":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    .line 188
    .local v2, "centerY":F
    iget-object v3, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v3, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setCurrentPosition(FF)V

    .line 189
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 191
    .end local v0    # "boundingBox":Landroid/graphics/Rect;
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    :cond_0
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->editMode:Z

    .line 133
    return-void
.end method

.method public setFocusOnStick(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->focusOnStick:Z

    .line 86
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 87
    return-void
.end method

.method public setOverlayOpacity(F)V
    .locals 0
    .param p1, "overlayOpacity"    # F

    .line 136
    iput p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->overlayOpacity:F

    .line 137
    return-void
.end method

.method public declared-synchronized setProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    monitor-enter p0

    .line 304
    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    iput-object p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 306
    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->deselectAllElements()V

    goto :goto_0

    .line 308
    .end local p0    # "this":Lcom/winlator/cmod/widget/InputControlsView;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->profile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    .end local p1    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShowTouchscreenControls(Z)V
    .locals 0
    .param p1, "showTouchscreenControls"    # Z

    .line 316
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->showTouchscreenControls:Z

    .line 317
    return-void
.end method

.method public setTouchpadView(Lcom/winlator/cmod/widget/TouchpadView;)V
    .locals 0
    .param p1, "touchpadView"    # Lcom/winlator/cmod/widget/TouchpadView;

    .line 354
    iput-object p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->touchpadView:Lcom/winlator/cmod/widget/TouchpadView;

    .line 355
    return-void
.end method

.method public setXServer(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 362
    iput-object p1, p0, Lcom/winlator/cmod/widget/InputControlsView;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 363
    invoke-direct {p0}, Lcom/winlator/cmod/widget/InputControlsView;->createMouseMoveTimer()V

    .line 364
    return-void
.end method

.method public updateStickPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 203
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getCurrentPosition()Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 205
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView;->stickElement:Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlElement;->getCurrentPosition()Landroid/graphics/PointF;

    move-result-object v0

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 206
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 208
    :cond_0
    return-void
.end method

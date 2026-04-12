.class Lcom/winlator/cmod/widget/InputControlsView$1;
.super Ljava/util/TimerTask;
.source "InputControlsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/widget/InputControlsView;->createMouseMoveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/widget/InputControlsView;

.field final synthetic val$cursorSpeed:F

.field final synthetic val$winHandler:Lcom/winlator/cmod/winhandler/WinHandler;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/widget/InputControlsView;Lcom/winlator/cmod/winhandler/WinHandler;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/widget/InputControlsView;

    .line 386
    iput-object p1, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    iput-object p2, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->val$winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    iput p3, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->val$cursorSpeed:F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v0}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetmouseMoveOffset(Lcom/winlator/cmod/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v0}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetmouseMoveOffset(Lcom/winlator/cmod/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v0}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetxServer(Lcom/winlator/cmod/widget/InputControlsView;)Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->val$winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v2}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetmouseMoveOffset(Lcom/winlator/cmod/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->val$cursorSpeed:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v3}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetmouseMoveOffset(Lcom/winlator/cmod/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->val$cursorSpeed:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v0}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetxServer(Lcom/winlator/cmod/widget/InputControlsView;)Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    iget-object v2, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v2}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetmouseMoveOffset(Lcom/winlator/cmod/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->val$cursorSpeed:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->this$0:Lcom/winlator/cmod/widget/InputControlsView;

    invoke-static {v3}, Lcom/winlator/cmod/widget/InputControlsView;->-$$Nest$fgetmouseMoveOffset(Lcom/winlator/cmod/widget/InputControlsView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/winlator/cmod/widget/InputControlsView$1;->val$cursorSpeed:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/winlator/cmod/xserver/XServer;->injectPointerMoveDelta(II)V

    .line 398
    :cond_2
    :goto_0
    return-void
.end method

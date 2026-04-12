.class Lcom/winlator/cmod/XServerDisplayActivity$3;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/XServerDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/XServerDisplayActivity;

.field final synthetic val$winStarted:[Z


# direct methods
.method constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/XServerDisplayActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 543
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iput-object p2, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->val$winStarted:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMapWindow: Detected window className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XServerDisplayActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0, p1}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$massignTaskAffinity(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Window;)V

    .line 560
    return-void
.end method

.method public onModifyWindowProperty(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V
    .locals 1
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "property"    # Lcom/winlator/cmod/xserver/Property;

    .line 564
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0, p1, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$mchangeFrameRatingVisibility(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V

    .line 565
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 569
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$mchangeFrameRatingVisibility(Lcom/winlator/cmod/XServerDisplayActivity;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V

    .line 570
    return-void
.end method

.method public onUpdateWindowContent(Lcom/winlator/cmod/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 546
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->val$winStarted:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->isApplicationWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetxServerView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/XServerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/renderer/GLRenderer;->setCursorVisible(Z)V

    .line 548
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XServerDisplayActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 549
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->val$winStarted:[Z

    aput-boolean v2, v0, v1

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetframeRatingWindowId(Lcom/winlator/cmod/XServerDisplayActivity;)I

    move-result v0

    iget v1, p1, Lcom/winlator/cmod/xserver/Window;->id:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$3;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetframeRating(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/FrameRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/FrameRating;->update()V

    .line 553
    :cond_1
    return-void
.end method

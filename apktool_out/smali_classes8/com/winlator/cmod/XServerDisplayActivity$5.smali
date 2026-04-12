.class Lcom/winlator/cmod/XServerDisplayActivity$5;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/XServerDisplayActivity;->ensurePointerCapture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/XServerDisplayActivity;


# direct methods
.method public static synthetic $r8$lambda$kKemc_04Azx3YmwoOyDa3BLWUNQ(Lcom/winlator/cmod/XServerDisplayActivity$5;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/XServerDisplayActivity$5;->lambda$run$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 749
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 759
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$mhandleCapturedPointer(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->hasWindowFocus()Z

    move-result v0

    const-wide/16 v1, 0x32

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/TouchpadView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/winlator/cmod/widget/TouchpadView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/TouchpadView;->setFocusableInTouchMode(Z)V

    .line 756
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/TouchpadView;->requestFocus()Z

    .line 758
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/TouchpadView;->requestPointerCapture()V

    .line 759
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgettouchpadView(Lcom/winlator/cmod/XServerDisplayActivity;)Lcom/winlator/cmod/widget/TouchpadView;

    move-result-object v0

    new-instance v2, Lcom/winlator/cmod/XServerDisplayActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/XServerDisplayActivity$5$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/XServerDisplayActivity$5;)V

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/widget/TouchpadView;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 760
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$5;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fputpointerCaptureRequested(Lcom/winlator/cmod/XServerDisplayActivity;Z)V

    .line 762
    return-void
.end method

.class Lcom/winlator/cmod/widget/TouchpadView$1;
.super Ljava/lang/Object;
.source "TouchpadView.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/widget/TouchpadView;-><init>(Landroid/content/Context;Lcom/winlator/cmod/xserver/XServer;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/widget/TouchpadView;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/widget/TouchpadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/widget/TouchpadView;

    .line 90
    iput-object p1, p0, Lcom/winlator/cmod/widget/TouchpadView$1;->this$0:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView$1;->this$0:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-static {v0, p2}, Lcom/winlator/cmod/widget/TouchpadView;->-$$Nest$mhandleStylusHoverEvent(Lcom/winlator/cmod/widget/TouchpadView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 96
    :cond_0
    return v0
.end method

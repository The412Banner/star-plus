.class Lcom/winlator/cmod/BigPictureActivity$2;
.super Ljava/lang/Object;
.source "BigPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/BigPictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/BigPictureActivity;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/BigPictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/BigPictureActivity;

    .line 632
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$2;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 635
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$2;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    invoke-static {v0}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$fgetplayButton(Lcom/winlator/cmod/BigPictureActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 637
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$2;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    invoke-static {v0}, Lcom/winlator/cmod/BigPictureActivity;->-$$Nest$fgetplayButton(Lcom/winlator/cmod/BigPictureActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 639
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

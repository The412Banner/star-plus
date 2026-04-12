.class Lcom/winlator/cmod/BigPictureActivity$3;
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

.field final synthetic val$settingsButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/BigPictureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 643
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$3;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$3;->val$settingsButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$3;->val$settingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 648
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$3;->val$settingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 650
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

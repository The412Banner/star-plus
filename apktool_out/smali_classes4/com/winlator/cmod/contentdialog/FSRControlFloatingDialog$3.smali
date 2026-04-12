.class Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;
.super Ljava/lang/Object;
.source "FSRControlFloatingDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;Landroid/view/Window;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->this$0:Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 135
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->val$window:Landroid/view/Window;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->val$window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 137
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 150
    :pswitch_0
    return v1

    .line 145
    :pswitch_1
    iget v1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v4, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialTouchX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 146
    iget v1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialTouchY:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 147
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->val$window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 148
    return v3

    .line 139
    :pswitch_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialX:I

    .line 140
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialY:I

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialTouchX:F

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;->initialTouchY:F

    .line 143
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/winlator/cmod/XServerDisplayActivity$8;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnCapturedPointerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/XServerDisplayActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/XServerDisplayActivity;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 1284
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$8;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturedPointer(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1287
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$8;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0, p2}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$mhandleCapturedPointer(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/MotionEvent;)V

    .line 1288
    const/4 v0, 0x1

    return v0
.end method

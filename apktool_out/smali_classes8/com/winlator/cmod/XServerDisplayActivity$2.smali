.class Lcom/winlator/cmod/XServerDisplayActivity$2;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "XServerDisplayActivity.java"


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


# direct methods
.method public static synthetic $r8$lambda$Tw48xoliDw-S9pdqrvlOukvNyhM(Lcom/winlator/cmod/XServerDisplayActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity$2;->lambda$onDrawerClosed$0()V

    return-void
.end method

.method constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 332
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$2;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDrawerClosed$0()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$2;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    const-string v1, "drawer-closed"

    invoke-static {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$mensurePointerCapture(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .line 338
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$2;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetisRelativeMouseMovement(Lcom/winlator/cmod/XServerDisplayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$2;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetpointerCaptureRequested(Lcom/winlator/cmod/XServerDisplayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$2;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-static {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$fgetdrawerLayout(Lcom/winlator/cmod/XServerDisplayActivity;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/XServerDisplayActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/XServerDisplayActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/XServerDisplayActivity$2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .param p1, "drawerView"    # Landroid/view/View;

    .line 335
    return-void
.end method

.class Lcom/winlator/cmod/BigPictureActivity$6;
.super Ljava/lang/Object;
.source "BigPictureActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/BigPictureActivity;->showSettingsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/BigPictureActivity;

.field final synthetic val$mainLayout:Landroid/widget/LinearLayout;

.field final synthetic val$settingsLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/BigPictureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 783
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$6;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$6;->val$settingsLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/winlator/cmod/BigPictureActivity$6;->val$mainLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .line 786
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$6;->val$settingsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 788
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$6;->val$mainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/winlator/cmod/BigPictureActivity$6;->val$mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v1, v3, v6

    const-string v1, "translationX"

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 789
    .local v0, "mainSlideOut":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 790
    const-wide/16 v7, 0x1f4

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 791
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 793
    iget-object v3, p0, Lcom/winlator/cmod/BigPictureActivity$6;->val$settingsLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/winlator/cmod/BigPictureActivity$6;->val$settingsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    new-array v2, v2, [F

    aput v9, v2, v4

    aput v5, v2, v6

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 794
    .local v1, "settingsSlideIn":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 795
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 796
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 797
    return v6
.end method

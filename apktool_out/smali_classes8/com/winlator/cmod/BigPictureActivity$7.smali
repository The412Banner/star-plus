.class Lcom/winlator/cmod/BigPictureActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BigPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/BigPictureActivity;->hideSettingsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/BigPictureActivity;

.field final synthetic val$settingsLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/BigPictureActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/BigPictureActivity;

    .line 817
    iput-object p1, p0, Lcom/winlator/cmod/BigPictureActivity$7;->this$0:Lcom/winlator/cmod/BigPictureActivity;

    iput-object p2, p0, Lcom/winlator/cmod/BigPictureActivity$7;->val$settingsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 820
    iget-object v0, p0, Lcom/winlator/cmod/BigPictureActivity$7;->val$settingsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 821
    return-void
.end method

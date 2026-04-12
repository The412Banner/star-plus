.class Lcom/winlator/cmod/XServerDisplayActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XServerDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/XServerDisplayActivity;->collapseGroup(Landroid/view/Menu;II[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/XServerDisplayActivity;

.field final synthetic val$groupId:I

.field final synthetic val$headerId:I

.field final synthetic val$menu:Landroid/view/Menu;

.field final synthetic val$r:Landroid/view/View;

.field final synthetic val$remaining:[I

.field final synthetic val$rv:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/View;[ILandroid/view/Menu;IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 1122
    iput-object p1, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iput-object p2, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$r:Landroid/view/View;

    iput-object p3, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$remaining:[I

    iput-object p4, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$menu:Landroid/view/Menu;

    iput p5, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$groupId:I

    iput p6, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$headerId:I

    iput-object p7, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1125
    iget-object v0, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1126
    .local v0, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 1127
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1128
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$r:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1129
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$r:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1131
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$remaining:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    if-nez v3, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->this$0:Lcom/winlator/cmod/XServerDisplayActivity;

    iget-object v2, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$menu:Landroid/view/Menu;

    iget v3, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$groupId:I

    iget v4, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$headerId:I

    iget-object v5, p0, Lcom/winlator/cmod/XServerDisplayActivity$7;->val$rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/winlator/cmod/XServerDisplayActivity;->-$$Nest$mfinishCollapse(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/Menu;IILandroidx/recyclerview/widget/RecyclerView;)V

    .line 1134
    :cond_0
    return-void
.end method

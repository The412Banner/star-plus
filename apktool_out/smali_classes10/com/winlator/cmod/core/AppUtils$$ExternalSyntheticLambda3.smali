.class public final synthetic Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/core/Callback;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>([ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda3;->f$0:[I

    iput-object p2, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda3;->f$0:[I

    iget-object v1, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/core/AppUtils;->lambda$setupTabLayout$4([ILandroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

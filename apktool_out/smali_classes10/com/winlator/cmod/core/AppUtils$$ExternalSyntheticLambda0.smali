.class public final synthetic Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lcom/winlator/cmod/core/Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;[ZLcom/winlator/cmod/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;->f$1:[Z

    iput-object p3, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;->f$2:Lcom/winlator/cmod/core/Callback;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;->f$1:[Z

    iget-object v2, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda0;->f$2:Lcom/winlator/cmod/core/Callback;

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/core/AppUtils;->lambda$observeSoftKeyboardVisibility$3(Landroid/view/View;[ZLcom/winlator/cmod/core/Callback;)V

    return-void
.end method

.class public final synthetic Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/core/AppUtils$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/winlator/cmod/core/AppUtils;->lambda$hideSystemUI$1(Landroid/view/View;I)V

    return-void
.end method

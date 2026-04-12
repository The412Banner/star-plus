.class public final synthetic Lcom/winlator/cmod/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iput p2, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    iget v1, p0, Lcom/winlator/cmod/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/ExternalControllerBindingsActivity;->lambda$animateItemView$0(Lcom/winlator/cmod/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

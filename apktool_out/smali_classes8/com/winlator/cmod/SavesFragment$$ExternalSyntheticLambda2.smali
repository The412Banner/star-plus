.class public final synthetic Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/winlator/cmod/core/Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/cmod/core/Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda2;->f$2:Lcom/winlator/cmod/core/Callback;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/winlator/cmod/SavesFragment;->lambda$showContainerSelectionDialog$0(Landroid/widget/Spinner;Ljava/util/List;Lcom/winlator/cmod/core/Callback;Landroid/content/DialogInterface;I)V

    return-void
.end method

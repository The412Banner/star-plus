.class public final synthetic Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda62;->f$0:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda62;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda62;->f$0:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda62;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$6(Landroid/widget/Spinner;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

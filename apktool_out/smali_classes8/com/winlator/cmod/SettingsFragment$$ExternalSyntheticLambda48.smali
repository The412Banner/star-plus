.class public final synthetic Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda48;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda48;->f$1:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda48;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda48;->f$1:Landroid/widget/Spinner;

    invoke-static {v0, v1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$5(Landroid/content/Context;Landroid/widget/Spinner;)V

    return-void
.end method

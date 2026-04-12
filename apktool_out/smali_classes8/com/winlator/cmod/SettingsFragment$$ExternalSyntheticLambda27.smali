.class public final synthetic Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/widget/Spinner;

.field public final synthetic f$2:Lcom/winlator/cmod/core/Callback;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$2:Lcom/winlator/cmod/core/Callback;

    iput-object p4, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$2:Lcom/winlator/cmod/core/Callback;

    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadFEXCorePresetSpinners$39(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    return-void
.end method

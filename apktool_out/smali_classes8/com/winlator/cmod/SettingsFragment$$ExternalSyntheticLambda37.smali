.class public final synthetic Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/core/Callback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/winlator/cmod/core/Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;->f$1:Lcom/winlator/cmod/core/Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;->f$1:Lcom/winlator/cmod/core/Callback;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadBox64PresetSpinners$18(Landroid/content/Context;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    return-void
.end method

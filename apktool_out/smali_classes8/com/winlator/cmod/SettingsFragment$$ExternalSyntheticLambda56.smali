.class public final synthetic Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/core/Callback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda56;->f$0:Lcom/winlator/cmod/core/Callback;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda56;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda56;->f$0:Lcom/winlator/cmod/core/Callback;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda56;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadBox64PresetSpinners$19(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    return-void
.end method

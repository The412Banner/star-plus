.class public final synthetic Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda2;->f$0:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

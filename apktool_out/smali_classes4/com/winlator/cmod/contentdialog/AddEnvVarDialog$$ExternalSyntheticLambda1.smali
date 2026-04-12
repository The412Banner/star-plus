.class public final synthetic Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Lcom/winlator/cmod/widget/EnvVarsView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/winlator/cmod/widget/EnvVarsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;->f$2:Lcom/winlator/cmod/widget/EnvVarsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog$$ExternalSyntheticLambda1;->f$2:Lcom/winlator/cmod/widget/EnvVarsView;

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->lambda$new$2(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/winlator/cmod/widget/EnvVarsView;)V

    return-void
.end method

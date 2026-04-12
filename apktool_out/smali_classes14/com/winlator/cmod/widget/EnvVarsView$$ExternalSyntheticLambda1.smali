.class public final synthetic Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/winlator/cmod/widget/EnvVarsView;->lambda$add$1(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

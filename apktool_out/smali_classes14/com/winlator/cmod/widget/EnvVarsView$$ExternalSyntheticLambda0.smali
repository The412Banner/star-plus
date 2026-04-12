.class public final synthetic Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/widget/ToggleButton;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ToggleButton;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ToggleButton;

    iput-object p2, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/String;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/winlator/cmod/widget/EnvVarsView;->lambda$add$0(Landroid/widget/ToggleButton;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

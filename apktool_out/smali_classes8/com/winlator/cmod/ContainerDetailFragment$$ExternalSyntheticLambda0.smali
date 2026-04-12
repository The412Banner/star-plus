.class public final synthetic Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/winlator/cmod/widget/EnvVarsView;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/widget/EnvVarsView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/widget/EnvVarsView;

    invoke-static {v0, v1, p1}, Lcom/winlator/cmod/ContainerDetailFragment;->lambda$createEnvVarsTab$15(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/view/View;)V

    return-void
.end method

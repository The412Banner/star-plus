.class public final synthetic Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/core/Callback;

.field public final synthetic f$1:Lcom/winlator/cmod/container/Container;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/cmod/core/Callback;

    iput-object p2, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda7;->f$1:Lcom/winlator/cmod/container/Container;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/cmod/core/Callback;

    iget-object v1, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda7;->f$1:Lcom/winlator/cmod/container/Container;

    invoke-static {v0, v1}, Lcom/winlator/cmod/container/ContainerManager;->lambda$createContainerAsync$0(Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

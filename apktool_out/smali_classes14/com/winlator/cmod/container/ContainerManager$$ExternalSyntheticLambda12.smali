.class public final synthetic Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/winlator/cmod/container/ContainerManager;->lambda$exportContainer$10(Ljava/lang/Runnable;)V

    return-void
.end method

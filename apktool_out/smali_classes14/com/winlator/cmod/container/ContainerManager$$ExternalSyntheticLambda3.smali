.class public final synthetic Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/container/ContainerManager;

.field public final synthetic f$1:Lorg/json/JSONObject;

.field public final synthetic f$2:Lcom/winlator/cmod/contents/ContentsManager;

.field public final synthetic f$3:Landroid/os/Handler;

.field public final synthetic f$4:Lcom/winlator/cmod/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/container/ContainerManager;Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Landroid/os/Handler;Lcom/winlator/cmod/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/cmod/container/ContainerManager;

    iput-object p2, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$2:Lcom/winlator/cmod/contents/ContentsManager;

    iput-object p4, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$3:Landroid/os/Handler;

    iput-object p5, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$4:Lcom/winlator/cmod/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/cmod/container/ContainerManager;

    iget-object v1, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$2:Lcom/winlator/cmod/contents/ContentsManager;

    iget-object v3, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$3:Landroid/os/Handler;

    iget-object v4, p0, Lcom/winlator/cmod/container/ContainerManager$$ExternalSyntheticLambda3;->f$4:Lcom/winlator/cmod/core/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/winlator/cmod/container/ContainerManager;->$r8$lambda$vkGsM06BZgh_Ld1anuFVGzyunYE(Lcom/winlator/cmod/container/ContainerManager;Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Landroid/os/Handler;Lcom/winlator/cmod/core/Callback;)V

    return-void
.end method

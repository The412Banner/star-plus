.class public final synthetic Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/ContentsFragment;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/ContentsFragment;Landroid/content/Intent;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/cmod/ContentsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;->f$2:Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/winlator/cmod/ContentsFragment;

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$$ExternalSyntheticLambda3;->f$2:Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/ContentsFragment;->$r8$lambda$cY50YaTaQ6A2_5JpBwymDqcg5WQ(Lcom/winlator/cmod/ContentsFragment;Landroid/content/Intent;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    return-void
.end method

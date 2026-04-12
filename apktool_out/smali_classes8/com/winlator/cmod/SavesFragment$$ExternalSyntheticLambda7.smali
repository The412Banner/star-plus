.class public final synthetic Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/core/PreloaderDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/cmod/core/PreloaderDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$$ExternalSyntheticLambda7;->f$0:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-static {v0}, Lcom/winlator/cmod/SavesFragment;->lambda$importSave$4(Lcom/winlator/cmod/core/PreloaderDialog;)V

    return-void
.end method

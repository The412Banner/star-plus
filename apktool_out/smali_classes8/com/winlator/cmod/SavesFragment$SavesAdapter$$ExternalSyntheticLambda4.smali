.class public final synthetic Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

.field public final synthetic f$1:Lcom/winlator/cmod/saves/Save;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/winlator/cmod/core/PreloaderDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;ZLcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    iput-object p2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/cmod/saves/Save;

    iput-boolean p3, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$2:Z

    iput-object p4, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$3:Lcom/winlator/cmod/core/PreloaderDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    iget-object v1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/winlator/cmod/saves/Save;

    iget-boolean v2, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$2:Z

    iget-object v3, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$$ExternalSyntheticLambda4;->f$3:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-static {v0, v1, v2, v3}, Lcom/winlator/cmod/SavesFragment$SavesAdapter;->$r8$lambda$7N2lth0Har6Gbzggm1fLoB5AvMw(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Lcom/winlator/cmod/saves/Save;ZLcom/winlator/cmod/core/PreloaderDialog;)V

    return-void
.end method

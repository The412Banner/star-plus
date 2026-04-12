.class public final synthetic Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Lcom/winlator/cmod/core/Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/winlator/cmod/core/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ContentDialog$$ExternalSyntheticLambda0;->f$1:Lcom/winlator/cmod/core/Callback;

    invoke-static {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->lambda$prompt$2(Landroid/widget/EditText;Lcom/winlator/cmod/core/Callback;)V

    return-void
.end method

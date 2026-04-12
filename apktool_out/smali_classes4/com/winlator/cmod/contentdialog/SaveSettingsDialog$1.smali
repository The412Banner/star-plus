.class Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;
.super Ljava/lang/Object;
.source "SaveSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->loadContainerSpinner(Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

.field final synthetic val$containers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;->val$containers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 154
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;->val$containers:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/container/Container;

    invoke-static {v0, v1}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->-$$Nest$fputselectedContainer(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Lcom/winlator/cmod/container/Container;)V

    .line 155
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 159
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->-$$Nest$fputselectedContainer(Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;Lcom/winlator/cmod/container/Container;)V

    .line 160
    return-void
.end method

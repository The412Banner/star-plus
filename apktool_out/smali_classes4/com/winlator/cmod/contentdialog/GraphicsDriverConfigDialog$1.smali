.class Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;
.super Ljava/lang/Object;
.source "GraphicsDriverConfigDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->initializeDialog(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$blExtensions:Ljava/lang/String;

.field final synthetic val$initialVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->val$anchor:Landroid/view/View;

    iput-object p3, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->val$initialVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->val$blExtensions:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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

    .line 184
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$fgetsVersion(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$sfputselectedVersion(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-static {}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$sfgetselectedVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->val$anchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$mqueryAvailableExtensions(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "availableExtensions":[Ljava/lang/String;
    const-string v1, ""

    .line 188
    .local v1, "blacklistedExtensions":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-static {v2}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$fgetmscAvailableExtensions(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    move-result-object v2

    const-string v3, "Extensions"

    invoke-virtual {v2, v0, v3}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setItems([Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-static {v2}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$fgetmscAvailableExtensions(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setSelectedItems([Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$sfgetselectedVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->val$initialVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->val$blExtensions:Ljava/lang/String;

    .line 194
    :cond_0
    const-string v2, "\\,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "bl":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 197
    .local v5, "extension":Ljava/lang/String;
    iget-object v6, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-static {v6}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$fgetmscAvailableExtensions(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->unsetSelectedItem(Ljava/lang/String;)V

    .line 196
    .end local v5    # "extension":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_1
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

    .line 203
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;->this$0:Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$fgetsVersion(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$sfputselectedVersion(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User selected version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->-$$Nest$sfgetselectedVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphicsDriverConfigDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.class Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;
.super Ljava/lang/Object;
.source "DXVKConfigDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;-><init>(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;

.field final synthetic val$config:Lcom/winlator/cmod/core/KeyValueSet;

.field final synthetic val$contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

.field final synthetic val$isARM64EC:Z

.field final synthetic val$sDXVKVersion:Landroid/widget/Spinner;

.field final synthetic val$sVKD3DVersion:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;Landroid/widget/Spinner;Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Lcom/winlator/cmod/contents/ContentsManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sVKD3DVersion:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$config:Lcom/winlator/cmod/core/KeyValueSet;

    iput-object p4, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sDXVKVersion:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    iput-boolean p6, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$isARM64EC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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

    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sVKD3DVersion:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "selectedVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$config:Lcom/winlator/cmod/core/KeyValueSet;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "currentDXVKVersion":Ljava/lang/String;
    const-string v3, "None"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$sfgetdxvkVersions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    .line 136
    invoke-static {}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$sfgetdxvkVersions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$smtryGetMajor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 137
    .local v4, "major":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v5, :cond_0

    .line 138
    invoke-static {}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$sfgetdxvkVersions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v4    # "major":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_1
    invoke-static {}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$sfgetdxvkVersions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 144
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;

    invoke-static {v4}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$fgetcontext(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x1090009

    invoke-static {}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$sfgetdxvkVersions()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 145
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sDXVKVersion:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    invoke-static {v1}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$smtryGetMajor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 148
    .local v4, "curMajor":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sDXVKVersion:Landroid/widget/Spinner;

    .line 150
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, v5, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/winlator/cmod/core/DefaultVersion;->DXVK:Ljava/lang/String;

    .line 148
    :goto_1
    invoke-static {v6, v5}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 152
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;

    iget-object v6, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;

    iget-object v7, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sDXVKVersion:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-static {v6, v7}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$mgetDXVKType(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$mupdateConfigVisibility(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;I)V

    .line 153
    .end local v2    # "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4    # "curMajor":Ljava/lang/Integer;
    goto :goto_2

    .line 155
    :cond_3
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->this$0:Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sDXVKVersion:Landroid/widget/Spinner;

    iget-boolean v6, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$isARM64EC:Z

    invoke-static {v3, v4, v5, v6}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->-$$Nest$mloadDxvkVersionSpinner(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V

    .line 156
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$sDXVKVersion:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;->val$config:Lcom/winlator/cmod/core/KeyValueSet;

    invoke-virtual {v4, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 158
    :goto_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

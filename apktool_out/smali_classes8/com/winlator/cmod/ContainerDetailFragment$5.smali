.class Lcom/winlator/cmod/ContainerDetailFragment$5;
.super Ljava/lang/Object;
.source "ContainerDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ContainerDetailFragment;->loadWineVersionSpinner(Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/ContainerDetailFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sBox64Version:Landroid/widget/Spinner;

.field final synthetic val$sWineVersion:Landroid/widget/Spinner;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/view/View;Landroid/widget/Spinner;Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ContainerDetailFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 982
    iput-object p1, p0, Lcom/winlator/cmod/ContainerDetailFragment$5;->this$0:Lcom/winlator/cmod/ContainerDetailFragment;

    iput-object p2, p0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$sWineVersion:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$sBox64Version:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .param p2, "v"    # Landroid/view/View;
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

    .line 985
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$view:Landroid/view/View;

    const v2, 0x7f09022a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 986
    .local v1, "fexcoreFL":Landroid/widget/FrameLayout;
    iget-object v2, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$view:Landroid/view/View;

    const v3, 0x7f0900ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 987
    .local v2, "sEmulator":Landroid/widget/Spinner;
    iget-object v3, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$view:Landroid/view/View;

    const v4, 0x7f0900ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 988
    .local v3, "sEmulator64":Landroid/widget/Spinner;
    iget-object v4, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$view:Landroid/view/View;

    const v5, 0x7f0900e9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 989
    .local v4, "sDXWrapper":Landroid/widget/Spinner;
    iget-object v5, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$view:Landroid/view/View;

    const v6, 0x7f090015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 990
    .local v5, "vDXWrapperConfig":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 991
    iget-object v7, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$sWineVersion:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 992
    .local v7, "wineVersion":Ljava/lang/String;
    iget-object v8, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$context:Landroid/content/Context;

    iget-object v9, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->this$0:Lcom/winlator/cmod/ContainerDetailFragment;

    invoke-static {v9}, Lcom/winlator/cmod/ContainerDetailFragment;->-$$Nest$fgetcontentsManager(Lcom/winlator/cmod/ContainerDetailFragment;)Lcom/winlator/cmod/contents/ContentsManager;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/winlator/cmod/core/WineInfo;->fromIdentifier(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Ljava/lang/String;)Lcom/winlator/cmod/core/WineInfo;

    move-result-object v8

    .line 993
    .local v8, "wineInfo":Lcom/winlator/cmod/core/WineInfo;
    invoke-virtual {v8}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    .line 994
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 995
    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 996
    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 997
    iget-object v9, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->this$0:Lcom/winlator/cmod/ContainerDetailFragment;

    invoke-virtual {v9}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1000
    :cond_0
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1001
    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1002
    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1003
    invoke-virtual {v3, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1005
    :cond_1
    :goto_0
    iget-object v6, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/winlator/cmod/ContainerDetailFragment;->-$$Nest$sfgetcontainer()Lcom/winlator/cmod/container/Container;

    move-result-object v9

    iget-object v10, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->this$0:Lcom/winlator/cmod/ContainerDetailFragment;

    invoke-static {v10}, Lcom/winlator/cmod/ContainerDetailFragment;->-$$Nest$fgetcontentsManager(Lcom/winlator/cmod/ContainerDetailFragment;)Lcom/winlator/cmod/contents/ContentsManager;

    move-result-object v10

    iget-object v11, v0, Lcom/winlator/cmod/ContainerDetailFragment$5;->val$sBox64Version:Landroid/widget/Spinner;

    invoke-virtual {v8}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v12

    invoke-static {v6, v9, v10, v11, v12}, Lcom/winlator/cmod/ContainerDetailFragment;->loadBox64VersionSpinner(Landroid/content/Context;Lcom/winlator/cmod/container/Container;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V

    .line 1006
    invoke-virtual {v8}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/winlator/cmod/ContainerDetailFragment;->setupDXWrapperSpinner(Landroid/widget/Spinner;Landroid/view/View;Z)V

    .line 1007
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

    .line 1010
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

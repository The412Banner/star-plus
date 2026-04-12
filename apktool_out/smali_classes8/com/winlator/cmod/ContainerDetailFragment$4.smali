.class Lcom/winlator/cmod/ContainerDetailFragment$4;
.super Ljava/lang/Object;
.source "ContainerDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ContainerDetailFragment;->setupDXWrapperSpinner(Landroid/widget/Spinner;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isARM64EC:Z

.field final synthetic val$sDXWrapper:Landroid/widget/Spinner;

.field final synthetic val$vDXWrapperConfig:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 785
    iput-object p1, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$sDXWrapper:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$vDXWrapperConfig:Landroid/view/View;

    iput-boolean p3, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$isARM64EC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onItemSelected$0(Landroid/view/View;ZLandroid/view/View;)V
    .locals 1
    .param p0, "vDXWrapperConfig"    # Landroid/view/View;
    .param p1, "isARM64EC"    # Z
    .param p2, "v"    # Landroid/view/View;

    .line 790
    new-instance v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->show()V

    return-void
.end method

.method static synthetic lambda$onItemSelected$1(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "vDXWrapperConfig"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .line 792
    new-instance v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->show()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    .line 788
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$sDXWrapper:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "dxwrapper":Ljava/lang/String;
    const-string v1, "dxvk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$vDXWrapperConfig:Landroid/view/View;

    iget-object v2, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$vDXWrapperConfig:Landroid/view/View;

    iget-boolean v3, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$isARM64EC:Z

    new-instance v4, Lcom/winlator/cmod/ContainerDetailFragment$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/winlator/cmod/ContainerDetailFragment$4$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$vDXWrapperConfig:Landroid/view/View;

    iget-object v2, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$vDXWrapperConfig:Landroid/view/View;

    new-instance v3, Lcom/winlator/cmod/ContainerDetailFragment$4$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/winlator/cmod/ContainerDetailFragment$4$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/ContainerDetailFragment$4;->val$vDXWrapperConfig:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 795
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

    .line 798
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

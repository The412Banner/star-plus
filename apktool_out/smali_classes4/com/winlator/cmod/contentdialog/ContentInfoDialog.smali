.class public Lcom/winlator/cmod/contentdialog/ContentInfoDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "ContentInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 21
    const v0, 0x7f0c0032

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->setIcon(I)V

    .line 23
    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->setTitle(I)V

    .line 25
    const v0, 0x7f090171

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    .local v0, "tvType":Landroid/widget/TextView;
    const v1, 0x7f090174

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, "tvVersion":Landroid/widget/TextView;
    const v2, 0x7f090175

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 28
    .local v2, "tvVersionCode":Landroid/widget/TextView;
    const v3, 0x7f090136

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 29
    .local v3, "tvDescription":Landroid/widget/TextView;
    const v4, 0x7f0902f2

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .local v4, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    iget-object v5, p2, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v5}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v5, p2, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget v5, p2, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v5, p2, Lcom/winlator/cmod/contents/ContentProfile;->desc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v5, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;

    iget-object v6, p2, Lcom/winlator/cmod/contents/ContentProfile;->fileList:Ljava/util/List;

    invoke-direct {v5, v6}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    new-instance v5, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 39
    return-void
.end method

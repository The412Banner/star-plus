.class public Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "ContentUntrustedDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentFile;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p2, "contentFiles":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile$ContentFile;>;"
    const v0, 0x7f0c0034

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;->setIcon(I)V

    .line 19
    const v0, 0x7f100285

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;->setTitle(I)V

    .line 21
    const v0, 0x7f0902f2

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v1, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;

    invoke-direct {v1, p2}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 25
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    return-void
.end method

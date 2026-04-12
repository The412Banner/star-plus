.class public Lcom/winlator/cmod/bigpicture/BigPictureAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BigPictureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/container/Shortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AX4Hkrf8qsFSOAKjowgl6XHBxbc(Lcom/winlator/cmod/bigpicture/BigPictureAdapter;ILcom/winlator/cmod/container/Shortcut;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->lambda$onBindViewHolder$1(ILcom/winlator/cmod/container/Shortcut;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jwWFOw2HO2foUQB2UBdmjbtgFBo(Lcom/winlator/cmod/bigpicture/BigPictureAdapter;ILcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->lambda$onBindViewHolder$0(ILcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/container/Shortcut;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 21
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Shortcut;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->shortcuts:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;
    .param p3, "v"    # Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 65
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/BigPictureActivity;

    invoke-virtual {v0, p2}, Lcom/winlator/cmod/BigPictureActivity;->loadShortcutData(Lcom/winlator/cmod/container/Shortcut;)V

    .line 66
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILcom/winlator/cmod/container/Shortcut;Landroid/view/View;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "hasFocus"    # Z

    .line 70
    if-eqz p4, :cond_0

    .line 72
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 75
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/BigPictureActivity;

    invoke-virtual {v0, p2}, Lcom/winlator/cmod/BigPictureActivity;->loadShortcutData(Lcom/winlator/cmod/container/Shortcut;)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/winlator/cmod/container/Shortcut;
    .locals 1
    .param p1, "position"    # I

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->shortcuts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/container/Shortcut;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->shortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->onBindViewHolder(Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->shortcuts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/container/Shortcut;

    .line 52
    .local v0, "shortcut":Lcom/winlator/cmod/container/Shortcut;
    iget-object v1, v0, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :goto_0
    iget-object v1, p1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 60
    iget-object v1, p1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 63
    iget-object v1, p1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, v0}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/bigpicture/BigPictureAdapter;ILcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, v0}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/bigpicture/BigPictureAdapter;ILcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/winlator/cmod/bigpicture/BigPictureAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

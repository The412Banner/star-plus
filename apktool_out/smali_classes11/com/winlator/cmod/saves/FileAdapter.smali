.class public Lcom/winlator/cmod/saves/FileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;,
        Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final listener:Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;


# direct methods
.method public static synthetic $r8$lambda$G404c1bJ9ElFYLVd0SGJCro4WYU(Lcom/winlator/cmod/saves/FileAdapter;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/saves/FileAdapter;->lambda$onBindViewHolder$0(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>([Ljava/io/File;Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;)V
    .locals 0
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "listener"    # Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/winlator/cmod/saves/FileAdapter;->files:[Ljava/io/File;

    .line 22
    iput-object p2, p0, Lcom/winlator/cmod/saves/FileAdapter;->listener:Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;

    .line 23
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/io/File;Landroid/view/View;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "v"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/winlator/cmod/saves/FileAdapter;->listener:Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;

    invoke-interface {v0, p1}, Lcom/winlator/cmod/saves/FileAdapter$OnFileClickListener;->onFileClicked(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/winlator/cmod/saves/FileAdapter;->files:[Ljava/io/File;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 11
    check-cast p1, Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/saves/FileAdapter;->onBindViewHolder(Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 34
    iget-object v0, p0, Lcom/winlator/cmod/saves/FileAdapter;->files:[Ljava/io/File;

    aget-object v0, v0, p2

    .line 35
    .local v0, "file":Ljava/io/File;
    iget-object v1, p1, Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p1, Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/winlator/cmod/saves/FileAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/saves/FileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/saves/FileAdapter;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/saves/FileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/winlator/cmod/saves/FileAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

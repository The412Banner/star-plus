.class Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdrenotoolsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/AdrenotoolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DriversAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private driversList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/AdrenotoolsFragment;


# direct methods
.method public static synthetic $r8$lambda$nTYUVEaSqZXoZDjReYSg1-K-2yE(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/AdrenotoolsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p2, "driversList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->this$0:Lcom/winlator/cmod/AdrenotoolsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->driversList:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 100
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->removeAtIndex(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->driversList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->notifyItemInserted(I)V

    .line 107
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->driversList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 69
    check-cast p1, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->onBindViewHolder(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 97
    invoke-static {p1}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->-$$Nest$fgettvName(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->this$0:Lcom/winlator/cmod/AdrenotoolsFragment;

    invoke-static {v1}, Lcom/winlator/cmod/AdrenotoolsFragment;->-$$Nest$fgetadrenotoolsManager(Lcom/winlator/cmod/AdrenotoolsFragment;)Lcom/winlator/cmod/contents/AdrenotoolsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->driversList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {p1}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->-$$Nest$fgettvVersion(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->this$0:Lcom/winlator/cmod/AdrenotoolsFragment;

    invoke-static {v1}, Lcom/winlator/cmod/AdrenotoolsFragment;->-$$Nest$fgetadrenotoolsManager(Lcom/winlator/cmod/AdrenotoolsFragment;)Lcom/winlator/cmod/contents/AdrenotoolsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->driversList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->getDriverVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {p1}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->-$$Nest$fgetbtMenu(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;-><init>(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public removeAtIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 110
    iget-object v0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->driversList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "deletedDriver":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->this$0:Lcom/winlator/cmod/AdrenotoolsFragment;

    invoke-static {v1}, Lcom/winlator/cmod/AdrenotoolsFragment;->-$$Nest$fgetadrenotoolsManager(Lcom/winlator/cmod/AdrenotoolsFragment;)Lcom/winlator/cmod/contents/AdrenotoolsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->removeDriver(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->notifyItemRemoved(I)V

    .line 113
    invoke-virtual {p0}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;->notifyItemRangeChanged(II)V

    .line 114
    return-void
.end method

.class public Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContentInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/contentdialog/ContentInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInfoFileAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile$ContentFile;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile$ContentFile;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;->data:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;->onBindViewHolder(Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 67
    invoke-static {p1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;->-$$Nest$fgettvSource(Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;

    iget-object v2, v2, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {p1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;->-$$Nest$fgettvtarget(Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;

    iget-object v2, v2, Lcom/winlator/cmod/contents/ContentProfile$ContentFile;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 62
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/winlator/cmod/contentdialog/ContentInfoDialog-IA;)V

    return-object v0
.end method

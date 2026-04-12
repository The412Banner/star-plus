.class Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContentInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final tvSource:Landroid/widget/TextView;

.field private final tvtarget:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgettvSource(Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;->tvSource:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvtarget(Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;->tvtarget:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 47
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    const v0, 0x7f090142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;->tvSource:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f090143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;->tvtarget:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/winlator/cmod/contentdialog/ContentInfoDialog-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog$ContentInfoFileAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

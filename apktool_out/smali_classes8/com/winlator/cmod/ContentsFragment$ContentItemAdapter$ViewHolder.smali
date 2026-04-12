.class Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final ibDownload:Landroid/widget/ImageButton;

.field private final ibMenu:Landroid/widget/ImageButton;

.field private final ivIcon:Landroid/widget/ImageView;

.field private final progressBar:Landroid/widget/ProgressBar;

.field private final tvVersionCode:Landroid/widget/TextView;

.field private final tvVersionName:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetibDownload(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->ibDownload:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetibMenu(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->ibMenu:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetivIcon(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvVersionCode(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->tvVersionCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvVersionName(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->tvVersionName:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 264
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 266
    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 267
    const v0, 0x7f090176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->tvVersionName:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f090175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->tvVersionCode:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->ibMenu:Landroid/widget/ImageButton;

    .line 270
    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->ibDownload:Landroid/widget/ImageButton;

    .line 271
    const v0, 0x7f0900b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 272
    return-void
.end method

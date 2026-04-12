.class Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SavesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/SavesFragment$SavesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final containerName:Landroid/widget/TextView;

.field private final imageView:Landroid/widget/ImageView;

.field private final menuButton:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontainerName(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->containerName:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageView(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenuButton(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->menuButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 301
    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->this$1:Lcom/winlator/cmod/SavesFragment$SavesAdapter;

    .line 302
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 303
    const p1, 0x7f09008b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 304
    const p1, 0x7f09016f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 305
    const p1, 0x7f09012e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->containerName:Landroid/widget/TextView;

    .line 306
    const p1, 0x7f090032

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;->menuButton:Landroid/widget/ImageButton;

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/view/View;Lcom/winlator/cmod/SavesFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SavesFragment$SavesAdapter$ViewHolder;-><init>(Lcom/winlator/cmod/SavesFragment$SavesAdapter;Landroid/view/View;)V

    return-void
.end method

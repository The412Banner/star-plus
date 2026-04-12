.class Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContainersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final menuButton:Landroid/widget/ImageView;

.field private final runButton:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetimageView(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenuButton(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunButton(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 265
    iput-object p1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->this$1:Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;

    .line 266
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 267
    const p1, 0x7f09003f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->runButton:Landroid/widget/ImageView;

    .line 268
    const p1, 0x7f09008b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 269
    const p1, 0x7f09016f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 270
    const p1, 0x7f090032

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;->menuButton:Landroid/widget/ImageView;

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Landroid/view/View;Lcom/winlator/cmod/ContainersFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContainersFragment$ContainersAdapter$ViewHolder;-><init>(Lcom/winlator/cmod/ContainersFragment$ContainersAdapter;Landroid/view/View;)V

    return-void
.end method

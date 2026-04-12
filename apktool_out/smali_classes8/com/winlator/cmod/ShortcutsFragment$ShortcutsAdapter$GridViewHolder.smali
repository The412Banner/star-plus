.class Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShortcutsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewHolder"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final subtitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetimageView(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->subtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 324
    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->this$1:Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;

    .line 325
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 326
    const p1, 0x7f09008b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->imageView:Landroid/widget/ImageView;

    .line 327
    const p1, 0x7f09016f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->title:Landroid/widget/TextView;

    .line 328
    const p1, 0x7f09016c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->subtitle:Landroid/widget/TextView;

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;Lcom/winlator/cmod/ShortcutsFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;)V

    return-void
.end method

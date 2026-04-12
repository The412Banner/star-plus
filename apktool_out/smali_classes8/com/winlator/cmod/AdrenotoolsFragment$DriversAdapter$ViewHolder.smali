.class public Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdrenotoolsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private btMenu:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;

.field private tvName:Landroid/widget/TextView;

.field private tvVersion:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtMenu(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->btMenu:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvName(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvVersion(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->tvVersion:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;
    .param p2, "v"    # Landroid/view/View;

    .line 77
    iput-object p1, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->this$1:Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter;

    .line 78
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    const v0, 0x7f090158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090174

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->tvVersion:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f090032

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/winlator/cmod/AdrenotoolsFragment$DriversAdapter$ViewHolder;->btMenu:Landroid/widget/ImageButton;

    .line 82
    return-void
.end method

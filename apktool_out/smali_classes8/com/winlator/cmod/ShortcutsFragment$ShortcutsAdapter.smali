.class Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShortcutsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ShortcutsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;,
        Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;,
        Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/container/Shortcut;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/ShortcutsFragment;


# direct methods
.method public static synthetic $r8$lambda$DVHJetm_iqY5p4_4BRJDprobnmg(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->lambda$onBindViewHolder$0(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ny2DVAvetz-C2rLjcWMBeHg2eB8(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->lambda$onBindViewHolder$1(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XxzUCgG2bdsdP6To9LRVvPVDaB4(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->lambda$showListItemMenu$5(Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihuz_CXun6ArQglliBxeaW5KhSE(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->lambda$onBindViewHolder$3(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kTfbDuRyI61omNsVSzTJBb8emo0(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->lambda$onBindViewHolder$2(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yv7nCGAO3xCiZcM0I4xIHYNYrtg(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->lambda$showListItemMenu$4(Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQWq7EaGrxaGPAJ6WIdYtuUQLk8(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->lambda$showListItemMenu$6(Lcom/winlator/cmod/container/Shortcut;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/winlator/cmod/ShortcutsFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/container/Shortcut;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/container/Shortcut;>;"
    iput-object p1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->data:Ljava/util/List;

    return-void
.end method

.method private applyListSizeConstraints(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)V
    .locals 3
    .param p1, "vh"    # Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;

    .line 297
    invoke-static {p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgetimageView(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 298
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    iget v1, v1, Lcom/winlator/cmod/ShortcutsFragment;->curListType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x80

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgettitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 299
    :cond_0
    const/16 v1, 0xc0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgettitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 300
    :goto_0
    invoke-static {p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgetimageView(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "v"    # Landroid/view/View;

    .line 284
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "v"    # Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-static {v0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$mrunFromShortcut(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "v"    # Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-static {v0, p1}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$mrunFromShortcut(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/winlator/cmod/container/Shortcut;Landroid/view/View;)Z
    .locals 1
    .param p1, "item"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "v"    # Landroid/view/View;

    .line 292
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/container/Shortcut;)V

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$showListItemMenu$4(Lcom/winlator/cmod/container/Shortcut;)V
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 341
    iget-object v0, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".desktop"

    const-string v3, ".lnk"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "lnk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ShortcutsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/winlator/cmod/ShortcutsFragment;->disableShortcutOnScreen(Landroid/content/Context;Lcom/winlator/cmod/container/Shortcut;)V

    .line 345
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 347
    .end local v0    # "lnk":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private synthetic lambda$showListItemMenu$5(Lcom/winlator/cmod/container/Shortcut;Lcom/winlator/cmod/container/Container;)V
    .locals 1
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "selected"    # Lcom/winlator/cmod/container/Container;

    .line 350
    invoke-virtual {p1, p2}, Lcom/winlator/cmod/container/Shortcut;->cloneToContainer(Lcom/winlator/cmod/container/Container;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 351
    :cond_0
    return-void
.end method

.method private synthetic lambda$showListItemMenu$6(Lcom/winlator/cmod/container/Shortcut;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 337
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 338
    .local v0, "id":I
    const v1, 0x7f09032d

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-static {v1, p1}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$mshowShortcutSettings(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V

    goto :goto_0

    .line 339
    :cond_0
    const v1, 0x7f09032c

    if-ne v0, v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V

    const v3, 0x7f1000a2

    invoke-static {v1, v3, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 348
    :cond_1
    const v1, 0x7f090329

    if-ne v0, v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    iget-object v2, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-static {v2}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ShortcutsFragment;)Lcom/winlator/cmod/container/ContainerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-static {v1, v2, v3}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$mshowContainerSelectionDialog(Lcom/winlator/cmod/ShortcutsFragment;Ljava/util/ArrayList;Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$OnContainerSelectedListener;)V

    goto :goto_0

    .line 352
    :cond_2
    const v1, 0x7f090328

    if-ne v0, v1, :cond_4

    .line 353
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Shortcut;->genUUID()V

    .line 354
    :cond_3
    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-static {v1, p1}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$maddShortcutToScreen(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V

    goto :goto_0

    .line 355
    :cond_4
    const v1, 0x7f09032a

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-static {v1, p1}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$mexportShortcut(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V

    goto :goto_0

    .line 356
    :cond_5
    const v1, 0x7f09032b

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-static {v1, p1}, Lcom/winlator/cmod/ShortcutsFragment;->-$$Nest$mshowShortcutProperties(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V

    .line 357
    :cond_6
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 333
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 334
    .local v0, "menu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 335
    :cond_0
    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 336
    new-instance v1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 359
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 360
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 268
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->this$0:Lcom/winlator/cmod/ShortcutsFragment;

    iget v0, v0, Lcom/winlator/cmod/ShortcutsFragment;->curGridType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 279
    iget-object v0, p0, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/container/Shortcut;

    .line 280
    .local v0, "item":Lcom/winlator/cmod/container/Shortcut;
    instance-of v1, p1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;

    .line 281
    .local v1, "vh":Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;
    iget-object v2, v0, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgetimageView(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    :cond_0
    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgettitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgetsubtitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgetmenuButton(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;->-$$Nest$fgetinnerArea(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-direct {p0, v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;->applyListSizeConstraints(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;)V

    goto :goto_0

    .line 287
    .end local v1    # "vh":Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;
    :cond_1
    instance-of v1, p1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;

    .line 288
    .local v1, "vh":Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;
    iget-object v2, v0, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->-$$Nest$fgetimageView(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    :cond_2
    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->-$$Nest$fgettitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-static {v1}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->-$$Nest$fgetsubtitle(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, v1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v2, v1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Lcom/winlator/cmod/container/Shortcut;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 294
    .end local v1    # "vh":Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 273
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const v2, 0x7f0c00af

    goto :goto_0

    :cond_0
    const v2, 0x7f0c00b0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;

    invoke-direct {v1, p0, v0, v2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$GridViewHolder;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;Lcom/winlator/cmod/ShortcutsFragment-IA;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;

    invoke-direct {v1, p0, v0, v2}, Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter$ListViewHolder;-><init>(Lcom/winlator/cmod/ShortcutsFragment$ShortcutsAdapter;Landroid/view/View;Lcom/winlator/cmod/ShortcutsFragment-IA;)V

    :goto_1
    return-object v1
.end method

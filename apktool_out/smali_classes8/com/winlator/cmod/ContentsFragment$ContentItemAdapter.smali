.class Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/ContentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/winlator/cmod/ContentsFragment;


# direct methods
.method public static synthetic $r8$lambda$Ae3Mm9T9vVhTXn4ih1rvRdMzO_Y(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->lambda$onBindViewHolder$1(Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AuIzNL7ujsnjf2cWpJJp7gdOzgo(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;Landroid/content/Intent;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->lambda$onBindViewHolder$4(Lcom/winlator/cmod/contents/ContentProfile;Landroid/content/Intent;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UR-BkNID2d6qSHYjNqnVUbEk4Vc(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->lambda$onBindViewHolder$5(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$itvkVtTyJC9yYiSEbGQ595bPi20(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->lambda$onBindViewHolder$3(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKiI5kAcfjhjAgUGXKnDtsfhla8(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->lambda$onBindViewHolder$2(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzOlJrWv7-sx6J43uVX_V2UCX00(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->lambda$onBindViewHolder$0(Lcom/winlator/cmod/contents/ContentProfile;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/ContentsFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/contents/ContentProfile;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile;>;"
    iput-object p1, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->data:Ljava/util/List;

    .line 277
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 317
    iget-object v0, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v1, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    sget-object v1, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v0, v1, :cond_2

    .line 318
    :cond_0
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, "containerManager":Lcom/winlator/cmod/container/ContainerManager;
    invoke-virtual {v0}, Lcom/winlator/cmod/container/ContainerManager;->getContainers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/container/Container;

    .line 320
    .local v2, "container":Lcom/winlator/cmod/container/Container;
    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    const v4, 0x7f100268

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/ContentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 322
    return-void

    .line 324
    .end local v2    # "container":Lcom/winlator/cmod/container/Container;
    :cond_1
    goto :goto_0

    .line 326
    .end local v0    # "containerManager":Lcom/winlator/cmod/container/ContainerManager;
    :cond_2
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contents/ContentsManager;->removeContent(Lcom/winlator/cmod/contents/ContentProfile;)V

    .line 327
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$mloadContentList(Lcom/winlator/cmod/ContentsFragment;)V

    .line 328
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 312
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 313
    .local v0, "itemId":I
    const v1, 0x7f0901f6

    if-ne v0, v1, :cond_0

    .line 314
    new-instance v1, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v2}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;-><init>(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)V

    invoke-virtual {v1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->show()V

    goto :goto_0

    .line 315
    :cond_0
    const v1, 0x7f0902f4

    if-ne v0, v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;)V

    const v3, 0x7f10009c

    invoke-static {v1, v3, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 330
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/View;)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;
    .param p2, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p3, "v"    # Landroid/view/View;

    .line 307
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibMenu(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 308
    .local v0, "selectionMenu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 310
    :cond_0
    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 311
    new-instance v1, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 332
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 333
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 348
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetprogressBar(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 349
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibDownload(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/winlator/cmod/ContentsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 351
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Lcom/winlator/cmod/contents/ContentProfile;Landroid/content/Intent;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)V
    .locals 6
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "holder"    # Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    .local v0, "timestamp":J
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v3}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    .local v2, "output":Ljava/io/File;
    iget-object v3, p1, Lcom/winlator/cmod/contents/ContentProfile;->remoteUrl:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/winlator/cmod/contents/Downloader;->downloadFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v3}, Lcom/winlator/cmod/ContentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p3, p2}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$5(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;Landroid/view/View;)V
    .locals 3
    .param p1, "holder"    # Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;
    .param p2, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p3, "v"    # Landroid/view/View;

    .line 336
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibDownload(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 337
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetprogressBar(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p2, Lcom/winlator/cmod/contents/ContentProfile;->remoteUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 341
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/contents/ContentProfile;Landroid/content/Intent;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 353
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 252
    check-cast p1, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->onBindViewHolder(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 294
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/contents/ContentProfile;

    .line 296
    .local v0, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    sget-object v1, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentProfile$ContentType:[I

    iget-object v2, v0, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x7f08014f

    packed-switch v1, :pswitch_data_0

    .line 299
    const v2, 0x7f08014b

    goto :goto_0

    .line 298
    :pswitch_0
    goto :goto_0

    .line 297
    :pswitch_1
    nop

    .line 299
    :goto_0
    move v1, v2

    .line 301
    .local v1, "iconId":I
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetivIcon(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v3}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgettvVersionName(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v4}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10027b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgettvVersionCode(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v5}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f10027c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibMenu(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/contents/ContentProfile;->remoteUrl:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibMenu(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibDownload(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, v0, Lcom/winlator/cmod/contents/ContentProfile;->remoteUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetprogressBar(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 335
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibDownload(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;Lcom/winlator/cmod/contents/ContentProfile;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 282
    new-instance v0, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter;->onViewRecycled(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;

    .line 287
    invoke-static {p1}, Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;->-$$Nest$fgetibMenu(Lcom/winlator/cmod/ContentsFragment$ContentItemAdapter$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 289
    return-void
.end method

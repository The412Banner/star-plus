.class public Lcom/winlator/cmod/winhandler/TaskManagerDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "TaskManagerDialog.java"

# interfaces
.implements Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;


# instance fields
.field private final activity:Lcom/winlator/cmod/XServerDisplayActivity;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final lock:Ljava/lang/Object;

.field private timer:Ljava/util/Timer;


# direct methods
.method public static synthetic $r8$lambda$-D1pR70kk16nuxU7U8E2AVNtbC8(Lcom/winlator/cmod/winhandler/TaskManagerDialog;IILcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lambda$onGetProcessInfo$7(IILcom/winlator/cmod/winhandler/ProcessInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6TSWsRQuRriNwYAoR4Fsy3glCe0(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;Lcom/winlator/cmod/widget/CPUListView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lambda$showProcessorAffinityDialog$5(Lcom/winlator/cmod/winhandler/ProcessInfo;Lcom/winlator/cmod/widget/CPUListView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N8CctQliV4KfB3vdN_8TnRdo3RU(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lambda$new$1(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QziRGizFKkcBIkMMS00WW9-ftlU(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lambda$showListItemMenu$4(Lcom/winlator/cmod/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tY9NC05tJWB54ZMr7kfNjVXS29g(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lambda$onGetProcessInfo$6(Lcom/winlator/cmod/winhandler/ProcessInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ttr3sS_a5m6ktyul6z23Uy-FIGo(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/XServerDisplayActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lambda$new$2(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactivity(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)Lcom/winlator/cmod/XServerDisplayActivity;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->update()V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 40
    const v0, 0x7f0c00b5

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->setCancelable(Z)V

    .line 43
    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->setTitle(I)V

    .line 44
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->setIcon(I)V

    .line 46
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "cancelButton":Landroid/widget/Button;
    const v1, 0x7f10017f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 48
    new-instance v1, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v1, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/XServerDisplayActivity;)V

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    invoke-static {p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->getIconDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/cmod/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method

.method public static getIconDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "home/xuser/.local/share/icons/taskmgr"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v0, "iconDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/winlator/cmod/XServerDisplayActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;
    .param p1, "command"    # Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->exec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;
    .param p2, "v"    # Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->dismiss()V

    .line 50
    new-instance v0, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/XServerDisplayActivity;)V

    const v1, 0x7f10017f

    const-string v2, "taskmgr.exe"

    invoke-static {p1, v1, v2, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    .line 51
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/winlator/cmod/XServerDisplayActivity;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 54
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 56
    iput-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/winlator/cmod/XServerDisplayActivity;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->setOnGetProcessInfoListener(Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;)V

    .line 60
    return-void
.end method

.method private synthetic lambda$onGetProcessInfo$6(Lcom/winlator/cmod/winhandler/ProcessInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 158
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/winhandler/ProcessInfo;)V

    return-void
.end method

.method private synthetic lambda$onGetProcessInfo$7(IILcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 8
    .param p1, "numProcesses"    # I
    .param p2, "index"    # I
    .param p3, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;

    .line 141
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    const v1, 0x7f0900a0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 143
    .local v1, "container":Landroid/widget/LinearLayout;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    const v4, 0x7f1001ff

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->setBottomBarText(Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    const v3, 0x7f09013d

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 147
    invoke-virtual {p0, v3}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    monitor-exit v0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, v3}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 154
    .local v3, "childCount":I
    if-ge p2, v3, :cond_1

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0c00a5

    invoke-virtual {v4, v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "itemView":Landroid/view/View;
    :goto_0
    const v4, 0x7f090158

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/winlator/cmod/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p3, Lcom/winlator/cmod/winhandler/ProcessInfo;->wow64Process:Z

    if-eqz v6, :cond_2

    const-string v6, " *32"

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v4, 0x7f09015a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p3, Lcom/winlator/cmod/winhandler/ProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v4, 0x7f090156

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/winlator/cmod/winhandler/ProcessInfo;->getFormattedMemoryUsage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v4, 0x7f090032

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, p3}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v4, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v4}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v4

    .line 163
    .local v4, "xServer":Lcom/winlator/cmod/xserver/XServer;
    sget-object v5, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 164
    .local v5, "xlock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_1
    iget-object v6, v4, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget v7, p3, Lcom/winlator/cmod/winhandler/ProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/xserver/WindowManager;->findWindowWithProcessId(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .local v6, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v5, :cond_3

    :try_start_2
    invoke-interface {v5}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 167
    .end local v5    # "xlock":Lcom/winlator/cmod/xserver/XLock;
    :cond_3
    const v5, 0x7f09008a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 168
    .local v5, "ivIcon":Landroid/widget/ImageView;
    const v7, 0x7f080185

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    if-eqz v6, :cond_4

    .line 170
    iget-object v7, v4, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v7, v6}, Lcom/winlator/cmod/xserver/PixmapManager;->getWindowIcon(Lcom/winlator/cmod/xserver/Window;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 171
    .local v7, "icon":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    .end local v7    # "icon":Landroid/graphics/Bitmap;
    :cond_4
    if-lt p2, v3, :cond_5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_5
    add-int/lit8 v7, p1, -0x1

    if-ne p2, v7, :cond_6

    if-le v3, p1, :cond_6

    .line 177
    add-int/lit8 v7, v3, -0x1

    .local v7, "i":I
    :goto_2
    if-lt v7, p1, :cond_6

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 179
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "xServer":Lcom/winlator/cmod/xserver/XServer;
    .end local v5    # "ivIcon":Landroid/widget/ImageView;
    .end local v6    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v7    # "i":I
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 180
    return-void

    .line 163
    .restart local v1    # "container":Landroid/widget/LinearLayout;
    .restart local v2    # "itemView":Landroid/view/View;
    .restart local v3    # "childCount":I
    .restart local v4    # "xServer":Lcom/winlator/cmod/xserver/XServer;
    .local v5, "xlock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    :try_start_3
    invoke-interface {v5}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "numProcesses":I
    .end local p2    # "index":I
    .end local p3    # "processInfo":Lcom/winlator/cmod/winhandler/ProcessInfo;
    :cond_7
    :goto_3
    throw v6

    .line 179
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "xServer":Lcom/winlator/cmod/xserver/XServer;
    .end local v5    # "xlock":Lcom/winlator/cmod/xserver/XLock;
    .restart local p1    # "numProcesses":I
    .restart local p2    # "index":I
    .restart local p3    # "processInfo":Lcom/winlator/cmod/winhandler/ProcessInfo;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method static synthetic lambda$showListItemMenu$3(Lcom/winlator/cmod/winhandler/WinHandler;Lcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 1
    .param p0, "winHandler"    # Lcom/winlator/cmod/winhandler/WinHandler;
    .param p1, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;

    .line 95
    iget-object v0, p1, Lcom/winlator/cmod/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->killProcess(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private synthetic lambda$showListItemMenu$4(Lcom/winlator/cmod/winhandler/ProcessInfo;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 84
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 85
    .local v0, "itemId":I
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/cmod/XServerDisplayActivity;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    .line 86
    .local v1, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    const v2, 0x7f0902e1

    if-ne v0, v2, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->showProcessorAffinityDialog(Lcom/winlator/cmod/winhandler/ProcessInfo;)V

    goto :goto_0

    .line 89
    :cond_0
    const v2, 0x7f0901d2

    if-ne v0, v2, :cond_1

    .line 90
    iget-object v2, p1, Lcom/winlator/cmod/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->bringToFront(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->dismiss()V

    goto :goto_0

    .line 93
    :cond_1
    const v2, 0x7f0902e2

    if-ne v0, v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    new-instance v3, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, p1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;Lcom/winlator/cmod/winhandler/ProcessInfo;)V

    const v4, 0x7f100097

    invoke-static {v2, v4, v3}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 98
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private synthetic lambda$showProcessorAffinityDialog$5(Lcom/winlator/cmod/winhandler/ProcessInfo;Lcom/winlator/cmod/widget/CPUListView;)V
    .locals 3
    .param p1, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;
    .param p2, "cpuListView"    # Lcom/winlator/cmod/widget/CPUListView;

    .line 110
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    .line 111
    .local v0, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    iget v1, p1, Lcom/winlator/cmod/winhandler/ProcessInfo;->pid:I

    invoke-virtual {p2}, Lcom/winlator/cmod/widget/CPUListView;->getCheckedCPUList()[Z

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/core/ProcessHelper;->getAffinityMask([Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->setProcessAffinity(II)V

    .line 112
    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->update()V

    .line 113
    return-void
.end method

.method private showListItemMenu(Landroid/view/View;Lcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;

    .line 79
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    .local v0, "listItemMenu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 82
    :cond_0
    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 83
    new-instance v1, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 100
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 101
    return-void
.end method

.method private showProcessorAffinityDialog(Lcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 3
    .param p1, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;

    .line 104
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentDialog;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    const v2, 0x7f0c0038

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 105
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    iget-object v1, p1, Lcom/winlator/cmod/winhandler/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setTitle(Ljava/lang/String;)V

    .line 106
    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setIcon(I)V

    .line 107
    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/widget/CPUListView;

    .line 108
    .local v1, "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    invoke-virtual {p1}, Lcom/winlator/cmod/winhandler/ProcessInfo;->getCPUList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/CPUListView;->setCheckedCPUList(Ljava/lang/String;)V

    .line 109
    new-instance v2, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;Lcom/winlator/cmod/winhandler/ProcessInfo;Lcom/winlator/cmod/widget/CPUListView;)V

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 115
    return-void
.end method

.method private update()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v1}, Lcom/winlator/cmod/XServerDisplayActivity;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/winhandler/WinHandler;->listProcesses()V

    .line 70
    const v1, 0x7f0900a0

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 71
    .local v1, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f09013d

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .end local v1    # "container":Landroid/widget/LinearLayout;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->updateCPUInfoView()V

    .line 75
    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->updateMemoryInfoView()V

    .line 76
    return-void

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateCPUInfoView()V
    .locals 9

    .line 184
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 185
    .local v0, "llCPUInfo":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 186
    invoke-static {}, Lcom/winlator/cmod/core/CPUStatus;->getCurrentClockSpeeds()[S

    move-result-object v1

    .line 187
    .local v1, "clockSpeeds":[S
    const/4 v2, 0x0

    .line 188
    .local v2, "totalClockSpeed":I
    const/4 v3, 0x0

    .line 190
    .local v3, "maxClockSpeed":S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 191
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v5, "textView":Landroid/widget/TextView;
    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    invoke-static {v4}, Lcom/winlator/cmod/core/CPUStatus;->getMaxClockSpeed(I)S

    move-result v6

    .line 194
    .local v6, "clockSpeed":S
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-short v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MHz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    aget-short v7, v1, v4

    add-int/2addr v2, v7

    .line 197
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-short v3, v7

    .line 190
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "clockSpeed":S
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    .end local v4    # "i":I
    :cond_0
    array-length v4, v1

    div-int v4, v2, v4

    .line 201
    .local v4, "avgClockSpeed":I
    const v5, 0x7f09012c

    invoke-virtual {p0, v5}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 202
    .local v5, "tvCPUTitle":Landroid/widget/TextView;
    int-to-float v6, v4

    int-to-float v7, v3

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v6, v6

    .line 203
    .local v6, "cpuUsagePercent":B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CPU ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method private updateMemoryInfoView()V
    .locals 10

    .line 207
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 208
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 209
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 210
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v2, v4

    .line 211
    .local v2, "usedMem":J
    long-to-double v4, v2

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    .line 213
    .local v4, "memUsagePercent":B
    const v5, 0x7f090155

    invoke-virtual {p0, v5}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 214
    .local v5, "tvMemoryTitle":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    const v8, 0x7f100150

    invoke-virtual {v7, v8}, Lcom/winlator/cmod/XServerDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const v6, 0x7f090154

    invoke-virtual {p0, v6}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 217
    .local v6, "tvMemoryInfo":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-static {v2, v3, v8}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v8, v9}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method


# virtual methods
.method public onGetProcessInfo(IILcom/winlator/cmod/winhandler/ProcessInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "numProcesses"    # I
    .param p3, "processInfo"    # Lcom/winlator/cmod/winhandler/ProcessInfo;

    .line 140
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    new-instance v1, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;IILcom/winlator/cmod/winhandler/ProcessInfo;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public show()V
    .locals 7

    .line 125
    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->update()V

    .line 126
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/winhandler/WinHandler;->setOnGetProcessInfoListener(Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;)V

    .line 128
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    .line 129
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/TaskManagerDialog;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/winlator/cmod/winhandler/TaskManagerDialog$1;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/winhandler/TaskManagerDialog$1;-><init>(Lcom/winlator/cmod/winhandler/TaskManagerDialog;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 135
    invoke-super {p0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 136
    return-void
.end method

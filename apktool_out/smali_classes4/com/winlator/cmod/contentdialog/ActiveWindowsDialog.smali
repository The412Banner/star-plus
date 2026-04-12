.class public Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "ActiveWindowsDialog.java"


# instance fields
.field private final activity:Lcom/winlator/cmod/XServerDisplayActivity;


# direct methods
.method public static synthetic $r8$lambda$BgEeomM-AE54Iu5uhE509iyIRlA(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->lambda$loadWindowViews$1(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9f2963D9PJsaTfyfxVEXPdYDGg(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Lcom/winlator/cmod/xserver/Window;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->lambda$loadWindowViews$3(Lcom/winlator/cmod/xserver/Window;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iH5WKAgm277VP9UxKsNOLOu9Bh8(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;IILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->lambda$loadWindowViews$2(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;IILandroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 27
    const v0, 0x7f0c001e

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->setCancelable(Z)V

    .line 32
    const v0, 0x7f10001f

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Active Windows"

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->setTitle(Ljava/lang/String;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const v0, 0x7f080119

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->setIcon(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 44
    :goto_1
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->refreshWindowList()V

    .line 45
    return-void
.end method

.method private findAppWindows(Lcom/winlator/cmod/xserver/Window;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "parent"    # Lcom/winlator/cmod/xserver/Window;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/xserver/Window;",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xserver/Window;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/xserver/Window;>;"
    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/Window;

    .line 65
    .local v1, "child":Lcom/winlator/cmod/xserver/Window;
    iget-object v2, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowAttributes;->isMapped()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 66
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .line 69
    .local v3, "isSystem":Z
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "cls":Ljava/lang/String;
    const-string v5, "progman"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "shell_traywnd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "explorer.exe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    :cond_1
    const/4 v3, 0x1

    .line 76
    .end local v4    # "cls":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v6

    .line 78
    .local v7, "hasTitle":Z
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    .line 80
    .local v5, "hasClass":Z
    :goto_2
    if-nez v3, :cond_6

    if-nez v7, :cond_5

    if-eqz v5, :cond_6

    .line 81
    :cond_5
    invoke-direct {p0, v1}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->isDesktopWindowFallback(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 82
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 87
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "isSystem":Z
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "hasClass":Z
    .end local v7    # "hasTitle":Z
    :cond_6
    invoke-direct {p0, v1, p2}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->findAppWindows(Lcom/winlator/cmod/xserver/Window;Ljava/util/ArrayList;)V

    .line 88
    .end local v1    # "child":Lcom/winlator/cmod/xserver/Window;
    goto :goto_0

    .line 89
    :cond_7
    return-void
.end method

.method private isDesktopWindowFallback(Lcom/winlator/cmod/xserver/Window;)Z
    .locals 4
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 92
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    .line 93
    .local v0, "xServer":Lcom/winlator/cmod/xserver/XServer;
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getWidth()S

    move-result v1

    iget-object v2, v0, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getHeight()S

    move-result v1

    iget-object v2, v0, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    if-lt v1, v2, :cond_2

    .line 94
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    iget-object v2, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    if-ne v1, v2, :cond_2

    .line 95
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Default - Wine desktop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    .line 99
    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method static synthetic lambda$loadWindowViews$0(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "ivWindow"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    return-void
.end method

.method private synthetic lambda$loadWindowViews$1(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "ivWindow"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 159
    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    new-instance v1, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda3;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    :cond_0
    return-void
.end method

.method private synthetic lambda$loadWindowViews$2(Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;IILandroid/widget/ImageView;)V
    .locals 1
    .param p1, "renderer"    # Lcom/winlator/cmod/renderer/GLRenderer;
    .param p2, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "ivWindow"    # Landroid/widget/ImageView;

    .line 158
    new-instance v0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p5}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/winlator/cmod/renderer/GLRenderer;->captureScreenshot(Lcom/winlator/cmod/xserver/Window;IILcom/winlator/cmod/renderer/GLRenderer$ScreenshotCallback;)V

    .line 166
    return-void
.end method

.method private synthetic lambda$loadWindowViews$3(Lcom/winlator/cmod/xserver/Window;Landroid/view/View;)V
    .locals 4
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "v"    # Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v0

    .line 170
    .local v0, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getHandle()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 171
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->dismiss()V

    .line 172
    return-void
.end method

.method private loadWindowViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xserver/Window;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/xserver/Window;>;"
    .local p2, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    move-object/from16 v7, p0

    const v0, 0x7f090264

    invoke-virtual {v7, v0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 104
    .local v8, "llWindowList":Landroid/widget/LinearLayout;
    const v0, 0x7f09038c

    invoke-virtual {v7, v0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 106
    .local v9, "tvEmptyMessage":Landroid/widget/TextView;
    if-nez v8, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    .line 110
    if-eqz v9, :cond_1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_1
    return-void

    .line 114
    :cond_2
    if-eqz v9, :cond_3

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :cond_3
    iget-object v0, v7, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v11

    .line 117
    .local v11, "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 119
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/high16 v0, 0x43700000    # 240.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v13, v0

    .line 120
    .local v13, "previewWidth":I
    const/high16 v0, 0x43200000    # 160.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v14, v0

    .line 122
    .local v14, "previewHeight":I
    const/4 v0, 0x0

    .line 123
    .local v0, "currentRow":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_c

    .line 124
    rem-int/lit8 v1, v15, 0x2

    const/4 v2, -0x2

    if-nez v1, :cond_4

    .line 125
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 126
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v6, v0

    goto :goto_1

    .line 124
    :cond_4
    move-object v6, v0

    .line 133
    .end local v0    # "currentRow":Landroid/widget/LinearLayout;
    .local v6, "currentRow":Landroid/widget/LinearLayout;
    :goto_1
    move-object/from16 v5, p1

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/winlator/cmod/xserver/Window;

    .line 134
    .local v4, "window":Lcom/winlator/cmod/xserver/Window;
    move-object/from16 v3, p2

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    .line 136
    .local v1, "icon":Landroid/graphics/Bitmap;
    const v0, 0x7f0c001d

    invoke-virtual {v12, v0, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "itemView":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v8

    .end local v8    # "llWindowList":Landroid/widget/LinearLayout;
    .local v16, "llWindowList":Landroid/widget/LinearLayout;
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v10, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    const v2, 0x7f090253

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    .line 140
    .local v3, "ivIcon":Landroid/widget/ImageView;
    const v2, 0x7f090254

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 141
    .local v2, "ivWindow":Landroid/widget/ImageView;
    const v8, 0x7f09038d

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 142
    .local v8, "tvName":Landroid/widget/TextView;
    const v10, 0x7f09038e

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 144
    .local v10, "tvProcess":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 145
    .local v17, "className":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Window;->getName()Ljava/lang/String;

    move-result-object v18

    .line 147
    .local v18, "title":Ljava/lang/String;
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_5
    move-object/from16 v18, v17

    .line 148
    :cond_6
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_7
    const-string v18, "Unnamed Window"

    :cond_8
    move-object/from16 v19, v9

    move-object/from16 v9, v18

    .line 150
    .end local v18    # "title":Ljava/lang/String;
    .local v9, "title":Ljava/lang/String;
    .local v19, "tvEmptyMessage":Landroid/widget/TextView;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    goto :goto_2

    :cond_9
    const-string v18, "Application"

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    .end local v0    # "itemView":Landroid/view/View;
    .local v20, "itemView":Landroid/view/View;
    :goto_2
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    if-eqz v1, :cond_a

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    :cond_a
    move/from16 v18, v15

    .line 157
    .local v18, "index":I
    new-instance v0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda1;

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v0

    .end local v20    # "itemView":Landroid/view/View;
    .local v8, "itemView":Landroid/view/View;
    .local v21, "tvName":Landroid/widget/TextView;
    move-object/from16 v22, v1

    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .local v22, "icon":Landroid/graphics/Bitmap;
    move-object/from16 v1, p0

    move-object/from16 v23, v2

    .end local v2    # "ivWindow":Landroid/widget/ImageView;
    .local v23, "ivWindow":Landroid/widget/ImageView;
    move-object v2, v11

    move-object/from16 v24, v3

    .end local v3    # "ivIcon":Landroid/widget/ImageView;
    .local v24, "ivIcon":Landroid/widget/ImageView;
    move-object v3, v4

    move-object/from16 v25, v9

    move-object v9, v4

    .end local v4    # "window":Lcom/winlator/cmod/xserver/Window;
    .local v9, "window":Lcom/winlator/cmod/xserver/Window;
    .local v25, "title":Ljava/lang/String;
    move v4, v13

    move v5, v14

    move-object/from16 v26, v10

    move-object v10, v6

    .end local v6    # "currentRow":Landroid/widget/LinearLayout;
    .local v10, "currentRow":Landroid/widget/LinearLayout;
    .local v26, "tvProcess":Landroid/widget/TextView;
    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/xserver/Window;IILandroid/widget/ImageView;)V

    int-to-long v0, v15

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    move-object/from16 v3, v20

    move-object/from16 v2, v23

    .end local v23    # "ivWindow":Landroid/widget/ImageView;
    .restart local v2    # "ivWindow":Landroid/widget/ImageView;
    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    new-instance v0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, v7, v9}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;Lcom/winlator/cmod/xserver/Window;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v15, v0, :cond_b

    rem-int/lit8 v0, v15, 0x2

    if-nez v0, :cond_b

    .line 177
    new-instance v0, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "dummy":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 176
    .end local v0    # "dummy":Landroid/view/View;
    :cond_b
    const/4 v5, 0x0

    .line 123
    .end local v2    # "ivWindow":Landroid/widget/ImageView;
    .end local v8    # "itemView":Landroid/view/View;
    .end local v9    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "index":I
    .end local v21    # "tvName":Landroid/widget/TextView;
    .end local v22    # "icon":Landroid/graphics/Bitmap;
    .end local v24    # "ivIcon":Landroid/widget/ImageView;
    .end local v25    # "title":Ljava/lang/String;
    .end local v26    # "tvProcess":Landroid/widget/TextView;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object v0, v10

    move-object/from16 v8, v16

    move-object/from16 v9, v19

    move v10, v5

    goto/16 :goto_0

    .line 182
    .end local v10    # "currentRow":Landroid/widget/LinearLayout;
    .end local v15    # "i":I
    .end local v16    # "llWindowList":Landroid/widget/LinearLayout;
    .end local v19    # "tvEmptyMessage":Landroid/widget/TextView;
    .local v0, "currentRow":Landroid/widget/LinearLayout;
    .local v8, "llWindowList":Landroid/widget/LinearLayout;
    .local v9, "tvEmptyMessage":Landroid/widget/TextView;
    :cond_c
    return-void
.end method

.method private refreshWindowList()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    .line 49
    .local v0, "xServer":Lcom/winlator/cmod/xserver/XServer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "activeWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/xserver/Window;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "activeIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v4, 0x0

    sget-object v5, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v3

    .line 53
    .local v3, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-direct {p0, v4, v1}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->findAppWindows(Lcom/winlator/cmod/xserver/Window;Ljava/util/ArrayList;)V

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/xserver/Window;

    .line 55
    .local v5, "w":Lcom/winlator/cmod/xserver/Window;
    iget-object v6, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v6, v5}, Lcom/winlator/cmod/xserver/PixmapManager;->getWindowIcon(Lcom/winlator/cmod/xserver/Window;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    nop

    .end local v5    # "w":Lcom/winlator/cmod/xserver/Window;
    goto :goto_0

    .line 57
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 59
    .end local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/winlator/cmod/contentdialog/ActiveWindowsDialog;->loadWindowViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 60
    return-void

    .line 52
    .restart local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4
.end method

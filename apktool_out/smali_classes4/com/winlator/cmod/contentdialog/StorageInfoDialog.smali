.class public Lcom/winlator/cmod/contentdialog/StorageInfoDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "StorageInfoDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/winlator/cmod/container/Container;)V
    .locals 24
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "container"    # Lcom/winlator/cmod/container/Container;

    .line 21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0c002e

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const v2, 0x7f100244

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->setTitle(I)V

    .line 24
    const v2, 0x7f08012a

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->setIcon(I)V

    .line 26
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 27
    .local v2, "driveCSize":Ljava/util/concurrent/atomic/AtomicLong;
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 29
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    move-object v14, v5

    .line 30
    .local v14, "cacheSize":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v14, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 32
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    move-object v15, v5

    .line 33
    .local v15, "totalSize":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v15, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 35
    const v3, 0x7f09013a

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 36
    .local v16, "tvDriveCSize":Landroid/widget/TextView;
    const v3, 0x7f09012d

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 37
    .local v17, "tvCacheSize":Landroid/widget/TextView;
    const v3, 0x7f090170

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 38
    .local v18, "tvTotalSize":Landroid/widget/TextView;
    const v3, 0x7f090173

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 39
    .local v19, "tvUsedSpace":Landroid/widget/TextView;
    const v3, 0x7f090073

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 41
    .local v20, "circularProgressIndicator":Lcom/google/android/material/progressindicator/CircularProgressIndicator;
    invoke-static {}, Lcom/winlator/cmod/core/FileUtils;->getInternalStorageSize()J

    move-result-wide v21

    .line 43
    .local v21, "internalStorageSize":J
    new-instance v23, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda0;

    move-object/from16 v3, v23

    move-object/from16 v4, v16

    move-object v5, v2

    move-object/from16 v6, v17

    move-object v7, v14

    move-object/from16 v8, v18

    move-object v9, v15

    move-wide/from16 v10, v21

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    invoke-direct/range {v3 .. v13}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;JLandroid/widget/TextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;)V

    .line 53
    .local v3, "updateUI":Ljava/lang/Runnable;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v4

    .line 54
    .local v4, "rootDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, ".wine/drive_c"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v5, "driveCDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, ".cache"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v6, "cacheDir":Ljava/io/File;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 61
    .local v7, "lastTime":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v8, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;

    invoke-direct {v8, v15, v7, v1, v3}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 71
    .local v8, "onAddSize":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Long;>;"
    new-instance v9, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2, v8}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/cmod/core/Callback;)V

    invoke-static {v5, v9}, Lcom/winlator/cmod/core/FileUtils;->getSizeAsync(Ljava/io/File;Lcom/winlator/cmod/core/Callback;)V

    .line 76
    new-instance v9, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda3;

    invoke-direct {v9, v14, v8}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/cmod/core/Callback;)V

    invoke-static {v6, v9}, Lcom/winlator/cmod/core/FileUtils;->getSizeAsync(Ljava/io/File;Lcom/winlator/cmod/core/Callback;)V

    .line 81
    const v9, 0x7f09000d

    invoke-virtual {v0, v9}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f10005f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 82
    new-instance v9, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda4;

    move-object/from16 v10, p2

    invoke-direct {v9, v6, v10}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda4;-><init>(Ljava/io/File;Lcom/winlator/cmod/container/Container;)V

    invoke-virtual {v0, v9}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->setOnCancelCallback(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicLong;JLandroid/widget/TextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;)V
    .locals 4
    .param p0, "tvDriveCSize"    # Landroid/widget/TextView;
    .param p1, "driveCSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "tvCacheSize"    # Landroid/widget/TextView;
    .param p3, "cacheSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p4, "tvTotalSize"    # Landroid/widget/TextView;
    .param p5, "totalSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p6, "internalStorageSize"    # J
    .param p8, "tvUsedSpace"    # Landroid/widget/TextView;
    .param p9, "circularProgressIndicator"    # Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    div-long/2addr v0, p6

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 49
    .local v0, "progress":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p9, v0, v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setProgress(IZ)V

    .line 51
    return-void
.end method

.method static synthetic lambda$new$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Long;)V
    .locals 4
    .param p0, "totalSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "lastTime"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "updateUI"    # Ljava/lang/Runnable;
    .param p4, "size"    # Ljava/lang/Long;

    .line 62
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, "currTime":J
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 65
    .local v2, "elapsedTime":I
    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    .line 66
    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 69
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$2(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/cmod/core/Callback;Ljava/lang/Long;)V
    .locals 2
    .param p0, "driveCSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "onAddSize"    # Lcom/winlator/cmod/core/Callback;
    .param p2, "size"    # Ljava/lang/Long;

    .line 72
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 73
    invoke-interface {p1, p2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method static synthetic lambda$new$3(Ljava/util/concurrent/atomic/AtomicLong;Lcom/winlator/cmod/core/Callback;Ljava/lang/Long;)V
    .locals 2
    .param p0, "cacheSize"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "onAddSize"    # Lcom/winlator/cmod/core/Callback;
    .param p2, "size"    # Ljava/lang/Long;

    .line 77
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 78
    invoke-interface {p1, p2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method static synthetic lambda$new$4(Ljava/io/File;Lcom/winlator/cmod/container/Container;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;

    .line 83
    invoke-static {p0}, Lcom/winlator/cmod/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 85
    const-string v0, "desktopTheme"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/winlator/cmod/container/Container;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 87
    return-void
.end method

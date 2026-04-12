.class public Lcom/winlator/cmod/core/PreloaderDialog;
.super Ljava/lang/Object;
.source "PreloaderDialog.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$C1cJdXJ1J7evlYoG7RUO1D4NNx4(Lcom/winlator/cmod/core/PreloaderDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/core/PreloaderDialog;->lambda$showOnUiThread$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/winlator/cmod/core/PreloaderDialog;->activity:Landroid/app/Activity;

    .line 20
    return-void
.end method

.method private create()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/winlator/cmod/core/PreloaderDialog;->activity:Landroid/app/Activity;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    .line 25
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 30
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 31
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 32
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 33
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 35
    :cond_1
    return-void
.end method

.method private synthetic lambda$showOnUiThread$0(I)V
    .locals 0
    .param p1, "textResId"    # I

    .line 63
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    .end local p0    # "this":Lcom/winlator/cmod/core/PreloaderDialog;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 72
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 73
    monitor-exit p0

    return-void
.end method

.method public closeOnUiThread()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/winlator/cmod/core/PreloaderDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/core/PreloaderDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized show(I)V
    .locals 2
    .param p1, "textResId"    # I

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/core/PreloaderDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 40
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/winlator/cmod/core/PreloaderDialog;->create()V

    .line 41
    .end local p0    # "this":Lcom/winlator/cmod/core/PreloaderDialog;
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .local v0, "customIcon":Landroid/widget/ImageView;
    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45
    iget-object v1, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 37
    .end local v0    # "customIcon":Landroid/widget/ImageView;
    .end local p1    # "textResId":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized show(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/core/PreloaderDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 51
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/winlator/cmod/core/PreloaderDialog;->create()V

    .line 52
    .end local p0    # "this":Lcom/winlator/cmod/core/PreloaderDialog;
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "customIcon":Landroid/widget/ImageView;
    if-nez p2, :cond_2

    .line 55
    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/core/PreloaderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 48
    .end local v0    # "customIcon":Landroid/widget/ImageView;
    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "icon":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public showOnUiThread(I)V
    .locals 2
    .param p1, "textResId"    # I

    .line 63
    iget-object v0, p0, Lcom/winlator/cmod/core/PreloaderDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/winlator/cmod/core/PreloaderDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/core/PreloaderDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/core/PreloaderDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

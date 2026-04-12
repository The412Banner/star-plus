.class public Lcom/winlator/cmod/contentdialog/DebugDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "DebugDialog.java"

# interfaces
.implements Lcom/winlator/cmod/core/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/winlator/cmod/contentdialog/ContentDialog;",
        "Lcom/winlator/cmod/core/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static paused:Z


# instance fields
.field private final logView:Lcom/winlator/cmod/widget/LogView;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public static synthetic $r8$lambda$C6YO9m-gHleGD8VwFbaTHml1qTw(Lcom/winlator/cmod/contentdialog/DebugDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/DebugDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winlator/cmod/contentdialog/DebugDialog;->paused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const v0, 0x7f0c003c

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/DebugDialog;->setIcon(I)V

    .line 29
    const v0, 0x7f100138

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/DebugDialog;->setTitle(Ljava/lang/String;)V

    .line 30
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/DebugDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/widget/LogView;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->logView:Lcom/winlator/cmod/widget/LogView;

    .line 32
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->logView:Lcom/winlator/cmod/widget/LogView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/LogView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/winlator/cmod/core/AppUtils;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/winlator/cmod/core/UnitUtils;->pxToDp(F)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/DebugDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/DebugDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    .local v0, "llBottomBarPanel":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c003d

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "toolbarView":Landroid/view/View;
    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/contentdialog/DebugDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/contentdialog/DebugDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/DebugDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/contentdialog/DebugDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/winlator/cmod/contentdialog/DebugDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-static {p1}, Lcom/winlator/cmod/widget/LogView;->getLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->writer:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getPaused()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/winlator/cmod/contentdialog/DebugDialog;->paused:Z

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->logView:Lcom/winlator/cmod/widget/LogView;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/LogView;->clear()V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .line 42
    sget-boolean v0, Lcom/winlator/cmod/contentdialog/DebugDialog;->paused:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/DebugDialog;->setPaused(Z)V

    .line 43
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/winlator/cmod/contentdialog/DebugDialog;->getPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080136

    goto :goto_0

    :cond_0
    const v1, 0x7f080135

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 44
    return-void
.end method

.method public static setPaused(Z)V
    .locals 0
    .param p0, "cond"    # Z

    .line 67
    sput-boolean p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->paused:Z

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/contentdialog/DebugDialog;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/winlator/cmod/contentdialog/DebugDialog;->getPaused()Z

    move-result v0

    const-string v1, "\n"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->logView:Lcom/winlator/cmod/widget/LogView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/widget/LogView;->append(Ljava/lang/String;)V

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->writer:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DebugDialog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.class Lcom/winlator/cmod/ContentsFragment$3;
.super Ljava/lang/Object;
.source "ContentsFragment.java"

# interfaces
.implements Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/ContentsFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isExtracting:Z

.field final synthetic this$0:Lcom/winlator/cmod/ContentsFragment;

.field final synthetic val$preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;


# direct methods
.method public static synthetic $r8$lambda$0rrtwmPtIWyb3HbGlN_GuDDq9qQ(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContentsFragment$3;->lambda$onSucceed$1(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WnD5FLFQ-ozVu27wmGz1rZhmeA4(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContentsFragment$3;->lambda$onSucceed$3(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YdY1WQkEw_RzqaANm-3zNxm2w5k(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContentsFragment$3;->lambda$onSucceed$2(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t-1Fm4eMKaqPUuNAZfLzHUjmKn0(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContentsFragment$3;->lambda$onSucceed$4(Lcom/winlator/cmod/contents/ContentProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZg96XOJSkaUkUA1GU1xH2_pQ-U(Lcom/winlator/cmod/ContentsFragment$3;ILcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContentsFragment$3;->lambda$onFailed$0(ILcom/winlator/cmod/core/PreloaderDialog;)V

    return-void
.end method

.method constructor <init>(Lcom/winlator/cmod/ContentsFragment;Lcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/ContentsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/ContentsFragment$3;->val$preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/winlator/cmod/ContentsFragment$3;->isExtracting:Z

    return-void
.end method

.method private synthetic lambda$onFailed$0(ILcom/winlator/cmod/core/PreloaderDialog;)V
    .locals 4
    .param p1, "msgId"    # I
    .param p2, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;

    .line 193
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    const v3, 0x7f100123

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/ContentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v2, p1}, Lcom/winlator/cmod/ContentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onSucceed$1(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 1
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p2, "callback1"    # Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    .line 209
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/winlator/cmod/contents/ContentsManager;->finishInstallContent(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    return-void
.end method

.method private synthetic lambda$onSucceed$2(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 3
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p2, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;
    .param p3, "callback1"    # Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->isExtracting:Z

    .line 205
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/contents/ContentsManager;->getUnTrustedContentFiles(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "untrustedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/contents/ContentProfile$ContentFile;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v2}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 208
    .local v1, "untrustedDialog":Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;->setOnCancelCallback(Ljava/lang/Runnable;)V

    .line 209
    new-instance v2, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p3}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v1}, Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;->show()V

    .line 211
    .end local v1    # "untrustedDialog":Lcom/winlator/cmod/contentdialog/ContentUntrustedDialog;
    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v1}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/winlator/cmod/contents/ContentsManager;->finishInstallContent(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    .line 212
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSucceed$3(Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V
    .locals 3
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;
    .param p2, "preloaderDialog"    # Lcom/winlator/cmod/core/PreloaderDialog;
    .param p3, "callback1"    # Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;

    .line 201
    new-instance v0, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;-><init>(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentProfile;)V

    .line 202
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/ContentInfoDialog;
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    new-instance v1, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 213
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->setOnCancelCallback(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/ContentInfoDialog;->show()V

    .line 215
    return-void
.end method

.method private synthetic lambda$onSucceed$4(Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 220
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContentsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10006e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 221
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetmanager(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 222
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v0}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetcurrentContentType(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v0

    iget-object v1, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 223
    .local v0, "flashAfter":Z
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    iget-object v2, p1, Lcom/winlator/cmod/contents/ContentProfile;->type:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-static {v1, v2}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fputcurrentContentType(Lcom/winlator/cmod/ContentsFragment;Lcom/winlator/cmod/contents/ContentProfile$ContentType;)V

    .line 224
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v1}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetsContentType(Lcom/winlator/cmod/ContentsFragment;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v2}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$fgetcurrentContentType(Lcom/winlator/cmod/ContentsFragment;)Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 225
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-static {v1}, Lcom/winlator/cmod/ContentsFragment;->-$$Nest$mloadContentList(Lcom/winlator/cmod/ContentsFragment;)V

    .line 226
    :cond_1
    return-void
.end method


# virtual methods
.method public onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "reason"    # Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 184
    sget-object v0, Lcom/winlator/cmod/ContentsFragment$4;->$SwitchMap$com$winlator$cmod$contents$ContentsManager$InstallFailedReason:[I

    invoke-virtual {p1}, Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    const v0, 0x7f100263

    goto :goto_0

    .line 190
    :pswitch_0
    const v0, 0x7f10006c

    goto :goto_0

    .line 189
    :pswitch_1
    const v0, 0x7f10006f

    goto :goto_0

    .line 188
    :pswitch_2
    const v0, 0x7f10006b

    goto :goto_0

    .line 187
    :pswitch_3
    const v0, 0x7f100203

    goto :goto_0

    .line 186
    :pswitch_4
    const v0, 0x7f100206

    goto :goto_0

    .line 185
    :pswitch_5
    const v0, 0x7f1000ef

    .line 191
    :goto_0
    nop

    .line 193
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContentsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$3;->val$preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    new-instance v3, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v2}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ContentsFragment$3;ILcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSucceed(Lcom/winlator/cmod/contents/ContentProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/winlator/cmod/contents/ContentProfile;

    .line 198
    iget-boolean v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->isExtracting:Z

    if-eqz v0, :cond_0

    .line 199
    move-object v0, p0

    .line 200
    .local v0, "callback1":Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;
    iget-object v1, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ContentsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/ContentsFragment$3;->val$preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    new-instance v3, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;Lcom/winlator/cmod/core/PreloaderDialog;Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    .end local v0    # "callback1":Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;
    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->val$preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 219
    iget-object v0, p0, Lcom/winlator/cmod/ContentsFragment$3;->this$0:Lcom/winlator/cmod/ContentsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ContentsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/ContentsFragment$3$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/ContentsFragment$3;Lcom/winlator/cmod/contents/ContentProfile;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    :goto_0
    return-void
.end method

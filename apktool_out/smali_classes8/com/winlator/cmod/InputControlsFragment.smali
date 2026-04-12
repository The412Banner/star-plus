.class public Lcom/winlator/cmod/InputControlsFragment;
.super Landroidx/fragment/app/Fragment;
.source "InputControlsFragment.java"


# static fields
.field private static final INPUT_CONTROLS_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"


# instance fields
.field private currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

.field private importProfileCallback:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Lcom/winlator/cmod/inputcontrols/ControlsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private isDarkMode:Z

.field private keycodes:[I

.field private manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

.field private preferences:Landroid/content/SharedPreferences;

.field private final selectedProfileId:I

.field private updateLayout:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-Vc9JJQStU7UoC1QQXPgRBgr2j0(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$6(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1N5wAaTHPOltzh1Oi1E6SWbHml4(Lcom/winlator/cmod/InputControlsFragment;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/winlator/cmod/InputControlsFragment;->lambda$downloadSelectedProfiles$15(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1sALFtBhmOb384WDGph_0xgs650(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$11(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8QY3DpdudqxqW7BBrGzfZFYC0_w(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$2(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EpkNP4RFMdexyCXqbBBrdTTiXlQ(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$4(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GW1AViJDOtXre3sS8m7A4mlFX30(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$downloadProfileList$18(Lcom/winlator/cmod/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KixnQcazSjdLTKPFn4qDrFK-coU(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$openProfileFile$13(Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Os4Xhr_9vsSrlYvhIRpQlPTAlQk(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/InputControlsFragment;->lambda$downloadProfileList$17(Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SPGxt8MYPauyq7z5nfzSDOzLq-4(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$3(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V_v0eE-KcJ5NU0tAIdKBcfep364(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$downloadProfileList$19(Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZQAqGUN2Sbi7xuQg6mpjR4jsoOY(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$8(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZhgOw9neIhSUDIQBOsLvQfQX4LU(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$12(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c8_3ObFFYCUSiqo1H9NjpcLsz9Y(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$loadExternalControllers$21(Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dEWa4Ze8m-UZuDySTLDOxYMPDgw(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$downloadSelectedProfiles$14(Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$er-w0B6kMsQZ96xT6iOrXyDQKuc(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$5(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTF5CA-7EhsFZWhou3djbzc0r8s(Lcom/winlator/cmod/InputControlsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mNP_lMaYc7uoTRNBlxvj3c5V3wg(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$7(Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ngQhl4ljS29Pdku4o-WdIMQ-eCM(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$9(Landroid/widget/Spinner;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oX0kE7tsaIhABz22ocQGU--QtSA(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$loadExternalControllers$20(Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$omIVUn_0FLNUlYUxG61-iCmETZU(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$loadExternalControllers$22(Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uBnzqgJnthBkrpkSsJetnLhIBMg(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$10(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vaMIB0KJTwGkx4DTo8mgeLtL9D4(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->lambda$downloadProfileList$16(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zrBkQ_oDvo_86R8yPcmBzZoTLIs(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment;->lambda$onCreateView$1(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpreferences(Lcom/winlator/cmod/InputControlsFragment;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/InputControlsFragment;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateLayout(Lcom/winlator/cmod/InputControlsFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentProfile(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "selectedProfileId"    # I

    .line 80
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 81
    iput p1, p0, Lcom/winlator/cmod/InputControlsFragment;->selectedProfileId:I

    .line 82
    return-void
.end method

.method private downloadProfileList(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 278
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/MainActivity;

    .line 279
    .local v0, "activity":Lcom/winlator/cmod/MainActivity;
    iget-object v1, v0, Lcom/winlator/cmod/MainActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    const v2, 0x7f100137

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 280
    const-string v1, "index.txt"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p1}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;)V

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/HttpUtils;->download(Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    .line 292
    return-void
.end method

.method private downloadSelectedProfiles(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p3, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/MainActivity;

    .line 256
    .local v0, "activity":Lcom/winlator/cmod/MainActivity;
    iget-object v1, v0, Lcom/winlator/cmod/MainActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    const v2, 0x7f1000a8

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 258
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 260
    .local v3, "processedItemCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 261
    .local v8, "position":I
    aget-object v1, p2, v8

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "https://raw.githubusercontent.com/brunodev85/winlator/main/input_controls/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda14;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p3

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/cmod/InputControlsFragment;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;)V

    invoke-static {v9, v10}, Lcom/winlator/cmod/core/HttpUtils;->download(Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    .line 274
    .end local v8    # "position":I
    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method private synthetic lambda$downloadProfileList$16(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "positions"    # Ljava/util/ArrayList;

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/InputControlsFragment;->downloadSelectedProfiles(Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$downloadProfileList$17(Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "activity"    # Lcom/winlator/cmod/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "items"    # [Ljava/lang/String;
    .param p4, "positions"    # Ljava/util/ArrayList;

    .line 285
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;[Ljava/lang/String;Ljava/util/ArrayList;)V

    const v1, 0x7f100091

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 288
    :cond_0
    return-void
.end method

.method private synthetic lambda$downloadProfileList$18(Lcom/winlator/cmod/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/cmod/MainActivity;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "sProfile"    # Landroid/widget/Spinner;

    .line 281
    iget-object v0, p1, Lcom/winlator/cmod/MainActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 282
    if-eqz p2, :cond_0

    .line 283
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;[Ljava/lang/String;)V

    const v2, 0x7f10011a

    invoke-static {p1, v2, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->showMultipleChoiceList(Landroid/content/Context;I[Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    .line 289
    .end local v0    # "items":[Ljava/lang/String;
    goto :goto_0

    .line 290
    :cond_0
    const v0, 0x7f100267

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 291
    :goto_0
    return-void
.end method

.method private synthetic lambda$downloadProfileList$19(Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/winlator/cmod/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "content"    # Ljava/lang/String;

    .line 280
    new-instance v0, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$downloadSelectedProfiles$14(Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;)V
    .locals 1
    .param p1, "activity"    # Lcom/winlator/cmod/MainActivity;
    .param p2, "sProfile"    # Landroid/widget/Spinner;

    .line 268
    iget-object v0, p1, Lcom/winlator/cmod/MainActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 269
    invoke-direct {p0, p2}, Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 270
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 271
    return-void
.end method

.method private synthetic lambda$downloadSelectedProfiles$15(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2
    .param p1, "processedItemCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "positions"    # Ljava/util/ArrayList;
    .param p3, "activity"    # Lcom/winlator/cmod/MainActivity;
    .param p4, "sProfile"    # Landroid/widget/Spinner;
    .param p5, "content"    # Ljava/lang/String;

    .line 263
    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->importProfile(Lorg/json/JSONObject;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 266
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 267
    new-instance v0, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p3, p4}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/MainActivity;Landroid/widget/Spinner;)V

    invoke-virtual {p3, v0}, Lcom/winlator/cmod/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    :cond_1
    return-void
.end method

.method private synthetic lambda$loadExternalControllers$20(Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 1
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;
    .param p2, "view"    # Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->removeController(Lcom/winlator/cmod/inputcontrols/ExternalController;)V

    .line 357
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 358
    invoke-direct {p0, p2}, Lcom/winlator/cmod/InputControlsFragment;->loadExternalControllers(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method private synthetic lambda$loadExternalControllers$21(Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 355
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, p2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V

    const v2, 0x7f10009d

    invoke-static {v0, v2, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadExternalControllers$22(Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V
    .locals 4
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;
    .param p2, "v"    # Landroid/view/View;

    .line 363
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/winlator/cmod/ExternalControllerBindingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    iget v1, v1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    const-string v2, "profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string v1, "controller_id"

    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/InputControlsFragment;->startActivity(Landroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f010025

    const v3, 0x7f010026

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    .line 369
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100185

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 371
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 131
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->loadExternalControllers(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "name"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {v0, p2}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->createProfile(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 162
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 163
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    return-void
.end method

.method private synthetic lambda$onCreateView$10(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 201
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 202
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 203
    :cond_0
    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 204
    new-instance v1, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 214
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 215
    return-void
.end method

.method private synthetic lambda$onCreateView$11(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->exportProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)Ljava/io/File;

    move-result-object v0

    .line 220
    .local v0, "exportedFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100204

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 224
    .end local v0    # "exportedFile":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    const v0, 0x7f100185

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 226
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$12(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/winlator/cmod/ControlsEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    iget v1, v1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    const-string v2, "profile_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/InputControlsFragment;->startActivity(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f010025

    const v3, 0x7f010026

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 235
    :cond_0
    const v0, 0x7f100185

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 237
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 160
    new-instance v0, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V

    const v1, 0x7f100205

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "name"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0, p2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->setName(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->save()V

    .line 171
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 172
    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V

    const v2, 0x7f100205

    invoke-static {p1, v2, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    goto :goto_0

    .line 174
    :cond_0
    const v0, 0x7f100185

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 175
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$5(Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 180
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->duplicateProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 181
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 182
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 183
    return-void
.end method

.method private synthetic lambda$onCreateView$6(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V

    const v1, 0x7f100096

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 185
    :cond_0
    const v0, 0x7f100185

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 186
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$7(Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 191
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->removeProfile(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 193
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 194
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 195
    return-void
.end method

.method private synthetic lambda$onCreateView$8(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sProfile"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V

    const v1, 0x7f1000a1

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 197
    :cond_0
    const v0, 0x7f100185

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 198
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$9(Landroid/widget/Spinner;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 205
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 206
    .local v0, "itemId":I
    const v1, 0x7f0902c6

    if-ne v0, v1, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->openProfileFile(Landroid/widget/Spinner;)V

    goto :goto_0

    .line 209
    :cond_0
    const v1, 0x7f090212

    if-ne v0, v1, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->downloadProfileList(Landroid/widget/Spinner;)V

    .line 212
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private synthetic lambda$openProfileFile$13(Landroid/widget/Spinner;Lcom/winlator/cmod/inputcontrols/ControlsProfile;)V
    .locals 1
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "importedProfile"    # Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 244
    iput-object p2, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 245
    invoke-direct {p0, p1}, Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 246
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 247
    return-void
.end method

.method private loadExternalControllers(Landroid/view/View;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 328
    .local v2, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 330
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 331
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllers()Ljava/util/ArrayList;

    move-result-object v5

    .line 333
    .local v5, "connectedControllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ExternalController;>;"
    iget-object v6, v0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v6, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ExternalController;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 335
    .local v8, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v8    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    :cond_1
    goto :goto_1

    .line 338
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const v8, 0x7f09013d

    const/4 v9, 0x0

    if-nez v7, :cond_6

    .line 339
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const v7, 0x7f100034

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, "bindingsText":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 342
    .local v10, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    const v11, 0x7f0c0054

    invoke-virtual {v4, v11, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 343
    .local v11, "itemView":Landroid/view/View;
    const v12, 0x7f09016f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v10}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBindingCount()I

    move-result v12

    .line 346
    .local v12, "controllerBindingCount":I
    const v13, 0x7f09016c

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const v13, 0x7f09008b

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 349
    .local v13, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v10}, Lcom/winlator/cmod/inputcontrols/ExternalController;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_3

    const v14, 0x7f060031

    invoke-static {v3, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    goto :goto_3

    :cond_3
    const v14, -0x1a8c8d

    .line 350
    .local v14, "tintColor":I
    :goto_3
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-static {v13, v15}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 352
    if-lez v12, :cond_4

    .line 353
    const v15, 0x7f090037

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 354
    .local v15, "removeButton":Landroid/widget/ImageButton;
    invoke-virtual {v15, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    new-instance v9, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v9, v0, v10, v1}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ExternalController;Landroid/view/View;)V

    invoke-virtual {v15, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .end local v15    # "removeButton":Landroid/widget/ImageButton;
    :cond_4
    new-instance v9, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v9, v0, v10}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/winlator/cmod/InputControlsFragment;Lcom/winlator/cmod/inputcontrols/ExternalController;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    .end local v10    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    .end local v11    # "itemView":Landroid/view/View;
    .end local v12    # "controllerBindingCount":I
    .end local v13    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "tintColor":I
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 375
    .end local v7    # "bindingsText":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 376
    :cond_6
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :goto_4
    return-void
.end method

.method private loadProfileSpinner(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .line 301
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 302
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f100226

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/InputControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "selectedPosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 307
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 308
    .local v4, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    iget-object v5, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 309
    :cond_0
    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v4    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090009

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 313
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 314
    new-instance v3, Lcom/winlator/cmod/InputControlsFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/InputControlsFragment$2;-><init>(Lcom/winlator/cmod/InputControlsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 324
    return-void
.end method

.method private openProfileFile(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 243
    new-instance v0, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/Spinner;)V

    iput-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->importProfileCallback:Lcom/winlator/cmod/core/Callback;

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 252
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 104
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->importProfile(Lorg/json/JSONObject;)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 107
    .local v0, "importedProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->importProfileCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->importProfileCallback:Lcom/winlator/cmod/core/Callback;

    invoke-interface {v1, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "importedProfile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100262

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->importProfileCallback:Lcom/winlator/cmod/core/Callback;

    .line 114
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/InputControlsFragment;->setHasOptionsMenu(Z)V

    .line 90
    new-instance v1, Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    .line 92
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->preferences:Landroid/content/SharedPreferences;

    .line 93
    iget-object v1, p0, Lcom/winlator/cmod/InputControlsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "dark_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/winlator/cmod/InputControlsFragment;->isDarkMode:Z

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 119
    const v0, 0x7f0c005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    .local v1, "context":Landroid/content/Context;
    iget v2, p0, Lcom/winlator/cmod/InputControlsFragment;->selectedProfileId:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/InputControlsFragment;->manager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    iget v3, p0, Lcom/winlator/cmod/InputControlsFragment;->selectedProfileId:I

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfile(I)Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/winlator/cmod/InputControlsFragment;->currentProfile:Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 124
    const v2, 0x7f090105

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 126
    .local v2, "sProfile":Landroid/widget/Spinner;
    iget-boolean v3, p0, Lcom/winlator/cmod/InputControlsFragment;->isDarkMode:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0800f3

    goto :goto_1

    :cond_1
    const v3, 0x7f0800f2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 128
    invoke-direct {p0, v2}, Lcom/winlator/cmod/InputControlsFragment;->loadProfileSpinner(Landroid/widget/Spinner;)V

    .line 130
    new-instance v3, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, v0}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/view/View;)V

    iput-object v3, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    .line 134
    iget-object v3, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 136
    const v3, 0x7f090172

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    .local v3, "tvUiOpacity":Landroid/widget/TextView;
    const v4, 0x7f0900ce

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 138
    .local v4, "sbUiOpacity":Landroid/widget/SeekBar;
    new-instance v5, Lcom/winlator/cmod/InputControlsFragment$1;

    invoke-direct {v5, p0, v3}, Lcom/winlator/cmod/InputControlsFragment$1;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 155
    iget-object v5, p0, Lcom/winlator/cmod/InputControlsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "overlay_opacity"

    const v7, 0x3ecccccd    # 0.4f

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    const v5, 0x7f09000a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v1, v2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v5, 0x7f09001d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v1, v2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v5, 0x7f09001a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v1, v2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v5, 0x7f09003b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v1, v2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v5, 0x7f09002d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v1, v2}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v5, 0x7f090022

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v1}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v5, 0x7f090013

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, v1}, Lcom/winlator/cmod/InputControlsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/InputControlsFragment;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 297
    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/InputControlsFragment;->updateLayout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 298
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 98
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/winlator/cmod/InputControlsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f10011e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 100
    return-void
.end method

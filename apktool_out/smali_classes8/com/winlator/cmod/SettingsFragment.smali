.class public Lcom/winlator/cmod/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# static fields
.field public static final DEFAULT_SHORTCUT_EXPORT_PATH:Ljava/lang/String;

.field public static final DEFAULT_WINE_DEBUG_CHANNELS:Ljava/lang/String; = "warn,err,fixme"

.field public static final DEFAULT_WINLATOR_PATH:Ljava/lang/String;

.field private static final REQUEST_CODE_IMPORT_BOX64_PRESET:I = 0x3ec

.field private static final REQUEST_CODE_IMPORT_FEXCORE_PRESET:I = 0x3ed

.field private static final REQUEST_CODE_INSTALL_SOUNDFONT:I = 0x3e9

.field private static final REQUEST_CODE_SHORTCUT_EXPORT_PATH:I = 0x3eb

.field private static final REQUEST_CODE_WINLATOR_PATH:I = 0x3ea


# instance fields
.field private cbCursorLock:Landroid/widget/CheckBox;

.field private cbDarkMode:Landroid/widget/CheckBox;

.field private cbEnableBigPictureMode:Landroid/widget/CheckBox;

.field private cbEnableCustomApiKey:Landroid/widget/CheckBox;

.field private cbXinputToggle:Landroid/widget/CheckBox;

.field private etCustomApiKey:Landroid/widget/EditText;

.field private installSoundFontCallback:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field isDarkMode:Z

.field private isRestoreAction:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;


# direct methods
.method public static synthetic $r8$lambda$46uD1Fc5_yOdBNNS6KkX6DCfe2Q(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$onRestoreSuccess$61()V

    return-void
.end method

.method public static synthetic $r8$lambda$4lGlXtwtcliEBc0blUWN3lcuugw(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$backupAppData$59()V

    return-void
.end method

.method public static synthetic $r8$lambda$6P9sIQye50iVO10RBZI10Mdky6E(Lcom/winlator/cmod/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadBox64PresetSpinners$27(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Acqhh9QFTkYNxzs0l_OGtn7Jjno(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadFEXCorePresetSpinners$44(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BqRs74sgnlyMG3F-YKcPlbJSdMI(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CEqENWBtK7OQ46DfygW0v3p0Kao(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$backupAppData$58(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gq2QQ9weSq8OsW08cOFRflvDZBY(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGDpoywvnQd1iCVl1COXIYDBY5Y(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J9V90nxNFdkv_O17s2HsGKmXPIQ(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadFEXCorePresetSpinners$34(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M97eZ8sXSrGwEeFi1YNw_kVwPVs(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$55(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4v5ju65t25ECbBBYTKXvWXGDL8(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$initCustomApiKeySettings$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PvltowJFilv2ZXS0cpsWT5mLrDk(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$3(Landroid/content/Context;Landroid/widget/Spinner;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QFeA1AY1uzoQeFBxLTpSMTknAak(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$backupAppData$60(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XhbV1yNl8BmiSzl0umEDon5j98A(Lcom/winlator/cmod/SettingsFragment;Landroidx/collection/ArrayMap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadBox64PresetSpinners$16(Landroidx/collection/ArrayMap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_jD8rtlMWBuqUxijNbAM8kfwzOw(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$10(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_tCZeFSrOZDYrK85W_CavSdpFVc(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ahRKDOTYNQnd46yZjhLwHu7lhsE(Lcom/winlator/cmod/SettingsFragment;Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadBox64PresetSpinners$26(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bHvqEvduZUOkI52U-ozXgHGDtKI(Lcom/winlator/cmod/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$showBackupConfirmationDialog$56(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCgPe8-iunOGyMlryNisaxaEfA4(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$initCustomApiKeySettings$14(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jzMQm9nti0Lqcx1LEKzEDDr0OH0(Lcom/winlator/cmod/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadFEXCorePresetSpinners$45(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kLpjqNxVp53Qr0w7Cc_lOgx1YMY(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$onRestoreFailed$62()V

    return-void
.end method

.method public static synthetic $r8$lambda$keSBnVHdfWbtsjux6U8tgBHU4v4(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$52(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kmQq7Pi4WGD6CGcv7mTAyVnrcVk(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$4(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lsDttZ_Sk9SETTj0c4OeJ7Dlos4(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$pkr1Tsdvwufwg5LwIq1zN_vDVYY(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$54(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ri27IBVz0utexo-OAhPwGYJ7rj4(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$13(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tS7EDhb_H1rNLGKXxBynlf4GoMc(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xTbgTHWuu2NbSJA7HwACE-m58CM(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$53(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Winlator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_WINLATOR_PATH:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_WINLATOR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_SHORTCUT_EXPORT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/SettingsFragment;->isRestoreAction:Z

    return-void
.end method

.method private applyDynamicStyles(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isDarkMode"    # Z

    .line 387
    const v0, 0x7f0900db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 388
    .local v0, "sBox64Preset":Landroid/widget/Spinner;
    const v1, 0x7f0800f3

    const v2, 0x7f0800f2

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 390
    const v3, 0x7f0900ee

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 391
    .local v3, "sFEXCorePreset":Landroid/widget/Spinner;
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 392
    return-void
.end method

.method private applyDynamicStylesRecursively(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .line 395
    const v0, 0x7f090126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 396
    .local v0, "box64Label":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 398
    const v1, 0x7f090140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 399
    .local v1, "fexcoreLabel":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v1, v2}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 401
    const v2, 0x7f09016b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 402
    .local v2, "soundLabel":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v2, v3}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 404
    const v3, 0x7f09016e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 405
    .local v3, "themeLabel":Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v3, v4}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 407
    const v4, 0x7f09016a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 408
    .local v4, "shortcutSettingsLabel":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v4, v5}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 410
    const v5, 0x7f090124

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 411
    .local v5, "bigPictureModeLabel":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v5, v6}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 413
    const v6, 0x7f090131

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 414
    .local v6, "tvCustomApiKey":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v6, v7}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 420
    const v7, 0x7f09017a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 421
    .local v7, "xServerLabel":Landroid/widget/TextView;
    iget-boolean v8, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v7, v8}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 424
    const v8, 0x7f090153

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 425
    .local v8, "logsLabel":Landroid/widget/TextView;
    iget-boolean v9, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v8, v9}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 427
    const v9, 0x7f09013f

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 428
    .local v9, "experimentalLabel":Landroid/widget/TextView;
    iget-boolean v10, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v9, v10}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 430
    const v10, 0x7f090150

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 431
    .local v10, "ImageFsLabel":Landroid/widget/TextView;
    iget-boolean v11, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v10, v11}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 433
    return-void
.end method

.method private applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isDarkMode"    # Z

    .line 438
    if-eqz p2, :cond_0

    .line 440
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    const v0, 0x7f0600dd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 444
    :cond_0
    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    const v0, 0x7f0600dc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 447
    :goto_0
    return-void
.end method

.method private backupAppData()V
    .locals 5

    .line 696
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 697
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app_data_backup.tar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 699
    .local v1, "backupFile":Ljava/io/File;
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    const v3, 0x7f10002e

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 701
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 702
    .local v2, "availableProcessors":I
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 704
    .local v3, "compressionExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v4, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 722
    return-void
.end method

.method private initCustomApiKeySettings(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 450
    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    .line 451
    const v0, 0x7f090076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    .line 454
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_custom_api_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 455
    .local v0, "isCustomApiKeyEnabled":Z
    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "custom_api_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "customApiKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 458
    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 463
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 468
    const v2, 0x7f090027

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    return-void
.end method

.method static synthetic lambda$backupAppData$57(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 708
    const-string v0, "imagefs/tmp/.sysvshm"

    .line 709
    .local v0, "excludePath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private synthetic lambda$backupAppData$58(Ljava/io/File;)V
    .locals 3
    .param p1, "backupFile"    # Ljava/io/File;

    .line 712
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 713
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 714
    return-void
.end method

.method private synthetic lambda$backupAppData$59()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 718
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Backup failed."

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 719
    return-void
.end method

.method private synthetic lambda$backupAppData$60(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "backupFile"    # Ljava/io/File;

    .line 706
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda52;

    invoke-direct {v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda52;-><init>()V

    invoke-static {v0, p2, v1}, Lcom/winlator/cmod/core/TarCompressorUtils;->archive([Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 711
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda53;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda54;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$initCustomApiKeySettings$14(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 464
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 465
    return-void
.end method

.method private synthetic lambda$initCustomApiKeySettings$15(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 469
    const-string v0, "https://www.steamgriddb.com/profile/preferences/api"

    .line 470
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 471
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 472
    return-void
.end method

.method private synthetic lambda$loadBox64PresetSpinners$16(Landroidx/collection/ArrayMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "spinners"    # Landroidx/collection/ArrayMap;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 495
    invoke-virtual {p1, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_preset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "COMPATIBILITY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/winlator/cmod/box64/Box64PresetManager;->loadSpinner(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$17(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 500
    invoke-interface {p0, p1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$18(Landroid/content/Context;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 499
    new-instance v0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .local v0, "dialog":Lcom/winlator/cmod/box64/Box64EditPresetDialog;
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda28;-><init>(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 501
    invoke-virtual {v0}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->show()V

    .line 502
    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$19(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 506
    invoke-interface {p0, p1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$20(Landroid/content/Context;Landroidx/collection/ArrayMap;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spinners"    # Landroidx/collection/ArrayMap;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 505
    new-instance v0, Lcom/winlator/cmod/box64/Box64EditPresetDialog;

    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-static {v1}, Lcom/winlator/cmod/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .local v0, "dialog":Lcom/winlator/cmod/box64/Box64EditPresetDialog;
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda56;

    invoke-direct {v1, p2, p3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda56;-><init>(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 507
    invoke-virtual {v0}, Lcom/winlator/cmod/box64/Box64EditPresetDialog;->show()V

    .line 508
    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$21(Landroidx/collection/ArrayMap;Ljava/lang/String;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V
    .locals 2
    .param p0, "spinners"    # Landroidx/collection/ArrayMap;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;

    .line 511
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 512
    .local v0, "spinner":Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/winlator/cmod/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/winlator/cmod/box64/Box64PresetManager;->duplicatePreset(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    invoke-interface {p3, p1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 515
    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$22(Landroid/content/Context;Landroidx/collection/ArrayMap;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spinners"    # Landroidx/collection/ArrayMap;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 510
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda50;-><init>(Landroidx/collection/ArrayMap;Ljava/lang/String;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V

    const v1, 0x7f100094

    invoke-static {p0, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$23(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presetId"    # Ljava/lang/String;
    .param p3, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;

    .line 524
    invoke-static {p0, p1, p2}, Lcom/winlator/cmod/box64/Box64PresetManager;->removePreset(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    invoke-interface {p3, p0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$24(Landroidx/collection/ArrayMap;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 3
    .param p0, "spinners"    # Landroidx/collection/ArrayMap;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 518
    invoke-virtual {p0, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/winlator/cmod/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "presetId":Ljava/lang/String;
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    const v1, 0x7f100291

    invoke-static {p1, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 521
    return-void

    .line 523
    :cond_0
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p3, p1, v0, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    const v2, 0x7f10009f

    invoke-static {p1, v2, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 527
    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$25(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presetId"    # Ljava/lang/String;

    .line 536
    invoke-static {p0, p1, p2}, Lcom/winlator/cmod/box64/Box64PresetManager;->exportPreset(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private synthetic lambda$loadBox64PresetSpinners$26(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinners"    # Landroidx/collection/ArrayMap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 530
    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/winlator/cmod/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "presetId":Ljava/lang/String;
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    const-string v1, "Cannot export this preset"

    invoke-static {p2, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 533
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda47;

    invoke-direct {v2, p3, p2, v0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda47;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 538
    return-void
.end method

.method private synthetic lambda$loadBox64PresetSpinners$27(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 541
    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->openFile(I)V

    .line 542
    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$28(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onAddPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 546
    const-string v0, "box64"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$29(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onEditPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 547
    const-string v0, "box64"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$30(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onDuplicatePreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 548
    const-string v0, "box64"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$31(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onRemovePreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 549
    const-string v0, "box64"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$32(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onExportPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 550
    const-string v0, "box64"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadBox64PresetSpinners$33(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onImportPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 551
    const-string v0, "box64"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadFEXCorePresetSpinners$34(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMPATIBILITY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$35(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 563
    invoke-interface {p0, p1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$36(Landroid/content/Context;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 562
    new-instance v0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 563
    .local v0, "dialog":Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda31;-><init>(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 564
    invoke-virtual {v0}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->show()V

    .line 565
    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$37(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 569
    invoke-interface {p0, p1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$38(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 568
    new-instance v0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;

    invoke-static {p1}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 569
    .local v0, "dialog":Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda57;

    invoke-direct {v1, p2, p3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda57;-><init>(Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 570
    invoke-virtual {v0}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->show()V

    .line 571
    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$39(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 574
    invoke-static {p1}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->duplicatePreset(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    invoke-interface {p2, p3}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 577
    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$40(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 573
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;-><init>(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    const v1, 0x7f100094

    invoke-static {p0, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$41(Landroid/content/Context;Ljava/lang/String;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presetId"    # Ljava/lang/String;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 586
    invoke-static {p0, p1}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->removePreset(Landroid/content/Context;Ljava/lang/String;)V

    .line 587
    invoke-interface {p2, p3}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 588
    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$42(Landroid/widget/Spinner;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V
    .locals 3
    .param p0, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateSpinner"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 580
    invoke-static {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "presetId":Ljava/lang/String;
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const v1, 0x7f100291

    invoke-static {p1, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 583
    return-void

    .line 585
    :cond_0
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda25;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/winlator/cmod/core/Callback;Ljava/lang/String;)V

    const v2, 0x7f10009f

    invoke-static {p1, v2, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$43(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presetId"    # Ljava/lang/String;

    .line 598
    invoke-static {p0, p1}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->exportPreset(Landroid/content/Context;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method private synthetic lambda$loadFEXCorePresetSpinners$44(Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 592
    invoke-static {p1}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "presetId":Ljava/lang/String;
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    const-string v1, "Cannot export this preset"

    invoke-static {p2, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 595
    return-void

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda49;

    invoke-direct {v2, p2, v0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda49;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method

.method private synthetic lambda$loadFEXCorePresetSpinners$45(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 603
    const/16 v0, 0x3ed

    invoke-direct {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->openFile(I)V

    .line 604
    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$46(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onAddPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 608
    const-string v0, "fexcore"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$47(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onEditPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 609
    const-string v0, "fexcore"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$48(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onDuplicatePreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 610
    const-string v0, "fexcore"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$49(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onRemovePreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 611
    const-string v0, "fexcore"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$50(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onExportPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 612
    const-string v0, "fexcore"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$loadFEXCorePresetSpinners$51(Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 1
    .param p0, "onImportPreset"    # Lcom/winlator/cmod/core/Callback;
    .param p1, "v"    # Landroid/view/View;

    .line 613
    const-string v0, "fexcore"

    invoke-interface {p0, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$52(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "selectedPositions"    # Ljava/util/ArrayList;

    .line 648
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "selectedPosition":I
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    .end local v1    # "selectedPosition":I
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 650
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$53(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debugChannels"    # Ljava/util/ArrayList;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 640
    const/4 v0, 0x0

    .line 642
    .local v0, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "wine_debug_channels.json"

    invoke-static {p1, v2}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 646
    invoke-static {v0}, Lcom/winlator/cmod/core/ArrayUtils;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, p2, v1, p3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda26;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;)V

    const v3, 0x7f10028b

    invoke-static {p1, v3, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->showMultipleChoiceList(Landroid/content/Context;I[Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    .line 651
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$54(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 656
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 657
    const-string v0, "warn,err,fixme"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 658
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 659
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$55(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 668
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 669
    invoke-direct {p0, p3, p1}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 670
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 141
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dark_mode"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    invoke-direct {p0, p2}, Lcom/winlator/cmod/SettingsFragment;->updateTheme(Z)V

    .line 147
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method

.method private synthetic lambda$onCreateView$10(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 310
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda51;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    const v1, 0x7f10009a

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method private synthetic lambda$onCreateView$11(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 316
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->showBackupConfirmationDialog()V

    .line 317
    return-void
.end method

.method private synthetic lambda$onCreateView$12(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 322
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->selectBackupFileForRestore()V

    .line 323
    return-void
.end method

.method private synthetic lambda$onCreateView$13(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .locals 9
    .param p1, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p2, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p3, "cbUseDRI3"    # Landroid/widget/CheckBox;
    .param p4, "cbUseXR"    # Landroid/widget/CheckBox;
    .param p5, "sbCursorSpeed"    # Landroid/widget/SeekBar;
    .param p6, "cbEnableWineDebug"    # Landroid/widget/CheckBox;
    .param p7, "cbEnableBox64Logs"    # Landroid/widget/CheckBox;
    .param p8, "cbEnableFileProvider"    # Landroid/widget/CheckBox;
    .param p9, "cbOpenInBrowser"    # Landroid/widget/CheckBox;
    .param p10, "cbShareClipboard"    # Landroid/widget/CheckBox;
    .param p11, "etDownloadableContentsURL"    # Landroid/widget/EditText;
    .param p12, "wineDebugChannels"    # Ljava/util/ArrayList;
    .param p13, "view"    # Landroid/view/View;
    .param p14, "context"    # Landroid/content/Context;
    .param p15, "v"    # Landroid/view/View;

    .line 326
    move-object v0, p0

    iget-object v1, v0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 329
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->cbDarkMode:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v3, "dark_mode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    const-string v2, "box64_preset"

    invoke-static {p1}, Lcom/winlator/cmod/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    const-string v2, "fexcore_preset"

    invoke-static {p2}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    const-string v2, "use_dri3"

    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v2, "use_xr"

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-virtual {p5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const-string v3, "cursor_speed"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string v2, "enable_wine_debug"

    invoke-virtual {p6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string v2, "enable_box64_logs"

    invoke-virtual/range {p7 .. p7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 337
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->cbCursorLock:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v3, "cursor_lock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 338
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->cbXinputToggle:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v3, "xinput_toggle"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 339
    const-string v2, "enable_file_provider"

    invoke-virtual/range {p8 .. p8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 340
    const-string v2, "open_with_android_browser"

    invoke-virtual/range {p9 .. p9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 341
    const-string v2, "share_android_clipboard"

    invoke-virtual/range {p10 .. p10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-virtual/range {p11 .. p11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadable_contents_url"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-virtual/range {p12 .. p12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "wine_debug_channels"

    if-nez v2, :cond_0

    .line 346
    const-string v2, ","

    move-object/from16 v4, p12

    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 347
    :cond_0
    move-object/from16 v4, p12

    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 350
    :cond_1
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 353
    :cond_2
    :goto_0
    const v2, 0x7f09004a

    move-object/from16 v3, p13

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v5, "enable_big_picture_mode"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-direct {p0, v1}, Lcom/winlator/cmod/SettingsFragment;->saveCustomApiKeySettings(Landroid/content/SharedPreferences$Editor;)V

    .line 356
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0900b6

    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/navigation/NavigationView;

    .line 358
    .local v2, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    const v5, 0x7f09026c

    invoke-virtual {v2, v5}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 359
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 360
    .local v5, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    new-instance v7, Lcom/winlator/cmod/ContainersFragment;

    invoke-direct {v7}, Lcom/winlator/cmod/ContainersFragment;-><init>()V

    .line 361
    const v8, 0x7f090084

    invoke-virtual {v6, v8, v7}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    .line 362
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 365
    .end local v2    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .end local v5    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_3
    const-string v2, "Settings saved!"

    move-object/from16 v5, p14

    invoke-static {v5, v2}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 366
    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/content/Context;Landroid/widget/Spinner;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 217
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 218
    .local v0, "dialog":Lcom/winlator/cmod/core/PreloaderDialog;
    const v1, 0x7f100127

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 219
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/winlator/cmod/SettingsFragment$1;-><init>(Lcom/winlator/cmod/SettingsFragment;Lcom/winlator/cmod/core/PreloaderDialog;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-static {p1, p3, v1}, Lcom/winlator/cmod/midi/MidiManager;->installSF2File(Landroid/content/Context;Landroid/net/Uri;Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;)V

    .line 240
    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 216
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda30;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    .line 243
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->openFile(I)V

    .line 244
    return-void
.end method

.method static synthetic lambda$onCreateView$5(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sMIDISoundFont"    # Landroid/widget/Spinner;

    .line 249
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/winlator/cmod/midi/MidiManager;->removeSF2File(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const v0, 0x7f10023b

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 251
    invoke-static {p1}, Lcom/winlator/cmod/midi/MidiManager;->loadSFSpinnerWithoutDisabled(Landroid/widget/Spinner;)V

    goto :goto_0

    .line 253
    :cond_0
    const v0, 0x7f10023a

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 254
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$6(Landroid/widget/Spinner;Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 247
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda48;

    invoke-direct {v0, p1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda48;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    const v1, 0x7f1000a3

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 256
    :cond_0
    const v0, 0x7f10005a

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 257
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$7(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 297
    const v0, 0x7f100248

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method static synthetic lambda$onCreateView$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 298
    const v0, 0x7f100111

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$9()V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/MainActivity;

    invoke-static {v0}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->installFromAssets(Lcom/winlator/cmod/MainActivity;)V

    return-void
.end method

.method private synthetic lambda$onRestoreFailed$62()V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 855
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Data restore failed."

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 856
    return-void
.end method

.method private synthetic lambda$onRestoreSuccess$61()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 847
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Data restored successfully."

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 848
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/AppUtils;->restartApplication(Landroid/content/Context;)V

    .line 849
    return-void
.end method

.method private synthetic lambda$showBackupConfirmationDialog$56(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 690
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->backupAppData()V

    return-void
.end method

.method private loadBox64PresetSpinners(Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sBox64Preset"    # Landroid/widget/Spinner;

    .line 489
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/winlator/cmod/SettingsFragment$3;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;)V

    .line 492
    .local v0, "spinners":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/widget/Spinner;>;"
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 494
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda32;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroidx/collection/ArrayMap;)V

    .line 498
    .local v2, "updateSpinner":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;

    invoke-direct {v3, v1, v2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;-><init>(Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V

    .line 504
    .local v3, "onAddPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v4, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda38;

    invoke-direct {v4, v1, v0, v2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda38;-><init>(Landroid/content/Context;Landroidx/collection/ArrayMap;Lcom/winlator/cmod/core/Callback;)V

    .line 510
    .local v4, "onEditPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v5, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda39;

    invoke-direct {v5, v1, v0, v2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda39;-><init>(Landroid/content/Context;Landroidx/collection/ArrayMap;Lcom/winlator/cmod/core/Callback;)V

    .line 517
    .local v5, "onDuplicatePreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v6, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda40;

    invoke-direct {v6, v0, v1, v2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda40;-><init>(Landroidx/collection/ArrayMap;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V

    .line 529
    .local v6, "onRemovePreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v7, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda41;

    invoke-direct {v7, p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda41;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroidx/collection/ArrayMap;Landroid/content/Context;)V

    .line 540
    .local v7, "onExportPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v8, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda42;

    invoke-direct {v8, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda42;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    .line 544
    .local v8, "onImportPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    const-string v9, "box64"

    invoke-interface {v2, v9}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 546
    const v9, 0x7f090004

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda43;

    invoke-direct {v10, v3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda43;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    const v9, 0x7f09001b

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda45;

    invoke-direct {v10, v4}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda45;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    const v9, 0x7f090018

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda46;

    invoke-direct {v10, v5}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda46;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    const v9, 0x7f090038

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda34;

    invoke-direct {v10, v6}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda34;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    const v9, 0x7f090020

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda35;

    invoke-direct {v10, v7}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda35;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    const v9, 0x7f09002b

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda36;

    invoke-direct {v10, v8}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda36;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    return-void
.end method

.method private loadFEXCorePresetSpinners(Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sFEXCorePreset"    # Landroid/widget/Spinner;

    .line 555
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 557
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;)V

    .line 561
    .local v1, "updateSpinner":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda15;-><init>(Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V

    .line 567
    .local v2, "onAddPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0, p2, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda16;-><init>(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;)V

    .line 573
    .local v3, "onEditPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v4, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0, p2, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;Landroid/widget/Spinner;Lcom/winlator/cmod/core/Callback;)V

    .line 579
    .local v4, "onDuplicatePreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v5, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v5, p2, v0, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda18;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Lcom/winlator/cmod/core/Callback;)V

    .line 591
    .local v5, "onRemovePreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v6, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, p2, v0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;Landroid/content/Context;)V

    .line 602
    .local v6, "onExportPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    new-instance v7, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v7, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    .line 606
    .local v7, "onImportPreset":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    const-string v8, "fexcore"

    invoke-interface {v1, v8}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 608
    const v8, 0x7f090009

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v9, v2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    const v8, 0x7f09001c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v9, v3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    const v8, 0x7f090019

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v9, v4}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    const v8, 0x7f09003a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v9, v5}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    const v8, 0x7f090021

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v9, v6}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    const v8, 0x7f09002c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v9, v7}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    return-void
.end method

.method private loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 628
    .local p2, "debugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 629
    .local v3, "context":Landroid/content/Context;
    const v4, 0x7f0900ad

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 630
    .local v4, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 632
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 633
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0c00c6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 634
    .local v8, "itemView":Landroid/view/View;
    const v9, 0x7f09017c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 635
    const v10, 0x7f090037

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 637
    const v11, 0x7f090003

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 638
    .local v11, "addButton":Landroid/view/View;
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 639
    new-instance v12, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v12, v0, v3, v2, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    const v12, 0x7f09003d

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 654
    .local v12, "resetButton":Landroid/view/View;
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 655
    new-instance v13, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v13, v0, v2, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 663
    invoke-virtual {v5, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 664
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 665
    .local v14, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    move v15, v13

    .line 667
    .local v15, "index":I
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda33;

    invoke-direct {v7, v0, v2, v15, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda33;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;ILandroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    .end local v14    # "textView":Landroid/widget/TextView;
    .end local v15    # "index":I
    add-int/lit8 v13, v13, 0x1

    const v6, 0x7f0c00c6

    const/4 v7, 0x0

    goto :goto_0

    .line 673
    .end local v13    # "i":I
    :cond_0
    return-void
.end method

.method private moveFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "sourceDir"    # Ljava/io/File;
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 861
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 862
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 863
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 864
    .local v4, "targetFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 865
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 866
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 868
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/winlator/cmod/SettingsFragment;->moveFiles(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 870
    :cond_1
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 862
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "targetFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "targetFile":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to move file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 877
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "targetFile":Ljava/io/File;
    :cond_3
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 878
    return-void
.end method

.method private onRestoreFailed()V
    .locals 2

    .line 853
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda58;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method private onRestoreSuccess()V
    .locals 2

    .line 845
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda29;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 850
    return-void
.end method

.method private openFile(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 624
    return-void
.end method

.method public static resetEmulatorsVersion(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 676
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 677
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 678
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_box64_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    const-string v2, "current_wowbox64_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 680
    const-string v2, "current_fexcore_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 681
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 682
    return-void
.end method

.method private restoreAppData(Landroid/net/Uri;)V
    .locals 3
    .param p1, "backupUri"    # Landroid/net/Uri;

    .line 835
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/winlator/cmod/restore/RestoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 837
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 839
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 841
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private saveCustomApiKeySettings(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 477
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 478
    .local v0, "isCustomApiKeyEnabled":Z
    const-string v1, "enable_custom_api_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 480
    const-string v1, "custom_api_key"

    if-eqz v0, :cond_0

    .line 481
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "customApiKey":Ljava/lang/String;
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    .end local v2    # "customApiKey":Ljava/lang/String;
    goto :goto_0

    .line 484
    :cond_0
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    :goto_0
    return-void
.end method

.method private selectBackupFileForRestore()V
    .locals 2

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/SettingsFragment;->isRestoreAction:Z

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 732
    return-void
.end method

.method private showBackupConfirmationDialog()V
    .locals 3

    .line 687
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 688
    const-string v1, "Backup Data"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 689
    const-string v1, "Do you want to create a backup of the app\'s data directory?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    .line 690
    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 691
    const-string v1, "No"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 693
    return-void
.end method

.method private updateTheme(Z)V
    .locals 2
    .param p1, "isDarkMode"    # Z

    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110009

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110008

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    .line 382
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 736
    const-string v0, "box64"

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 738
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 739
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 741
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 743
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 745
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x3

    const-string v4, "Unable to take persistable permissions: "

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 819
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0900ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 820
    .local v0, "sFEXCorePreset":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 821
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->importPreset(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 822
    iget-object v4, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "fexcore_preset"

    const-string v6, "INTERMEDIATE"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v0    # "sFEXCorePreset":Landroid/widget/Spinner;
    .end local v3    # "is":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 823
    :catch_0
    move-exception v0

    .line 825
    goto/16 :goto_7

    .line 810
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900db

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 811
    .local v3, "sBox64Preset":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 812
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/winlator/cmod/box64/Box64PresetManager;->importPreset(Ljava/lang/String;Landroid/content/Context;Ljava/io/InputStream;)V

    .line 813
    iget-object v5, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "box64_preset"

    const-string v7, "COMPATIBILITY"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/winlator/cmod/box64/Box64PresetManager;->loadSpinner(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 815
    .end local v3    # "sBox64Preset":Landroid/widget/Spinner;
    .end local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 814
    :catch_1
    move-exception v0

    .line 816
    goto/16 :goto_7

    .line 772
    :pswitch_2
    const-string v0, "shortcuts_export_path_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 773
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 778
    :try_start_2
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 784
    goto :goto_0

    .line 782
    :catch_2
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 787
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 791
    .local v3, "tvShortcutExportPath":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 749
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "tvShortcutExportPath":Landroid/widget/TextView;
    :pswitch_3
    const-string v0, "winlator_path_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 750
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 755
    :try_start_3
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 761
    goto :goto_2

    .line 759
    :catch_3
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 764
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_2
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "fullPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 768
    .local v3, "tvWinlatorPath":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    move-object v4, v0

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    goto :goto_7

    .line 797
    .end local v0    # "fullPath":Ljava/lang/String;
    .end local v3    # "tvWinlatorPath":Landroid/widget/TextView;
    :goto_4
    :pswitch_4
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v0, :cond_2

    .line 799
    const/4 v0, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    invoke-interface {v3, v1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 803
    nop

    :goto_5
    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    .line 804
    goto :goto_7

    .line 803
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 800
    :catch_4
    move-exception v3

    .line 801
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f100264

    invoke-static {v4, v5}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 803
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    :goto_6
    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    .line 804
    throw v3

    .line 832
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 110
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 45
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 126
    move-object/from16 v15, p0

    const v0, 0x7f0c00ae

    const/4 v1, 0x0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    invoke-virtual {v14, v0, v13, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 127
    .local v12, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 128
    .local v11, "context":Landroid/content/Context;
    invoke-static {v11}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    .line 131
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "dark_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v15, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    .line 133
    iget-boolean v0, v15, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {v15, v12, v0}, Lcom/winlator/cmod/SettingsFragment;->applyDynamicStyles(Landroid/view/View;Z)V

    .line 136
    const v0, 0x7f090047

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbDarkMode:Landroid/widget/CheckBox;

    .line 137
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbDarkMode:Landroid/widget/CheckBox;

    iget-object v3, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbDarkMode:Landroid/widget/CheckBox;

    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda44;

    invoke-direct {v2, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda44;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    const v0, 0x7f09004a

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbEnableBigPictureMode:Landroid/widget/CheckBox;

    .line 151
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbEnableBigPictureMode:Landroid/widget/CheckBox;

    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "enable_big_picture_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    invoke-direct {v15, v12}, Lcom/winlator/cmod/SettingsFragment;->initCustomApiKeySettings(Landroid/view/View;)V

    .line 156
    const v0, 0x7f090046

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbCursorLock:Landroid/widget/CheckBox;

    .line 157
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbCursorLock:Landroid/widget/CheckBox;

    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "cursor_lock"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    const v0, 0x7f09006d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbXinputToggle:Landroid/widget/CheckBox;

    .line 161
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbXinputToggle:Landroid/widget/CheckBox;

    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "xinput_toggle"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    const v0, 0x7f09000f

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    .line 164
    .local v10, "btnChooseWinlatorPath":Landroid/widget/Button;
    const v0, 0x7f090178

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 166
    .local v9, "tvWinlatorPath":Landroid/widget/TextView;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "winlator_path_uri"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "savedUriString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 169
    sget-object v2, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_WINLATOR_PATH:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 173
    .local v2, "savedUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "displayPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_0
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .end local v2    # "savedUri":Landroid/net/Uri;
    .end local v4    # "displayPath":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda59;

    invoke-direct {v2, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda59;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v2, 0x7f09000e

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    .line 183
    .local v8, "btChooseShortcutExportPath":Landroid/widget/Button;
    const v2, 0x7f090169

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 185
    .local v7, "tvShortcutExportPath":Landroid/widget/TextView;
    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "shortcuts_export_path_uri"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 187
    .end local v0    # "savedUriString":Ljava/lang/String;
    .local v16, "savedUriString":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 188
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 189
    .local v0, "savedUri":Landroid/net/Uri;
    invoke-static {v11, v0}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "displayPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object/from16 v3, v16

    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .end local v0    # "savedUri":Landroid/net/Uri;
    .end local v2    # "displayPath":Ljava/lang/String;
    goto :goto_3

    .line 193
    :cond_3
    sget-object v0, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_SHORTCUT_EXPORT_PATH:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_3
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda60;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda60;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0900db

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 202
    .local v6, "sBox64Preset":Landroid/widget/Spinner;
    invoke-direct {v15, v12, v6}, Lcom/winlator/cmod/SettingsFragment;->loadBox64PresetSpinners(Landroid/view/View;Landroid/widget/Spinner;)V

    .line 204
    const v0, 0x7f0900ee

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Spinner;

    .line 205
    .local v5, "sFEXCorePreset":Landroid/widget/Spinner;
    invoke-direct {v15, v12, v5}, Lcom/winlator/cmod/SettingsFragment;->loadFEXCorePresetSpinners(Landroid/view/View;Landroid/widget/Spinner;)V

    .line 207
    const v0, 0x7f090100

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    .line 209
    .local v4, "sMIDISoundFont":Landroid/widget/Spinner;
    iget-boolean v0, v15, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0800f3

    goto :goto_4

    :cond_4
    const v0, 0x7f0800f2

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 211
    const v0, 0x7f090031

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, "btInstallSF":Landroid/view/View;
    const v0, 0x7f09003c

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 214
    .local v2, "btRemoveSF":Landroid/view/View;
    invoke-static {v4}, Lcom/winlator/cmod/midi/MidiManager;->loadSFSpinnerWithoutDisabled(Landroid/widget/Spinner;)V

    .line 215
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda61;

    invoke-direct {v0, v15, v11, v4}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda61;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda62;

    invoke-direct {v0, v4, v11}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda62;-><init>(Landroid/widget/Spinner;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v0, 0x7f09006b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 260
    .local v0, "cbUseDRI3":Landroid/widget/CheckBox;
    iget-object v1, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v2

    .end local v2    # "btRemoveSF":Landroid/view/View;
    .local v18, "btRemoveSF":Landroid/view/View;
    const-string v2, "use_dri3"

    move-object/from16 v19, v3

    .end local v3    # "btInstallSF":Landroid/view/View;
    .local v19, "btInstallSF":Landroid/view/View;
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 262
    const v1, 0x7f09006c

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/CheckBox;

    .line 263
    .local v2, "cbUseXR":Landroid/widget/CheckBox;
    iget-object v1, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    .end local v0    # "cbUseDRI3":Landroid/widget/CheckBox;
    .local v20, "cbUseDRI3":Landroid/widget/CheckBox;
    const-string v0, "use_xr"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->isSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 265
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 268
    :cond_5
    const v0, 0x7f090055

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/CheckBox;

    .line 269
    .local v1, "cbEnableWineDebug":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "enable_wine_debug"

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "cbUseXR":Landroid/widget/CheckBox;
    .local v22, "cbUseXR":Landroid/widget/CheckBox;
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "wine_debug_channels"

    move-object/from16 v23, v1

    .end local v1    # "cbEnableWineDebug":Landroid/widget/CheckBox;
    .local v23, "cbEnableWineDebug":Landroid/widget/CheckBox;
    const-string v1, "warn,err,fixme"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 272
    .local v3, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15, v12, v3}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 274
    const v0, 0x7f09004b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    .line 275
    .local v2, "cbEnableBox64Logs":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_box64_logs"

    move-object/from16 v24, v3

    const/4 v3, 0x0

    .end local v3    # "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    const v0, 0x7f090130

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 278
    .local v3, "tvCursorSpeed":Landroid/widget/TextView;
    const v0, 0x7f0900c8

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    .line 279
    .local v1, "sbCursorSpeed":Landroid/widget/SeekBar;
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$2;

    invoke-direct {v0, v15, v3}, Lcom/winlator/cmod/SettingsFragment$2;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 291
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v2

    .end local v2    # "cbEnableBox64Logs":Landroid/widget/CheckBox;
    .local v25, "cbEnableBox64Logs":Landroid/widget/CheckBox;
    const-string v2, "cursor_speed"

    move-object/from16 v26, v3

    .end local v3    # "tvCursorSpeed":Landroid/widget/TextView;
    .local v26, "tvCursorSpeed":Landroid/widget/TextView;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 293
    const v0, 0x7f090050

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    .line 294
    .local v3, "cbEnableFileProvider":Landroid/widget/CheckBox;
    const v0, 0x7f090029

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 296
    .local v2, "btHelpFileProvider":Landroid/view/View;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v27, v1

    .end local v1    # "sbCursorSpeed":Landroid/widget/SeekBar;
    .local v27, "sbCursorSpeed":Landroid/widget/SeekBar;
    const-string v1, "enable_file_provider"

    move-object/from16 v28, v4

    const/4 v4, 0x1

    .end local v4    # "sMIDISoundFont":Landroid/widget/Spinner;
    .local v28, "sMIDISoundFont":Landroid/widget/Spinner;
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 297
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v11}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v11}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v0, 0x7f09005e

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/CheckBox;

    .line 301
    .local v4, "cbOpenInBrowser":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "open_with_android_browser"

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "btHelpFileProvider":Landroid/view/View;
    .local v21, "btHelpFileProvider":Landroid/view/View;
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 303
    const v0, 0x7f09005f

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/CheckBox;

    .line 304
    .local v1, "cbShareClipboard":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v3

    .end local v3    # "cbEnableFileProvider":Landroid/widget/CheckBox;
    .local v17, "cbEnableFileProvider":Landroid/widget/CheckBox;
    const-string v3, "share_android_clipboard"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    const v0, 0x7f090078

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 307
    .local v3, "etDownloadableContentsURL":Landroid/widget/EditText;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "downloadable_contents_url"

    move-object/from16 v29, v1

    .end local v1    # "cbShareClipboard":Landroid/widget/CheckBox;
    .local v29, "cbShareClipboard":Landroid/widget/CheckBox;
    const-string v1, "https://raw.githubusercontent.com/Xnick417x/Winlator-Bionic-Nightly-wcp/refs/heads/main/content.json"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const v0, 0x7f090036

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v15, v11}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v0, 0x7f09000b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Button;

    .line 315
    .local v2, "btnBackupData":Landroid/widget/Button;
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v0, 0x7f09003e

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    .line 321
    .local v1, "btnRestoreData":Landroid/widget/Button;
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v0, 0x7f090012

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v15, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda55;

    move-object/from16 v30, v0

    move-object v0, v15

    move-object/from16 v31, v1

    .end local v1    # "btnRestoreData":Landroid/widget/Button;
    .local v31, "btnRestoreData":Landroid/widget/Button;
    move-object/from16 v1, p0

    move-object/from16 v32, v2

    move-object/from16 v44, v25

    move-object/from16 v25, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v44

    .end local v2    # "btnBackupData":Landroid/widget/Button;
    .local v21, "cbUseXR":Landroid/widget/CheckBox;
    .local v22, "cbEnableBox64Logs":Landroid/widget/CheckBox;
    .local v25, "btHelpFileProvider":Landroid/view/View;
    .local v32, "btnBackupData":Landroid/widget/Button;
    move-object v2, v6

    move-object/from16 v33, v3

    move-object/from16 v44, v26

    move-object/from16 v26, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v24

    move-object/from16 v24, v44

    .end local v3    # "etDownloadableContentsURL":Landroid/widget/EditText;
    .local v17, "btInstallSF":Landroid/view/View;
    .local v19, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "tvCursorSpeed":Landroid/widget/TextView;
    .local v26, "cbEnableFileProvider":Landroid/widget/CheckBox;
    .local v33, "etDownloadableContentsURL":Landroid/widget/EditText;
    move-object v3, v5

    move-object/from16 v34, v4

    .end local v4    # "cbOpenInBrowser":Landroid/widget/CheckBox;
    .local v34, "cbOpenInBrowser":Landroid/widget/CheckBox;
    move-object/from16 v4, v20

    move-object/from16 v35, v5

    .end local v5    # "sFEXCorePreset":Landroid/widget/Spinner;
    .local v35, "sFEXCorePreset":Landroid/widget/Spinner;
    move-object/from16 v5, v21

    move-object/from16 v36, v6

    .end local v6    # "sBox64Preset":Landroid/widget/Spinner;
    .local v36, "sBox64Preset":Landroid/widget/Spinner;
    move-object/from16 v6, v27

    move-object/from16 v37, v7

    .end local v7    # "tvShortcutExportPath":Landroid/widget/TextView;
    .local v37, "tvShortcutExportPath":Landroid/widget/TextView;
    move-object/from16 v7, v23

    move-object/from16 v38, v8

    .end local v8    # "btChooseShortcutExportPath":Landroid/widget/Button;
    .local v38, "btChooseShortcutExportPath":Landroid/widget/Button;
    move-object/from16 v8, v22

    move-object/from16 v39, v9

    .end local v9    # "tvWinlatorPath":Landroid/widget/TextView;
    .local v39, "tvWinlatorPath":Landroid/widget/TextView;
    move-object/from16 v9, v26

    move-object/from16 v40, v10

    .end local v10    # "btnChooseWinlatorPath":Landroid/widget/Button;
    .local v40, "btnChooseWinlatorPath":Landroid/widget/Button;
    move-object/from16 v10, v34

    move-object/from16 v41, v11

    .end local v11    # "context":Landroid/content/Context;
    .local v41, "context":Landroid/content/Context;
    move-object/from16 v11, v29

    move-object/from16 v42, v12

    .end local v12    # "view":Landroid/view/View;
    .local v42, "view":Landroid/view/View;
    move-object/from16 v12, v33

    move-object/from16 v13, v19

    move-object/from16 v14, v42

    move-object/from16 v43, v15

    move-object/from16 v15, v41

    invoke-direct/range {v0 .. v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda55;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Ljava/util/ArrayList;Landroid/view/View;Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    return-object v42
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 115
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->applyDynamicStylesRecursively(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100229

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 119
    return-void
.end method

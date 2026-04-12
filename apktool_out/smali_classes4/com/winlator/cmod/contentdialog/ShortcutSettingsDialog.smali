.class public Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "ShortcutSettingsDialog.java"


# instance fields
.field private box64Version:Ljava/lang/String;

.field private final fragment:Lcom/winlator/cmod/ShortcutsFragment;

.field private inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

.field private final shortcut:Lcom/winlator/cmod/container/Shortcut;

.field private tvGraphicsDriverVersion:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$2rRRrVhEKGl6rk4XujaSewTKyUE(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/widget/Spinner;Landroid/view/View;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->lambda$loadGraphicsDriverSpinner$18(Landroid/widget/Spinner;Landroid/view/View;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3nee89Es7FwZc8GcKRKpm-3BXJg(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->lambda$onIconSelected$0(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4yzq1ozDJ9kbQQPbFdlKSv_mjrs(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8GbwhfpT6ovKo8_T-Z6jZLr5WFI(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Lcom/winlator/cmod/ContainerDetailFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/Spinner;Lcom/winlator/cmod/widget/CPUListView;)V
    .locals 0

    invoke-direct/range {p0 .. p27}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->lambda$createContentView$15(Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Lcom/winlator/cmod/ContainerDetailFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/Spinner;Lcom/winlator/cmod/widget/CPUListView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSNfLL96CoBtunr6NS2Flw9Sf9o(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->lambda$onIconSelected$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kU1omblI3I5ADNdPRctnvGS_BeM(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->lambda$loadGraphicsDriverSpinner$17(Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetshortcut(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;)Lcom/winlator/cmod/container/Shortcut;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbox64Version(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->box64Version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/ShortcutsFragment;Lcom/winlator/cmod/container/Shortcut;)V
    .locals 2
    .param p1, "fragment"    # Lcom/winlator/cmod/ShortcutsFragment;
    .param p2, "shortcut"    # Lcom/winlator/cmod/container/Shortcut;

    .line 75
    invoke-virtual {p1}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00b2

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 76
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    .line 77
    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    .line 78
    iget-object v0, p2, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->setTitle(Ljava/lang/String;)V

    .line 79
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->setIcon(I)V

    .line 82
    iget-object v0, p2, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getManager()Lcom/winlator/cmod/container/ContainerManager;

    move-result-object v0

    .line 92
    .local v0, "containerManager":Lcom/winlator/cmod/container/ContainerManager;
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->createContentView()V

    .line 93
    return-void
.end method

.method private static applyDarkThemeToEditText(Landroid/widget/EditText;Z)V
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;
    .param p1, "isDarkMode"    # Z

    .line 640
    const v0, -0x777778

    if-eqz p1, :cond_0

    .line 641
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 642
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 643
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 645
    :cond_0
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 646
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 647
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 649
    :goto_0
    return-void
.end method

.method private applyDynamicStyles(Landroid/view/View;Z)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isDarkMode"    # Z

    .line 589
    move-object/from16 v0, p1

    move/from16 v1, p2

    const v2, 0x7f09007a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 590
    .local v2, "etName":Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;Z)V

    .line 593
    const v3, 0x7f0900f2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 594
    .local v3, "sGraphicsDriver":Landroid/widget/Spinner;
    const v4, 0x7f0900e9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 595
    .local v4, "sDXWrapper":Landroid/widget/Spinner;
    const v5, 0x7f0900c5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 596
    .local v5, "sAudioDriver":Landroid/widget/Spinner;
    const v6, 0x7f0900ec

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 597
    .local v6, "sEmulatorSpinner":Landroid/widget/Spinner;
    const v7, 0x7f0900db

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 598
    .local v7, "sBox64Preset":Landroid/widget/Spinner;
    const v8, 0x7f0900e6

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 599
    .local v8, "sControlsProfile":Landroid/widget/Spinner;
    const v9, 0x7f090100

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 600
    .local v9, "sMIDISoundFont":Landroid/widget/Spinner;
    const v10, 0x7f0900dc

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 601
    .local v10, "sBox64Version":Landroid/widget/Spinner;
    const v11, 0x7f0900ef

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 602
    .local v11, "sFEXCoreVersion":Landroid/widget/Spinner;
    const v12, 0x7f0900ee

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 603
    .local v12, "sFEXCorePreset":Landroid/widget/Spinner;
    const v13, 0x7f09010b

    move-object/from16 v14, p0

    invoke-virtual {v14, v13}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 607
    .local v13, "sStartupSelection":Landroid/widget/Spinner;
    const v16, 0x7f0800f2

    if-eqz v1, :cond_0

    const v15, 0x7f0800f3

    goto :goto_0

    :cond_0
    move/from16 v15, v16

    :goto_0
    invoke-virtual {v3, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 608
    if-eqz v1, :cond_1

    const v15, 0x7f0800f3

    goto :goto_1

    :cond_1
    move/from16 v15, v16

    :goto_1
    invoke-virtual {v4, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 609
    if-eqz v1, :cond_2

    const v15, 0x7f0800f3

    goto :goto_2

    :cond_2
    move/from16 v15, v16

    :goto_2
    invoke-virtual {v5, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 610
    if-eqz v1, :cond_3

    const v15, 0x7f0800f3

    goto :goto_3

    :cond_3
    move/from16 v15, v16

    :goto_3
    invoke-virtual {v6, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 611
    if-eqz v1, :cond_4

    const v15, 0x7f0800f3

    goto :goto_4

    :cond_4
    move/from16 v15, v16

    :goto_4
    invoke-virtual {v7, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 612
    if-eqz v1, :cond_5

    const v15, 0x7f0800f3

    goto :goto_5

    :cond_5
    move/from16 v15, v16

    :goto_5
    invoke-virtual {v8, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 613
    if-eqz v1, :cond_6

    const v15, 0x7f0800f3

    goto :goto_6

    :cond_6
    move/from16 v15, v16

    :goto_6
    invoke-virtual {v9, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 614
    if-eqz v1, :cond_7

    const v15, 0x7f0800f3

    goto :goto_7

    :cond_7
    move/from16 v15, v16

    :goto_7
    invoke-virtual {v10, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 615
    if-eqz v1, :cond_8

    const v15, 0x7f0800f3

    goto :goto_8

    :cond_8
    move/from16 v15, v16

    :goto_8
    invoke-virtual {v12, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 616
    if-eqz v1, :cond_9

    const v15, 0x7f0800f3

    goto :goto_9

    :cond_9
    move/from16 v15, v16

    :goto_9
    invoke-virtual {v11, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 617
    if-eqz v1, :cond_a

    const v15, 0x7f0800f3

    goto :goto_a

    :cond_a
    move/from16 v15, v16

    :goto_a
    invoke-virtual {v13, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 620
    const v15, 0x7f090079

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 623
    .local v15, "etExecArgs":Landroid/widget/EditText;
    invoke-static {v15, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;Z)V

    .line 625
    return-void
.end method

.method private applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isDarkMode"    # Z

    .line 628
    if-eqz p2, :cond_0

    .line 630
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    const-string v0, "#424242"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 634
    :cond_0
    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    const v0, 0x7f0600dc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 637
    :goto_0
    return-void
.end method

.method private applyFieldSetLabelStylesDynamically(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "isDarkMode"    # Z

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 527
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 528
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 529
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyFieldSetLabelStylesDynamically(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    .line 530
    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 531
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 533
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->isFieldSetLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 534
    invoke-direct {p0, v2, p2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 526
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private createContentView()V
    .locals 84

    .line 145
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 146
    .local v14, "context":Landroid/content/Context;
    new-instance v0, Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    .line 147
    const v0, 0x7f090096

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Landroid/widget/LinearLayout;

    .line 148
    .local v35, "llContent":Landroid/widget/LinearLayout;
    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v14}, Lcom/winlator/cmod/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    invoke-static {v14}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 151
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "dark_mode"

    const/4 v6, 0x0

    invoke-interface {v13, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 153
    .local v12, "isDarkMode":Z
    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v15, v0, v12}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyDynamicStyles(Landroid/view/View;Z)V

    .line 156
    const v0, 0x7f09014c

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->tvGraphicsDriverVersion:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f09007a

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    .line 159
    .local v11, "etName":Landroid/widget/EditText;
    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v0, v0, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v0, 0x7f09011b

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    .line 162
    .local v10, "selectIcon":Landroid/widget/Button;
    new-instance v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda13;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f090079

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    .line 170
    .local v9, "etExecArgs":Landroid/widget/EditText;
    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v1, "execArgs"

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v0, Lcom/winlator/cmod/ContainerDetailFragment;

    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v1, v1, Lcom/winlator/cmod/container/Container;->id:I

    invoke-direct {v0, v1}, Lcom/winlator/cmod/ContainerDetailFragment;-><init>(I)V

    move-object/from16 v17, v0

    .line 175
    .local v17, "containerDetailFragment":Lcom/winlator/cmod/ContainerDetailFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v2, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenSize"

    invoke-virtual {v1, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->loadScreenSizeSpinner(Landroid/view/View;Ljava/lang/String;Z)V

    .line 178
    const v0, 0x7f0900f2

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Spinner;

    .line 180
    .local v8, "sGraphicsDriver":Landroid/widget/Spinner;
    const v0, 0x7f0900e9

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Spinner;

    .line 182
    .local v7, "sDXWrapper":Landroid/widget/Spinner;
    const v0, 0x7f0900dc

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Spinner;

    .line 184
    .local v5, "sBox64Version":Landroid/widget/Spinner;
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/contents/ContentsManager;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 186
    .local v4, "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    invoke-virtual {v4}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 188
    const v0, 0x7f090025

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 189
    .local v3, "vGraphicsDriverConfig":Landroid/view/View;
    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v1

    const-string v2, "graphicsDriverConfig"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    const v0, 0x7f090015

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 192
    .local v2, "vDXWrapperConfig":Landroid/view/View;
    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v1

    const-string v6, "dxwrapperConfig"

    invoke-virtual {v0, v6, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v1

    const-string v6, "graphicsDriver"

    invoke-virtual {v0, v6, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    .line 195
    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v2

    .end local v2    # "vDXWrapperConfig":Landroid/view/View;
    .local v18, "vDXWrapperConfig":Landroid/view/View;
    const-string v2, "dxwrapper"

    invoke-virtual {v0, v2, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 194
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v20, v13

    move-object/from16 v13, v18

    .end local v18    # "vDXWrapperConfig":Landroid/view/View;
    .local v13, "vDXWrapperConfig":Landroid/view/View;
    .local v20, "prefs":Landroid/content/SharedPreferences;
    move-object v2, v7

    move-object/from16 v36, v3

    .end local v3    # "vGraphicsDriverConfig":Landroid/view/View;
    .local v36, "vGraphicsDriverConfig":Landroid/view/View;
    move-object/from16 v18, v10

    move-object v10, v4

    .end local v4    # "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    .local v10, "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    .local v18, "selectIcon":Landroid/widget/Button;
    move-object v4, v6

    move-object v6, v5

    .end local v5    # "sBox64Version":Landroid/widget/Spinner;
    .local v6, "sBox64Version":Landroid/widget/Spinner;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->loadGraphicsDriverSpinner(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const v0, 0x7f090028

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda16;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda16;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f0900c5

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 200
    .local v0, "sAudioDriver":Landroid/widget/Spinner;
    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v2, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audioDriver"

    invoke-virtual {v1, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 201
    const v1, 0x7f0900ec

    invoke-virtual {v15, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 202
    .local v1, "sEmulator":Landroid/widget/Spinner;
    iget-object v2, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v3, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getEmulator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "emulator"

    invoke-virtual {v2, v4, v3}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 203
    const v2, 0x7f0900ed

    invoke-virtual {v15, v2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 204
    .local v2, "sEmulator64":Landroid/widget/Spinner;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 205
    const v3, 0x7f090100

    invoke-virtual {v15, v3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 206
    .local v3, "sMIDISoundFont":Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/winlator/cmod/midi/MidiManager;->loadSFSpinner(Landroid/widget/Spinner;)V

    .line 207
    iget-object v4, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getMIDISoundFont()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v37, v0

    .end local v0    # "sAudioDriver":Landroid/widget/Spinner;
    .local v37, "sAudioDriver":Landroid/widget/Spinner;
    const-string v0, "midiSoundFont"

    invoke-virtual {v4, v0, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 209
    const v0, 0x7f090080

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 210
    .local v0, "etLC_ALL":Landroid/widget/EditText;
    iget-object v4, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getLC_ALL()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v38, v3

    .end local v3    # "sMIDISoundFont":Landroid/widget/Spinner;
    .local v38, "sMIDISoundFont":Landroid/widget/Spinner;
    const-string v3, "lc_all"

    invoke-virtual {v4, v3, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v3, 0x7f090042

    invoke-virtual {v15, v3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 213
    .local v3, "btShowLCALL":Landroid/view/View;
    new-instance v4, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda17;

    invoke-direct {v4, v14, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v4, 0x7f09022a

    invoke-virtual {v15, v4}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 226
    .local v4, "fexcoreFL":Landroid/widget/FrameLayout;
    iget-object v5, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "wineVersion":Ljava/lang/String;
    invoke-static {v14, v10, v5}, Lcom/winlator/cmod/core/WineInfo;->fromIdentifier(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Ljava/lang/String;)Lcom/winlator/cmod/core/WineInfo;

    move-result-object v39

    .line 228
    .local v39, "wineInfo":Lcom/winlator/cmod/core/WineInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v19

    move-object/from16 v40, v3

    .end local v3    # "btShowLCALL":Landroid/view/View;
    .local v40, "btShowLCALL":Landroid/view/View;
    if-eqz v19, :cond_0

    .line 229
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 234
    :cond_0
    const/4 v3, 0x0

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 236
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 237
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 240
    :goto_0
    invoke-virtual/range {v39 .. v39}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v3

    invoke-static {v7, v13, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setupDXWrapperSpinner(Landroid/widget/Spinner;Landroid/view/View;Z)V

    .line 241
    invoke-virtual/range {v39 .. v39}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    move-result v3

    invoke-static {v14, v10, v6, v3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->loadBox64VersionSpinner(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V

    .line 244
    iget-object v3, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v41, v2

    .end local v2    # "sEmulator64":Landroid/widget/Spinner;
    .local v41, "sEmulator64":Landroid/widget/Spinner;
    iget-object v2, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v2, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getBox64Version()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v4

    .end local v4    # "fexcoreFL":Landroid/widget/FrameLayout;
    .local v42, "fexcoreFL":Landroid/widget/FrameLayout;
    const-string v4, "box64Version"

    invoke-virtual {v3, v4, v2}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "currentBox64Version":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 246
    invoke-static {v6, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual/range {v39 .. v39}, Lcom/winlator/cmod/core/WineInfo;->isArm64EC()Z

    const-string v3, "0.3.7"

    invoke-static {v6, v3}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 253
    :goto_1
    new-instance v3, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$1;

    invoke-direct {v3, v15}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$1;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;)V

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 269
    const v3, 0x7f090058

    invoke-virtual {v15, v3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 270
    .local v3, "cbFullscreenStretched":Landroid/widget/CheckBox;
    iget-object v4, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v43, v2

    .end local v2    # "currentBox64Version":Ljava/lang/String;
    .local v43, "currentBox64Version":Ljava/lang/String;
    const-string v2, "fullscreenStretched"

    move-object/from16 v44, v5

    .end local v5    # "wineVersion":Ljava/lang/String;
    .local v44, "wineVersion":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v2, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 271
    .local v2, "fullscreenStretched":Z
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    move/from16 v45, v2

    .end local v2    # "fullscreenStretched":Z
    .local v45, "fullscreenStretched":Z
    new-instance v2, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda18;

    invoke-direct {v2, v14}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;)V

    .line 274
    .local v2, "showInputWarning":Ljava/lang/Runnable;
    move-object/from16 v46, v2

    .end local v2    # "showInputWarning":Ljava/lang/Runnable;
    .local v46, "showInputWarning":Ljava/lang/Runnable;
    const v2, 0x7f090056

    invoke-virtual {v15, v2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 275
    .local v2, "cbEnableXInput":Landroid/widget/CheckBox;
    move-object/from16 v22, v6

    .end local v6    # "sBox64Version":Landroid/widget/Spinner;
    .local v22, "sBox64Version":Landroid/widget/Spinner;
    const v6, 0x7f09004e

    invoke-virtual {v15, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 276
    .local v6, "cbEnableDInput":Landroid/widget/CheckBox;
    move-object/from16 v23, v7

    .end local v7    # "sDXWrapper":Landroid/widget/Spinner;
    .local v23, "sDXWrapper":Landroid/widget/Spinner;
    const v7, 0x7f090057

    invoke-virtual {v15, v7}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 277
    .local v7, "cbExclusiveXInput":Landroid/widget/CheckBox;
    move-object/from16 v47, v3

    .end local v3    # "cbFullscreenStretched":Landroid/widget/CheckBox;
    .local v47, "cbFullscreenStretched":Landroid/widget/CheckBox;
    const v3, 0x7f090043

    invoke-virtual {v15, v3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 278
    .local v3, "btHelpXInput":Landroid/view/View;
    move-object/from16 v48, v0

    .end local v0    # "etLC_ALL":Landroid/widget/EditText;
    .local v48, "etLC_ALL":Landroid/widget/EditText;
    const v0, 0x7f090014

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "btHelpDInput":Landroid/view/View;
    move-object/from16 v49, v1

    .end local v1    # "sEmulator":Landroid/widget/Spinner;
    .local v49, "sEmulator":Landroid/widget/Spinner;
    const v1, 0x7f09001f

    invoke-virtual {v15, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, "btHelpExclusiveXInput":Landroid/view/View;
    move-object/from16 v24, v13

    .end local v13    # "vDXWrapperConfig":Landroid/view/View;
    .local v24, "vDXWrapperConfig":Landroid/view/View;
    iget-object v13, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v25, v11

    .end local v11    # "etName":Landroid/widget/EditText;
    .local v25, "etName":Landroid/widget/EditText;
    iget-object v11, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v11, v11, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v11}, Lcom/winlator/cmod/container/Container;->getInputType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v8

    .end local v8    # "sGraphicsDriver":Landroid/widget/Spinner;
    .local v26, "sGraphicsDriver":Landroid/widget/Spinner;
    const-string v8, "inputType"

    invoke-virtual {v13, v8, v11}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    .line 283
    .local v50, "inputType":I
    and-int/lit8 v8, v50, 0x4

    const/4 v11, 0x4

    if-ne v8, v11, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    and-int/lit8 v8, v50, 0x8

    const/16 v11, 0x8

    if-ne v8, v11, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    iget-object v8, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v11, "exclusiveXInput"

    invoke-virtual {v8, v11}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, "exclusiveXInputExtra":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v8, v8, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v8}, Lcom/winlator/cmod/container/Container;->isExclusiveXInput()Z

    move-result v8

    goto :goto_4

    :cond_4
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_4
    move v11, v8

    .line 288
    .local v11, "exclusiveXInput":Z
    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    new-instance v8, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {v8, v7, v2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda1;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 297
    new-instance v8, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v8, v7, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda2;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    new-instance v8, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda3;

    invoke-direct {v8, v2, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda3;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    .line 320
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 321
    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 323
    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 325
    :cond_5
    new-instance v8, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda4;

    invoke-direct {v8, v14}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v8, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda5;

    invoke-direct {v8, v14}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    new-instance v8, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda6;

    invoke-direct {v8, v14}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v8, 0x7f0900db

    invoke-virtual {v15, v8}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 330
    .local v8, "sBox64Preset":Landroid/widget/Spinner;
    move-object/from16 v51, v0

    .end local v0    # "btHelpDInput":Landroid/view/View;
    .local v51, "btHelpDInput":Landroid/view/View;
    iget-object v0, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v52, v1

    .end local v1    # "btHelpExclusiveXInput":Landroid/view/View;
    .local v52, "btHelpExclusiveXInput":Landroid/view/View;
    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v53, v3

    .end local v3    # "btHelpXInput":Landroid/view/View;
    .local v53, "btHelpXInput":Landroid/view/View;
    const-string v3, "box64Preset"

    invoke-virtual {v0, v3, v1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "box64"

    invoke-static {v1, v8, v0}, Lcom/winlator/cmod/box64/Box64PresetManager;->loadSpinner(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 332
    const v0, 0x7f0900ef

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 333
    .local v0, "sFEXCoreVersion":Landroid/widget/Spinner;
    iget-object v1, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v3, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getFEXCoreVersion()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v6

    .end local v6    # "cbEnableDInput":Landroid/widget/CheckBox;
    .local v16, "cbEnableDInput":Landroid/widget/CheckBox;
    const-string v6, "fexcoreVersion"

    invoke-virtual {v1, v6, v3}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v10, v0, v1}, Lcom/winlator/cmod/fexcore/FEXCoreManager;->loadFEXCoreVersion(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 335
    const v1, 0x7f0900ee

    invoke-virtual {v15, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 336
    .local v1, "sFEXCorePreset":Landroid/widget/Spinner;
    iget-object v3, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v6, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v6, v6, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getFEXCorePreset()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v7

    .end local v7    # "cbExclusiveXInput":Landroid/widget/CheckBox;
    .local v21, "cbExclusiveXInput":Landroid/widget/CheckBox;
    const-string v7, "fexcorePreset"

    invoke-virtual {v3, v7, v6}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 338
    const v3, 0x7f0900e6

    invoke-virtual {v15, v3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 339
    .local v3, "sControlsProfile":Landroid/widget/Spinner;
    iget-object v6, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v7, "controlsProfile"

    invoke-virtual {v6, v7, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v3, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->loadControlsProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 341
    const v6, 0x7f090049

    invoke-virtual {v15, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/widget/CheckBox;

    .line 343
    .local v7, "cbDisabledXInput":Landroid/widget/CheckBox;
    iget-object v6, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v27, v8

    .end local v8    # "sBox64Preset":Landroid/widget/Spinner;
    .local v27, "sBox64Preset":Landroid/widget/Spinner;
    const-string v8, "disableXinput"

    invoke-virtual {v6, v8, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 344
    .local v5, "isXInputDisabled":Z
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 346
    const v6, 0x7f09006a

    invoke-virtual {v15, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/widget/CheckBox;

    .line 347
    .local v8, "cbSimTouchScreen":Landroid/widget/CheckBox;
    iget-object v6, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move/from16 v54, v5

    .end local v5    # "isXInputDisabled":Z
    .local v54, "isXInputDisabled":Z
    const-string v5, "simTouchScreen"

    invoke-virtual {v6, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "isTouchScreenMode":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->getContentView()Landroid/view/View;

    move-result-object v4

    iget-object v6, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v55, v5

    .end local v5    # "isTouchScreenMode":Ljava/lang/String;
    .local v55, "isTouchScreenMode":Ljava/lang/String;
    iget-object v5, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    .line 351
    invoke-virtual {v5}, Lcom/winlator/cmod/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v7

    .end local v7    # "cbDisabledXInput":Landroid/widget/CheckBox;
    .local v28, "cbDisabledXInput":Landroid/widget/CheckBox;
    const-string v7, "wincomponents"

    invoke-virtual {v6, v7, v5}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    invoke-static {v15, v4, v5, v12}, Lcom/winlator/cmod/ContainerDetailFragment;->createWinComponentsTabFromShortcut(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/view/View;Ljava/lang/String;Z)V

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->createEnvVarsTab()Lcom/winlator/cmod/widget/EnvVarsView;

    move-result-object v4

    .line 355
    .local v4, "envVarsView":Lcom/winlator/cmod/widget/EnvVarsView;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->getContentView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0900a5

    const v7, 0x7f0900a3

    move-object/from16 v33, v8

    .end local v8    # "cbSimTouchScreen":Landroid/widget/CheckBox;
    .local v33, "cbSimTouchScreen":Landroid/widget/CheckBox;
    const v8, 0x7f0900a6

    filled-new-array {v8, v6, v7}, [I

    move-result-object v6

    const v7, 0x7f09017b

    invoke-static {v5, v7, v6}, Lcom/winlator/cmod/core/AppUtils;->setupTabLayout(Landroid/view/View;I[I)V

    .line 357
    invoke-virtual {v15, v7}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout;

    .line 359
    .local v5, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    if-eqz v12, :cond_6

    .line 360
    const v6, 0x7f080183

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 362
    :cond_6
    const v6, 0x7f080182

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundResource(I)V

    .line 365
    :goto_5
    const v6, 0x7f090023

    invoke-virtual {v15, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda14;

    invoke-direct {v7, v14, v9}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual/range {v26 .. v26}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "selectedDriver":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v56, v5

    .end local v5    # "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    .local v56, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    const v5, 0x7f030015

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v6

    .line 379
    .local v5, "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090009

    invoke-direct {v6, v14, v7, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v7, v26

    .end local v26    # "sGraphicsDriver":Landroid/widget/Spinner;
    .local v7, "sGraphicsDriver":Landroid/widget/Spinner;
    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 380
    invoke-static {v7, v8}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 382
    const v6, 0x7f09010b

    invoke-virtual {v15, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .local v6, "sStartupSelection":Landroid/widget/Spinner;
    move-object/from16 v29, v6

    .line 383
    move-object/from16 v57, v5

    .end local v5    # "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v57, "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    .end local v7    # "sGraphicsDriver":Landroid/widget/Spinner;
    .restart local v26    # "sGraphicsDriver":Landroid/widget/Spinner;
    iget-object v7, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v7, v7, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v7}, Lcom/winlator/cmod/container/Container;->getStartupSelection()B

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v58, v8

    .end local v8    # "selectedDriver":Ljava/lang/String;
    .local v58, "selectedDriver":Ljava/lang/String;
    const-string v8, "startupSelection"

    invoke-virtual {v5, v8, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 385
    const v5, 0x7f09010a

    invoke-virtual {v15, v5}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .local v5, "sSharpnessEffect":Landroid/widget/Spinner;
    move-object/from16 v30, v5

    .line 386
    const v7, 0x7f0900d4

    invoke-virtual {v15, v7}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/widget/SeekBar;

    .local v8, "sbSharpnessLevel":Landroid/widget/SeekBar;
    move-object/from16 v31, v8

    .line 387
    const v7, 0x7f0900d3

    invoke-virtual {v15, v7}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    .local v7, "sbSharpnessDenoise":Landroid/widget/SeekBar;
    move-object/from16 v32, v7

    .line 388
    move-object/from16 v59, v6

    .end local v6    # "sStartupSelection":Landroid/widget/Spinner;
    .local v59, "sStartupSelection":Landroid/widget/Spinner;
    const v6, 0x7f090168

    invoke-virtual {v15, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 389
    .local v6, "tvSharpnessLevel":Landroid/widget/TextView;
    move-object/from16 v60, v9

    .end local v9    # "etExecArgs":Landroid/widget/EditText;
    .local v60, "etExecArgs":Landroid/widget/EditText;
    const v9, 0x7f090167

    invoke-virtual {v15, v9}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 391
    .local v9, "tvSharpnessDenoise":Landroid/widget/TextView;
    move-object/from16 v61, v10

    .end local v10    # "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    .local v61, "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    iget-object v10, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move/from16 v62, v11

    .end local v11    # "exclusiveXInput":Z
    .local v62, "exclusiveXInput":Z
    const-string v11, "sharpnessEffect"

    move/from16 v63, v12

    .end local v12    # "isDarkMode":Z
    .local v63, "isDarkMode":Z
    const-string v12, "None"

    invoke-virtual {v10, v11, v12}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 393
    iget-object v10, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v11, "sharpnessLevel"

    const-string v12, "100"

    invoke-virtual {v10, v11, v12}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 394
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v64, v5

    .end local v5    # "sSharpnessEffect":Landroid/widget/Spinner;
    .local v64, "sSharpnessEffect":Landroid/widget/Spinner;
    iget-object v5, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v5, v11, v12}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "%"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    new-instance v5, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$2;

    invoke-direct {v5, v15, v6}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$2;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/widget/TextView;)V

    invoke-virtual {v8, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 411
    iget-object v5, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v11, "sharpnessDenoise"

    invoke-virtual {v5, v11, v12}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v65, v6

    .end local v6    # "tvSharpnessLevel":Landroid/widget/TextView;
    .local v65, "tvSharpnessLevel":Landroid/widget/TextView;
    iget-object v6, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v6, v11, v12}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    new-instance v5, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$3;

    invoke-direct {v5, v15, v9}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$3;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/widget/TextView;)V

    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 430
    const v5, 0x7f09006e

    invoke-virtual {v15, v5}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/widget/CPUListView;

    .local v5, "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    move-object/from16 v34, v5

    .line 431
    iget-object v6, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v10, v15, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v10, v10, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/winlator/cmod/container/Container;->getCPUList(Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "cpuList"

    invoke-virtual {v6, v11, v10}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/CPUListView;->setCheckedCPUList(Ljava/lang/String;)V

    .line 433
    new-instance v12, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda15;

    move-object/from16 v66, v59

    move-object/from16 v67, v65

    move-object/from16 v65, v16

    move-object/from16 v59, v22

    .end local v16    # "cbEnableDInput":Landroid/widget/CheckBox;
    .end local v22    # "sBox64Version":Landroid/widget/Spinner;
    .local v59, "sBox64Version":Landroid/widget/Spinner;
    .local v65, "cbEnableDInput":Landroid/widget/CheckBox;
    .local v66, "sStartupSelection":Landroid/widget/Spinner;
    .local v67, "tvSharpnessLevel":Landroid/widget/TextView;
    move-object v6, v12

    move-object/from16 v71, v7

    move-object/from16 v69, v21

    move-object/from16 v68, v23

    move-object/from16 v10, v26

    move-object/from16 v70, v28

    .end local v7    # "sbSharpnessDenoise":Landroid/widget/SeekBar;
    .end local v21    # "cbExclusiveXInput":Landroid/widget/CheckBox;
    .end local v23    # "sDXWrapper":Landroid/widget/Spinner;
    .end local v26    # "sGraphicsDriver":Landroid/widget/Spinner;
    .end local v28    # "cbDisabledXInput":Landroid/widget/CheckBox;
    .local v10, "sGraphicsDriver":Landroid/widget/Spinner;
    .local v68, "sDXWrapper":Landroid/widget/Spinner;
    .local v69, "cbExclusiveXInput":Landroid/widget/CheckBox;
    .local v70, "cbDisabledXInput":Landroid/widget/CheckBox;
    .local v71, "sbSharpnessDenoise":Landroid/widget/SeekBar;
    move-object/from16 v7, p0

    move-object/from16 v75, v8

    move-object/from16 v72, v27

    move-object/from16 v73, v33

    move-object/from16 v74, v58

    move-object/from16 v58, v10

    .end local v8    # "sbSharpnessLevel":Landroid/widget/SeekBar;
    .end local v10    # "sGraphicsDriver":Landroid/widget/Spinner;
    .end local v27    # "sBox64Preset":Landroid/widget/Spinner;
    .end local v33    # "cbSimTouchScreen":Landroid/widget/CheckBox;
    .local v58, "sGraphicsDriver":Landroid/widget/Spinner;
    .local v72, "sBox64Preset":Landroid/widget/Spinner;
    .local v73, "cbSimTouchScreen":Landroid/widget/CheckBox;
    .local v74, "selectedDriver":Ljava/lang/String;
    .local v75, "sbSharpnessLevel":Landroid/widget/SeekBar;
    move-object/from16 v8, v25

    move-object/from16 v76, v9

    .end local v9    # "tvSharpnessDenoise":Landroid/widget/TextView;
    .local v76, "tvSharpnessDenoise":Landroid/widget/TextView;
    move-object/from16 v9, v58

    move-object/from16 v77, v61

    move-object/from16 v61, v18

    .end local v18    # "selectIcon":Landroid/widget/Button;
    .local v61, "selectIcon":Landroid/widget/Button;
    .local v77, "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    move-object/from16 v10, v36

    move/from16 v78, v62

    move-object/from16 v62, v25

    .end local v25    # "etName":Landroid/widget/EditText;
    .local v62, "etName":Landroid/widget/EditText;
    .local v78, "exclusiveXInput":Z
    move-object/from16 v11, v68

    move-object/from16 v79, v5

    move-object v5, v12

    .end local v5    # "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    .local v79, "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    move-object/from16 v12, v24

    move-object/from16 v82, v13

    move-object/from16 v80, v20

    move-object/from16 v81, v24

    .end local v13    # "exclusiveXInputExtra":Ljava/lang/String;
    .end local v20    # "prefs":Landroid/content/SharedPreferences;
    .end local v24    # "vDXWrapperConfig":Landroid/view/View;
    .local v80, "prefs":Landroid/content/SharedPreferences;
    .local v81, "vDXWrapperConfig":Landroid/view/View;
    .local v82, "exclusiveXInputExtra":Ljava/lang/String;
    move-object/from16 v13, v37

    move-object/from16 v83, v14

    .end local v14    # "context":Landroid/content/Context;
    .local v83, "context":Landroid/content/Context;
    move-object/from16 v14, v49

    move-object/from16 v15, v48

    move-object/from16 v16, v38

    move-object/from16 v18, v2

    move-object/from16 v19, v65

    move-object/from16 v20, v69

    move-object/from16 v21, v70

    move-object/from16 v22, v73

    move-object/from16 v23, v60

    move-object/from16 v24, v47

    move-object/from16 v25, v4

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v72

    move-object/from16 v33, v3

    invoke-direct/range {v6 .. v34}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda15;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Lcom/winlator/cmod/ContainerDetailFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/Spinner;Lcom/winlator/cmod/widget/CPUListView;)V

    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method private createEnvVarsTab()Lcom/winlator/cmod/widget/EnvVarsView;
    .locals 8

    .line 706
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 707
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 710
    .local v1, "context":Landroid/content/Context;
    const v2, 0x7f090082

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/widget/EnvVarsView;

    .line 713
    .local v2, "envVarsView":Lcom/winlator/cmod/widget/EnvVarsView;
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 714
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "dark_mode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 715
    .local v4, "isDarkMode":Z
    invoke-virtual {v2, v4}, Lcom/winlator/cmod/widget/EnvVarsView;->setDarkMode(Z)V

    .line 718
    new-instance v5, Lcom/winlator/cmod/core/EnvVars;

    iget-object v6, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v7, "envVars"

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/winlator/cmod/core/EnvVars;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/widget/EnvVarsView;->setEnvVars(Lcom/winlator/cmod/core/EnvVars;)V

    .line 721
    const v5, 0x7f090008

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda10;

    invoke-direct {v6, v1, v2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    return-object v2
.end method

.method private deleteOldFileIfExists(Ljava/io/File;)V
    .locals 2
    .param p1, "oldFile"    # Ljava/io/File;

    .line 686
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete old file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutSettingsDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    return-void
.end method

.method private isFieldSetLabel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 542
    const-string v0, "DirectX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    const-string v0, "General"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    const-string v0, "Box64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    const-string v0, "Input Controls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    const-string v0, "Game Controller"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    const-string v0, "System"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 542
    :goto_1
    return v0
.end method

.method static synthetic lambda$createContentView$10(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 325
    const v0, 0x7f100113

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$createContentView$11(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 326
    const v0, 0x7f10010f

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$createContentView$12(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 327
    const v0, 0x7f100110

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$createContentView$13(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 4
    .param p0, "etExecArgs"    # Landroid/widget/EditText;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 369
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "execArgs":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic lambda$createContentView$14(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "etExecArgs"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 366
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 367
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 368
    new-instance v1, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 374
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 375
    return-void
.end method

.method private synthetic lambda$createContentView$15(Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Lcom/winlator/cmod/ContainerDetailFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/Spinner;Lcom/winlator/cmod/widget/CPUListView;)V
    .locals 32
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "sGraphicsDriver"    # Landroid/widget/Spinner;
    .param p3, "vGraphicsDriverConfig"    # Landroid/view/View;
    .param p4, "sDXWrapper"    # Landroid/widget/Spinner;
    .param p5, "vDXWrapperConfig"    # Landroid/view/View;
    .param p6, "sAudioDriver"    # Landroid/widget/Spinner;
    .param p7, "sEmulator"    # Landroid/widget/Spinner;
    .param p8, "etLC_ALL"    # Landroid/widget/EditText;
    .param p9, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p10, "containerDetailFragment"    # Lcom/winlator/cmod/ContainerDetailFragment;
    .param p11, "cbEnableXInput"    # Landroid/widget/CheckBox;
    .param p12, "cbEnableDInput"    # Landroid/widget/CheckBox;
    .param p13, "cbExclusiveXInput"    # Landroid/widget/CheckBox;
    .param p14, "cbDisabledXInput"    # Landroid/widget/CheckBox;
    .param p15, "cbSimTouchScreen"    # Landroid/widget/CheckBox;
    .param p16, "etExecArgs"    # Landroid/widget/EditText;
    .param p17, "cbFullscreenStretched"    # Landroid/widget/CheckBox;
    .param p18, "envVarsView"    # Lcom/winlator/cmod/widget/EnvVarsView;
    .param p19, "sFEXCoreVersion"    # Landroid/widget/Spinner;
    .param p20, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p21, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p22, "sStartupSelection"    # Landroid/widget/Spinner;
    .param p23, "sSharpnessEffect"    # Landroid/widget/Spinner;
    .param p24, "sbSharpnessLevel"    # Landroid/widget/SeekBar;
    .param p25, "sbSharpnessDenoise"    # Landroid/widget/SeekBar;
    .param p26, "sControlsProfile"    # Landroid/widget/Spinner;
    .param p27, "cpuListView"    # Lcom/winlator/cmod/widget/CPUListView;

    .line 434
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "name":Ljava/lang/String;
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v2, v2, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 438
    .local v2, "nameChanged":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 439
    invoke-direct {v0, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->renameShortcut(Ljava/lang/String;)V

    .line 444
    :cond_1
    if-eqz v2, :cond_3

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v6, v6, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".desktop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 446
    .local v5, "renamingSuccess":Z
    :goto_2
    if-eqz v5, :cond_f

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "graphicsDriver":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "graphicsDriverConfig":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, "dxwrapper":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 451
    .local v9, "dxwrapperConfig":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, "audioDriver":Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 453
    .local v11, "emulator":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 454
    .local v12, "lc_all":Ljava/lang/String;
    invoke-virtual/range {p9 .. p9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    if-nez v13, :cond_4

    const-string v13, ""

    goto :goto_3

    :cond_4
    invoke-virtual/range {p9 .. p9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 455
    .local v13, "midiSoundFont":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->getContentView()Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Lcom/winlator/cmod/ContainerDetailFragment;->getScreenSize(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    .line 457
    .local v14, "screenSize":Ljava/lang/String;
    const/4 v15, 0x0

    .line 458
    .local v15, "finalInputType":I
    invoke-virtual/range {p11 .. p11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x4

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    or-int v15, v15, v16

    .line 459
    invoke-virtual/range {p12 .. p12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x8

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    or-int v15, v15, v16

    .line 462
    iget-object v4, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "inputType"

    move-object/from16 v18, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual/range {p13 .. p13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const-string v4, "0"

    const-string v19, "1"

    if-eqz v3, :cond_7

    move-object/from16 v3, v19

    goto :goto_6

    :cond_7
    move-object v3, v4

    :goto_6
    move/from16 v20, v2

    .end local v2    # "nameChanged":Z
    .local v20, "nameChanged":Z
    const-string v2, "exclusiveXInput"

    invoke-virtual {v1, v2, v3}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p14 .. p14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 467
    .local v1, "disabledXInput":Z
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v1, :cond_8

    move-object/from16 v3, v19

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    move/from16 v22, v1

    .end local v1    # "disabledXInput":Z
    .local v22, "disabledXInput":Z
    const-string v1, "disableXinput"

    invoke-virtual {v2, v1, v3}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p15 .. p15}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 470
    .local v1, "touchscreenMode":Z
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-eqz v1, :cond_9

    move-object/from16 v4, v19

    :cond_9
    const-string v3, "simTouchScreen"

    invoke-virtual {v2, v3, v4}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p16 .. p16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "execArgs":Ljava/lang/String;
    iget-object v3, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    move-object v4, v2

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    move/from16 v23, v1

    .end local v1    # "touchscreenMode":Z
    .local v23, "touchscreenMode":Z
    const-string v1, "execArgs"

    invoke-virtual {v3, v1, v4}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "screenSize"

    invoke-virtual {v1, v3, v14}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "graphicsDriver"

    invoke-virtual {v1, v3, v6}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "graphicsDriverConfig"

    invoke-virtual {v1, v3, v7}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "dxwrapper"

    invoke-virtual {v1, v3, v8}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "dxwrapperConfig"

    invoke-virtual {v1, v3, v9}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "audioDriver"

    invoke-virtual {v1, v3, v10}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "emulator"

    invoke-virtual {v1, v3, v11}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "midiSoundFont"

    invoke-virtual {v1, v3, v13}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "lc_all"

    invoke-virtual {v1, v3, v12}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual/range {p17 .. p17}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v3, v19

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    const-string v4, "fullscreenStretched"

    invoke-virtual {v1, v4, v3}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/cmod/ContainerDetailFragment;->getWinComponents(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "wincomponents":Ljava/lang/String;
    iget-object v3, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v4, "wincomponents"

    invoke-virtual {v3, v4, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p18 .. p18}, Lcom/winlator/cmod/widget/EnvVarsView;->getEnvVars()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "envVars":Ljava/lang/String;
    iget-object v4, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 v19, v1

    move-object v1, v3

    goto :goto_a

    :cond_c
    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "wincomponents":Ljava/lang/String;
    .local v19, "wincomponents":Ljava/lang/String;
    :goto_a
    move-object/from16 v24, v2

    .end local v2    # "execArgs":Ljava/lang/String;
    .local v24, "execArgs":Ljava/lang/String;
    const-string v2, "envVars"

    invoke-virtual {v4, v2, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p19 .. p19}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "fexcoreVersion":Ljava/lang/String;
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v4, "fexcoreVersion"

    invoke-virtual {v2, v4, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static/range {p20 .. p20}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "fexcorePreset":Ljava/lang/String;
    iget-object v4, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v25, v1

    .end local v1    # "fexcoreVersion":Ljava/lang/String;
    .local v25, "fexcoreVersion":Ljava/lang/String;
    const-string v1, "fexcorePreset"

    invoke-virtual {v4, v1, v2}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static/range {p21 .. p21}, Lcom/winlator/cmod/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "box64Preset":Ljava/lang/String;
    iget-object v4, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v26, v2

    .end local v2    # "fexcorePreset":Ljava/lang/String;
    .local v26, "fexcorePreset":Ljava/lang/String;
    const-string v2, "box64Preset"

    invoke-virtual {v4, v2, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p22 .. p22}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    int-to-byte v2, v2

    .line 502
    .local v2, "startupSelection":B
    iget-object v4, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move-object/from16 v27, v1

    .end local v1    # "box64Preset":Ljava/lang/String;
    .local v27, "box64Preset":Ljava/lang/String;
    const-string v1, "startupSelection"

    move-object/from16 v28, v3

    .end local v3    # "envVars":Ljava/lang/String;
    .local v28, "envVars":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p23 .. p23}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "sharpeningEffect":Ljava/lang/String;
    invoke-virtual/range {p24 .. p24}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "sharpeningLevel":Ljava/lang/String;
    invoke-virtual/range {p25 .. p25}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "sharpeningDenoise":Ljava/lang/String;
    move/from16 v29, v2

    .end local v2    # "startupSelection":B
    .local v29, "startupSelection":B
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    move/from16 v30, v5

    .end local v5    # "renamingSuccess":Z
    .local v30, "renamingSuccess":Z
    const-string v5, "sharpnessEffect"

    invoke-virtual {v2, v5, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v5, "sharpnessLevel"

    invoke-virtual {v2, v5, v3}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v5, "sharpnessDenoise"

    invoke-virtual {v2, v5, v4}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 512
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    invoke-virtual/range {p26 .. p26}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    if-lez v17, :cond_d

    invoke-virtual/range {p26 .. p26}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    iget v5, v5, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    .line 513
    .local v5, "controlsProfile":I
    :goto_b
    move-object/from16 v16, v1

    .end local v1    # "sharpeningEffect":Ljava/lang/String;
    .local v16, "sharpeningEffect":Ljava/lang/String;
    iget-object v1, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    if-lez v5, :cond_e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v31, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v31

    goto :goto_c

    :cond_e
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    .local v17, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    :goto_c
    move-object/from16 v21, v3

    .end local v3    # "sharpeningLevel":Ljava/lang/String;
    .local v21, "sharpeningLevel":Ljava/lang/String;
    const-string v3, "controlsProfile"

    invoke-virtual {v1, v3, v2}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p27 .. p27}, Lcom/winlator/cmod/widget/CPUListView;->getCheckedCPUListAsString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "cpuList":Ljava/lang/String;
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v3, "cpuList"

    invoke-virtual {v2, v3, v1}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Shortcut;->saveData()V

    goto :goto_d

    .line 446
    .end local v4    # "sharpeningDenoise":Ljava/lang/String;
    .end local v6    # "graphicsDriver":Ljava/lang/String;
    .end local v7    # "graphicsDriverConfig":Ljava/lang/String;
    .end local v8    # "dxwrapper":Ljava/lang/String;
    .end local v9    # "dxwrapperConfig":Ljava/lang/String;
    .end local v10    # "audioDriver":Ljava/lang/String;
    .end local v11    # "emulator":Ljava/lang/String;
    .end local v12    # "lc_all":Ljava/lang/String;
    .end local v13    # "midiSoundFont":Ljava/lang/String;
    .end local v14    # "screenSize":Ljava/lang/String;
    .end local v15    # "finalInputType":I
    .end local v16    # "sharpeningEffect":Ljava/lang/String;
    .end local v17    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "wincomponents":Ljava/lang/String;
    .end local v20    # "nameChanged":Z
    .end local v21    # "sharpeningLevel":Ljava/lang/String;
    .end local v22    # "disabledXInput":Z
    .end local v23    # "touchscreenMode":Z
    .end local v24    # "execArgs":Ljava/lang/String;
    .end local v25    # "fexcoreVersion":Ljava/lang/String;
    .end local v26    # "fexcorePreset":Ljava/lang/String;
    .end local v27    # "box64Preset":Ljava/lang/String;
    .end local v28    # "envVars":Ljava/lang/String;
    .end local v29    # "startupSelection":B
    .end local v30    # "renamingSuccess":Z
    .local v1, "name":Ljava/lang/String;
    .local v2, "nameChanged":Z
    .local v5, "renamingSuccess":Z
    :cond_f
    move-object/from16 v18, v1

    move/from16 v20, v2

    move/from16 v30, v5

    .line 521
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "nameChanged":Z
    .end local v5    # "renamingSuccess":Z
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v20    # "nameChanged":Z
    .restart local v30    # "renamingSuccess":Z
    :goto_d
    return-void
.end method

.method private synthetic lambda$createContentView$2(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    const/16 v2, 0x539

    invoke-virtual {v1, v0, v2}, Lcom/winlator/cmod/ShortcutsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    return-void
.end method

.method static synthetic lambda$createContentView$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 197
    const v0, 0x7f1000af

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$createContentView$4(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 2
    .param p0, "etLC_ALL"    # Landroid/widget/EditText;
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$createContentView$5(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "etLC_ALL"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 214
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 215
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "lcs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    aget-object v4, v1, v2

    const/4 v5, 0x0

    invoke-interface {v3, v5, v2, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda7;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 222
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 223
    return-void
.end method

.method static synthetic lambda$createContentView$6(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 273
    const v0, 0x7f1000c2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$createContentView$7(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "cbExclusiveXInput"    # Landroid/widget/CheckBox;
    .param p1, "cbEnableXInput"    # Landroid/widget/CheckBox;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 291
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    :cond_0
    return-void
.end method

.method static synthetic lambda$createContentView$8(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "cbExclusiveXInput"    # Landroid/widget/CheckBox;
    .param p1, "cbEnableDInput"    # Landroid/widget/CheckBox;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 298
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 303
    :cond_0
    return-void
.end method

.method static synthetic lambda$createContentView$9(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p0, "cbEnableXInput"    # Landroid/widget/CheckBox;
    .param p1, "cbEnableDInput"    # Landroid/widget/CheckBox;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 306
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 307
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 309
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 316
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$createEnvVarsTab$16(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "envVarsView"    # Lcom/winlator/cmod/widget/EnvVarsView;
    .param p2, "v"    # Landroid/view/View;

    .line 722
    new-instance v0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;-><init>(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;)V

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->show()V

    return-void
.end method

.method private synthetic lambda$loadGraphicsDriverSpinner$17(Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "vGraphicsDriverConfig"    # Landroid/view/View;
    .param p2, "graphicsDriver"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/view/View;

    .line 787
    new-instance v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->tvGraphicsDriverVersion:Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, v1}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->show()V

    .line 788
    return-void
.end method

.method private synthetic lambda$loadGraphicsDriverSpinner$18(Landroid/widget/Spinner;Landroid/view/View;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "sGraphicsDriver"    # Landroid/widget/Spinner;
    .param p2, "vGraphicsDriverConfig"    # Landroid/view/View;
    .param p3, "dxwrapperEntries"    # [Ljava/lang/String;
    .param p4, "sDXWrapper"    # Landroid/widget/Spinner;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "selectedDXWrapper"    # Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "graphicsDriver":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "graphicsDriverConfig":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->tvGraphicsDriverVersion:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    new-instance v2, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p2, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p3, v5

    .line 792
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 794
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const v5, 0x1090009

    invoke-direct {v3, p5, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 795
    invoke-static {p4, p6}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 796
    return-void
.end method

.method private synthetic lambda$onIconSelected$0(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;

    .line 128
    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    .local v0, "iconPreview":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    :cond_0
    const-string v1, "Icon updated! Refresh layout!"

    invoke-static {p2, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 133
    return-void
.end method

.method private synthetic lambda$onIconSelected$1(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 139
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    return-void
.end method

.method public static loadBox64VersionSpinner(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "isArm64EC"    # Z

    .line 753
    if-eqz p3, :cond_0

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 756
    .end local v0    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 757
    .restart local v0    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/16 v1, 0x2d

    if-nez p3, :cond_2

    .line 758
    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_BOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/contents/ContentProfile;

    .line 759
    .local v3, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    .line 760
    .local v4, "entryName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 761
    .local v5, "firstDashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "firstDashIndex":I
    goto :goto_1

    :cond_1
    goto :goto_3

    .line 764
    :cond_2
    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WOWBOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/contents/ContentProfile;

    .line 765
    .restart local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    .line 766
    .restart local v4    # "entryName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 767
    .restart local v5    # "firstDashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "firstDashIndex":I
    goto :goto_2

    .line 770
    :cond_3
    :goto_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 771
    return-void
.end method

.method private loadControlsProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "selectedValue"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 730
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->inputControlsManager:Lcom/winlator/cmod/inputcontrols/InputControlsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfiles(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 731
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ControlsProfile;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x7f100187

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    const/4 v3, 0x0

    .line 735
    .local v3, "selectedPosition":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 736
    .local v4, "selectedId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 737
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 738
    .local v6, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    iget v7, v6, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    if-ne v7, v4, :cond_0

    add-int/lit8 v3, v5, 0x1

    .line 739
    :cond_0
    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v6    # "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 742
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-direct {v5, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 743
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 744
    return-void
.end method

.method public static loadScreenSizeSpinner(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "selectedValue"    # Ljava/lang/String;
    .param p2, "isDarkMode"    # Z

    .line 558
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 560
    .local v0, "sScreenSize":Landroid/widget/Spinner;
    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 562
    .local v1, "llCustomScreenSize":Landroid/widget/LinearLayout;
    const v2, 0x7f09007c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, p2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;Z)V

    .line 563
    const v3, 0x7f09007b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v4, p2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;Z)V

    .line 566
    new-instance v4, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$4;

    invoke-direct {v4, v0, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$4;-><init>(Landroid/widget/Spinner;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 577
    invoke-static {v0, p1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    move-result v4

    .line 578
    .local v4, "found":Z
    if-nez v4, :cond_0

    .line 579
    const-string v5, "custom"

    invoke-static {v0, v5}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 580
    const-string v5, "x"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "screenSize":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    .end local v5    # "screenSize":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private renameShortcut(Ljava/lang/String;)V
    .locals 12
    .param p1, "newName"    # Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v0, v0, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 660
    .local v0, "parent":Ljava/io/File;
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v1, v1, Lcom/winlator/cmod/container/Shortcut;->file:Ljava/io/File;

    .line 661
    .local v1, "oldDesktopFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".desktop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 664
    .local v2, "newDesktopFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    invoke-direct {p0, v2}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->updateShortcutFileReference(Ljava/io/File;)V

    .line 669
    invoke-direct {p0, v1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->deleteOldFileIfExists(Ljava/io/File;)V

    .line 673
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v5, v5, Lcom/winlator/cmod/container/Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".lnk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 674
    .local v3, "linkFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 676
    .local v4, "newLinkFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 679
    .end local v4    # "newLinkFile":Ljava/io/File;
    :cond_1
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v4}, Lcom/winlator/cmod/ShortcutsFragment;->loadShortcutsList()V

    .line 680
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/cmod/container/Shortcut;->container:Lcom/winlator/cmod/container/Container;

    iget v8, v4, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v4, v4, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    .line 681
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v10

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    const-string v6, "uuid"

    invoke-virtual {v4, v6}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 680
    move-object v6, p1

    move-object v7, p1

    invoke-virtual/range {v5 .. v11}, Lcom/winlator/cmod/ShortcutsFragment;->updateShortcutOnScreen(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private showInputWarning()V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 748
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f1000c2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 749
    return-void
.end method

.method private updateExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "extraName"    # Ljava/lang/String;
    .param p2, "containerValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/container/Shortcut;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "extraValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v1, p1, p3}, Lcom/winlator/cmod/container/Shortcut;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method private updateShortcutFileReference(Ljava/io/File;)V
    .locals 3
    .param p1, "newFile"    # Ljava/io/File;

    .line 696
    :try_start_0
    const-class v0, Lcom/winlator/cmod/container/Shortcut;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 697
    .local v0, "fileField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 698
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .end local v0    # "fileField":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 699
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const-string v1, "ShortcutSettingsDialog"

    const-string v2, "Error updating shortcut file reference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    return-void
.end method


# virtual methods
.method public loadGraphicsDriverSpinner(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "sGraphicsDriver"    # Landroid/widget/Spinner;
    .param p2, "sDXWrapper"    # Landroid/widget/Spinner;
    .param p3, "vGraphicsDriverConfig"    # Landroid/view/View;
    .param p4, "selectedGraphicsDriver"    # Ljava/lang/String;
    .param p5, "selectedDXWrapper"    # Ljava/lang/String;

    .line 774
    move-object v8, p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 776
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9, p1}, Lcom/winlator/cmod/ContainerDetailFragment;->updateGraphicsDriverSpinner(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 778
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 780
    .local v10, "dxwrapperEntries":[Ljava/lang/String;
    new-instance v11, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda12;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, v10

    move-object v5, p2

    move-object v6, v9

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/widget/Spinner;Landroid/view/View;[Ljava/lang/String;Landroid/widget/Spinner;Landroid/content/Context;Ljava/lang/String;)V

    .line 798
    .local v0, "update":Ljava/lang/Runnable;
    new-instance v1, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$5;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$5;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 808
    move-object/from16 v1, p4

    invoke-static {p1, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 809
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 810
    return-void
.end method

.method public onIconSelected(Landroid/net/Uri;)V
    .locals 9
    .param p1, "iconUri"    # Landroid/net/Uri;

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v0}, Lcom/winlator/cmod/ShortcutsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 101
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 104
    :cond_1
    if-nez v2, :cond_2

    .line 105
    const-string v3, "Can\'t load image"

    invoke-static {v0, v3}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 106
    return-void

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iget-object v3, v3, Lcom/winlator/cmod/container/Shortcut;->iconFile:Ljava/io/File;

    .line 111
    .local v3, "iconFile":Ljava/io/File;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 113
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "icons"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v4, "internalIconsDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_4
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shortcut_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v5

    .line 118
    .end local v4    # "internalIconsDir":Ljava/io/File;
    :cond_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 120
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 124
    .end local v4    # "out":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->shortcut:Lcom/winlator/cmod/container/Shortcut;

    iput-object v2, v4, Lcom/winlator/cmod/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    .line 127
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v4}, Lcom/winlator/cmod/ShortcutsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v2, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "iconFile":Ljava/io/File;
    goto :goto_1

    .line 118
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "iconFile":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "iconUri":Landroid/net/Uri;
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "iconFile":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local p1    # "iconUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->fragment:Lcom/winlator/cmod/ShortcutsFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/ShortcutsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onWinComponentsViewsAdded(Z)V
    .locals 1
    .param p1, "isDarkMode"    # Z

    .line 552
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 553
    .local v0, "llContent":Landroid/view/ViewGroup;
    invoke-direct {p0, v0, p1}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->applyFieldSetLabelStylesDynamically(Landroid/view/ViewGroup;Z)V

    .line 554
    return-void
.end method

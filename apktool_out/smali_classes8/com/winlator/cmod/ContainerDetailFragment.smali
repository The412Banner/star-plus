.class public Lcom/winlator/cmod/ContainerDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContainerDetailFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field private static container:Lcom/winlator/cmod/container/Container;

.field private static isDarkMode:Z


# instance fields
.field private final containerId:I

.field private contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

.field private gpuCards:Lorg/json/JSONArray;

.field private imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

.field private manager:Lcom/winlator/cmod/container/ContainerManager;

.field private openDirectoryCallback:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;


# direct methods
.method public static synthetic $r8$lambda$9BdlPwYXfOUCfRvXVA4uWRDWP6k(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/view/View;Lcom/winlator/cmod/container/Container;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/ContainerDetailFragment;->lambda$onCreateView$11(Landroid/view/View;Lcom/winlator/cmod/container/Container;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ACmWPVqK6uDgZA-xmIVQZt8oEjM(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/content/Context;[Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/winlator/cmod/ContainerDetailFragment;->lambda$createDrivesTab$19(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/content/Context;[Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G4Py99bixNIjHH7DXLa-0qDTLcY(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/widget/EditText;Landroid/view/View;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/CPUListView;Lcom/winlator/cmod/widget/CPUListView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p28}, Lcom/winlator/cmod/ContainerDetailFragment;->lambda$onCreateView$12(Landroid/widget/EditText;Landroid/view/View;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/CPUListView;Lcom/winlator/cmod/widget/CPUListView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZfGLBYtT1KJGk0VY-5hJsDukXg(Lcom/winlator/cmod/ContainerDetailFragment;[Ljava/lang/String;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContainerDetailFragment;->lambda$createDrivesTab$17([Ljava/lang/String;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xab0P6G4Wr77vGqguIrOA27r-pY(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/ContainerDetailFragment;->lambda$onCreateView$10(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontentsManager(Lcom/winlator/cmod/ContainerDetailFragment;)Lcom/winlator/cmod/contents/ContentsManager;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/ContainerDetailFragment;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetcontainer()Lcom/winlator/cmod/container/Container;
    .locals 1

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winlator/cmod/ContainerDetailFragment;-><init>(I)V

    .line 102
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "containerId"    # I

    .line 104
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 105
    iput p1, p0, Lcom/winlator/cmod/ContainerDetailFragment;->containerId:I

    .line 106
    return-void
.end method

.method private applyDarkThemeToButton(Landroid/view/View;)V
    .locals 0
    .param p1, "button"    # Landroid/view/View;

    .line 976
    return-void
.end method

.method private static applyDarkThemeToEditText(Landroid/widget/EditText;)V
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 962
    sget-boolean v0, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    const v1, -0x777778

    if-eqz v0, :cond_0

    .line 963
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 964
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 965
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 967
    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 968
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 969
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 971
    :goto_0
    return-void
.end method

.method private applyDynamicStyles(Landroid/view/View;Z)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isDarkMode"    # Z

    .line 141
    move-object/from16 v0, p1

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 142
    .local v1, "sScreenSize":Landroid/widget/Spinner;
    if-eqz p2, :cond_0

    const v4, 0x7f0800f3

    goto :goto_0

    :cond_0
    const v4, 0x7f0800f2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 144
    const v4, 0x7f090119

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 145
    .local v4, "sWineVersion":Landroid/widget/Spinner;
    if-eqz p2, :cond_1

    const v5, 0x7f0800f3

    goto :goto_1

    :cond_1
    const v5, 0x7f0800f2

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 147
    const v5, 0x7f0900f2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 148
    .local v5, "sGraphicsDriver":Landroid/widget/Spinner;
    if-eqz p2, :cond_2

    const v6, 0x7f0800f3

    goto :goto_2

    :cond_2
    const v6, 0x7f0800f2

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 150
    const v6, 0x7f0900e9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 151
    .local v6, "sDXWrapper":Landroid/widget/Spinner;
    if-eqz p2, :cond_3

    const v7, 0x7f0800f3

    goto :goto_3

    :cond_3
    const v7, 0x7f0800f2

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 153
    const v7, 0x7f0900c5

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 154
    .local v7, "sAudioDriver":Landroid/widget/Spinner;
    if-eqz p2, :cond_4

    const v8, 0x7f0800f3

    goto :goto_4

    :cond_4
    const v8, 0x7f0800f2

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 156
    const v8, 0x7f0900ed

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 157
    .local v8, "sEmulator64":Landroid/widget/Spinner;
    if-eqz p2, :cond_5

    const v9, 0x7f0800f3

    goto :goto_5

    :cond_5
    const v9, 0x7f0800f2

    :goto_5
    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 159
    const v9, 0x7f0900ec

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 160
    .local v9, "sEmulator":Landroid/widget/Spinner;
    if-eqz p2, :cond_6

    const v10, 0x7f0800f3

    goto :goto_6

    :cond_6
    const v10, 0x7f0800f2

    :goto_6
    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 162
    const v10, 0x7f090100

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 163
    .local v10, "sMIDISoundFont":Landroid/widget/Spinner;
    if-eqz p2, :cond_7

    const v11, 0x7f0800f3

    goto :goto_7

    :cond_7
    const v11, 0x7f0800f2

    :goto_7
    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 167
    const v11, 0x7f0900eb

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 168
    .local v11, "sDesktopTheme":Landroid/widget/Spinner;
    if-eqz p2, :cond_8

    const v12, 0x7f0800f3

    goto :goto_8

    :cond_8
    const v12, 0x7f0800f2

    :goto_8
    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 170
    const v12, 0x7f0900ea

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 171
    .local v12, "sDesktopBackgroundType":Landroid/widget/Spinner;
    if-eqz p2, :cond_9

    const v13, 0x7f0800f3

    goto :goto_9

    :cond_9
    const v13, 0x7f0800f2

    :goto_9
    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 173
    const v13, 0x7f090101

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 174
    .local v13, "sMouseWarpOverride":Landroid/widget/Spinner;
    if-eqz p2, :cond_a

    const v14, 0x7f0800f3

    goto :goto_a

    :cond_a
    const v14, 0x7f0800f2

    :goto_a
    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 181
    const v14, 0x7f0900db

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 182
    .local v14, "sBox64Preset":Landroid/widget/Spinner;
    if-eqz p2, :cond_b

    const v15, 0x7f0800f3

    goto :goto_b

    :cond_b
    const v15, 0x7f0800f2

    :goto_b
    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 184
    const v15, 0x7f0900dc

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Spinner;

    .line 185
    .local v15, "sBox64Version":Landroid/widget/Spinner;
    if-eqz p2, :cond_c

    const v2, 0x7f0800f3

    goto :goto_c

    :cond_c
    const v2, 0x7f0800f2

    :goto_c
    invoke-virtual {v15, v2}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 187
    const v2, 0x7f0900ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 188
    .local v2, "sFEXCoreVersion":Landroid/widget/Spinner;
    if-eqz p2, :cond_d

    const v3, 0x7f0800f3

    goto :goto_d

    :cond_d
    const v3, 0x7f0800f2

    :goto_d
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 190
    const v3, 0x7f0900ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 191
    .local v3, "sFEXCorePreset":Landroid/widget/Spinner;
    move-object/from16 v16, v1

    if-eqz p2, :cond_e

    const v1, 0x7f0800f3

    goto :goto_e

    :cond_e
    const v1, 0x7f0800f2

    .end local v1    # "sScreenSize":Landroid/widget/Spinner;
    .local v16, "sScreenSize":Landroid/widget/Spinner;
    :goto_e
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 193
    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 194
    .local v1, "sStartupSelection":Landroid/widget/Spinner;
    if-eqz p2, :cond_f

    const v0, 0x7f0800f3

    goto :goto_f

    :cond_f
    const v0, 0x7f0800f2

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 195
    return-void
.end method

.method private applyDynamicStylesRecursively(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isDarkMode"    # Z

    .line 198
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 199
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 200
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 202
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lcom/winlator/cmod/ContainerDetailFragment;->applyDynamicStylesRecursively(Landroid/view/View;Z)V

    .line 200
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 204
    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 205
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 206
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desktop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_2

    const v2, 0x7f110101

    goto :goto_1

    :cond_2
    const v2, 0x7f110100

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3

    .line 204
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_3
    :goto_2
    nop

    .line 210
    :cond_4
    :goto_3
    return-void
.end method

.method private static applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "isDarkMode"    # Z

    .line 125
    if-eqz p1, :cond_0

    .line 127
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    const v0, 0x7f0600dd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    const v0, 0x7f0600dc

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    :goto_0
    return-void
.end method

.method private createDrivesTab(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 902
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 904
    .local v7, "context":Landroid/content/Context;
    const v0, 0x7f09009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 905
    .local v8, "parent":Landroid/widget/LinearLayout;
    const v0, 0x7f09013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 906
    .local v9, "emptyTextView":Landroid/view/View;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 907
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getDrives()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/cmod/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    :goto_0
    move-object v11, v0

    .line 908
    .local v11, "drives":Ljava/lang/String;
    const/16 v0, 0x1a

    new-array v12, v0, [Ljava/lang/String;

    .line 909
    .local v12, "driveLetters":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, v12

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x44

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 911
    .end local v0    # "i":I
    :cond_1
    new-instance v13, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda9;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v10

    move-object v3, v8

    move-object v4, v7

    move-object v5, v12

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/content/Context;[Ljava/lang/String;Landroid/view/View;)V

    .line 949
    .local v0, "addItem":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<[Ljava/lang/String;>;"
    invoke-static {v11}, Lcom/winlator/cmod/container/Container;->drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .local v2, "drive":[Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .end local v2    # "drive":[Ljava/lang/String;
    goto :goto_2

    .line 951
    :cond_2
    const v1, 0x7f090006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, v8, v12, v0}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda10;-><init>(Landroid/widget/LinearLayout;[Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 958
    :cond_3
    return-void
.end method

.method private createEnvVarsTab(Landroid/view/View;)Lcom/winlator/cmod/widget/EnvVarsView;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 876
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 877
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f090082

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/widget/EnvVarsView;

    .line 880
    .local v1, "envVarsView":Lcom/winlator/cmod/widget/EnvVarsView;
    sget-boolean v2, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/EnvVarsView;->setDarkMode(Z)V

    .line 882
    new-instance v2, Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getEnvVars()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "WRAPPER_MAX_IMAGE_COUNT=0 ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform,sysmem DXVK_HUD=version,fps,api,scale=1.0,devinfo"

    :goto_0
    invoke-direct {v2, v3}, Lcom/winlator/cmod/core/EnvVars;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/EnvVarsView;->setEnvVars(Lcom/winlator/cmod/core/EnvVars;)V

    .line 883
    const v2, 0x7f090008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    return-object v1
.end method

.method public static createWinComponentsTab(Landroid/view/View;Ljava/lang/String;)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "wincomponents"    # Ljava/lang/String;

    .line 828
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 829
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 830
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0900a6

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 831
    .local v2, "tabView":Landroid/view/ViewGroup;
    const v3, 0x7f0900ab

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 832
    .local v3, "directxSectionView":Landroid/view/ViewGroup;
    const v4, 0x7f0900ac

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 834
    .local v4, "generalSectionView":Landroid/view/ViewGroup;
    new-instance v5, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v5, p1}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/winlator/cmod/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 835
    .local v6, "wincomponent":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v8, v6, v7

    const-string v9, "direct"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    goto :goto_1

    :cond_0
    move-object v8, v4

    .line 836
    .local v8, "parent":Landroid/view/ViewGroup;
    :goto_1
    const v9, 0x7f0c00c5

    invoke-virtual {v1, v9, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 837
    .local v9, "itemView":Landroid/view/View;
    const v10, 0x7f09017c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aget-object v11, v6, v7

    invoke-static {v0, v11}, Lcom/winlator/cmod/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    const v10, 0x7f09011c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 839
    .local v10, "spinner":Landroid/widget/Spinner;
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 840
    aget-object v7, v6, v7

    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 843
    sget-boolean v7, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    if-eqz v7, :cond_1

    const v7, 0x7f0800f3

    goto :goto_2

    :cond_1
    const v7, 0x7f0800f2

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 845
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 847
    .end local v6    # "wincomponent":[Ljava/lang/String;
    .end local v8    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "itemView":Landroid/view/View;
    .end local v10    # "spinner":Landroid/widget/Spinner;
    goto :goto_0

    .line 848
    :cond_2
    return-void
.end method

.method public static createWinComponentsTabFromShortcut(Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "dialog"    # Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wincomponents"    # Ljava/lang/String;
    .param p3, "isDarkMode"    # Z

    .line 851
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 852
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 853
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0900a6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 854
    .local v2, "tabView":Landroid/view/ViewGroup;
    const v3, 0x7f0900ab

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 855
    .local v3, "directxSectionView":Landroid/view/ViewGroup;
    const v4, 0x7f0900ac

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 857
    .local v4, "generalSectionView":Landroid/view/ViewGroup;
    new-instance v5, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v5, p2}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/winlator/cmod/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 858
    .local v6, "wincomponent":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v8, v6, v7

    const-string v9, "direct"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    goto :goto_1

    :cond_0
    move-object v8, v4

    .line 859
    .local v8, "parent":Landroid/view/ViewGroup;
    :goto_1
    const v9, 0x7f0c00c5

    invoke-virtual {v1, v9, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 860
    .local v9, "itemView":Landroid/view/View;
    const v10, 0x7f09017c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aget-object v11, v6, v7

    invoke-static {v0, v11}, Lcom/winlator/cmod/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    const v10, 0x7f09011c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 862
    .local v10, "spinner":Landroid/widget/Spinner;
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 863
    aget-object v7, v6, v7

    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 866
    if-eqz p3, :cond_1

    const v7, 0x7f0800f3

    goto :goto_2

    :cond_1
    const v7, 0x7f0800f2

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 868
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 869
    .end local v6    # "wincomponent":[Ljava/lang/String;
    .end local v8    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "itemView":Landroid/view/View;
    .end local v10    # "spinner":Landroid/widget/Spinner;
    goto :goto_0

    .line 872
    :cond_2
    invoke-virtual {p0, p3}, Lcom/winlator/cmod/contentdialog/ShortcutSettingsDialog;->onWinComponentsViewsAdded(Z)V

    .line 873
    return-void
.end method

.method private createWineConfigurationTab(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 631
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 633
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getDesktopTheme()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/winlator/cmod/core/WineThemeManager;->DEFAULT_DESKTOP_THEME:Ljava/lang/String;

    :goto_0
    invoke-direct {v1, v2}, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;-><init>(Ljava/lang/String;)V

    .line 634
    .local v1, "desktopTheme":Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;
    const v2, 0x7f0900eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 635
    .local v2, "sDesktopTheme":Landroid/widget/Spinner;
    iget-object v3, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->theme:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    invoke-virtual {v3}, Lcom/winlator/cmod/core/WineThemeManager$Theme;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 636
    const v3, 0x7f090088

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/widget/ImagePickerView;

    .line 637
    .local v3, "ipvDesktopBackgroundImage":Lcom/winlator/cmod/widget/ImagePickerView;
    const v4, 0x7f090070

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/widget/ColorPickerView;

    .line 638
    .local v4, "cpvDesktopBackgroundColor":Lcom/winlator/cmod/widget/ColorPickerView;
    iget v5, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/widget/ColorPickerView;->setColor(I)V

    .line 640
    const v5, 0x7f0900ea

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 641
    .local v5, "sDesktopBackgroundType":Landroid/widget/Spinner;
    new-instance v6, Lcom/winlator/cmod/ContainerDetailFragment$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/winlator/cmod/ContainerDetailFragment$1;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;Lcom/winlator/cmod/widget/ImagePickerView;Lcom/winlator/cmod/widget/ColorPickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 659
    iget-object v6, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    invoke-virtual {v6}, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 661
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v6}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 662
    .local v6, "containerDir":Ljava/io/File;
    :goto_1
    new-instance v7, Ljava/io/File;

    const-string v8, ".wine/user.reg"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 664
    .local v7, "userRegFile":Ljava/io/File;
    new-instance v8, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v8, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 665
    .local v8, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    const/4 v9, 0x3

    :try_start_0
    new-array v9, v9, [Ljava/lang/String;

    const v10, 0x7f100088

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f1000b4

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f1000f4

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 666
    .local v9, "mouseWarpOverrideList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v10, 0x7f090101

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 667
    .local v10, "sMouseWarpOverride":Landroid/widget/Spinner;
    new-instance v11, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-direct {v11, v0, v12, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 668
    const-string v11, "Software\\Wine\\DirectInput"

    const-string v12, "MouseWarpOverride"

    const-string v13, "disable"

    invoke-virtual {v8, v11, v12, v13}, Lcom/winlator/cmod/core/WineRegistryEditor;->getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    nop

    .end local v9    # "mouseWarpOverrideList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "sMouseWarpOverride":Landroid/widget/Spinner;
    invoke-virtual {v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 670
    .end local v8    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    return-void

    .line 664
    .restart local v8    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_0
    move-exception v9

    :try_start_1
    invoke-virtual {v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v9
.end method

.method private getDesktopTheme(Landroid/view/View;)Ljava/lang/String;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 706
    const v0, 0x7f0900ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 707
    .local v0, "sDesktopBackgroundType":Landroid/widget/Spinner;
    invoke-static {}, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->values()[Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    .line 708
    .local v1, "type":Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;
    const v2, 0x7f0900eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 709
    .local v2, "sDesktopTheme":Landroid/widget/Spinner;
    const v3, 0x7f090070

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/widget/ColorPickerView;

    .line 710
    .local v3, "cpvDesktopBackground":Lcom/winlator/cmod/widget/ColorPickerView;
    invoke-static {}, Lcom/winlator/cmod/core/WineThemeManager$Theme;->values()[Lcom/winlator/cmod/core/WineThemeManager$Theme;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    aget-object v4, v4, v5

    .line 712
    .local v4, "theme":Lcom/winlator/cmod/core/WineThemeManager$Theme;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/winlator/cmod/widget/ColorPickerView;->getColorAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, "desktopTheme":Ljava/lang/String;
    sget-object v7, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    if-ne v1, v7, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/WineThemeManager;->getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 715
    .local v7, "userWallpaperFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v8, "0"

    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 717
    .end local v7    # "userWallpaperFile":Ljava/io/File;
    :cond_1
    return-object v5
.end method

.method private getDrives(Landroid/view/View;)Ljava/lang/String;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 888
    const v0, 0x7f09009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 889
    .local v0, "parent":Landroid/widget/LinearLayout;
    const-string v1, ""

    .line 891
    .local v1, "drives":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 892
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 893
    .local v3, "child":Landroid/view/View;
    const v4, 0x7f09011c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 894
    .local v4, "spinner":Landroid/widget/Spinner;
    const v5, 0x7f090081

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 895
    .local v5, "editText":Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 896
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "spinner":Landroid/widget/Spinner;
    .end local v5    # "editText":Landroid/widget/EditText;
    .end local v6    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 898
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getScreenSize(Landroid/view/View;)Ljava/lang/String;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .line 690
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 691
    .local v0, "sScreenSize":Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "value":Ljava/lang/String;
    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    const-string v1, "1280x720"

    .line 694
    const v2, 0x7f09007c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "strWidth":Ljava/lang/String;
    const v3, 0x7f09007b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "strHeight":Ljava/lang/String;
    const-string v4, "[0-9]+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 698
    .local v4, "width":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 699
    .local v5, "height":I
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_0

    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 702
    .end local v2    # "strWidth":Ljava/lang/String;
    .end local v3    # "strHeight":Ljava/lang/String;
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_0
    invoke-static {v1}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWinComponents(Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 815
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 816
    .local v0, "parent":Landroid/view/ViewGroup;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const-class v2, Landroid/widget/Spinner;

    invoke-static {v0, v2, v1}, Lcom/winlator/cmod/core/AppUtils;->findViewsWithClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 818
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 820
    .local v2, "wincomponents":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 821
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 822
    .local v4, "spinner":Landroid/widget/Spinner;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 820
    .end local v4    # "spinner":Landroid/widget/Spinner;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 824
    .end local v3    # "i":I
    :cond_0
    const-string v3, ","

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$createDrivesTab$16([Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .param p0, "drive"    # [Ljava/lang/String;
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "path"    # Ljava/lang/String;

    .line 932
    const/4 v0, 0x1

    aput-object p2, p0, v0

    .line 933
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 934
    return-void
.end method

.method private synthetic lambda$createDrivesTab$17([Ljava/lang/String;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "drive"    # [Ljava/lang/String;
    .param p2, "editText"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 931
    new-instance v0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda5;-><init>([Ljava/lang/String;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment;->openDirectoryCallback:Lcom/winlator/cmod/core/Callback;

    .line 935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 937
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 938
    return-void
.end method

.method static synthetic lambda$createDrivesTab$18(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "parent"    # Landroid/widget/LinearLayout;
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "emptyTextView"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 941
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 942
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 943
    :cond_0
    return-void
.end method

.method private synthetic lambda$createDrivesTab$19(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/content/Context;[Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/widget/LinearLayout;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "driveLetters"    # [Ljava/lang/String;
    .param p5, "emptyTextView"    # Landroid/view/View;
    .param p6, "drive"    # [Ljava/lang/String;

    .line 912
    const v0, 0x7f0c004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 913
    .local v0, "itemView":Landroid/view/View;
    const v2, 0x7f09011c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 914
    .local v2, "spinner":Landroid/widget/Spinner;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, p3, v4, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p6, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 918
    sget-boolean v1, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800f3

    goto :goto_0

    :cond_0
    const v1, 0x7f0800f2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 920
    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 921
    .local v1, "editText":Landroid/widget/EditText;
    const/4 v3, 0x1

    aget-object v3, p6, v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 924
    invoke-static {v1}, Lcom/winlator/cmod/ContainerDetailFragment;->applyDarkThemeToEditText(Landroid/widget/EditText;)V

    .line 927
    const v3, 0x7f090040

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 928
    .local v4, "btSearch":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/winlator/cmod/ContainerDetailFragment;->applyDarkThemeToButton(Landroid/view/View;)V

    .line 930
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, p6, v1}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;[Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    const v3, 0x7f090037

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda8;

    invoke-direct {v5, p2, v0, p5}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda8;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 947
    const/16 v3, 0x8

    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 948
    return-void
.end method

.method static synthetic lambda$createDrivesTab$20(Landroid/widget/LinearLayout;[Ljava/lang/String;Lcom/winlator/cmod/core/Callback;Landroid/view/View;)V
    .locals 4
    .param p0, "parent"    # Landroid/widget/LinearLayout;
    .param p1, "driveLetters"    # [Ljava/lang/String;
    .param p2, "addItem"    # Lcom/winlator/cmod/core/Callback;
    .param p3, "v"    # Landroid/view/View;

    .line 952
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    return-void

    .line 953
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "nextDriveLetter":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v3, ""

    aput-object v3, v2, v1

    invoke-interface {p2, v2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method static synthetic lambda$createEnvVarsTab$15(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "envVarsView"    # Lcom/winlator/cmod/widget/EnvVarsView;
    .param p2, "v"    # Landroid/view/View;

    .line 883
    new-instance v0, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;-><init>(Landroid/content/Context;Lcom/winlator/cmod/widget/EnvVarsView;)V

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/AddEnvVarDialog;->show()V

    return-void
.end method

.method static synthetic lambda$loadGraphicsDriverSpinner$13(Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p0, "vGraphicsDriverConfig"    # Landroid/view/View;
    .param p1, "graphicsDriver"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 764
    new-instance v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->show()V

    .line 765
    return-void
.end method

.method static synthetic lambda$loadGraphicsDriverSpinner$14(Landroid/widget/Spinner;Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/String;Landroid/view/View;)V
    .locals 7
    .param p0, "sGraphicsDriver"    # Landroid/widget/Spinner;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sDXWrapper"    # Landroid/widget/Spinner;
    .param p3, "selectedDXWrapper"    # Ljava/lang/String;
    .param p4, "vGraphicsDriverConfig"    # Landroid/view/View;

    .line 753
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "graphicsDriver":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 758
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 760
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, p1, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 761
    invoke-static {p2, p3}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 763
    new-instance v2, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p4, v0}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda11;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 767
    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 329
    const v0, 0x7f1000af

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 350
    invoke-static {p0, p1}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->show(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$10(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "etLC_ALL"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 421
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 422
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "lcs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 424
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    aget-object v4, v1, v2

    const/4 v5, 0x0

    invoke-interface {v3, v5, v2, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda4;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 429
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 430
    return-void
.end method

.method private synthetic lambda$onCreateView$11(Landroid/view/View;Lcom/winlator/cmod/container/Container;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "container"    # Lcom/winlator/cmod/container/Container;

    .line 607
    if-eqz p2, :cond_0

    .line 608
    sput-object p2, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    .line 609
    invoke-direct {p0, p1}, Lcom/winlator/cmod/ContainerDetailFragment;->saveWineRegistryKeys(Landroid/view/View;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->close()V

    .line 612
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 613
    return-void
.end method

.method private synthetic lambda$onCreateView$12(Landroid/widget/EditText;Landroid/view/View;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/CPUListView;Lcom/winlator/cmod/widget/CPUListView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 36
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "envVarsView"    # Lcom/winlator/cmod/widget/EnvVarsView;
    .param p4, "sGraphicsDriver"    # Landroid/widget/Spinner;
    .param p5, "vGraphicsDriverConfig"    # Landroid/view/View;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "sDXWrapper"    # Landroid/widget/Spinner;
    .param p8, "vDXWrapperConfig"    # Landroid/view/View;
    .param p9, "sAudioDriver"    # Landroid/widget/Spinner;
    .param p10, "sEmulator"    # Landroid/widget/Spinner;
    .param p11, "cbShowFPS"    # Landroid/widget/CheckBox;
    .param p12, "vFPSCounterConfig"    # Landroid/view/View;
    .param p13, "cbFullscreenStretched"    # Landroid/widget/CheckBox;
    .param p14, "cbExclusiveXInput"    # Landroid/widget/CheckBox;
    .param p15, "cpuListView"    # Lcom/winlator/cmod/widget/CPUListView;
    .param p16, "cpuListViewWoW64"    # Lcom/winlator/cmod/widget/CPUListView;
    .param p17, "sStartupSelection"    # Landroid/widget/Spinner;
    .param p18, "sBox64Version"    # Landroid/widget/Spinner;
    .param p19, "sFEXCoreVersion"    # Landroid/widget/Spinner;
    .param p20, "sFEXCorePreset"    # Landroid/widget/Spinner;
    .param p21, "sBox64Preset"    # Landroid/widget/Spinner;
    .param p22, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p23, "etLC_ALL"    # Landroid/widget/EditText;
    .param p24, "sPrimaryController"    # Landroid/widget/Spinner;
    .param p25, "cbEnableXInput"    # Landroid/widget/CheckBox;
    .param p26, "cbEnableDInput"    # Landroid/widget/CheckBox;
    .param p27, "sWineVersion"    # Landroid/widget/Spinner;
    .param p28, "v"    # Landroid/view/View;

    .line 489
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "turnip25.1.0"

    const-string v3, "version"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "name":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/winlator/cmod/ContainerDetailFragment;->getScreenSize(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, "screenSize":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/winlator/cmod/widget/EnvVarsView;->getEnvVars()Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, "envVars":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 493
    .local v7, "graphicsDriver":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, "graphicsDriverConfig":Ljava/lang/String;
    invoke-static {v8}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 495
    .local v9, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 496
    move-object/from16 v10, p6

    invoke-static {v0, v10}, Lcom/winlator/cmod/core/GPUInformation;->isDriverSupported(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "System"

    :goto_0
    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-static {v9}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->toGraphicsDriverConfig(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 495
    :cond_1
    move-object/from16 v10, p6

    .line 499
    :goto_1
    invoke-virtual/range {p7 .. p7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "dxwrapper":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "dxwrapperConfig":Ljava/lang/String;
    invoke-virtual/range {p9 .. p9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 502
    .local v11, "audioDriver":Ljava/lang/String;
    invoke-virtual/range {p10 .. p10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 503
    .local v12, "emulator":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/winlator/cmod/ContainerDetailFragment;->getWinComponents(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    .line 504
    .local v13, "wincomponents":Ljava/lang/String;
    invoke-direct {v1, v2}, Lcom/winlator/cmod/ContainerDetailFragment;->getDrives(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    .line 505
    .local v14, "drives":Ljava/lang/String;
    invoke-virtual/range {p11 .. p11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v15

    .line 506
    .local v15, "showFPS":Z
    invoke-virtual/range {p12 .. p12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 507
    .local v17, "fpsCounterConfig":Ljava/lang/String;
    invoke-virtual/range {p13 .. p13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    move/from16 v18, v16

    .line 508
    .local v18, "fullscreenStretched":Z
    invoke-virtual/range {p14 .. p14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    move/from16 v19, v16

    .line 509
    .local v19, "exclusiveXInput":Z
    invoke-virtual/range {p15 .. p15}, Lcom/winlator/cmod/widget/CPUListView;->getCheckedCPUListAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    .line 510
    .local v20, "cpuList":Ljava/lang/String;
    invoke-virtual/range {p16 .. p16}, Lcom/winlator/cmod/widget/CPUListView;->getCheckedCPUListAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v16

    .line 511
    .local v21, "cpuListWoW64":Ljava/lang/String;
    move-object/from16 v16, v9

    .end local v9    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v16, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p17 .. p17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    int-to-byte v9, v9

    .line 512
    .local v9, "startupSelection":B
    invoke-virtual/range {p18 .. p18}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 513
    .local v23, "box64Version":Ljava/lang/String;
    invoke-virtual/range {p19 .. p19}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v24, v22

    .line 514
    .local v24, "fexcoreVersion":Ljava/lang/String;
    invoke-static/range {p20 .. p20}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v25, v22

    .line 515
    .local v25, "fexcorePreset":Ljava/lang/String;
    invoke-static/range {p21 .. p21}, Lcom/winlator/cmod/box64/Box64PresetManager;->getSpinnerSelectedId(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v26, v22

    .line 516
    .local v26, "box64Preset":Ljava/lang/String;
    invoke-direct {v1, v2}, Lcom/winlator/cmod/ContainerDetailFragment;->getDesktopTheme(Landroid/view/View;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v27, v22

    .line 518
    .local v27, "desktopTheme":Ljava/lang/String;
    invoke-virtual/range {p22 .. p22}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v22

    if-nez v22, :cond_2

    const-string v22, ""

    goto :goto_2

    :cond_2
    invoke-virtual/range {p22 .. p22}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_2
    move-object/from16 v28, v22

    .line 519
    .local v28, "midiSoundFont":Ljava/lang/String;
    invoke-virtual/range {p23 .. p23}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v29, v22

    .line 520
    .local v29, "lc_all":Ljava/lang/String;
    invoke-virtual/range {p24 .. p24}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v22

    move/from16 v30, v22

    .line 521
    .local v30, "primaryController":I
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/ContainerDetailFragment;->getControllerMapping(Landroid/view/View;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v31, v22

    .line 524
    .local v31, "controllerMapping":Ljava/lang/String;
    const/16 v22, 0x0

    .line 525
    .local v22, "finalInputType":I
    invoke-virtual/range {p25 .. p25}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v32

    const/16 v33, 0x0

    if-eqz v32, :cond_3

    const/16 v32, 0x4

    goto :goto_3

    :cond_3
    move/from16 v32, v33

    :goto_3
    or-int v22, v22, v32

    .line 526
    invoke-virtual/range {p26 .. p26}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v32

    if-eqz v32, :cond_4

    const/16 v33, 0x8

    :cond_4
    or-int v10, v22, v33

    .line 532
    .end local v22    # "finalInputType":I
    .local v10, "finalInputType":I
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v22
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v22, :cond_5

    .line 534
    :try_start_1
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/container/Container;->setName(Ljava/lang/String;)V

    .line 535
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v5}, Lcom/winlator/cmod/container/Container;->setScreenSize(Ljava/lang/String;)V

    .line 536
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v6}, Lcom/winlator/cmod/container/Container;->setEnvVars(Ljava/lang/String;)V

    .line 537
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v22, v6

    move-object/from16 v6, v20

    .end local v20    # "cpuList":Ljava/lang/String;
    .local v6, "cpuList":Ljava/lang/String;
    .local v22, "envVars":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/winlator/cmod/container/Container;->setCPUList(Ljava/lang/String;)V

    .line 538
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v20, v6

    move-object/from16 v6, v21

    .end local v21    # "cpuListWoW64":Ljava/lang/String;
    .local v6, "cpuListWoW64":Ljava/lang/String;
    .restart local v20    # "cpuList":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/winlator/cmod/container/Container;->setCPUListWoW64(Ljava/lang/String;)V

    .line 539
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/container/Container;->setGraphicsDriver(Ljava/lang/String;)V

    .line 540
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v8}, Lcom/winlator/cmod/container/Container;->setGraphicsDriverConfig(Ljava/lang/String;)V

    .line 541
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/container/Container;->setDXWrapper(Ljava/lang/String;)V

    .line 542
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/container/Container;->setDXWrapperConfig(Ljava/lang/String;)V

    .line 543
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v11}, Lcom/winlator/cmod/container/Container;->setAudioDriver(Ljava/lang/String;)V

    .line 544
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v12}, Lcom/winlator/cmod/container/Container;->setEmulator(Ljava/lang/String;)V

    .line 545
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v13}, Lcom/winlator/cmod/container/Container;->setWinComponents(Ljava/lang/String;)V

    .line 546
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v14}, Lcom/winlator/cmod/container/Container;->setDrives(Ljava/lang/String;)V

    .line 547
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v15}, Lcom/winlator/cmod/container/Container;->setShowFPS(Z)V

    .line 548
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move/from16 v21, v15

    move-object/from16 v15, v17

    .end local v17    # "fpsCounterConfig":Ljava/lang/String;
    .local v15, "fpsCounterConfig":Ljava/lang/String;
    .local v21, "showFPS":Z
    invoke-virtual {v1, v15}, Lcom/winlator/cmod/container/Container;->setFPSCounterConfig(Ljava/lang/String;)V

    .line 549
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v17, v15

    move/from16 v15, v18

    .end local v18    # "fullscreenStretched":Z
    .local v15, "fullscreenStretched":Z
    .restart local v17    # "fpsCounterConfig":Ljava/lang/String;
    invoke-virtual {v1, v15}, Lcom/winlator/cmod/container/Container;->setFullscreenStretched(Z)V

    .line 550
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move/from16 v18, v15

    move/from16 v15, v19

    .end local v19    # "exclusiveXInput":Z
    .local v15, "exclusiveXInput":Z
    .restart local v18    # "fullscreenStretched":Z
    invoke-virtual {v1, v15}, Lcom/winlator/cmod/container/Container;->setExclusiveXInput(Z)V

    .line 551
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v10}, Lcom/winlator/cmod/container/Container;->setInputType(I)V

    .line 552
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setStartupSelection(B)V

    .line 553
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move/from16 v19, v9

    move-object/from16 v9, v23

    .end local v23    # "box64Version":Ljava/lang/String;
    .local v9, "box64Version":Ljava/lang/String;
    .local v19, "startupSelection":B
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setBox64Version(Ljava/lang/String;)V

    .line 554
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v23, v9

    move-object/from16 v9, v26

    .end local v26    # "box64Preset":Ljava/lang/String;
    .local v9, "box64Preset":Ljava/lang/String;
    .restart local v23    # "box64Version":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setBox64Preset(Ljava/lang/String;)V

    .line 555
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v26, v9

    move-object/from16 v9, v24

    .end local v24    # "fexcoreVersion":Ljava/lang/String;
    .local v9, "fexcoreVersion":Ljava/lang/String;
    .restart local v26    # "box64Preset":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setFEXCoreVersion(Ljava/lang/String;)V

    .line 556
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v24, v9

    move-object/from16 v9, v25

    .end local v25    # "fexcorePreset":Ljava/lang/String;
    .local v9, "fexcorePreset":Ljava/lang/String;
    .restart local v24    # "fexcoreVersion":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setFEXCorePreset(Ljava/lang/String;)V

    .line 557
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v25, v9

    move-object/from16 v9, v27

    .end local v27    # "desktopTheme":Ljava/lang/String;
    .local v9, "desktopTheme":Ljava/lang/String;
    .restart local v25    # "fexcorePreset":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setDesktopTheme(Ljava/lang/String;)V

    .line 558
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v27, v9

    move-object/from16 v9, v28

    .end local v28    # "midiSoundFont":Ljava/lang/String;
    .local v9, "midiSoundFont":Ljava/lang/String;
    .restart local v27    # "desktopTheme":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setMidiSoundFont(Ljava/lang/String;)V

    .line 559
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v28, v9

    move-object/from16 v9, v29

    .end local v29    # "lc_all":Ljava/lang/String;
    .local v9, "lc_all":Ljava/lang/String;
    .restart local v28    # "midiSoundFont":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setLC_ALL(Ljava/lang/String;)V

    .line 560
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v29, v9

    move/from16 v9, v30

    .end local v30    # "primaryController":I
    .local v9, "primaryController":I
    .restart local v29    # "lc_all":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setPrimaryController(I)V

    .line 561
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move/from16 v30, v9

    move-object/from16 v9, v31

    .end local v31    # "controllerMapping":Ljava/lang/String;
    .local v9, "controllerMapping":Ljava/lang/String;
    .restart local v30    # "primaryController":I
    invoke-virtual {v1, v9}, Lcom/winlator/cmod/container/Container;->setControllerMapping(Ljava/lang/String;)V

    .line 562
    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->saveData()V

    .line 563
    move-object/from16 v1, p0

    invoke-direct {v1, v2}, Lcom/winlator/cmod/ContainerDetailFragment;->saveWineRegistryKeys(Landroid/view/View;)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "Settings saved!"

    invoke-static {v2, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    goto/16 :goto_4

    .line 568
    .end local v22    # "envVars":Ljava/lang/String;
    .local v6, "envVars":Ljava/lang/String;
    .local v9, "startupSelection":B
    .local v15, "showFPS":Z
    .local v19, "exclusiveXInput":Z
    .local v21, "cpuListWoW64":Ljava/lang/String;
    .restart local v31    # "controllerMapping":Ljava/lang/String;
    :cond_5
    move-object/from16 v22, v6

    move-object/from16 v6, v21

    move/from16 v21, v15

    move/from16 v15, v19

    move/from16 v19, v9

    move-object/from16 v9, v31

    .end local v31    # "controllerMapping":Ljava/lang/String;
    .local v6, "cpuListWoW64":Ljava/lang/String;
    .local v9, "controllerMapping":Ljava/lang/String;
    .local v15, "exclusiveXInput":Z
    .local v19, "startupSelection":B
    .local v21, "showFPS":Z
    .restart local v22    # "envVars":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 569
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "name"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v2, "screenSize"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v2, "envVars"

    move-object/from16 v31, v4

    move-object/from16 v4, v22

    .end local v22    # "envVars":Ljava/lang/String;
    .local v4, "envVars":Ljava/lang/String;
    .local v31, "name":Ljava/lang/String;
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v2, "cpuList"

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    .end local v20    # "cpuList":Ljava/lang/String;
    .local v4, "cpuList":Ljava/lang/String;
    .restart local v22    # "envVars":Ljava/lang/String;
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string v2, "cpuListWoW64"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string v2, "graphicsDriver"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string v2, "graphicsDriverConfig"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string v2, "dxwrapper"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v2, "dxwrapperConfig"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v2, "audioDriver"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v2, "emulator"

    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v2, "wincomponents"

    invoke-virtual {v1, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    const-string v2, "drives"

    invoke-virtual {v1, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string v2, "showFPS"

    move-object/from16 v20, v0

    move/from16 v0, v21

    .end local v21    # "showFPS":Z
    .local v0, "showFPS":Z
    .local v20, "dxwrapper":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 583
    const-string v2, "fpsCounterConfig"

    move/from16 v21, v0

    move-object/from16 v0, v17

    .end local v17    # "fpsCounterConfig":Ljava/lang/String;
    .local v0, "fpsCounterConfig":Ljava/lang/String;
    .restart local v21    # "showFPS":Z
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v2, "fullscreenStretched"

    move-object/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "fullscreenStretched":Z
    .local v0, "fullscreenStretched":Z
    .restart local v17    # "fpsCounterConfig":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 585
    const-string v2, "exclusiveXInput"

    invoke-virtual {v1, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 586
    const-string v2, "inputType"

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    const-string v2, "startupSelection"

    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "startupSelection":B
    .local v0, "startupSelection":B
    .restart local v18    # "fullscreenStretched":Z
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    const-string v2, "box64Version"

    move/from16 v19, v0

    move-object/from16 v0, v23

    .end local v23    # "box64Version":Ljava/lang/String;
    .local v0, "box64Version":Ljava/lang/String;
    .restart local v19    # "startupSelection":B
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string v2, "box64Preset"

    move-object/from16 v23, v0

    move-object/from16 v0, v26

    .end local v26    # "box64Preset":Ljava/lang/String;
    .local v0, "box64Preset":Ljava/lang/String;
    .restart local v23    # "box64Version":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const-string v2, "fexcoreVersion"

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    .end local v24    # "fexcoreVersion":Ljava/lang/String;
    .local v0, "fexcoreVersion":Ljava/lang/String;
    .restart local v26    # "box64Preset":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    const-string v2, "fexcorePreset"

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    .end local v25    # "fexcorePreset":Ljava/lang/String;
    .local v0, "fexcorePreset":Ljava/lang/String;
    .restart local v24    # "fexcoreVersion":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    const-string v2, "desktopTheme"

    move-object/from16 v25, v0

    move-object/from16 v0, v27

    .end local v27    # "desktopTheme":Ljava/lang/String;
    .local v0, "desktopTheme":Ljava/lang/String;
    .restart local v25    # "fexcorePreset":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    const-string v2, "wineVersion"

    invoke-virtual/range {p27 .. p27}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v32, v0

    .end local v0    # "desktopTheme":Ljava/lang/String;
    .local v32, "desktopTheme":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    const-string v0, "midiSoundFont"

    move-object/from16 v2, v28

    .end local v28    # "midiSoundFont":Ljava/lang/String;
    .local v2, "midiSoundFont":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    const-string v0, "lc_all"

    move-object/from16 v28, v2

    move-object/from16 v2, v29

    .end local v29    # "lc_all":Ljava/lang/String;
    .local v2, "lc_all":Ljava/lang/String;
    .restart local v28    # "midiSoundFont":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    const-string v0, "primaryController"

    move-object/from16 v29, v2

    move/from16 v2, v30

    .end local v30    # "primaryController":I
    .local v2, "primaryController":I
    .restart local v29    # "lc_all":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    const-string v0, "controllerMapping"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 599
    move/from16 v30, v2

    move-object/from16 v2, p0

    .end local v2    # "primaryController":I
    .restart local v30    # "primaryController":I
    :try_start_2
    iget-object v0, v2, Lcom/winlator/cmod/ContainerDetailFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    move-object/from16 v27, v3

    .end local v3    # "dxwrapperConfig":Ljava/lang/String;
    .local v27, "dxwrapperConfig":Ljava/lang/String;
    const v3, 0x7f100076

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 602
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    move-object/from16 v33, v4

    .end local v4    # "cpuList":Ljava/lang/String;
    .local v33, "cpuList":Ljava/lang/String;
    const-string v4, "imagefs"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 603
    .local v0, "imageFsRoot":Ljava/io/File;
    invoke-static {v0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Ljava/io/File;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v3

    iput-object v3, v2, Lcom/winlator/cmod/ContainerDetailFragment;->imageFs:Lcom/winlator/cmod/xenvironment/ImageFs;

    .line 606
    iget-object v3, v2, Lcom/winlator/cmod/ContainerDetailFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    iget-object v4, v2, Lcom/winlator/cmod/ContainerDetailFragment;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    move-object/from16 v34, v0

    .end local v0    # "imageFsRoot":Ljava/io/File;
    .local v34, "imageFsRoot":Ljava/io/File;
    new-instance v0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda12;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v35, v5

    move-object/from16 v5, p2

    .end local v5    # "screenSize":Ljava/lang/String;
    .local v35, "screenSize":Ljava/lang/String;
    :try_start_3
    invoke-direct {v0, v2, v5}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/view/View;)V

    invoke-virtual {v3, v1, v4, v0}, Lcom/winlator/cmod/container/ContainerManager;->createContainerAsync(Lorg/json/JSONObject;Lcom/winlator/cmod/contents/ContentsManager;Lcom/winlator/cmod/core/Callback;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 617
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v6    # "cpuListWoW64":Ljava/lang/String;
    .end local v7    # "graphicsDriver":Ljava/lang/String;
    .end local v8    # "graphicsDriverConfig":Ljava/lang/String;
    .end local v9    # "controllerMapping":Ljava/lang/String;
    .end local v10    # "finalInputType":I
    .end local v11    # "audioDriver":Ljava/lang/String;
    .end local v12    # "emulator":Ljava/lang/String;
    .end local v13    # "wincomponents":Ljava/lang/String;
    .end local v14    # "drives":Ljava/lang/String;
    .end local v15    # "exclusiveXInput":Z
    .end local v16    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "fpsCounterConfig":Ljava/lang/String;
    .end local v18    # "fullscreenStretched":Z
    .end local v19    # "startupSelection":B
    .end local v20    # "dxwrapper":Ljava/lang/String;
    .end local v21    # "showFPS":Z
    .end local v22    # "envVars":Ljava/lang/String;
    .end local v23    # "box64Version":Ljava/lang/String;
    .end local v24    # "fexcoreVersion":Ljava/lang/String;
    .end local v25    # "fexcorePreset":Ljava/lang/String;
    .end local v26    # "box64Preset":Ljava/lang/String;
    .end local v27    # "dxwrapperConfig":Ljava/lang/String;
    .end local v28    # "midiSoundFont":Ljava/lang/String;
    .end local v29    # "lc_all":Ljava/lang/String;
    .end local v30    # "primaryController":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "desktopTheme":Ljava/lang/String;
    .end local v33    # "cpuList":Ljava/lang/String;
    .end local v34    # "imageFsRoot":Ljava/io/File;
    .end local v35    # "screenSize":Ljava/lang/String;
    :goto_4
    goto :goto_7

    .line 615
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object/from16 v5, p2

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    .line 616
    .local v0, "e":Lorg/json/JSONException;
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 618
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_7
    return-void
.end method

.method static synthetic lambda$onCreateView$2(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 356
    const v0, 0x7f1000c2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->alert(Landroid/content/Context;ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onCreateView$3(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "cbExclusiveXInput"    # Landroid/widget/CheckBox;
    .param p1, "cbEnableXInput"    # Landroid/widget/CheckBox;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 373
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "cbExclusiveXInput"    # Landroid/widget/CheckBox;
    .param p1, "cbEnableDInput"    # Landroid/widget/CheckBox;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 381
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 386
    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreateView$5(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p0, "cbEnableXInput"    # Landroid/widget/CheckBox;
    .param p1, "cbEnableDInput"    # Landroid/widget/CheckBox;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 389
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 390
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 391
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 393
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 396
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 397
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 399
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$6(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 409
    const v0, 0x7f100113

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$7(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 410
    const v0, 0x7f10010f

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 411
    const v0, 0x7f100110

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$9(Landroid/widget/EditText;Landroid/view/MenuItem;)Z
    .locals 2
    .param p0, "etLC_ALL"    # Landroid/widget/EditText;
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 426
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

    .line 427
    const/4 v0, 0x1

    return v0
.end method

.method public static loadBox64VersionSpinner(Landroid/content/Context;Lcom/winlator/cmod/container/Container;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/winlator/cmod/container/Container;
    .param p2, "manager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p3, "spinner"    # Landroid/widget/Spinner;
    .param p4, "isArm64EC"    # Z

    .line 1072
    if-eqz p4, :cond_0

    .line 1073
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "originalItems":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 1075
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1077
    .end local v0    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "originalItems":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 1080
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/16 v1, 0x2d

    if-nez p4, :cond_2

    .line 1081
    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_BOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

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

    .line 1082
    .local v3, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    .line 1083
    .local v4, "entryName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1084
    .local v5, "firstDashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "firstDashIndex":I
    goto :goto_1

    :cond_1
    goto :goto_3

    .line 1087
    :cond_2
    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WOWBOX64:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

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

    .line 1088
    .restart local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    .line 1089
    .restart local v4    # "entryName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1090
    .restart local v5    # "firstDashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "firstDashIndex":I
    goto :goto_2

    .line 1093
    :cond_3
    :goto_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1094
    if-eqz p1, :cond_4

    .line 1095
    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container;->getBox64Version()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    goto :goto_4

    .line 1097
    :cond_4
    const-string v1, "0.3.7"

    invoke-static {p3, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 1098
    :goto_4
    return-void
.end method

.method private loadGPUNameSpinner(Landroid/widget/Spinner;I)V
    .locals 5
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "selectedDeviceID"    # I

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 677
    .local v1, "selectedPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/winlator/cmod/ContainerDetailFragment;->gpuCards:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 678
    iget-object v3, p0, Lcom/winlator/cmod/ContainerDetailFragment;->gpuCards:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 679
    .local v3, "item":Lorg/json/JSONObject;
    const-string v4, "deviceID"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p2, :cond_0

    move v1, v2

    .line 680
    :cond_0
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    nop

    .end local v3    # "item":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 683
    :catch_0
    move-exception v2

    :goto_1
    nop

    .line 685
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090009

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 686
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 687
    return-void
.end method

.method public static loadScreenSizeSpinner(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "selectedValue"    # Ljava/lang/String;

    .line 721
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 723
    .local v0, "sScreenSize":Landroid/widget/Spinner;
    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 724
    .local v1, "llCustomScreenSize":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/winlator/cmod/ContainerDetailFragment$2;

    invoke-direct {v2, v0, v1}, Lcom/winlator/cmod/ContainerDetailFragment$2;-><init>(Landroid/widget/Spinner;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 736
    invoke-static {v0, p1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    move-result v2

    .line 737
    .local v2, "found":Z
    if-nez v2, :cond_0

    .line 738
    const-string v3, "custom"

    invoke-static {v0, v3}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 739
    const-string v3, "x"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "screenSize":[Ljava/lang/String;
    const v4, 0x7f09007c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const v4, 0x7f09007b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .end local v3    # "screenSize":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadWineVersionSpinner(Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sWineVersion"    # Landroid/widget/Spinner;
    .param p3, "sBox64Version"    # Landroid/widget/Spinner;

    .line 979
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 980
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 982
    new-instance v7, Lcom/winlator/cmod/ContainerDetailFragment$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/winlator/cmod/ContainerDetailFragment$5;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/view/View;Landroid/widget/Spinner;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {p2, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1014
    const v0, 0x7f0900ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "versions":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v1, "wineVersions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1018
    iget-object v2, p0, Lcom/winlator/cmod/ContainerDetailFragment;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    sget-object v3, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_WINE:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/contents/ContentProfile;

    .line 1019
    .local v3, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1020
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/ContainerDetailFragment;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    sget-object v3, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_PROTON:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

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

    .line 1021
    .restart local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1022
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, v6, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1023
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v2}, Lcom/winlator/cmod/container/Container;->getWineVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 1024
    :cond_2
    return-void
.end method

.method private saveWineRegistryKeys(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 623
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/Container;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".wine/user.reg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    .local v0, "userRegFile":Ljava/io/File;
    new-instance v1, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 625
    .local v1, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    const v2, 0x7f090101

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 626
    .local v2, "sMouseWarpOverride":Landroid/widget/Spinner;
    const-string v3, "Software\\Wine\\DirectInput"

    const-string v4, "MouseWarpOverride"

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .end local v2    # "sMouseWarpOverride":Landroid/widget/Spinner;
    invoke-virtual {v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 628
    .end local v1    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    return-void

    .line 624
    .restart local v1    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static setupDXWrapperSpinner(Landroid/widget/Spinner;Landroid/view/View;Z)V
    .locals 8
    .param p0, "sDXWrapper"    # Landroid/widget/Spinner;
    .param p1, "vDXWrapperConfig"    # Landroid/view/View;
    .param p2, "isARM64EC"    # Z

    .line 785
    new-instance v0, Lcom/winlator/cmod/ContainerDetailFragment$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/ContainerDetailFragment$4;-><init>(Landroid/widget/Spinner;Landroid/view/View;Z)V

    .line 801
    .local v0, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 803
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 804
    .local v7, "selectedPosition":I
    if-ltz v7, :cond_0

    .line 805
    nop

    .line 807
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 809
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v5

    .line 805
    move-object v1, v0

    move-object v2, p0

    move v4, v7

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 812
    :cond_0
    return-void
.end method

.method public static updateGraphicsDriverSpinner(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .line 1063
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "originalItems":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1067
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1068
    return-void
.end method


# virtual methods
.method public getControllerMapping(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1028
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1032
    .local v0, "ids":[I
    array-length v1, v0

    new-array v1, v1, [B

    .line 1033
    .local v1, "controllerMapping":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1034
    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 1035
    .local v3, "index":I
    invoke-static {}, Lcom/winlator/cmod/xserver/XKeycode;->values()[Lcom/winlator/cmod/xserver/XKeycode;

    move-result-object v4

    aget-object v4, v4, v3

    iget-byte v4, v4, Lcom/winlator/cmod/xserver/XKeycode;->id:B

    .line 1036
    .local v4, "value":B
    aput-byte v4, v1, v2

    .line 1033
    .end local v3    # "index":I
    .end local v4    # "value":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1038
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x7f0900dd
        0x7f0900de
        0x7f0900e1
        0x7f0900e2
        0x7f0900df
        0x7f0900e0
        0x7f090110
        0x7f09010d
        0x7f09010e
        0x7f09010f
    .end array-data
.end method

.method public isEditMode()Z
    .locals 1

    .line 267
    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadGraphicsDriverSpinner(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sGraphicsDriver"    # Landroid/widget/Spinner;
    .param p2, "sDXWrapper"    # Landroid/widget/Spinner;
    .param p3, "vGraphicsDriverConfig"    # Landroid/view/View;
    .param p4, "selectedGraphicsDriver"    # Ljava/lang/String;
    .param p5, "selectedDXWrapper"    # Ljava/lang/String;

    .line 747
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 750
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6, p1}, Lcom/winlator/cmod/ContainerDetailFragment;->updateGraphicsDriverSpinner(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 752
    new-instance v7, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda6;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/widget/Spinner;Ljava/lang/String;Landroid/view/View;)V

    .line 769
    .local v0, "update":Ljava/lang/Runnable;
    new-instance v1, Lcom/winlator/cmod/ContainerDetailFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/winlator/cmod/ContainerDetailFragment$3;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 780
    invoke-static {p1, p4}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 781
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 782
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 214
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 215
    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 217
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI obtained in onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File path in onActivityResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz v1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/winlator/cmod/ContainerDetailFragment;->openDirectoryCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/winlator/cmod/ContainerDetailFragment;->openDirectoryCallback:Lcom/winlator/cmod/core/Callback;

    invoke-interface {v2, v1}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Invalid directory selected"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 228
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment;->openDirectoryCallback:Lcom/winlator/cmod/core/Callback;

    .line 230
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/ContainerDetailFragment;->setHasOptionsMenu(Z)V

    .line 114
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 117
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gpu_cards.json"

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/winlator/cmod/ContainerDetailFragment;->gpuCards:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 72
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 274
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 275
    .local v14, "context":Landroid/content/Context;
    invoke-static {v14}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 276
    .local v13, "preferences":Landroid/content/SharedPreferences;
    const v0, 0x7f0c002b

    const/4 v6, 0x0

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    invoke-virtual {v12, v0, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 279
    .local v10, "view":Landroid/view/View;
    const-string v0, "dark_mode"

    const/4 v7, 0x1

    invoke-interface {v13, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    .line 282
    sget-boolean v0, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-direct {v15, v10, v0}, Lcom/winlator/cmod/ContainerDetailFragment;->applyDynamicStyles(Landroid/view/View;Z)V

    .line 287
    new-instance v0, Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lcom/winlator/cmod/ContainerDetailFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    .line 288
    iget v0, v15, Lcom/winlator/cmod/ContainerDetailFragment;->containerId:I

    if-lez v0, :cond_0

    iget-object v0, v15, Lcom/winlator/cmod/ContainerDetailFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    iget v1, v15, Lcom/winlator/cmod/ContainerDetailFragment;->containerId:I

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/container/ContainerManager;->getContainerById(I)Lcom/winlator/cmod/container/Container;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    .line 289
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/contents/ContentsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lcom/winlator/cmod/ContainerDetailFragment;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    .line 290
    iget-object v0, v15, Lcom/winlator/cmod/ContainerDetailFragment;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 292
    const v0, 0x7f09007a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    .line 294
    .local v9, "etName":Landroid/widget/EditText;
    const v0, 0x7f090119

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Spinner;

    .line 299
    .local v8, "sWineVersion":Landroid/widget/Spinner;
    const v0, 0x7f0900ae

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 300
    .local v5, "llWineVersion":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 306
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100069

    invoke-virtual {v15, v1}, Lcom/winlator/cmod/ContainerDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v15, Lcom/winlator/cmod/ContainerDetailFragment;->manager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/container/ContainerManager;->getNextContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_1
    const v0, 0x7f0900dc

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    .line 311
    .local v4, "sBox64Version":Landroid/widget/Spinner;
    invoke-direct {v15, v10, v8, v4}, Lcom/winlator/cmod/ContainerDetailFragment;->loadWineVersionSpinner(Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "1280x720"

    :goto_2
    invoke-static {v10, v0}, Lcom/winlator/cmod/ContainerDetailFragment;->loadScreenSizeSpinner(Landroid/view/View;Ljava/lang/String;)V

    .line 315
    const v0, 0x7f0900f2

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Spinner;

    .line 317
    .local v3, "sGraphicsDriver":Landroid/widget/Spinner;
    const v0, 0x7f0900e9

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Landroid/widget/Spinner;

    .line 319
    .local v29, "sDXWrapper":Landroid/widget/Spinner;
    const v0, 0x7f090015

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, "vDXWrapperConfig":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getDXWrapperConfig()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/winlator/cmod/container/Container;->DEFAULT_DXWRAPPERCONFIG:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    const v0, 0x7f090025

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, "vGraphicsDriverConfig":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string v0, "vulkanVersion=1.3;version=;blacklistedExtensions=;maxDeviceMemory=0;presentMode=mailbox;syncFrame=0;disablePresentWait=0;resourceType=auto;bcnEmulation=auto;bcnEmulationType=compute;bcnEmulationCache=0;gpuName=Device"

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    nop

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getGraphicsDriver()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    const-string v0, "wrapper"

    :goto_5
    move-object/from16 v16, v0

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getDXWrapper()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    const-string v0, "dxvk+vkd3d"

    :goto_6
    move-object/from16 v17, v0

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v30, v1

    .end local v1    # "vGraphicsDriverConfig":Landroid/view/View;
    .local v30, "vGraphicsDriverConfig":Landroid/view/View;
    move-object v1, v3

    move-object/from16 v31, v2

    .end local v2    # "vDXWrapperConfig":Landroid/view/View;
    .local v31, "vDXWrapperConfig":Landroid/view/View;
    move-object/from16 v2, v29

    move-object/from16 v32, v3

    .end local v3    # "sGraphicsDriver":Landroid/widget/Spinner;
    .local v32, "sGraphicsDriver":Landroid/widget/Spinner;
    move-object/from16 v3, v30

    move-object/from16 v33, v4

    .end local v4    # "sBox64Version":Landroid/widget/Spinner;
    .local v33, "sBox64Version":Landroid/widget/Spinner;
    move-object/from16 v4, v16

    move-object/from16 v34, v5

    .end local v5    # "llWineVersion":Landroid/widget/LinearLayout;
    .local v34, "llWineVersion":Landroid/widget/LinearLayout;
    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/winlator/cmod/ContainerDetailFragment;->loadGraphicsDriverSpinner(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const v0, 0x7f090028

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const v0, 0x7f0900c5

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Spinner;

    .line 332
    .local v5, "sAudioDriver":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getAudioDriver()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    const-string v0, "alsa"

    :goto_7
    invoke-static {v5, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 334
    const v0, 0x7f0900ec

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    .line 335
    .local v4, "sEmulator":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getEmulator()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_8
    const-string v0, "FEXCore"

    :goto_8
    invoke-static {v4, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 337
    const v0, 0x7f090100

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Spinner;

    .line 338
    .local v3, "sMIDISoundFont":Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/winlator/cmod/midi/MidiManager;->loadSFSpinner(Landroid/widget/Spinner;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getMIDISoundFont()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_9
    const-string v0, ""

    :goto_9
    invoke-static {v3, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 341
    const v0, 0x7f090063

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    .line 342
    .local v2, "cbShowFPS":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->isShowFPS()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v7

    goto :goto_a

    :cond_a
    move v0, v6

    :goto_a
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 344
    const v0, 0x7f090024

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, "vFPSCounterConfig":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getFPSCounterConfig()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_b
    const-string v0, "showFPS=1,showCPULoad=0,showGPULoad=0,showRAM=0,showRenderer=0,showBatteryTemp=0,showBatteryVoltage=0,hudScale=100"

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    new-instance v0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda15;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v0, 0x7f090058

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 353
    .local v0, "cbFullscreenStretched":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v16

    if-eqz v16, :cond_c

    sget-object v16, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual/range {v16 .. v16}, Lcom/winlator/cmod/container/Container;->isFullscreenStretched()Z

    move-result v16

    if-eqz v16, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 356
    new-instance v6, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda16;

    invoke-direct {v6, v14}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda16;-><init>(Landroid/content/Context;)V

    move-object/from16 v35, v6

    .line 357
    .local v35, "showInputWarning":Ljava/lang/Runnable;
    const v6, 0x7f090056

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 358
    .local v6, "cbEnableXInput":Landroid/widget/CheckBox;
    const v7, 0x7f09004e

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 359
    .local v7, "cbEnableDInput":Landroid/widget/CheckBox;
    move-object/from16 v18, v0

    .end local v0    # "cbFullscreenStretched":Landroid/widget/CheckBox;
    .local v18, "cbFullscreenStretched":Landroid/widget/CheckBox;
    const v0, 0x7f090057

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 360
    .local v0, "cbExclusiveXInput":Landroid/widget/CheckBox;
    move-object/from16 v19, v1

    .end local v1    # "vFPSCounterConfig":Landroid/view/View;
    .local v19, "vFPSCounterConfig":Landroid/view/View;
    const v1, 0x7f090043

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 361
    .local v1, "btHelpXInput":Landroid/view/View;
    move-object/from16 v20, v2

    .end local v2    # "cbShowFPS":Landroid/widget/CheckBox;
    .local v20, "cbShowFPS":Landroid/widget/CheckBox;
    const v2, 0x7f090014

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 362
    .local v2, "btHelpDInput":Landroid/view/View;
    move-object/from16 v21, v3

    .end local v3    # "sMIDISoundFont":Landroid/widget/Spinner;
    .local v21, "sMIDISoundFont":Landroid/widget/Spinner;
    const v3, 0x7f09001f

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 365
    .local v3, "btHelpExclusiveXInput":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v22

    move-object/from16 v23, v4

    .end local v4    # "sEmulator":Landroid/widget/Spinner;
    .local v23, "sEmulator":Landroid/widget/Spinner;
    const/4 v4, 0x4

    if-eqz v22, :cond_d

    sget-object v22, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual/range {v22 .. v22}, Lcom/winlator/cmod/container/Container;->getInputType()I

    move-result v22

    goto :goto_c

    :cond_d
    move/from16 v22, v4

    :goto_c
    move/from16 v36, v22

    .line 368
    .local v36, "inputType":I
    move-object/from16 v22, v5

    .end local v5    # "sAudioDriver":Landroid/widget/Spinner;
    .local v22, "sAudioDriver":Landroid/widget/Spinner;
    and-int/lit8 v5, v36, 0x4

    if-ne v5, v4, :cond_e

    const/4 v4, 0x1

    goto :goto_d

    :cond_e
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 369
    and-int/lit8 v4, v36, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_e

    :cond_f
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->isExclusiveXInput()Z

    move-result v4

    goto :goto_f

    :cond_10
    const/4 v4, 0x1

    :goto_f
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 372
    new-instance v4, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0, v6}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda17;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 380
    new-instance v4, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0, v7}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda18;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 388
    new-instance v4, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda19;

    invoke-direct {v4, v6, v7}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda19;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_11

    .line 403
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 404
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 405
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 406
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 409
    :cond_11
    new-instance v4, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda20;

    invoke-direct {v4, v14}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda20;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    new-instance v4, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v14}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    new-instance v4, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, v14}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    const v4, 0x7f090080

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/widget/EditText;

    .line 416
    .local v5, "etLC_ALL":Landroid/widget/EditText;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v37

    .line 417
    .local v37, "systemLocal":Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v4}, Lcom/winlator/cmod/container/Container;->getLC_ALL()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v0

    goto :goto_10

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "cbExclusiveXInput":Landroid/widget/CheckBox;
    .local v16, "cbExclusiveXInput":Landroid/widget/CheckBox;
    invoke-virtual/range {v37 .. v37}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_10
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const v0, 0x7f090042

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 420
    .local v4, "btShowLCALL":Landroid/view/View;
    new-instance v0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, v15, v14, v5}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    const v0, 0x7f09010b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 433
    .local v0, "sStartupSelection":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v24

    move-object/from16 v25, v1

    .end local v1    # "btHelpXInput":Landroid/view/View;
    .local v25, "btHelpXInput":Landroid/view/View;
    const/4 v1, -0x1

    if-eqz v24, :cond_13

    sget-object v24, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual/range {v24 .. v24}, Lcom/winlator/cmod/container/Container;->getStartupSelection()B

    move-result v24

    goto :goto_11

    :cond_13
    move/from16 v24, v1

    :goto_11
    move/from16 v38, v24

    .line 434
    .local v38, "previousStartupSelection":B
    move/from16 v12, v38

    .end local v38    # "previousStartupSelection":B
    .local v12, "previousStartupSelection":B
    if-eq v12, v1, :cond_14

    move v1, v12

    goto :goto_12

    :cond_14
    const/4 v1, 0x1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 436
    const v1, 0x7f0900db

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 437
    .local v1, "sBox64Preset":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v24

    if-eqz v24, :cond_15

    sget-object v24, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual/range {v24 .. v24}, Lcom/winlator/cmod/container/Container;->getBox64Preset()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v26, v2

    move-object/from16 v71, v24

    move-object/from16 v24, v0

    move-object/from16 v0, v71

    goto :goto_13

    :cond_15
    move-object/from16 v24, v0

    .end local v0    # "sStartupSelection":Landroid/widget/Spinner;
    .local v24, "sStartupSelection":Landroid/widget/Spinner;
    const-string v0, "box64_preset"

    move-object/from16 v26, v2

    .end local v2    # "btHelpDInput":Landroid/view/View;
    .local v26, "btHelpDInput":Landroid/view/View;
    const-string v2, "COMPATIBILITY"

    invoke-interface {v13, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    const-string v2, "box64"

    invoke-static {v2, v1, v0}, Lcom/winlator/cmod/box64/Box64PresetManager;->loadSpinner(Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 439
    const v0, 0x7f0900ef

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .line 440
    .local v2, "sFEXCoreVersion":Landroid/widget/Spinner;
    iget-object v0, v15, Lcom/winlator/cmod/ContainerDetailFragment;->contentsManager:Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v27

    if-eqz v27, :cond_16

    sget-object v27, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual/range {v27 .. v27}, Lcom/winlator/cmod/container/Container;->getFEXCoreVersion()Ljava/lang/String;

    move-result-object v27

    goto :goto_14

    :cond_16
    const-string v27, "2508"

    :goto_14
    move-object/from16 v28, v1

    move-object/from16 v1, v27

    .end local v1    # "sBox64Preset":Landroid/widget/Spinner;
    .local v28, "sBox64Preset":Landroid/widget/Spinner;
    invoke-static {v14, v0, v2, v1}, Lcom/winlator/cmod/fexcore/FEXCoreManager;->loadFEXCoreVersion(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 442
    const v0, 0x7f0900ee

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Spinner;

    .line 443
    .local v1, "sFEXCorePreset":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getFEXCorePreset()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v2

    goto :goto_15

    :cond_17
    const-string v0, "fexcore_preset"

    move-object/from16 v27, v2

    .end local v2    # "sFEXCoreVersion":Landroid/widget/Spinner;
    .local v27, "sFEXCoreVersion":Landroid/widget/Spinner;
    const-string v2, "INTERMEDIATE"

    invoke-interface {v13, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-static {v1, v0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->loadSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {v32 .. v32}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "selectedDriver":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v38, v1

    .end local v1    # "sFEXCorePreset":Landroid/widget/Spinner;
    .local v38, "sFEXCorePreset":Landroid/widget/Spinner;
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v39, v3

    .end local v3    # "btHelpExclusiveXInput":Landroid/view/View;
    .local v39, "btHelpExclusiveXInput":Landroid/view/View;
    const v3, 0x7f030015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 447
    .local v3, "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-direct {v0, v14, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v1, v32

    .end local v32    # "sGraphicsDriver":Landroid/widget/Spinner;
    .local v1, "sGraphicsDriver":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 448
    invoke-static {v1, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 451
    const v0, 0x7f09006e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/widget/CPUListView;

    .line 452
    .local v0, "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    nop

    .end local v1    # "sGraphicsDriver":Landroid/widget/Spinner;
    .restart local v32    # "sGraphicsDriver":Landroid/widget/Spinner;
    const v1, 0x7f09006f

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/widget/CPUListView;

    .line 454
    .local v1, "cpuListViewWoW64":Lcom/winlator/cmod/widget/CPUListView;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v40

    if-eqz v40, :cond_18

    move-object/from16 v40, v2

    .end local v2    # "selectedDriver":Ljava/lang/String;
    .local v40, "selectedDriver":Ljava/lang/String;
    sget-object v2, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    move-object/from16 v41, v3

    const/4 v3, 0x1

    .end local v3    # "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v41, "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->getCPUList(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .end local v40    # "selectedDriver":Ljava/lang/String;
    .end local v41    # "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "selectedDriver":Ljava/lang/String;
    .restart local v3    # "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v40, v2

    move-object/from16 v41, v3

    .end local v2    # "selectedDriver":Ljava/lang/String;
    .end local v3    # "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v40    # "selectedDriver":Ljava/lang/String;
    .restart local v41    # "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/winlator/cmod/container/Container;->getFallbackCPUList()Ljava/lang/String;

    move-result-object v2

    :goto_16
    invoke-virtual {v0, v2}, Lcom/winlator/cmod/widget/CPUListView;->setCheckedCPUList(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/container/Container;->getCPUListWoW64(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_19
    const/4 v3, 0x1

    invoke-static {}, Lcom/winlator/cmod/container/Container;->getFallbackCPUListWoW64()Ljava/lang/String;

    move-result-object v2

    :goto_17
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/widget/CPUListView;->setCheckedCPUList(Ljava/lang/String;)V

    .line 457
    const v2, 0x7f090104

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 458
    .local v2, "sPrimaryController":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v17

    if-eqz v17, :cond_1a

    sget-object v3, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3}, Lcom/winlator/cmod/container/Container;->getPrimaryController()I

    move-result v3

    :cond_1a
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 459
    const v3, 0x7f0900dd

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    move-object/from16 v17, v0

    .end local v0    # "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    .local v17, "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    sget-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_A:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v42, Lcom/winlator/cmod/xserver/XKeycode;->KEY_A:Lcom/winlator/cmod/xserver/XKeycode;

    move-object/from16 v43, v1

    .end local v1    # "cpuListViewWoW64":Lcom/winlator/cmod/widget/CPUListView;
    .local v43, "cpuListViewWoW64":Lcom/winlator/cmod/widget/CPUListView;
    invoke-virtual/range {v42 .. v42}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v1

    invoke-virtual {v15, v3, v0, v1}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 460
    const v0, 0x7f0900de

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_B:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_B:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 461
    const v0, 0x7f0900e1

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_X:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_X:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 462
    const v0, 0x7f0900e2

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_Y:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_Y:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 463
    const v0, 0x7f0900df

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_GRIP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_SPACE:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 464
    const v0, 0x7f0900e0

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_TRIGGER:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_ENTER:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 465
    const v0, 0x7f090110

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_UP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_UP:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 466
    const v0, 0x7f09010d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_DOWN:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_DOWN:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 467
    const v0, 0x7f09010e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_LEFT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_LEFT:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 468
    const v0, 0x7f09010f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_RIGHT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_RIGHT:Lcom/winlator/cmod/xserver/XKeycode;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/XKeycode;->ordinal()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V

    .line 470
    invoke-direct {v15, v10}, Lcom/winlator/cmod/ContainerDetailFragment;->createWineConfigurationTab(Landroid/view/View;)V

    .line 471
    invoke-direct {v15, v10}, Lcom/winlator/cmod/ContainerDetailFragment;->createEnvVarsTab(Landroid/view/View;)Lcom/winlator/cmod/widget/EnvVarsView;

    move-result-object v42

    .line 472
    .local v42, "envVarsView":Lcom/winlator/cmod/widget/EnvVarsView;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getWinComponents()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_1b
    const-string v0, "direct3d=1,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2010=1"

    :goto_18
    invoke-static {v10, v0}, Lcom/winlator/cmod/ContainerDetailFragment;->createWinComponentsTab(Landroid/view/View;Ljava/lang/String;)V

    .line 473
    invoke-direct {v15, v10}, Lcom/winlator/cmod/ContainerDetailFragment;->createDrivesTab(Landroid/view/View;)V

    .line 475
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v1, 0x7f09017b

    invoke-static {v10, v1, v0}, Lcom/winlator/cmod/core/AppUtils;->setupTabLayout(Landroid/view/View;I[I)V

    .line 477
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 479
    .local v3, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    sget-boolean v0, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    if-eqz v0, :cond_1c

    .line 480
    const v0, 0x7f080183

    invoke-virtual {v3, v0}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundResource(I)V

    goto :goto_19

    .line 482
    :cond_1c
    const v0, 0x7f080182

    invoke-virtual {v3, v0}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundResource(I)V

    .line 486
    :goto_19
    const v0, 0x7f090012

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda14;

    move-object/from16 v48, v0

    move-object/from16 v45, v16

    move-object/from16 v47, v17

    move-object/from16 v44, v18

    move-object/from16 v46, v24

    .end local v16    # "cbExclusiveXInput":Landroid/widget/CheckBox;
    .end local v17    # "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    .end local v18    # "cbFullscreenStretched":Landroid/widget/CheckBox;
    .end local v24    # "sStartupSelection":Landroid/widget/Spinner;
    .local v44, "cbFullscreenStretched":Landroid/widget/CheckBox;
    .local v45, "cbExclusiveXInput":Landroid/widget/CheckBox;
    .local v46, "sStartupSelection":Landroid/widget/Spinner;
    .local v47, "cpuListView":Lcom/winlator/cmod/widget/CPUListView;
    move-object/from16 v52, v1

    move-object/from16 v49, v28

    move-object/from16 v50, v38

    move-object/from16 v51, v43

    move-object/from16 v38, v19

    move-object/from16 v43, v25

    .end local v19    # "vFPSCounterConfig":Landroid/view/View;
    .end local v25    # "btHelpXInput":Landroid/view/View;
    .end local v28    # "sBox64Preset":Landroid/widget/Spinner;
    .local v38, "vFPSCounterConfig":Landroid/view/View;
    .local v43, "btHelpXInput":Landroid/view/View;
    .local v49, "sBox64Preset":Landroid/widget/Spinner;
    .local v50, "sFEXCorePreset":Landroid/widget/Spinner;
    .local v51, "cpuListViewWoW64":Lcom/winlator/cmod/widget/CPUListView;
    move-object/from16 v1, p0

    move-object/from16 v56, v2

    move-object/from16 v53, v26

    move-object/from16 v54, v27

    move-object/from16 v55, v40

    move-object/from16 v40, v20

    .end local v2    # "sPrimaryController":Landroid/widget/Spinner;
    .end local v20    # "cbShowFPS":Landroid/widget/CheckBox;
    .end local v26    # "btHelpDInput":Landroid/view/View;
    .end local v27    # "sFEXCoreVersion":Landroid/widget/Spinner;
    .local v40, "cbShowFPS":Landroid/widget/CheckBox;
    .local v53, "btHelpDInput":Landroid/view/View;
    .local v54, "sFEXCoreVersion":Landroid/widget/Spinner;
    .local v55, "selectedDriver":Ljava/lang/String;
    .local v56, "sPrimaryController":Landroid/widget/Spinner;
    move-object v2, v9

    move-object/from16 v58, v3

    move-object/from16 v57, v41

    move-object/from16 v41, v39

    move-object/from16 v39, v21

    .end local v3    # "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    .end local v21    # "sMIDISoundFont":Landroid/widget/Spinner;
    .local v39, "sMIDISoundFont":Landroid/widget/Spinner;
    .local v41, "btHelpExclusiveXInput":Landroid/view/View;
    .local v57, "sGraphicsItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v58, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    move-object v3, v10

    move-object/from16 v60, v4

    move-object/from16 v59, v23

    .end local v4    # "btShowLCALL":Landroid/view/View;
    .end local v23    # "sEmulator":Landroid/widget/Spinner;
    .local v59, "sEmulator":Landroid/widget/Spinner;
    .local v60, "btShowLCALL":Landroid/view/View;
    move-object/from16 v4, v42

    move-object/from16 v62, v5

    move-object/from16 v61, v22

    .end local v5    # "etLC_ALL":Landroid/widget/EditText;
    .end local v22    # "sAudioDriver":Landroid/widget/Spinner;
    .local v61, "sAudioDriver":Landroid/widget/Spinner;
    .local v62, "etLC_ALL":Landroid/widget/EditText;
    move-object/from16 v5, v32

    move-object/from16 v63, v6

    .end local v6    # "cbEnableXInput":Landroid/widget/CheckBox;
    .local v63, "cbEnableXInput":Landroid/widget/CheckBox;
    move-object/from16 v6, v30

    move-object/from16 v64, v7

    .end local v7    # "cbEnableDInput":Landroid/widget/CheckBox;
    .local v64, "cbEnableDInput":Landroid/widget/CheckBox;
    move-object v7, v14

    move-object/from16 v65, v8

    .end local v8    # "sWineVersion":Landroid/widget/Spinner;
    .local v65, "sWineVersion":Landroid/widget/Spinner;
    move-object/from16 v8, v29

    move-object/from16 v66, v9

    .end local v9    # "etName":Landroid/widget/EditText;
    .local v66, "etName":Landroid/widget/EditText;
    move-object/from16 v9, v31

    move-object/from16 v67, v10

    .end local v10    # "view":Landroid/view/View;
    .local v67, "view":Landroid/view/View;
    move-object/from16 v10, v61

    move-object/from16 v11, v59

    move/from16 v68, v12

    .end local v12    # "previousStartupSelection":B
    .local v68, "previousStartupSelection":B
    move-object/from16 v12, v40

    move-object/from16 v69, v13

    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    .local v69, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v13, v38

    move-object/from16 v70, v14

    .end local v14    # "context":Landroid/content/Context;
    .local v70, "context":Landroid/content/Context;
    move-object/from16 v14, v44

    move-object/from16 v15, v45

    move-object/from16 v16, v47

    move-object/from16 v17, v51

    move-object/from16 v18, v46

    move-object/from16 v19, v33

    move-object/from16 v20, v54

    move-object/from16 v21, v50

    move-object/from16 v22, v49

    move-object/from16 v23, v39

    move-object/from16 v24, v62

    move-object/from16 v25, v56

    move-object/from16 v26, v63

    move-object/from16 v27, v64

    move-object/from16 v28, v65

    invoke-direct/range {v0 .. v28}, Lcom/winlator/cmod/ContainerDetailFragment$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/cmod/ContainerDetailFragment;Landroid/widget/EditText;Landroid/view/View;Lcom/winlator/cmod/widget/EnvVarsView;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/winlator/cmod/widget/CPUListView;Lcom/winlator/cmod/widget/CPUListView;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V

    move-object/from16 v1, v48

    move-object/from16 v0, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    return-object v67

    :array_0
    .array-data 4
        0x7f0900a7
        0x7f0900a6
        0x7f0900a5
        0x7f0900a4
        0x7f0900a3
        0x7f0900a8
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 234
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1000b1

    goto :goto_0

    :cond_0
    const v1, 0x7f100179

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 238
    const v0, 0x7f090137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    .local v0, "desktopLabel":Landroid/widget/TextView;
    sget-boolean v1, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v0, v1}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 241
    const v1, 0x7f090138

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    .local v1, "registryKeysLabel":Landroid/widget/TextView;
    sget-boolean v2, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v1, v2}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 245
    const v2, 0x7f090139

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 246
    .local v2, "directXLabel":Landroid/widget/TextView;
    sget-boolean v3, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v2, v3}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 248
    const v3, 0x7f090148

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 249
    .local v3, "generalLabel":Landroid/widget/TextView;
    sget-boolean v4, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v3, v4}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 252
    const v4, 0x7f090126

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 253
    .local v4, "box64Label":Landroid/widget/TextView;
    sget-boolean v5, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v4, v5}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 255
    const v5, 0x7f090140

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 256
    .local v5, "fexCoreLabel":Landroid/widget/TextView;
    sget-boolean v6, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v5, v6}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 258
    const v6, 0x7f09016d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 259
    .local v6, "systemLabel":Landroid/widget/TextView;
    sget-boolean v7, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v6, v7}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 261
    const v7, 0x7f090146

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 262
    .local v7, "gameControllerLabel":Landroid/widget/TextView;
    sget-boolean v8, Lcom/winlator/cmod/ContainerDetailFragment;->isDarkMode:Z

    invoke-static {v7, v8}, Lcom/winlator/cmod/ContainerDetailFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 264
    return-void
.end method

.method public setControllerMapping(Landroid/widget/Spinner;Lcom/winlator/cmod/container/Container$XrControllerMapping;I)V
    .locals 7
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "mapping"    # Lcom/winlator/cmod/container/Container$XrControllerMapping;
    .param p3, "defaultValue"    # I

    .line 1042
    invoke-static {}, Lcom/winlator/cmod/xserver/XKeycode;->values()[Lcom/winlator/cmod/xserver/XKeycode;

    move-result-object v0

    .line 1043
    .local v0, "values":[Lcom/winlator/cmod/xserver/XKeycode;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1045
    .local v4, "value":Lcom/winlator/cmod/xserver/XKeycode;
    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/XKeycode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    .end local v4    # "value":Lcom/winlator/cmod/xserver/XKeycode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1047
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090009

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1048
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1049
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1051
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/winlator/cmod/ContainerDetailFragment;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v3, p2}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v3

    goto :goto_1

    :cond_1
    int-to-byte v3, p3

    .line 1052
    .local v3, "keycode":B
    :goto_1
    const/4 v4, 0x0

    .line 1053
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 1054
    aget-object v6, v0, v5

    iget-byte v6, v6, Lcom/winlator/cmod/xserver/XKeycode;->id:B

    if-ne v6, v3, :cond_2

    .line 1055
    move v4, v5

    .line 1056
    goto :goto_3

    .line 1053
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1059
    .end local v5    # "i":I
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/winlator/cmod/ContainerDetailFragment;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, p3

    :goto_4
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1060
    return-void
.end method

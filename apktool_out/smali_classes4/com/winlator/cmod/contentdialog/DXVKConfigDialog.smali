.class public Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "DXVKConfigDialog.java"


# static fields
.field public static final DEFAULT_CONFIG:Ljava/lang/String;

.field public static final DXVK_TYPE_ASYNC:I = 0x1

.field public static final DXVK_TYPE_GPLASYNC:I = 0x2

.field public static final DXVK_TYPE_NONE:I

.field private static final SEMVER:Ljava/util/regex/Pattern;

.field public static final VKD3D_FEATURE_LEVEL:[Ljava/lang/String;

.field private static dxvkVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private isARM64EC:Z

.field private final llAsync:Landroid/view/View;

.field private final llAsyncCache:Landroid/view/View;

.field private final swAsync:Landroid/widget/ToggleButton;

.field private final swAsyncCache:Landroid/widget/ToggleButton;


# direct methods
.method public static synthetic $r8$lambda$lQsLP0_WMIJsAcRvHtGKl1ROYuo(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->lambda$new$0(Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDXVKType(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->getDXVKType(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadDxvkVersionSpinner(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->loadDxvkVersionSpinner(Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConfigVisibility(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->updateConfigVisibility(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdxvkVersions()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smtryGetMajor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->tryGetMajor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Lcom/winlator/cmod/container/Container;->DEFAULT_DXWRAPPERCONFIG:Ljava/lang/String;

    sput-object v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->DEFAULT_CONFIG:Ljava/lang/String;

    .line 42
    const-string v0, "(\\d+)\\.(\\d+)(?:\\.(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->SEMVER:Ljava/util/regex/Pattern;

    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "12_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "12_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "12_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "11_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "11_0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "10_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "10_0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "9_3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9_2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->VKD3D_FEATURE_LEVEL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 19
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "isARM64EC"    # Z

    .line 77
    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-direct {v9, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->isARM64EC:Z

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    .line 79
    const v0, 0x7f08014b

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->setIcon(I)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DXVK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    const v2, 0x7f100064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->setTitle(Ljava/lang/String;)V

    .line 82
    const v0, 0x7f0900e8

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    .line 83
    .local v11, "sDXVKVersion":Landroid/widget/Spinner;
    const v0, 0x7f090113

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 84
    .local v12, "sVKD3DVersion":Landroid/widget/Spinner;
    const v0, 0x7f0900f0

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Spinner;

    .line 85
    .local v13, "sFramerate":Landroid/widget/Spinner;
    const v0, 0x7f090112

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Spinner;

    .line 86
    .local v14, "sVKD3DFeatureLevel":Landroid/widget/Spinner;
    const v0, 0x7f0900e7

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Spinner;

    .line 87
    .local v15, "sDDRAWrapper":Landroid/widget/Spinner;
    const v0, 0x7f090115

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->swAsync:Landroid/widget/ToggleButton;

    .line 88
    const v0, 0x7f090116

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->swAsyncCache:Landroid/widget/ToggleButton;

    .line 89
    const v0, 0x7f090090

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsync:Landroid/view/View;

    .line 90
    const v0, 0x7f090091

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsyncCache:Landroid/view/View;

    .line 92
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager;

    iget-object v1, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/contents/ContentsManager;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 93
    .local v8, "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    invoke-virtual {v8}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->parseConfig(Ljava/lang/Object;)Lcom/winlator/cmod/core/KeyValueSet;

    move-result-object v7

    .line 96
    .local v7, "config":Lcom/winlator/cmod/core/KeyValueSet;
    invoke-direct {v9, v8, v11, v10}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->loadDxvkVersionSpinner(Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V

    .line 97
    invoke-direct {v9, v8, v12}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->loadVkd3dVersionSpinner(Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;)V

    .line 99
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    const v2, 0x1090008

    sget-object v3, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->VKD3D_FEATURE_LEVEL:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v6, v0

    .line 100
    .local v6, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 101
    invoke-virtual {v14, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    invoke-direct {v9, v11, v7, v8, v10}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->setDXVKSpinner(Landroid/widget/Spinner;Lcom/winlator/cmod/core/KeyValueSet;Lcom/winlator/cmod/contents/ContentsManager;Z)V

    .line 104
    const-string v0, "framerate"

    invoke-virtual {v7, v0}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 105
    const-string v0, "vkd3dVersion"

    invoke-virtual {v7, v0}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 106
    const-string v0, "vkd3dLevel"

    invoke-virtual {v7, v0}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 107
    const-string v0, "ddrawrapper"

    invoke-virtual {v7, v0}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 109
    iget-object v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->swAsync:Landroid/widget/ToggleButton;

    const-string v1, "async"

    invoke-virtual {v7, v1}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 110
    iget-object v0, v9, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->swAsyncCache:Landroid/widget/ToggleButton;

    const-string v1, "asyncCache"

    invoke-virtual {v7, v1}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 112
    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->getDXVKType(I)I

    move-result v0

    invoke-direct {v9, v0}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->updateConfigVisibility(I)V

    .line 114
    new-instance v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$1;

    invoke-direct {v0, v9}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$1;-><init>(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 126
    new-instance v5, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v7

    move-object v4, v11

    move-object v10, v5

    move-object v5, v8

    move-object/from16 v16, v6

    .end local v6    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v16, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$2;-><init>(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;Landroid/widget/Spinner;Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Lcom/winlator/cmod/contents/ContentsManager;Z)V

    invoke-virtual {v12, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 165
    new-instance v10, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v2, v7

    move-object v3, v11

    move-object v4, v13

    move-object v5, v12

    move-object v6, v14

    move-object/from16 v17, v7

    .end local v7    # "config":Lcom/winlator/cmod/core/KeyValueSet;
    .local v17, "config":Lcom/winlator/cmod/core/KeyValueSet;
    move-object v7, v15

    move-object/from16 v18, v8

    .end local v8    # "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    .local v18, "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method private static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "varA"    # Ljava/lang/String;
    .param p1, "varB"    # Ljava/lang/String;

    .line 58
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "levelsA":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "levelsB":[Ljava/lang/String;
    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 63
    .local v2, "minLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 64
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 65
    .local v4, "numA":I
    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 66
    .local v5, "numB":I
    if-eq v4, v5, :cond_0

    .line 67
    sub-int v6, v4, v5

    return v6

    .line 63
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "i":I
    .end local v4    # "numA":I
    .end local v5    # "numB":I
    :cond_1
    array-length v3, v1

    array-length v4, v0

    if-eq v3, v4, :cond_2

    .line 71
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    return v3

    .line 73
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private getDXVKType(I)I
    .locals 3
    .param p1, "pos"    # I

    .line 192
    sget-object v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, "v":Ljava/lang/String;
    const/4 v1, 0x0

    .line 194
    .local v1, "dxvkType":I
    const-string v2, "gplasync"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const/4 v1, 0x2

    goto :goto_0

    .line 196
    :cond_0
    const-string v2, "async"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const/4 v1, 0x1

    .line 198
    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$new$0(Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 4
    .param p1, "config"    # Lcom/winlator/cmod/core/KeyValueSet;
    .param p2, "sDXVKVersion"    # Landroid/widget/Spinner;
    .param p3, "sFramerate"    # Landroid/widget/Spinner;
    .param p4, "sVKD3DVersion"    # Landroid/widget/Spinner;
    .param p5, "sVKD3DFeatureLevel"    # Landroid/widget/Spinner;
    .param p6, "sDDRAWrapper"    # Landroid/widget/Spinner;
    .param p7, "anchor"    # Landroid/view/View;

    .line 166
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "framerate"

    invoke-virtual {p1, v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->swAsync:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsync:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v3, "async"

    invoke-virtual {p1, v3, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->swAsyncCache:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsyncCache:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v0, "asyncCache"

    invoke-virtual {p1, v0, v1}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/core/VKD3DVersionItem;

    .line 171
    .local v0, "selectedItem":Lcom/winlator/cmod/core/VKD3DVersionItem;
    const-string v1, "vkd3dVersion"

    invoke-virtual {v0}, Lcom/winlator/cmod/core/VKD3DVersionItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vkd3dLevel"

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ddrawrapper"

    invoke-virtual {p1, v2, v1}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Lcom/winlator/cmod/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method private loadDxvkVersionSpinner(Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;Z)V
    .locals 7
    .param p1, "manager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "isARM64EC"    # Z

    .line 261
    iput-boolean p3, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->isARM64EC:Z

    .line 262
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "originalItems":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_DXVK:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/contents/ContentsManager;->getProfiles(Lcom/winlator/cmod/contents/ContentProfile$ContentType;)Ljava/util/List;

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

    .line 266
    .local v3, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    invoke-static {v3}, Lcom/winlator/cmod/contents/ContentsManager;->getEntryName(Lcom/winlator/cmod/contents/ContentProfile;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "entryName":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 268
    .local v5, "firstDashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "firstDashIndex":I
    goto :goto_0

    .line 271
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 272
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "arm64ec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    .line 273
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 271
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    const v4, 0x1090009

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 277
    sput-object v1, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    .line 278
    return-void
.end method

.method private loadVkd3dVersionSpinner(Lcom/winlator/cmod/contents/ContentsManager;Landroid/widget/Spinner;)V
    .locals 7
    .param p1, "manager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p2, "spinner"    # Landroid/widget/Spinner;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/core/VKD3DVersionItem;>;"
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "originalItems":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 286
    .local v4, "version":Ljava/lang/String;
    new-instance v5, Lcom/winlator/cmod/core/VKD3DVersionItem;

    invoke-direct {v5, v4}, Lcom/winlator/cmod/core/VKD3DVersionItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v4    # "version":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_0
    sget-object v2, Lcom/winlator/cmod/contents/ContentProfile$ContentType;->CONTENT_TYPE_VKD3D:Lcom/winlator/cmod/contents/ContentProfile$ContentType;

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

    .line 291
    .local v3, "profile":Lcom/winlator/cmod/contents/ContentProfile;
    iget-object v4, v3, Lcom/winlator/cmod/contents/ContentProfile;->verName:Ljava/lang/String;

    .line 292
    .local v4, "displayName":Ljava/lang/String;
    iget v5, v3, Lcom/winlator/cmod/contents/ContentProfile;->verCode:I

    .line 293
    .local v5, "versionCode":I
    new-instance v6, Lcom/winlator/cmod/core/VKD3DVersionItem;

    invoke-direct {v6, v4, v5}, Lcom/winlator/cmod/core/VKD3DVersionItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v3    # "profile":Lcom/winlator/cmod/contents/ContentProfile;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v5    # "versionCode":I
    goto :goto_1

    .line 296
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    const v4, 0x1090009

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 297
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/winlator/cmod/core/VKD3DVersionItem;>;"
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 298
    return-void
.end method

.method public static parseConfig(Ljava/lang/Object;)Lcom/winlator/cmod/core/KeyValueSet;
    .locals 2
    .param p0, "config"    # Ljava/lang/Object;

    .line 230
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->DEFAULT_CONFIG:Ljava/lang/String;

    .line 231
    .local v0, "data":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private setDXVKSpinner(Landroid/widget/Spinner;Lcom/winlator/cmod/core/KeyValueSet;Lcom/winlator/cmod/contents/ContentsManager;Z)V
    .locals 8
    .param p1, "sDXVKVersion"    # Landroid/widget/Spinner;
    .param p2, "config"    # Lcom/winlator/cmod/core/KeyValueSet;
    .param p3, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p4, "isARM64EC"    # Z

    .line 202
    const-string v0, "vkd3dVersion"

    invoke-virtual {p2, v0}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "selectedVersion":Ljava/lang/String;
    const-string v1, "version"

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "currentDXVKVersion":Ljava/lang/String;
    const-string v2, "None"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    .line 208
    sget-object v4, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->tryGetMajor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 209
    .local v4, "major":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v5, :cond_0

    .line 210
    sget-object v5, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v4    # "major":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "i":I
    :cond_1
    sget-object v3, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 216
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->context:Landroid/content/Context;

    const v6, 0x1090009

    sget-object v7, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->dxvkVersions:Ljava/util/List;

    invoke-direct {v3, v4, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 217
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 219
    invoke-static {v1}, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->tryGetMajor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 220
    .local v4, "curMajor":Ljava/lang/Integer;
    nop

    .line 222
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v5, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/winlator/cmod/core/DefaultVersion;->DXVK:Ljava/lang/String;

    .line 220
    :goto_1
    invoke-static {p1, v5}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 224
    .end local v2    # "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4    # "curMajor":Ljava/lang/Integer;
    goto :goto_2

    .line 226
    :cond_3
    invoke-static {p1, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 227
    :goto_2
    return-void
.end method

.method public static setEnvVars(Landroid/content/Context;Lcom/winlator/cmod/core/KeyValueSet;Lcom/winlator/cmod/core/EnvVars;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/winlator/cmod/core/KeyValueSet;
    .param p2, "envVars"    # Lcom/winlator/cmod/core/EnvVars;

    .line 235
    const-string v0, ""

    .line 237
    .local v0, "content":Ljava/lang/String;
    const-string v1, "framerate"

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "framerate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "0"

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "dxgi.maxFrameRate = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "d3d9.maxFrameRate = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v2, "DXVK_FRAME_RATE"

    invoke-virtual {p2, v2, v1}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    :cond_0
    const-string v2, "async"

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "async":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "1"

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    const-string v4, "DXVK_ASYNC"

    invoke-virtual {p2, v4, v5}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    :cond_1
    const-string v4, "asyncCache"

    invoke-virtual {p1, v4}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "asyncCache":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 251
    const-string v3, "DXVK_GPLASYNCCACHE"

    invoke-virtual {p2, v3, v5}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 254
    const-string v3, "DXVK_CONFIG"

    invoke-virtual {p2, v3, v0}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_3
    const-string v3, "vkd3dLevel"

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "VKD3D_FEATURE_LEVEL"

    invoke-virtual {p2, v5, v3}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/imagefs/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/home/xuser/.cache"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DXVK_STATE_CACHE_PATH"

    invoke-virtual {p2, v5, v3}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method private static tryGetMajor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 46
    :cond_0
    sget-object v1, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->SEMVER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 47
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 49
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v0
.end method

.method private updateConfigVisibility(I)V
    .locals 3
    .param p1, "dxvkType"    # I

    .line 179
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsync:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsyncCache:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsync:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsyncCache:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsync:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/DXVKConfigDialog;->llAsyncCache:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_0
    return-void
.end method

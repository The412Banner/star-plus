.class public Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "GraphicsDriverConfigDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GraphicsDriverConfigDialog"

.field private static blacklistedExtensions:Ljava/lang/String;

.field private static isBCnCacheEnabled:Ljava/lang/String;

.field private static isDisablePresentWait:Ljava/lang/String;

.field private static isSyncFrame:Ljava/lang/String;

.field private static selectedBCnEmulation:Ljava/lang/String;

.field private static selectedBCnEmulationType:Ljava/lang/String;

.field private static selectedDeviceMemory:Ljava/lang/String;

.field private static selectedGPUName:Ljava/lang/String;

.field private static selectedPresentMode:Ljava/lang/String;

.field private static selectedResourceType:Ljava/lang/String;

.field private static selectedVersion:Ljava/lang/String;

.field private static selectedVulkanVersion:Ljava/lang/String;


# instance fields
.field private cbDisablePresentWait:Landroid/widget/CheckBox;

.field private cbSyncFrame:Landroid/widget/CheckBox;

.field private mscAvailableExtensions:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

.field private sBCnEmulation:Landroid/widget/Spinner;

.field private sBCnEmulationCache:Landroid/widget/Spinner;

.field private sBCnEmulationType:Landroid/widget/Spinner;

.field private sGPUName:Landroid/widget/Spinner;

.field private sMaxDeviceMemory:Landroid/widget/Spinner;

.field private sPresentMode:Landroid/widget/Spinner;

.field private sResourceType:Landroid/widget/Spinner;

.field private sVersion:Landroid/widget/Spinner;

.field private sVulkanVersion:Landroid/widget/Spinner;


# direct methods
.method public static synthetic $r8$lambda$_nFNyLllGWee_JMTP2IsVKEtFaA(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->lambda$initializeDialog$2(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmscAvailableExtensions(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Lcom/winlator/cmod/widget/MultiSelectionComboBox;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->mscAvailableExtensions:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsBCnEmulation(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulation:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsBCnEmulationCache(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationCache:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsBCnEmulationType(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationType:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsGPUName(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sGPUName:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsMaxDeviceMemory(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sMaxDeviceMemory:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsPresentMode(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sPresentMode:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsResourceType(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sResourceType:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsVersion(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVersion:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsVulkanVersion(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVulkanVersion:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mqueryAvailableExtensions(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->queryAvailableExtensions(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetselectedVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedVersion:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputisBCnCacheEnabled(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isBCnCacheEnabled:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedBCnEmulation(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedBCnEmulation:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedBCnEmulationType(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedBCnEmulationType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedDeviceMemory(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedDeviceMemory:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedGPUName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedGPUName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedPresentMode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedPresentMode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedResourceType(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedResourceType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedVersion:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputselectedVulkanVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedVulkanVersion:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->blacklistedExtensions:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "graphicsDriver"    # Ljava/lang/String;
    .param p3, "graphicsDriverVersionView"    # Landroid/widget/TextView;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0059

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->initializeDialog(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 144
    return-void
.end method

.method public static getExtensionsBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "graphicsDriverConfig"    # Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 117
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "blacklistedExtensions"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "graphicsDriverConfig"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 112
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private initializeDialog(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 30
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "graphicsDriver"    # Ljava/lang/String;
    .param p3, "graphicsDriverVersionView"    # Landroid/widget/TextView;

    .line 147
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const v0, 0x7f08014b

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->setIcon(I)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->setTitle(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 152
    .local v16, "graphicsDriverConfig":Ljava/lang/String;
    const v0, 0x7f0900fa

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVersion:Landroid/widget/Spinner;

    .line 153
    const v0, 0x7f0900fb

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVulkanVersion:Landroid/widget/Spinner;

    .line 154
    const v0, 0x7f0900b2

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->mscAvailableExtensions:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    .line 155
    const v0, 0x7f0900f8

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sPresentMode:Landroid/widget/Spinner;

    .line 156
    const v0, 0x7f0900f6

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sGPUName:Landroid/widget/Spinner;

    .line 157
    const v0, 0x7f0900f7

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sMaxDeviceMemory:Landroid/widget/Spinner;

    .line 158
    const v0, 0x7f0900f9

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sResourceType:Landroid/widget/Spinner;

    .line 159
    const v0, 0x7f0900f3

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulation:Landroid/widget/Spinner;

    .line 160
    const v0, 0x7f0900f5

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationType:Landroid/widget/Spinner;

    .line 161
    const v0, 0x7f0900f4

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationCache:Landroid/widget/Spinner;

    .line 162
    const v0, 0x7f090068

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->cbSyncFrame:Landroid/widget/CheckBox;

    .line 163
    const v0, 0x7f090048

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->cbDisablePresentWait:Landroid/widget/CheckBox;

    .line 165
    invoke-static/range {v16 .. v16}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    .line 167
    .local v13, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "vulkanVersion"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 168
    .local v17, "vulkanVersion":Ljava/lang/String;
    const-string v0, "version"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 169
    .local v12, "initialVersion":Ljava/lang/String;
    const-string v0, "blacklistedExtensions"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 170
    .local v11, "blExtensions":Ljava/lang/String;
    const-string v0, "gpuName"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 171
    .local v18, "gpuName":Ljava/lang/String;
    const-string v0, "maxDeviceMemory"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 172
    .local v19, "maxDeviceMemory":Ljava/lang/String;
    const-string v0, "syncFrame"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 173
    .local v20, "syncFrame":Ljava/lang/String;
    const-string v0, "disablePresentWait"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 174
    .local v21, "disablePresentWait":Ljava/lang/String;
    const-string v0, "presentMode"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 175
    .local v22, "presentMode":Ljava/lang/String;
    const-string v0, "resourceType"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 176
    .local v23, "resourceType":Ljava/lang/String;
    const-string v0, "bcnEmulation"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 177
    .local v24, "bcnEmulation":Ljava/lang/String;
    const-string v0, "bcnEmulationType"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 178
    .local v25, "bcnEmulationType":Ljava/lang/String;
    const-string v0, "bcnEmulationCache"

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 181
    .local v26, "bcnEmulationCache":Ljava/lang/String;
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVersion:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;

    invoke-direct {v1, v14, v15, v12, v11}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$1;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVulkanVersion:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$2;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$2;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sGPUName:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$3;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$3;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 232
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sMaxDeviceMemory:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$4;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$4;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 244
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sPresentMode:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$5;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$5;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 256
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sResourceType:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$6;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$6;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 268
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulation:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$7;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$7;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 280
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationType:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$8;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$8;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 292
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationCache:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$9;

    invoke-direct {v1, v14}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$9;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 304
    sput-object v20, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isSyncFrame:Ljava/lang/String;

    .line 305
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->cbSyncFrame:Landroid/widget/CheckBox;

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isSyncFrame:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->cbSyncFrame:Landroid/widget/CheckBox;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    sput-object v21, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isDisablePresentWait:Ljava/lang/String;

    .line 311
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->cbDisablePresentWait:Landroid/widget/CheckBox;

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isDisablePresentWait:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    iget-object v0, v14, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->cbDisablePresentWait:Landroid/widget/CheckBox;

    new-instance v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 317
    new-instance v2, Lcom/winlator/cmod/contents/ContentsManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/winlator/cmod/contents/ContentsManager;-><init>(Landroid/content/Context;)V

    .line 318
    .local v2, "contentsManager":Lcom/winlator/cmod/contents/ContentsManager;
    invoke-virtual {v2}, Lcom/winlator/cmod/contents/ContentsManager;->syncContents()V

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    move-object v4, v12

    move-object v5, v11

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v27, v11

    .end local v11    # "blExtensions":Ljava/lang/String;
    .local v27, "blExtensions":Ljava/lang/String;
    move-object/from16 v11, v25

    move-object/from16 v28, v12

    .end local v12    # "initialVersion":Ljava/lang/String;
    .local v28, "initialVersion":Ljava/lang/String;
    move-object/from16 v12, v26

    move-object/from16 v29, v13

    .end local v13    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v29, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->populateGraphicsDriverVersions(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$$ExternalSyntheticLambda2;

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v1, v15}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v14, v0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method static synthetic lambda$initializeDialog$0(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "buttonView"    # Landroid/widget/CompoundButton;
    .param p1, "isChecked"    # Z

    .line 307
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    sput-object v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isSyncFrame:Ljava/lang/String;

    .line 308
    return-void
.end method

.method static synthetic lambda$initializeDialog$1(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "buttonView"    # Landroid/widget/CompoundButton;
    .param p1, "isChecked"    # Z

    .line 313
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    sput-object v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isDisablePresentWait:Ljava/lang/String;

    .line 314
    return-void
.end method

.method private synthetic lambda$initializeDialog$2(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1
    .param p1, "graphicsDriverVersionView"    # Landroid/widget/TextView;
    .param p2, "anchor"    # Landroid/view/View;

    .line 324
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->mscAvailableExtensions:Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->getUnSelectedItemsAsString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->blacklistedExtensions:Ljava/lang/String;

    .line 326
    if-eqz p1, :cond_0

    .line 327
    sget-object v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_0
    invoke-static {}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->writeGraphicsDriverConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method private loadGPUNameSpinner(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinner"    # Landroid/widget/Spinner;

    .line 66
    const-string v0, "gpu_cards.json"

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "gpuNameList":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Device"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "jarray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 74
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "gpuName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    nop

    .end local v4    # "jobj":Lorg/json/JSONObject;
    .end local v5    # "gpuName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 79
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "jarray":Lorg/json/JSONArray;
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_1

    .line 81
    :catch_0
    move-exception v2

    .line 83
    :goto_1
    return-void
.end method

.method public static parseGraphicsDriverConfig(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p0, "graphicsDriverConfig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "mappedConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "configElements":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 91
    .local v5, "element":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "splittedElement":[Ljava/lang/String;
    aget-object v8, v7, v3

    .line 93
    .local v8, "key":Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v10

    .local v6, "value":Ljava/lang/String;
    goto :goto_1

    .line 96
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    .line 97
    .restart local v6    # "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "splittedElement":[Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :cond_1
    return-object v0
.end method

.method private populateGraphicsDriverVersions(Landroid/content/Context;Lcom/winlator/cmod/contents/ContentsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentsManager"    # Lcom/winlator/cmod/contents/ContentsManager;
    .param p3, "vulkanVersion"    # Ljava/lang/String;
    .param p4, "initialVersion"    # Ljava/lang/String;
    .param p5, "blExtensions"    # Ljava/lang/String;
    .param p6, "gpuName"    # Ljava/lang/String;
    .param p7, "maxDeviceMemory"    # Ljava/lang/String;
    .param p8, "presentMode"    # Ljava/lang/String;
    .param p9, "selectedResourceType"    # Ljava/lang/String;
    .param p10, "bcnEmulation"    # Ljava/lang/String;
    .param p11, "bcnEmulationType"    # Ljava/lang/String;
    .param p12, "bcnEmulationCache"    # Ljava/lang/String;
    .param p13, "graphicsDriver"    # Ljava/lang/String;

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p13

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v4, "wrapperVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "wrapperDefaultVersions":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 338
    .local v8, "version":Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/winlator/cmod/core/GPUInformation;->isDriverSupported(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 339
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v8    # "version":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 343
    :cond_1
    new-instance v6, Lcom/winlator/cmod/contents/AdrenotoolsManager;

    invoke-direct {v6, v1}, Lcom/winlator/cmod/contents/AdrenotoolsManager;-><init>(Landroid/content/Context;)V

    .line 344
    .local v6, "adrenotoolsManager":Lcom/winlator/cmod/contents/AdrenotoolsManager;
    invoke-virtual {v6}, Lcom/winlator/cmod/contents/AdrenotoolsManager;->enumarateInstalledDrivers()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-direct {v7, v1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 349
    .local v7, "wrapperAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVersion:Landroid/widget/Spinner;

    invoke-virtual {v8, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Graphics driver: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GraphicsDriverConfigDialog"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initial version: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sGPUName:Landroid/widget/Spinner;

    invoke-direct {v0, v1, v8}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->loadGPUNameSpinner(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 358
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVersion:Landroid/widget/Spinner;

    invoke-direct {v0, v8, v2, v3}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->setSpinnerSelectionWithFallback(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVulkanVersion:Landroid/widget/Spinner;

    move-object/from16 v10, p3

    invoke-static {v8, v10}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 360
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sGPUName:Landroid/widget/Spinner;

    move-object/from16 v11, p6

    invoke-static {v8, v11}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 361
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sMaxDeviceMemory:Landroid/widget/Spinner;

    move-object/from16 v12, p7

    invoke-static {v8, v12}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromNumber(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 362
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sPresentMode:Landroid/widget/Spinner;

    move-object/from16 v13, p8

    invoke-static {v8, v13}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 363
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sResourceType:Landroid/widget/Spinner;

    move-object/from16 v14, p9

    invoke-static {v8, v14}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 364
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulation:Landroid/widget/Spinner;

    move-object/from16 v15, p10

    invoke-static {v8, v15}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 365
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationType:Landroid/widget/Spinner;

    move-object/from16 v1, p11

    invoke-static {v8, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 366
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sBCnEmulationCache:Landroid/widget/Spinner;

    move-object/from16 v1, p12

    invoke-static {v8, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spinner selected position: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVersion:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Spinner selected value: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->sVersion:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method private queryAvailableExtensions(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p1, "driver"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 138
    invoke-static {p1, p2}, Lcom/winlator/cmod/core/GPUInformation;->enumerateExtensions(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setSpinnerSelectionWithFallback(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "graphicsDriver"    # Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 376
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 379
    return-void

    .line 375
    .end local v1    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "turnip25.1.0"

    invoke-static {v1, v0}, Lcom/winlator/cmod/core/GPUInformation;->isDriverSupported(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "System"

    :goto_1
    invoke-static {p1, v1}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 384
    return-void
.end method

.method public static toGraphicsDriverConfig(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 103
    .local p0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ""

    .line 104
    .local v0, "graphicsDriverConfig":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeGraphicsDriverConfig()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vulkanVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedVulkanVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";blacklistedExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->blacklistedExtensions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";maxDeviceMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedDeviceMemory:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Lcom/winlator/cmod/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";presentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedPresentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";syncFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isSyncFrame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";disablePresentWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isDisablePresentWait:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";resourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedResourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";bcnEmulation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedBCnEmulation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";bcnEmulationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedBCnEmulationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";bcnEmulationCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->isBCnCacheEnabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";gpuName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/contentdialog/GraphicsDriverConfigDialog;->selectedGPUName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "graphicsDriverConfig":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Written config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphicsDriverConfigDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v0
.end method

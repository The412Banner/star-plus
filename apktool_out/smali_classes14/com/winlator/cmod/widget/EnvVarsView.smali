.class public Lcom/winlator/cmod/widget/EnvVarsView;
.super Landroid/widget/FrameLayout;
.source "EnvVarsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    }
.end annotation


# static fields
.field public static final knownEnvVars:[[Ljava/lang/String;


# instance fields
.field private final container:Landroid/widget/LinearLayout;

.field private final emptyTextView:Landroid/widget/TextView;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isDarkMode:Z


# direct methods
.method public static synthetic $r8$lambda$fjei1MnvhP1hZh00_SsCyfkNdEQ(Lcom/winlator/cmod/widget/EnvVarsView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/widget/EnvVarsView;->lambda$add$4(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 26

    .line 30
    const/16 v0, 0x11

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ZINK_DESCRIPTORS"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "SELECT"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "auto"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "lazy"

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-string v4, "cached"

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-string v4, "notemplates"

    const/4 v10, 0x5

    aput-object v4, v3, v10

    aput-object v3, v1, v5

    const/16 v3, 0x9

    new-array v4, v3, [Ljava/lang/String;

    const-string v11, "ZINK_DEBUG"

    aput-object v11, v4, v5

    const-string v11, "SELECT_MULTIPLE"

    aput-object v11, v4, v6

    const-string v12, "nir"

    aput-object v12, v4, v7

    const-string v12, "spirv"

    aput-object v12, v4, v8

    const-string v12, "tgsi"

    aput-object v12, v4, v9

    const-string v12, "validation"

    aput-object v12, v4, v10

    const-string v12, "sync"

    aput-object v12, v4, v2

    const-string v12, "compact"

    const/4 v13, 0x7

    aput-object v12, v4, v13

    const-string v12, "noreorder"

    const/16 v14, 0x8

    aput-object v12, v4, v14

    aput-object v4, v1, v6

    new-array v4, v9, [Ljava/lang/String;

    const-string v12, "MESA_SHADER_CACHE_DISABLE"

    aput-object v12, v4, v5

    const-string v12, "CHECKBOX"

    aput-object v12, v4, v6

    const-string v15, "false"

    aput-object v15, v4, v7

    const-string v15, "true"

    aput-object v15, v4, v8

    aput-object v4, v1, v7

    new-array v4, v9, [Ljava/lang/String;

    const-string v15, "mesa_glthread"

    aput-object v15, v4, v5

    aput-object v12, v4, v6

    const-string v15, "false"

    aput-object v15, v4, v7

    const-string v15, "true"

    aput-object v15, v4, v8

    aput-object v4, v1, v8

    new-array v4, v9, [Ljava/lang/String;

    const-string v15, "WINEESYNC"

    aput-object v15, v4, v5

    aput-object v12, v4, v6

    const-string v15, "0"

    aput-object v15, v4, v7

    const-string v16, "1"

    aput-object v16, v4, v8

    aput-object v4, v1, v9

    new-array v4, v9, [Ljava/lang/String;

    const-string v17, "FD_DEV_FEATURES"

    aput-object v17, v4, v5

    aput-object v11, v4, v6

    const-string v17, "enable_tp_ubwc_flag_hint=1"

    aput-object v17, v4, v7

    const-string v17, "storage_8bit=1"

    aput-object v17, v4, v8

    aput-object v4, v1, v10

    const/16 v4, 0x1e

    new-array v4, v4, [Ljava/lang/String;

    const-string v17, "TU_DEBUG"

    aput-object v17, v4, v5

    aput-object v11, v4, v6

    const-string v17, "forcecb"

    aput-object v17, v4, v7

    const-string v17, "nocb"

    aput-object v17, v4, v8

    const-string v17, "startup"

    aput-object v17, v4, v9

    const-string v17, "deck_emu"

    aput-object v17, v4, v10

    const-string v17, "nir"

    aput-object v17, v4, v2

    const-string v17, "nobin"

    aput-object v17, v4, v13

    const-string v17, "sysmem"

    aput-object v17, v4, v14

    const-string v17, "gmem"

    aput-object v17, v4, v3

    const-string v17, "forcebin"

    const/16 v18, 0xa

    aput-object v17, v4, v18

    const-string v17, "layout"

    const/16 v19, 0xb

    aput-object v17, v4, v19

    const-string v17, "noubwc"

    const/16 v20, 0xc

    aput-object v17, v4, v20

    const-string v17, "nomultipos"

    const/16 v21, 0xd

    aput-object v17, v4, v21

    const-string v17, "nolrz"

    const/16 v22, 0xe

    aput-object v17, v4, v22

    const-string v17, "nolrzfc"

    const/16 v23, 0xf

    aput-object v17, v4, v23

    const-string v17, "perf"

    const/16 v24, 0x10

    aput-object v17, v4, v24

    const-string v17, "perfc"

    aput-object v17, v4, v0

    const/16 v17, 0x12

    const-string v25, "flushall"

    aput-object v25, v4, v17

    const/16 v17, 0x13

    const-string v25, "syncdraw"

    aput-object v25, v4, v17

    const/16 v17, 0x14

    const-string v25, "push_consts_per_stage"

    aput-object v25, v4, v17

    const/16 v17, 0x15

    const-string v25, "rast_order"

    aput-object v25, v4, v17

    const/16 v17, 0x16

    const-string v25, "unaligned_store"

    aput-object v25, v4, v17

    const/16 v17, 0x17

    const-string v25, "log_skip_gmem_ops"

    aput-object v25, v4, v17

    const/16 v17, 0x18

    const-string v25, "dynamic"

    aput-object v25, v4, v17

    const/16 v17, 0x19

    const-string v25, "bos"

    aput-object v25, v4, v17

    const/16 v17, 0x1a

    const-string v25, "3d_load"

    aput-object v25, v4, v17

    const/16 v17, 0x1b

    const-string v25, "fdm"

    aput-object v25, v4, v17

    const/16 v17, 0x1c

    const-string v25, "noconform"

    aput-object v25, v4, v17

    const/16 v17, 0x1d

    const-string v25, "rd"

    aput-object v25, v4, v17

    aput-object v4, v1, v2

    new-array v4, v10, [Ljava/lang/String;

    const-string v17, "IR3_SHADER_DEBUG"

    aput-object v17, v4, v5

    aput-object v11, v4, v6

    const-string v17, "nouboopt"

    aput-object v17, v4, v7

    const-string v17, "nopreamble"

    aput-object v17, v4, v8

    const-string v17, "noearlypreamble"

    aput-object v17, v4, v9

    aput-object v4, v1, v13

    const/16 v4, 0x15

    new-array v4, v4, [Ljava/lang/String;

    const-string v17, "DXVK_HUD"

    aput-object v17, v4, v5

    aput-object v11, v4, v6

    const-string v17, "scale=0.5"

    aput-object v17, v4, v7

    const-string v17, "scale=0.7"

    aput-object v17, v4, v8

    const-string v17, "scale=1.0"

    aput-object v17, v4, v9

    const-string v17, "opacity=0.5"

    aput-object v17, v4, v10

    const-string v17, "opacity=0.7"

    aput-object v17, v4, v2

    const-string v2, "devinfo"

    aput-object v2, v4, v13

    const-string v2, "fps"

    aput-object v2, v4, v14

    const-string v2, "frametimes"

    aput-object v2, v4, v3

    const-string v2, "submissions"

    aput-object v2, v4, v18

    const-string v2, "drawcalls"

    aput-object v2, v4, v19

    const-string v2, "pipelines"

    aput-object v2, v4, v20

    const-string v2, "descriptors"

    aput-object v2, v4, v21

    const-string v2, "memory"

    aput-object v2, v4, v22

    const-string v2, "gpuload"

    aput-object v2, v4, v23

    const-string v2, "version"

    aput-object v2, v4, v24

    const-string v2, "api"

    aput-object v2, v4, v0

    const/16 v0, 0x12

    const-string v2, "cs"

    aput-object v2, v4, v0

    const/16 v0, 0x13

    const-string v2, "compiler"

    aput-object v2, v4, v0

    const/16 v0, 0x14

    const-string v2, "samplers"

    aput-object v2, v4, v0

    aput-object v4, v1, v14

    new-array v0, v10, [Ljava/lang/String;

    const-string v2, "DXVK_CONFIG_FILE"

    aput-object v2, v0, v5

    const-string v2, "SELECT"

    aput-object v2, v0, v6

    const-string v2, "/storage/emulated/0/starengine.ini"

    aput-object v2, v0, v7

    const-string v2, "/storage/emulated/0/Download/starengine.ini"

    aput-object v2, v0, v8

    const-string v2, "/storage/emulated/0/Winlator/starengine.ini"

    aput-object v2, v0, v9

    aput-object v0, v1, v3

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "MESA_EXTENSION_MAX_YEAR"

    aput-object v2, v0, v5

    const-string v2, "NUMBER"

    aput-object v2, v0, v6

    aput-object v0, v1, v18

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "WRAPPER_MAX_IMAGE_COUNT"

    aput-object v2, v0, v5

    const-string v2, "TEXT"

    aput-object v2, v0, v6

    aput-object v0, v1, v19

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "MESA_GL_VERSION_OVERRIDE"

    aput-object v2, v0, v5

    const-string v2, "TEXT"

    aput-object v2, v0, v6

    aput-object v0, v1, v20

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "PULSE_LATENCY_MSEC"

    aput-object v2, v0, v5

    const-string v2, "NUMBER"

    aput-object v2, v0, v6

    aput-object v0, v1, v21

    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "WINE_DO_NOT_CREATE_DXGI_DEVICE_MANAGER"

    aput-object v2, v0, v5

    aput-object v12, v0, v6

    aput-object v15, v0, v7

    aput-object v16, v0, v8

    aput-object v0, v1, v22

    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "WINE_NEW_MEDIASOURCE"

    aput-object v2, v0, v5

    aput-object v12, v0, v6

    aput-object v15, v0, v7

    aput-object v16, v0, v8

    aput-object v0, v1, v23

    new-array v0, v10, [Ljava/lang/String;

    const-string v2, "GALLIUM_HUD"

    aput-object v2, v0, v5

    aput-object v11, v0, v6

    const-string v2, "simple"

    aput-object v2, v0, v7

    const-string v2, "fps"

    aput-object v2, v0, v8

    const-string v2, "frametime"

    aput-object v2, v0, v9

    aput-object v0, v1, v24

    sput-object v1, Lcom/winlator/cmod/widget/EnvVarsView;->knownEnvVars:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->inflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/EnvVarsView;->addView(Landroid/view/View;)V

    .line 83
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const v2, 0x7f100182

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    invoke-static {v2}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 88
    .local v0, "padding":I
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 89
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/EnvVarsView;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "isDarkMode"    # Z

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    iput-boolean p5, p0, Lcom/winlator/cmod/widget/EnvVarsView;->isDarkMode:Z

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->inflater:Landroid/view/LayoutInflater;

    .line 109
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/EnvVarsView;->addView(Landroid/view/View;)V

    .line 114
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const v2, 0x7f100182

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    invoke-static {v2}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 119
    .local v0, "padding":I
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/EnvVarsView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/winlator/cmod/widget/EnvVarsView;->applyDarkTheme(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "isDarkMode"    # Z

    .line 102
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/winlator/cmod/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isDarkMode"    # Z

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/winlator/cmod/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDarkMode"    # Z

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/winlator/cmod/widget/EnvVarsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 95
    return-void
.end method

.method private applyDarkTheme(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 137
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->isDarkMode:Z

    if-eqz v0, :cond_3

    .line 138
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 140
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 141
    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 143
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0

    .line 144
    :cond_1
    instance-of v0, p1, Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 145
    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    goto :goto_0

    .line 146
    :cond_2
    instance-of v0, p1, Landroid/widget/ToggleButton;

    .line 153
    :cond_3
    :goto_0
    return-void
.end method

.method private findKnownEnvVar(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/winlator/cmod/widget/EnvVarsView;->knownEnvVars:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 128
    .local v4, "values":[Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    return-object v4

    .line 127
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$add$0(Landroid/widget/ToggleButton;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "toggleButton"    # Landroid/widget/ToggleButton;
    .param p1, "knownEnvVar"    # [Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aget-object v0, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$add$1(Landroid/widget/Spinner;)Ljava/lang/String;
    .locals 1
    .param p0, "spinner"    # Landroid/widget/Spinner;

    .line 204
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$add$2(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 220
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$add$3(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p0, "editTextNumber"    # Landroid/widget/EditText;

    .line 229
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$add$4(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/EnvVarsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    const v3, 0x7f0c0050

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "itemView":Landroid/view/View;
    const v2, 0x7f09017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/EnvVarsView;->findKnownEnvVar(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "knownEnvVar":[Ljava/lang/String;
    const-string v3, "TEXT"

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    aget-object v6, v2, v5

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 189
    .local v6, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, "NUMBER"

    const/4 v9, 0x2

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v3, "SELECT_MULTIPLE"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_2

    :sswitch_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_2
    const-string v3, "SELECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_2

    :sswitch_3
    const-string v3, "CHECKBOX"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_2

    :sswitch_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    const v7, 0x7f0800fd

    const v10, 0x7f0800fc

    const v11, 0x7f090081

    packed-switch v3, :pswitch_data_0

    .line 224
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 225
    .local v3, "editTextNumber":Landroid/widget/EditText;
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 226
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_4

    .line 215
    .end local v3    # "editTextNumber":Landroid/widget/EditText;
    :pswitch_0
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 216
    .local v3, "editText":Landroid/widget/EditText;
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 217
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-boolean v4, p0, Lcom/winlator/cmod/widget/EnvVarsView;->isDarkMode:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move v7, v10

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 220
    new-instance v4, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;)V

    .line 221
    .local v4, "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    goto/16 :goto_6

    .line 207
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    :pswitch_1
    const v3, 0x7f0900b3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/widget/MultiSelectionComboBox;

    .line 208
    .local v3, "comboBox":Lcom/winlator/cmod/widget/MultiSelectionComboBox;
    array-length v5, v2

    invoke-static {v2, v9, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setItems([Ljava/lang/String;)V

    .line 209
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setSelectedItems([Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3, v4}, Lcom/winlator/cmod/widget/MultiSelectionComboBox;->setVisibility(I)V

    .line 212
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/widget/MultiSelectionComboBox;)V

    .line 213
    .restart local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    goto :goto_6

    .line 198
    .end local v3    # "comboBox":Lcom/winlator/cmod/widget/MultiSelectionComboBox;
    .end local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    :pswitch_2
    array-length v3, v2

    invoke-static {v2, v9, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 199
    .local v3, "items":[Ljava/lang/String;
    const v5, 0x7f09011c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 200
    .local v5, "spinner":Landroid/widget/Spinner;
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-direct {v7, v0, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 201
    invoke-static {v5, p2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 202
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 203
    invoke-direct {p0, v5}, Lcom/winlator/cmod/widget/EnvVarsView;->applyDarkTheme(Landroid/view/View;)V

    .line 204
    new-instance v4, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v5}, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Spinner;)V

    .line 205
    .restart local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    goto :goto_6

    .line 191
    .end local v3    # "items":[Ljava/lang/String;
    .end local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    .end local v5    # "spinner":Landroid/widget/Spinner;
    :pswitch_3
    const v3, 0x7f09017d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 192
    .local v3, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 193
    const-string v7, "1"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "true"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 194
    invoke-direct {p0, v3}, Lcom/winlator/cmod/widget/EnvVarsView;->applyDarkTheme(Landroid/view/View;)V

    .line 195
    new-instance v4, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ToggleButton;[Ljava/lang/String;)V

    .line 196
    .restart local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    goto :goto_6

    .line 228
    .end local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    .local v3, "editTextNumber":Landroid/widget/EditText;
    :cond_5
    :goto_4
    iget-boolean v4, p0, Lcom/winlator/cmod/widget/EnvVarsView;->isDarkMode:Z

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    move v7, v10

    :goto_5
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 229
    new-instance v4, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3}, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda4;-><init>(Landroid/widget/EditText;)V

    .line 233
    .end local v3    # "editTextNumber":Landroid/widget/EditText;
    .restart local v4    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    const v3, 0x7f090037

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v1}, Lcom/winlator/cmod/widget/EnvVarsView$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/widget/EnvVarsView;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v3, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    iget-object v3, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x761430b7 -> :sswitch_4
        -0x75bef43d -> :sswitch_3
        -0x6e6dd704 -> :sswitch_2
        0x273d2d -> :sswitch_1
        0x5fa9f9f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public containsName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "child":Landroid/view/View;
    const v2, 0x7f09017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 170
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getEnvVars()Ljava/lang/String;
    .locals 8

    .line 157
    new-instance v0, Lcom/winlator/cmod/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/cmod/core/EnvVars;-><init>()V

    .line 158
    .local v0, "envVars":Lcom/winlator/cmod/core/EnvVars;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;

    .line 161
    .local v3, "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    const v4, 0x7f09017c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;->call()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "getValueCallback":Lcom/winlator/cmod/widget/EnvVarsView$GetValueCallback;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/winlator/cmod/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setDarkMode(Z)V
    .locals 2
    .param p1, "isDarkMode"    # Z

    .line 249
    iput-boolean p1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->isDarkMode:Z

    .line 250
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->emptyTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/widget/EnvVarsView;->applyDarkTheme(Landroid/view/View;)V

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/winlator/cmod/widget/EnvVarsView;->applyDarkTheme(Landroid/view/View;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEnvVars(Lcom/winlator/cmod/core/EnvVars;)V
    .locals 3
    .param p1, "envVars"    # Lcom/winlator/cmod/core/EnvVars;

    .line 244
    iget-object v0, p0, Lcom/winlator/cmod/widget/EnvVarsView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 245
    invoke-virtual {p1}, Lcom/winlator/cmod/core/EnvVars;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/winlator/cmod/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/winlator/cmod/widget/EnvVarsView;->add(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.class public Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;
.super Landroid/app/Dialog;
.source "FSRControlFloatingDialog.java"


# instance fields
.field private final activity:Lcom/winlator/cmod/XServerDisplayActivity;

.field private final lblSharpnessHeader:Landroid/widget/TextView;

.field private final renderer:Lcom/winlator/cmod/renderer/GLRenderer;

.field private final sbFSR:Lcom/winlator/cmod/widget/SeekBar;

.field private final spUpscalerMode:Landroid/widget/Spinner;

.field private final swFSR:Landroid/widget/Switch;

.field private final swHDR:Landroid/widget/Switch;


# direct methods
.method public static synthetic $r8$lambda$9REepYvE2vjyWdYeEr8jj1NQGis(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBv0ExeH1IEJ00wyBCCbvK4Qv3c(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->updateLive()V

    return-void
.end method

.method public static synthetic $r8$lambda$NVGQRjyAVg23uUWJFxxD6yu-9y8(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4bvYws32HU3KNNh0ZI3NVT90RA(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gLLKpHnCxrybnf75zZmDRugIUyc(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->lambda$updateSharpnessLabel$4(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$pdNHA0vz1zsbdJwvaIWZ-q3FM4I(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetswFSR(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swFSR:Landroid/widget/Switch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateLive(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->updateLive()V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 13
    .param p1, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 40
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->requestWindowFeature(I)Z

    .line 43
    const v1, 0x7f0c0058

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 46
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 47
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 48
    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 49
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 51
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 52
    const/16 v3, 0x64

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 53
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 54
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v2, 0x7f090103

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->spUpscalerMode:Landroid/widget/Spinner;

    .line 58
    const v2, 0x7f090117

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swFSR:Landroid/widget/Switch;

    .line 59
    const v2, 0x7f0900d2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/widget/SeekBar;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->sbFSR:Lcom/winlator/cmod/widget/SeekBar;

    .line 60
    const v2, 0x7f09008d

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->lblSharpnessHeader:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f090118

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swHDR:Landroid/widget/Switch;

    .line 62
    const v2, 0x7f090011

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 63
    .local v2, "btClose":Landroid/widget/Button;
    const v3, 0x7f09008e

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, "title":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServerView()Lcom/winlator/cmod/widget/XServerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/XServerView;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v4

    iput-object v4, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    .line 66
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    if-nez v4, :cond_1

    return-void

    .line 68
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v4, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "Super Resolution"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v5, "DLS (Color Boost)"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v5, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$1;

    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1090008

    invoke-direct {v5, p0, v6, v7, v4}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$1;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;Landroid/content/Context;ILjava/util/List;)V

    .line 90
    .local v5, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    iget-object v6, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->spUpscalerMode:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    iget-object v6, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v6}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v6

    const-class v7, Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/renderer/effects/FSREffect;

    .line 94
    .local v6, "fsr":Lcom/winlator/cmod/renderer/effects/FSREffect;
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    .line 95
    iget-object v9, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swFSR:Landroid/widget/Switch;

    invoke-virtual {v9, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    invoke-virtual {v6}, Lcom/winlator/cmod/renderer/effects/FSREffect;->getMode()I

    move-result v9

    if-ne v9, v0, :cond_2

    move v9, v0

    goto :goto_0

    :cond_2
    move v9, v8

    .line 98
    .local v9, "modeIndex":I
    :goto_0
    iget-object v10, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->spUpscalerMode:Landroid/widget/Spinner;

    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 100
    invoke-virtual {v6}, Lcom/winlator/cmod/renderer/effects/FSREffect;->getLevel()F

    move-result v10

    .line 101
    .local v10, "level":F
    sub-float v7, v10, v7

    const/high16 v11, 0x41c80000    # 25.0f

    mul-float/2addr v7, v11

    float-to-int v7, v7

    .line 102
    .local v7, "progress":I
    iget-object v11, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->sbFSR:Lcom/winlator/cmod/widget/SeekBar;

    int-to-float v12, v7

    invoke-virtual {v11, v12}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 103
    invoke-direct {p0, v10}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->updateSharpnessLabel(F)V

    .line 104
    .end local v7    # "progress":I
    .end local v9    # "modeIndex":I
    .end local v10    # "level":F
    goto :goto_1

    .line 105
    :cond_3
    iget-object v9, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swFSR:Landroid/widget/Switch;

    invoke-virtual {v9, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 106
    iget-object v9, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->spUpscalerMode:Landroid/widget/Spinner;

    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 107
    iget-object v9, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->sbFSR:Lcom/winlator/cmod/widget/SeekBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 108
    invoke-direct {p0, v7}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->updateSharpnessLabel(F)V

    .line 111
    :goto_1
    iget-object v7, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v7}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v7

    const-class v9, Lcom/winlator/cmod/renderer/effects/HDREffect;

    invoke-virtual {v7, v9}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v7

    check-cast v7, Lcom/winlator/cmod/renderer/effects/HDREffect;

    .line 112
    .local v7, "hdr":Lcom/winlator/cmod/renderer/effects/HDREffect;
    iget-object v9, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swHDR:Landroid/widget/Switch;

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v0, v8

    :goto_2
    invoke-virtual {v9, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->spUpscalerMode:Landroid/widget/Spinner;

    new-instance v8, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$2;

    invoke-direct {v8, p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$2;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 122
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->sbFSR:Lcom/winlator/cmod/widget/SeekBar;

    new-instance v8, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V

    invoke-virtual {v0, v8}, Lcom/winlator/cmod/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swFSR:Landroid/widget/Switch;

    new-instance v8, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swHDR:Landroid/widget/Switch;

    new-instance v8, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;

    invoke-direct {v0, p0, v1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$3;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;Landroid/view/Window;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    new-instance v0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 127
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->updateLive()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 128
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->updateLive()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 154
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$updateSharpnessLabel$4(F)V
    .locals 4
    .param p1, "level"    # F

    .line 158
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->lblSharpnessHeader:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Strength: %.0f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLive()V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->sbFSR:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v0

    .line 165
    .local v0, "sliderVal":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 166
    .local v1, "level":F
    const/high16 v2, 0x41400000    # 12.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    .line 167
    :cond_1
    const/high16 v2, 0x42140000    # 37.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    .line 168
    :cond_2
    const/high16 v2, 0x42780000    # 62.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    const/high16 v1, 0x40800000    # 4.0f

    .line 169
    :cond_3
    const/high16 v2, 0x42ae0000    # 87.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v1, 0x40a00000    # 5.0f

    .line 171
    :cond_4
    invoke-direct {p0, v1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->updateSharpnessLabel(F)V

    .line 173
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v2

    const-class v3, Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/renderer/effects/FSREffect;

    .line 174
    .local v2, "currentFsr":Lcom/winlator/cmod/renderer/effects/FSREffect;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v3}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 176
    :cond_5
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swFSR:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    new-instance v3, Lcom/winlator/cmod/renderer/effects/FSREffect;

    invoke-direct {v3}, Lcom/winlator/cmod/renderer/effects/FSREffect;-><init>()V

    .line 178
    .local v3, "newFsr":Lcom/winlator/cmod/renderer/effects/FSREffect;
    invoke-virtual {v3, v1}, Lcom/winlator/cmod/renderer/effects/FSREffect;->setLevel(F)V

    .line 180
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->spUpscalerMode:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 181
    .local v4, "selectedMode":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Lcom/winlator/cmod/renderer/effects/FSREffect;->setMode(I)V

    .line 183
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v5}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 186
    .end local v3    # "newFsr":Lcom/winlator/cmod/renderer/effects/FSREffect;
    .end local v4    # "selectedMode":I
    :cond_7
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v3}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v3

    const-class v4, Lcom/winlator/cmod/renderer/effects/HDREffect;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/renderer/effects/HDREffect;

    .line 187
    .local v3, "currentHdr":Lcom/winlator/cmod/renderer/effects/HDREffect;
    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v4}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 189
    :cond_8
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->swHDR:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 190
    new-instance v4, Lcom/winlator/cmod/renderer/effects/HDREffect;

    invoke-direct {v4}, Lcom/winlator/cmod/renderer/effects/HDREffect;-><init>()V

    .line 191
    .local v4, "newHdr":Lcom/winlator/cmod/renderer/effects/HDREffect;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/renderer/effects/HDREffect;->setStrength(F)V

    .line 192
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    invoke-virtual {v5}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 194
    .end local v4    # "newHdr":Lcom/winlator/cmod/renderer/effects/HDREffect;
    :cond_9
    return-void

    .line 162
    .end local v0    # "sliderVal":F
    .end local v1    # "level":F
    .end local v2    # "currentFsr":Lcom/winlator/cmod/renderer/effects/FSREffect;
    .end local v3    # "currentHdr":Lcom/winlator/cmod/renderer/effects/HDREffect;
    :cond_a
    :goto_1
    return-void
.end method

.method private updateSharpnessLabel(F)V
    .locals 2
    .param p1, "level"    # F

    .line 158
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    new-instance v1, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/FSRControlFloatingDialog;F)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/XServerDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

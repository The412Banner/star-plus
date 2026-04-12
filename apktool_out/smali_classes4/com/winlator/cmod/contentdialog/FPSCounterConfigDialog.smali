.class public Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "FPSCounterConfigDialog.java"


# instance fields
.field private final cbShowBatteryTemp:Landroid/widget/CheckBox;

.field private final cbShowBatteryVoltage:Landroid/widget/CheckBox;

.field private final cbShowCPULoad:Landroid/widget/CheckBox;

.field private final cbShowFPS:Landroid/widget/CheckBox;

.field private final cbShowGPULoad:Landroid/widget/CheckBox;

.field private final cbShowRAM:Landroid/widget/CheckBox;

.field private final cbShowRenderer:Landroid/widget/CheckBox;

.field private final sbHUDScale:Landroid/widget/SeekBar;

.field private final sbHUDTransparency:Landroid/widget/SeekBar;

.field private final tvHUDScaleValue:Landroid/widget/TextView;

.field private final tvHUDTransparencyValue:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgettvHUDScaleValue(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->tvHUDScaleValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvHUDTransparencyValue(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->tvHUDTransparencyValue:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configString"    # Ljava/lang/String;

    .line 26
    const v0, 0x7f0c0056

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    const-string v0, "Winlator HUD Customizations"

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->setTitle(Ljava/lang/String;)V

    .line 29
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowFPS:Landroid/widget/CheckBox;

    .line 30
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowCPULoad:Landroid/widget/CheckBox;

    .line 31
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowGPULoad:Landroid/widget/CheckBox;

    .line 32
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowRAM:Landroid/widget/CheckBox;

    .line 33
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowRenderer:Landroid/widget/CheckBox;

    .line 34
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowBatteryTemp:Landroid/widget/CheckBox;

    .line 35
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowBatteryVoltage:Landroid/widget/CheckBox;

    .line 36
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDScale:Landroid/widget/SeekBar;

    .line 37
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->tvHUDScaleValue:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDTransparency:Landroid/widget/SeekBar;

    .line 39
    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->tvHUDTransparencyValue:Landroid/widget/TextView;

    .line 42
    invoke-static {p2}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->parseConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 43
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowFPS:Landroid/widget/CheckBox;

    const-string v2, "showFPS"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 44
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowCPULoad:Landroid/widget/CheckBox;

    const-string v2, "showCPULoad"

    const-string v4, "0"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowGPULoad:Landroid/widget/CheckBox;

    const-string v2, "showGPULoad"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowRAM:Landroid/widget/CheckBox;

    const-string v2, "showRAM"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowRenderer:Landroid/widget/CheckBox;

    const-string v2, "showRenderer"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowBatteryTemp:Landroid/widget/CheckBox;

    const-string v2, "showBatteryTemp"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowBatteryVoltage:Landroid/widget/CheckBox;

    const-string v2, "showBatteryVoltage"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 52
    const-string v1, "hudScale"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, "initialScale":I
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDScale:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 54
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->tvHUDScaleValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDScale:Landroid/widget/SeekBar;

    new-instance v3, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$1;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$1;-><init>(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    const-string v2, "hudTransparency"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, "initialTrans":I
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDTransparency:Landroid/widget/SeekBar;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->tvHUDTransparencyValue:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDTransparency:Landroid/widget/SeekBar;

    new-instance v4, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$2;

    invoke-direct {v4, p0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$2;-><init>(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    return-void
.end method

.method static synthetic lambda$show$0(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;Landroid/view/View;)V
    .locals 5
    .param p0, "dialog"    # Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;
    .param p1, "anchorView"    # Landroid/view/View;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowFPS:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "showFPS"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowCPULoad:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "showCPULoad"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowGPULoad:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    const-string v4, "showGPULoad"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowRAM:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    const-string v4, "showRAM"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowRenderer:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    const-string v4, "showRenderer"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowBatteryTemp:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    const-string v4, "showBatteryTemp"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->cbShowBatteryVoltage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    const-string v1, "showBatteryVoltage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDScale:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hudScale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->sbHUDTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hudTransparency"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->toConfigString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method private static parseConfig(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .param p0, "configString"    # Ljava/lang/String;
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

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    new-instance v1, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "kv":Lcom/winlator/cmod/core/KeyValueSet;
    invoke-virtual {v1}, Lcom/winlator/cmod/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .local v3, "entry":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    .end local v3    # "entry":[Ljava/lang/String;
    :cond_1
    return-object v0

    .line 113
    .end local v1    # "kv":Lcom/winlator/cmod/core/KeyValueSet;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/View;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 90
    .local v0, "currentTag":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;

    invoke-direct {v1, p0, v0}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .local v1, "dialog":Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;
    new-instance v2, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v1}, Lcom/winlator/cmod/contentdialog/FPSCounterConfigDialog;->show()V

    .line 109
    return-void
.end method

.method private static toConfigString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
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

    .line 120
    .local p0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v0}, Lcom/winlator/cmod/core/KeyValueSet;-><init>()V

    .line 121
    .local v0, "kv":Lcom/winlator/cmod/core/KeyValueSet;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/winlator/cmod/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

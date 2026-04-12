.class public Lcom/winlator/cmod/widget/FrameRating;
.super Landroid/widget/FrameLayout;
.source "FrameRating.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final THERMAL_PATHS:[Ljava/lang/String;


# instance fields
.field private batteryTemp:F

.field private batteryWattage:F

.field private final context:Landroid/content/Context;

.field private cpuTemp:F

.field private frameCount:I

.field private gpuLoad:I

.field private final graphicsDriverConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private lastFPS:F

.field private lastTime:J

.field private final rowBatteryTemp:Landroid/view/View;

.field private final rowBatteryVoltage:Landroid/view/View;

.field private final rowCPUTemp:Landroid/view/View;

.field private final rowFPS:Landroid/view/View;

.field private final rowGPU:Landroid/view/View;

.field private final rowGPULoad:Landroid/view/View;

.field private final rowRAM:Landroid/view/View;

.field private final rowRenderer:Landroid/view/View;

.field private final totalRAM:Ljava/lang/String;

.field private final tvBatteryTemp:Landroid/widget/TextView;

.field private final tvBatteryVoltage:Landroid/widget/TextView;

.field private final tvCPUTemp:Landroid/widget/TextView;

.field private final tvFPS:Landroid/widget/TextView;

.field private final tvGPU:Landroid/widget/TextView;

.field private final tvGPULoad:Landroid/widget/TextView;

.field private final tvRAM:Landroid/widget/TextView;

.field private final tvRenderer:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sys/class/thermal/thermal_zone0/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/sys/class/thermal/thermal_zone1/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sys/class/thermal/thermal_zone7/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sys/class/thermal/thermal_zone10/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sys/class/hwmon/hwmon0/temp1_input"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/winlator/cmod/widget/FrameRating;->THERMAL_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 65
    .local p2, "graphicsDriverConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/FrameRating;-><init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .line 69
    .local p2, "graphicsDriverConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/widget/FrameRating;-><init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/util/AttributeSet;",
            "I)V"
        }
    .end annotation

    .line 73
    .local p2, "graphicsDriverConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/winlator/cmod/widget/FrameRating;->lastTime:J

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/widget/FrameRating;->frameCount:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/winlator/cmod/widget/FrameRating;->lastFPS:F

    .line 30
    iput v1, p0, Lcom/winlator/cmod/widget/FrameRating;->cpuTemp:F

    .line 31
    iput v0, p0, Lcom/winlator/cmod/widget/FrameRating;->gpuLoad:I

    .line 32
    iput v1, p0, Lcom/winlator/cmod/widget/FrameRating;->batteryTemp:F

    .line 33
    iput v1, p0, Lcom/winlator/cmod/widget/FrameRating;->batteryWattage:F

    .line 74
    iput-object p1, p0, Lcom/winlator/cmod/widget/FrameRating;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/winlator/cmod/widget/FrameRating;->graphicsDriverConfig:Ljava/util/HashMap;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0057

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    const v0, 0x7f090141

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvFPS:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090161

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRAM:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRenderer:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPU:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvCPUTemp:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f090145

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPULoad:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvBatteryTemp:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvBatteryVoltage:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowFPS:Landroid/view/View;

    .line 89
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRAM:Landroid/view/View;

    .line 90
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRenderer:Landroid/view/View;

    .line 91
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPU:Landroid/view/View;

    .line 92
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowCPUTemp:Landroid/view/View;

    .line 93
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPULoad:Landroid/view/View;

    .line 94
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryTemp:Landroid/view/View;

    .line 95
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/widget/FrameRating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryVoltage:Landroid/view/View;

    .line 97
    invoke-direct {p0}, Lcom/winlator/cmod/widget/FrameRating;->getTotalRAM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->totalRAM:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private calculateGPULoad()I
    .locals 10

    .line 181
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/kgsl/kgsl-3d0/gpubusy"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 182
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 184
    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 187
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 188
    .local v4, "busy":J
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 189
    .local v6, "total":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v4

    div-long/2addr v8, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v8

    return v0

    .line 199
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "busy":J
    .end local v6    # "total":J
    :cond_0
    goto :goto_1

    .line 192
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/misc/mali0/device/utilisation"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 197
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 198
    :catch_1
    move-exception v2

    :goto_0
    nop

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private getAvailableRAM()Ljava/lang/String;
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 159
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 160
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 161
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v2, v4

    .line 162
    .local v2, "usedMem":J
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getCPUTemperature()F
    .locals 9

    .line 166
    sget-object v0, Lcom/winlator/cmod/widget/FrameRating;->THERMAL_PATHS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 167
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 170
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .local v6, "temp":F
    const/high16 v7, 0x447a0000    # 1000.0f

    cmpl-float v8, v6, v7

    if-lez v8, :cond_0

    div-float v7, v6, v7

    goto :goto_1

    :cond_0
    move v7, v6

    .line 174
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 172
    return v7

    .line 174
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "temp":F
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 167
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "path":Ljava/lang/String;
    :goto_2
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 174
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 166
    .end local v3    # "path":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getTotalRAM()Ljava/lang/String;
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 152
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 153
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 154
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateParentVisibility()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowFPS:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowFPS:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRAM:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRAM:Landroid/view/View;

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRenderer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRenderer:Landroid/view/View;

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPU:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPU:Landroid/view/View;

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowCPUTemp:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowCPUTemp:Landroid/view/View;

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPULoad:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPULoad:Landroid/view/View;

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryTemp:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryTemp:Landroid/view/View;

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryVoltage:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryVoltage:Landroid/view/View;

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 147
    .local v0, "anyVisible":Z
    :goto_0
    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/widget/FrameRating;->setVisibility(I)V

    .line 148
    return-void
.end method


# virtual methods
.method public applyConfig(Ljava/lang/String;)V
    .locals 10
    .param p1, "configString"    # Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 102
    :cond_0
    new-instance v0, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v0, p1}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "config":Lcom/winlator/cmod/core/KeyValueSet;
    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowFPS:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "1"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowFPS:Landroid/view/View;

    const-string v5, "showFPS"

    invoke-virtual {v0, v5, v4}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRAM:Landroid/view/View;

    const-string v5, "0"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRAM:Landroid/view/View;

    const-string v6, "showRAM"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowCPUTemp:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowCPUTemp:Landroid/view/View;

    const-string v6, "showCPULoad"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPULoad:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPULoad:Landroid/view/View;

    const-string v6, "showGPULoad"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v3

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_8
    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryTemp:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryTemp:Landroid/view/View;

    const-string v6, "showBatteryTemp"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v3

    goto :goto_4

    :cond_9
    move v6, v2

    :goto_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_a
    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryVoltage:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->rowBatteryVoltage:Landroid/view/View;

    const-string v6, "showBatteryVoltage"

    invoke-virtual {v0, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v3

    goto :goto_5

    :cond_b
    move v6, v2

    :goto_5
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_c
    const-string v1, "showRenderer"

    invoke-virtual {v0, v1, v5}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v2, v3

    :cond_d
    move v1, v2

    .line 112
    .local v1, "rendererVis":I
    iget-object v2, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRenderer:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/winlator/cmod/widget/FrameRating;->rowRenderer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_e
    iget-object v2, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPU:Landroid/view/View;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/winlator/cmod/widget/FrameRating;->rowGPU:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_f
    const/high16 v2, 0x3f800000    # 1.0f

    :try_start_0
    const-string v4, "hudScale"

    const-string v6, "100"

    invoke-virtual {v0, v4, v6}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 119
    .local v4, "scaleInt":I
    const/16 v6, 0x96

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v7, 0x32

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    .line 120
    .local v6, "scaleFactor":F
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/winlator/cmod/widget/FrameRating;->setPivotX(F)V

    .line 121
    invoke-virtual {p0, v9}, Lcom/winlator/cmod/widget/FrameRating;->setPivotY(F)V

    .line 122
    invoke-virtual {p0, v6}, Lcom/winlator/cmod/widget/FrameRating;->setScaleX(F)V

    .line 123
    invoke-virtual {p0, v6}, Lcom/winlator/cmod/widget/FrameRating;->setScaleY(F)V

    .line 126
    const-string v9, "hudTransparency"

    invoke-virtual {v0, v9, v5}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 127
    .local v5, "trans":I
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    .line 128
    .local v3, "alpha":F
    invoke-virtual {p0, v3}, Lcom/winlator/cmod/widget/FrameRating;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v3    # "alpha":F
    .end local v4    # "scaleInt":I
    .end local v5    # "trans":I
    .end local v6    # "scaleFactor":F
    goto :goto_6

    .line 129
    :catch_0
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/FrameRating;->setScaleX(F)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/FrameRating;->setScaleY(F)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/winlator/cmod/widget/FrameRating;->setAlpha(F)V

    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6
    invoke-direct {p0}, Lcom/winlator/cmod/widget/FrameRating;->updateParentVisibility()V

    .line 136
    return-void

    .line 101
    .end local v0    # "config":Lcom/winlator/cmod/core/KeyValueSet;
    .end local v1    # "rendererVis":I
    :cond_10
    :goto_7
    return-void
.end method

.method public reset()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRenderer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRenderer:Landroid/widget/TextView;

    const-string v1, "OpenGL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->graphicsDriverConfig:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "version":Ljava/lang/Object;
    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPU:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPU:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/winlator/cmod/widget/FrameRating;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/winlator/cmod/core/GPUInformation;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_2
    return-void
.end method

.method public run()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvFPS:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvFPS:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v2, p0, Lcom/winlator/cmod/widget/FrameRating;->lastFPS:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRAM:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRAM:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/winlator/cmod/widget/FrameRating;->getAvailableRAM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Used / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/winlator/cmod/widget/FrameRating;->totalRAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvCPUTemp:Landroid/widget/TextView;

    const-string v1, "%.1f\u00b0C"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvCPUTemp:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v3, p0, Lcom/winlator/cmod/widget/FrameRating;->cpuTemp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPULoad:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPULoad:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/winlator/cmod/widget/FrameRating;->gpuLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvBatteryTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvBatteryTemp:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v3, p0, Lcom/winlator/cmod/widget/FrameRating;->batteryTemp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvBatteryVoltage:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvBatteryVoltage:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v2, p0, Lcom/winlator/cmod/widget/FrameRating;->batteryWattage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2fW"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_5
    return-void
.end method

.method public setGpuName(Ljava/lang/String;)V
    .locals 1
    .param p1, "gpuName"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPU:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvGPU:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setRenderer(Ljava/lang/String;)V
    .locals 1
    .param p1, "renderer"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRenderer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/widget/FrameRating;->tvRenderer:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    return-void
.end method

.method public update()V
    .locals 12

    .line 218
    iget-wide v0, p0, Lcom/winlator/cmod/widget/FrameRating;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/widget/FrameRating;->lastTime:J

    .line 219
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 221
    .local v0, "time":J
    iget-wide v4, p0, Lcom/winlator/cmod/widget/FrameRating;->lastTime:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-ltz v4, :cond_3

    .line 222
    iget v4, p0, Lcom/winlator/cmod/widget/FrameRating;->frameCount:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    iget-wide v5, p0, Lcom/winlator/cmod/widget/FrameRating;->lastTime:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/winlator/cmod/widget/FrameRating;->lastFPS:F

    .line 223
    invoke-direct {p0}, Lcom/winlator/cmod/widget/FrameRating;->getCPUTemperature()F

    move-result v4

    iput v4, p0, Lcom/winlator/cmod/widget/FrameRating;->cpuTemp:F

    .line 224
    invoke-direct {p0}, Lcom/winlator/cmod/widget/FrameRating;->calculateGPULoad()I

    move-result v4

    iput v4, p0, Lcom/winlator/cmod/widget/FrameRating;->gpuLoad:I

    .line 226
    iget-object v4, p0, Lcom/winlator/cmod/widget/FrameRating;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 227
    .local v4, "batteryStatus":Landroid/content/Intent;
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 228
    const-string v6, "temperature"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    iput v6, p0, Lcom/winlator/cmod/widget/FrameRating;->batteryTemp:F

    .line 231
    iget-object v6, p0, Lcom/winlator/cmod/widget/FrameRating;->context:Landroid/content/Context;

    const-string v7, "batterymanager"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryManager;

    .line 232
    .local v6, "bm":Landroid/os/BatteryManager;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v7

    .line 233
    .local v7, "microAmps":J
    const-string v9, "voltage"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 236
    .local v9, "voltageMv":I
    cmp-long v2, v7, v2

    if-gez v2, :cond_1

    .line 237
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v10, v9

    mul-long/2addr v2, v10

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/winlator/cmod/widget/FrameRating;->batteryWattage:F

    goto :goto_0

    .line 239
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/winlator/cmod/widget/FrameRating;->batteryWattage:F

    .line 243
    .end local v6    # "bm":Landroid/os/BatteryManager;
    .end local v7    # "microAmps":J
    .end local v9    # "voltageMv":I
    :cond_2
    :goto_0
    invoke-virtual {p0, p0}, Lcom/winlator/cmod/widget/FrameRating;->post(Ljava/lang/Runnable;)Z

    .line 244
    iput-wide v0, p0, Lcom/winlator/cmod/widget/FrameRating;->lastTime:J

    .line 245
    iput v5, p0, Lcom/winlator/cmod/widget/FrameRating;->frameCount:I

    .line 247
    .end local v4    # "batteryStatus":Landroid/content/Intent;
    :cond_3
    iget v2, p0, Lcom/winlator/cmod/widget/FrameRating;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/winlator/cmod/widget/FrameRating;->frameCount:I

    .line 248
    return-void
.end method

.class public abstract Lcom/winlator/cmod/core/CPUStatus;
.super Ljava/lang/Object;
.source "CPUStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentClockSpeeds()[S
    .locals 5

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 6
    .local v0, "numProcessors":I
    new-array v1, v0, [S

    .line 7
    .local v1, "clockSpeeds":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/winlator/cmod/core/FileUtils;->readInt(Ljava/lang/String;)I

    move-result v3

    .line 9
    .local v3, "currFreq":I
    div-int/lit16 v4, v3, 0x3e8

    int-to-short v4, v4

    aput-short v4, v1, v2

    .line 7
    .end local v3    # "currFreq":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getMaxClockSpeed(I)S
    .locals 2
    .param p0, "cpuIndex"    # I

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 16
    .local v0, "maxFreq":I
    div-int/lit16 v1, v0, 0x3e8

    int-to-short v1, v1

    return v1
.end method

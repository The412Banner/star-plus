.class public abstract Lcom/winlator/cmod/core/GPUInformation;
.super Ljava/lang/Object;
.source "GPUInformation.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native enumerateExtensions(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public static native getRenderer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getVendorID(Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public static native getVulkanVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static isAdrenoGPU(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 8
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/winlator/cmod/core/GPUInformation;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adreno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isDriverSupported(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "driverName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-static {p1}, Lcom/winlator/cmod/core/GPUInformation;->isAdrenoGPU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "System"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    return v0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Lcom/winlator/cmod/core/GPUInformation;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "renderer":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

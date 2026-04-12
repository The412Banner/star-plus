.class public Lcom/winlator/cmod/container/Container;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/container/Container$XrControllerMapping;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_DRIVER:Ljava/lang/String; = "alsa"

.field public static final DEFAULT_DDRAWRAPPER:Ljava/lang/String; = "none"

.field public static final DEFAULT_DRIVES:Ljava/lang/String;

.field public static final DEFAULT_DXWRAPPER:Ljava/lang/String; = "dxvk+vkd3d"

.field public static final DEFAULT_DXWRAPPERCONFIG:Ljava/lang/String;

.field public static final DEFAULT_EMULATOR:Ljava/lang/String; = "FEXCore"

.field public static final DEFAULT_ENV_VARS:Ljava/lang/String; = "WRAPPER_MAX_IMAGE_COUNT=0 ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform,sysmem DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api"

.field public static final DEFAULT_FPS_COUNTER_CONFIG:Ljava/lang/String; = "showFPS=1,showCPULoad=0,showGPULoad=0,showRAM=0,showRenderer=0,showBatteryTemp=0,showBatteryVoltage=0,hudScale=100"

.field public static final DEFAULT_GRAPHICSDRIVERCONFIG:Ljava/lang/String; = "vulkanVersion=1.3;version=;blacklistedExtensions=;maxDeviceMemory=0;presentMode=mailbox;syncFrame=0;disablePresentWait=0;resourceType=auto;bcnEmulation=auto;bcnEmulationType=compute;bcnEmulationCache=0;gpuName=Device"

.field public static final DEFAULT_GRAPHICS_DRIVER:Ljava/lang/String; = "wrapper"

.field public static final DEFAULT_SCREEN_SIZE:Ljava/lang/String; = "1280x720"

.field public static final DEFAULT_WINCOMPONENTS:Ljava/lang/String; = "direct3d=1,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2010=1"

.field public static final FALLBACK_WINCOMPONENTS:Ljava/lang/String; = "direct3d=1,directsound=1,directmusic=1,directshow=1,directplay=1,xaudio=1,vcrun2010=1"

.field public static final MAX_DRIVE_LETTERS:B = 0x1at

.field public static final STARTUP_SELECTION_AGGRESSIVE:B = 0x2t

.field public static final STARTUP_SELECTION_ESSENTIAL:B = 0x1t

.field public static final STARTUP_SELECTION_NORMAL:B


# instance fields
.field private audioDriver:Ljava/lang/String;

.field private box64Preset:Ljava/lang/String;

.field private box64Version:Ljava/lang/String;

.field private containerManager:Lcom/winlator/cmod/container/ContainerManager;

.field private controllerMapping:Ljava/lang/String;

.field private cpuList:Ljava/lang/String;

.field private cpuListWoW64:Ljava/lang/String;

.field private desktopTheme:Ljava/lang/String;

.field private drives:Ljava/lang/String;

.field private dxwrapper:Ljava/lang/String;

.field private dxwrapperConfig:Ljava/lang/String;

.field private emulator:Ljava/lang/String;

.field private envVars:Ljava/lang/String;

.field private exclusiveXInput:Z

.field private extraData:Lorg/json/JSONObject;

.field private fexcorePreset:Ljava/lang/String;

.field private fexcoreVersion:Ljava/lang/String;

.field private fpsCounterConfig:Ljava/lang/String;

.field private fullscreenStretched:Z

.field private graphicsDriver:Ljava/lang/String;

.field private graphicsDriverConfig:Ljava/lang/String;

.field public final id:I

.field private inputType:I

.field private lc_all:Ljava/lang/String;

.field private midiSoundFont:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private primaryController:I

.field private rootDir:Ljava/io/File;

.field private screenSize:Ljava/lang/String;

.field private showFPS:Z

.field private startupSelection:B

.field private wincomponents:Ljava/lang/String;

.field private wineVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/core/DefaultVersion;->DXVK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",framerate=0,async=0,asyncCache=0,vkd3dVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vkd3dLevel=12_1,ddrawrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",csmt=3,gpuName=NVIDIA GeForce GTX 480,videoMemorySize=2048,strict_shader_math=1,OffscreenRenderingMode=fbo,renderer=gl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/container/Container;->DEFAULT_DXWRAPPERCONFIG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "1280x720"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->screenSize:Ljava/lang/String;

    .line 51
    const-string v0, "WRAPPER_MAX_IMAGE_COUNT=0 ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform,sysmem DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    .line 52
    const-string v0, "wrapper"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->graphicsDriver:Ljava/lang/String;

    .line 53
    const-string v0, "vulkanVersion=1.3;version=;blacklistedExtensions=;maxDeviceMemory=0;presentMode=mailbox;syncFrame=0;disablePresentWait=0;resourceType=auto;bcnEmulation=auto;bcnEmulationType=compute;bcnEmulationCache=0;gpuName=Device"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 54
    const-string v0, "dxvk+vkd3d"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapper:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 56
    const-string v1, "showFPS=1,showCPULoad=0,showGPULoad=0,showRAM=0,showRenderer=0,showBatteryTemp=0,showBatteryVoltage=0,hudScale=100"

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->fpsCounterConfig:Ljava/lang/String;

    .line 57
    const-string v1, "direct3d=1,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2010=1"

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->wincomponents:Ljava/lang/String;

    .line 58
    const-string v1, "alsa"

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->audioDriver:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/winlator/cmod/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->drives:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v1}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->wineVersion:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/winlator/cmod/container/Container;->startupSelection:B

    .line 66
    sget-object v2, Lcom/winlator/cmod/core/WineThemeManager;->DEFAULT_DESKTOP_THEME:Ljava/lang/String;

    iput-object v2, p0, Lcom/winlator/cmod/container/Container;->desktopTheme:Ljava/lang/String;

    .line 68
    const-string v2, "INTERMEDIATE"

    iput-object v2, p0, Lcom/winlator/cmod/container/Container;->fexcorePreset:Ljava/lang/String;

    .line 69
    const-string v2, "COMPATIBILITY"

    iput-object v2, p0, Lcom/winlator/cmod/container/Container;->box64Preset:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->midiSoundFont:Ljava/lang/String;

    .line 73
    const/4 v2, 0x4

    iput v2, p0, Lcom/winlator/cmod/container/Container;->inputType:I

    .line 74
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->lc_all:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/winlator/cmod/container/Container;->primaryController:I

    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/winlator/cmod/container/Container$XrControllerMapping;->values()[Lcom/winlator/cmod/container/Container$XrControllerMapping;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [C

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->controllerMapping:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/winlator/cmod/container/Container;->exclusiveXInput:Z

    .line 86
    iput p1, p0, Lcom/winlator/cmod/container/Container;->id:I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(ILcom/winlator/cmod/container/ContainerManager;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "containerManager"    # Lcom/winlator/cmod/container/ContainerManager;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "1280x720"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->screenSize:Ljava/lang/String;

    .line 51
    const-string v0, "WRAPPER_MAX_IMAGE_COUNT=0 ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform,sysmem DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    .line 52
    const-string v0, "wrapper"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->graphicsDriver:Ljava/lang/String;

    .line 53
    const-string v0, "vulkanVersion=1.3;version=;blacklistedExtensions=;maxDeviceMemory=0;presentMode=mailbox;syncFrame=0;disablePresentWait=0;resourceType=auto;bcnEmulation=auto;bcnEmulationType=compute;bcnEmulationCache=0;gpuName=Device"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    .line 54
    const-string v0, "dxvk+vkd3d"

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapper:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 56
    const-string v1, "showFPS=1,showCPULoad=0,showGPULoad=0,showRAM=0,showRenderer=0,showBatteryTemp=0,showBatteryVoltage=0,hudScale=100"

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->fpsCounterConfig:Ljava/lang/String;

    .line 57
    const-string v1, "direct3d=1,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2010=1"

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->wincomponents:Ljava/lang/String;

    .line 58
    const-string v1, "alsa"

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->audioDriver:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/winlator/cmod/container/Container;->DEFAULT_DRIVES:Ljava/lang/String;

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->drives:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v1}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/container/Container;->wineVersion:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/winlator/cmod/container/Container;->startupSelection:B

    .line 66
    sget-object v2, Lcom/winlator/cmod/core/WineThemeManager;->DEFAULT_DESKTOP_THEME:Ljava/lang/String;

    iput-object v2, p0, Lcom/winlator/cmod/container/Container;->desktopTheme:Ljava/lang/String;

    .line 68
    const-string v2, "INTERMEDIATE"

    iput-object v2, p0, Lcom/winlator/cmod/container/Container;->fexcorePreset:Ljava/lang/String;

    .line 69
    const-string v2, "COMPATIBILITY"

    iput-object v2, p0, Lcom/winlator/cmod/container/Container;->box64Preset:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->midiSoundFont:Ljava/lang/String;

    .line 73
    const/4 v2, 0x4

    iput v2, p0, Lcom/winlator/cmod/container/Container;->inputType:I

    .line 74
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->lc_all:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/winlator/cmod/container/Container;->primaryController:I

    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/winlator/cmod/container/Container$XrControllerMapping;->values()[Lcom/winlator/cmod/container/Container$XrControllerMapping;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [C

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->controllerMapping:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/winlator/cmod/container/Container;->exclusiveXInput:Z

    .line 91
    iput p1, p0, Lcom/winlator/cmod/container/Container;->id:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->name:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/winlator/cmod/container/Container;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    .line 94
    return-void
.end method

.method public static checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V
    .locals 14
    .param p0, "data"    # Lorg/json/JSONObject;

    .line 551
    const-string v0, ""

    const-string v1, "extraData"

    const-string v2, "envVars"

    const-string v3, "dxcomponents"

    const-string v4, "graphicsDriver"

    const-string v5, "dxwrapper"

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "wincomponents"

    if-eqz v6, :cond_0

    .line 552
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 556
    :cond_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "dxwrapper":Ljava/lang/String;
    const-string v6, "original-wined3d"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 559
    const-string v6, "dxvk+vkd3d"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 561
    :cond_1
    const-string v6, "d8vk-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "dxvk-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 562
    :cond_2
    invoke-virtual {p0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    .end local v3    # "dxwrapper":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 567
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "graphicsDriver":Ljava/lang/String;
    const-string v5, "turnip-zink"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "turnip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 571
    :cond_4
    const-string v5, "llvmpipe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 572
    const-string v5, "virgl"

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 569
    :cond_5
    :goto_1
    const-string v5, "wrapper"

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    .end local v3    # "graphicsDriver":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 577
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 578
    .local v1, "extraData":Lorg/json/JSONObject;
    const-string v3, "appVersion"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 579
    .local v3, "appVersion":I
    const/16 v4, 0x10

    if-ge v3, v4, :cond_9

    .line 580
    new-instance v4, Lcom/winlator/cmod/core/EnvVars;

    const-string v5, "WRAPPER_MAX_IMAGE_COUNT=0 ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform,sysmem DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api"

    invoke-direct {v4, v5}, Lcom/winlator/cmod/core/EnvVars;-><init>(Ljava/lang/String;)V

    .line 581
    .local v4, "defaultEnvVars":Lcom/winlator/cmod/core/EnvVars;
    new-instance v5, Lcom/winlator/cmod/core/EnvVars;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/winlator/cmod/core/EnvVars;-><init>(Ljava/lang/String;)V

    .line 582
    .local v5, "envVars":Lcom/winlator/cmod/core/EnvVars;
    invoke-virtual {v4}, Lcom/winlator/cmod/core/EnvVars;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lcom/winlator/cmod/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v4, v8}, Lcom/winlator/cmod/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 583
    .end local v8    # "name":Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Lcom/winlator/cmod/core/EnvVars;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    .end local v1    # "extraData":Lorg/json/JSONObject;
    .end local v3    # "appVersion":I
    .end local v4    # "defaultEnvVars":Lcom/winlator/cmod/core/EnvVars;
    .end local v5    # "envVars":Lcom/winlator/cmod/core/EnvVars;
    :cond_9
    new-instance v1, Lcom/winlator/cmod/core/KeyValueSet;

    const-string v2, "direct3d=1,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2010=1"

    invoke-direct {v1, v2}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, "wincomponents1":Lcom/winlator/cmod/core/KeyValueSet;
    new-instance v2, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 589
    .local v2, "wincomponents2":Lcom/winlator/cmod/core/KeyValueSet;
    move-object v3, v0

    .line 591
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/winlator/cmod/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 592
    .local v5, "wincomponent1":[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v8, v5, v6

    .line 594
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/winlator/cmod/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 595
    .local v10, "wincomponent2":[Ljava/lang/String;
    aget-object v12, v5, v11

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 596
    aget-object v6, v10, v6

    move-object v8, v6

    .line 597
    goto :goto_6

    .line 599
    .end local v10    # "wincomponent2":[Ljava/lang/String;
    :cond_a
    goto :goto_5

    .line 601
    :cond_b
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, ","

    goto :goto_7

    :cond_c
    move-object v9, v0

    :goto_7
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v9, v5, v11

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 602
    .end local v5    # "wincomponent1":[Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_4

    .line 604
    :cond_d
    invoke-virtual {p0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 606
    nop

    .end local v1    # "wincomponents1":Lcom/winlator/cmod/core/KeyValueSet;
    .end local v2    # "wincomponents2":Lcom/winlator/cmod/core/KeyValueSet;
    .end local v3    # "result":Ljava/lang/String;
    goto :goto_8

    :catch_0
    move-exception v0

    .line 607
    :goto_8
    return-void
.end method

.method public static drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 3
    .param p0, "drives"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 385
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 386
    .local v0, "index":[I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 387
    .local v1, "item":[Ljava/lang/String;
    new-instance v2, Lcom/winlator/cmod/container/Container$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p0}, Lcom/winlator/cmod/container/Container$$ExternalSyntheticLambda0;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getFallbackCPUList()Ljava/lang/String;
    .locals 5

    .line 610
    const-string v0, ""

    .line 611
    .local v0, "cpuList":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 612
    .local v1, "numProcessors":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getFallbackCPUListWoW64()Ljava/lang/String;
    .locals 5

    .line 617
    const-string v0, ""

    .line 618
    .local v0, "cpuList":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 619
    .local v1, "numProcessors":I
    div-int/lit8 v2, v1, 0x2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method static synthetic lambda$drivesIterator$0([I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p0, "index"    # [I
    .param p1, "item"    # [Ljava/lang/String;
    .param p2, "drives"    # Ljava/lang/String;

    .line 387
    new-instance v0, Lcom/winlator/cmod/container/Container$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/container/Container$1;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public drivesIterator()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->drives:Ljava/lang/String;

    invoke-static {v0}, Lcom/winlator/cmod/container/Container;->drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDriver()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->audioDriver:Ljava/lang/String;

    return-object v0
.end method

.method public getBox64Preset()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->box64Preset:Ljava/lang/String;

    return-object v0
.end method

.method public getBox64Version()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->box64Version:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUList()Ljava/lang/String;
    .locals 1

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/container/Container;->getCPUList(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUList(Z)Ljava/lang/String;
    .locals 1
    .param p1, "allowFallback"    # Z

    .line 233
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->cpuList:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->cpuList:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/winlator/cmod/container/Container;->getFallbackCPUList()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCPUListWoW64()Ljava/lang/String;
    .locals 1

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/container/Container;->getCPUListWoW64(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUListWoW64(Z)Ljava/lang/String;
    .locals 1
    .param p1, "allowFallback"    # Z

    .line 245
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->cpuListWoW64:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->cpuListWoW64:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/winlator/cmod/container/Container;->getFallbackCPUListWoW64()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConfigFile()Ljava/io/File;
    .locals 3

    .line 333
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".container"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B
    .locals 2
    .param p1, "input"    # Lcom/winlator/cmod/container/Container$XrControllerMapping;

    .line 193
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->controllerMapping:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/winlator/cmod/container/Container$XrControllerMapping;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getDXWrapper()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapper:Ljava/lang/String;

    return-object v0
.end method

.method public getDXWrapperConfig()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapperConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getDesktopDir()Ljava/io/File;
    .locals 3

    .line 337
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".wine/drive_c/users/xuser/Desktop/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDesktopTheme()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->desktopTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getDrives()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->drives:Ljava/lang/String;

    return-object v0
.end method

.method public getEmulator()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->emulator:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvVars()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 301
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/winlator/cmod/container/Container;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/json/JSONException;
    return-object p2
.end method

.method public getFEXCorePreset()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->fexcorePreset:Ljava/lang/String;

    return-object v0
.end method

.method public getFEXCoreVersion()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->fexcoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFPSCounterConfig()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->fpsCounterConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphicsDriver()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->graphicsDriver:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphicsDriverConfig()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getIconsDir(I)Ljava/io/File;
    .locals 4
    .param p1, "size"    # I

    .line 345
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/Container;->rootDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".local/share/icons/hicolor/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/winlator/cmod/container/Container;->inputType:I

    return v0
.end method

.method public getLC_ALL()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->lc_all:Ljava/lang/String;

    return-object v0
.end method

.method public getMIDISoundFont()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->midiSoundFont:Ljava/lang/String;

    return-object v0
.end method

.method public getManager()Lcom/winlator/cmod/container/ContainerManager;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryController()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/winlator/cmod/container/Container;->primaryController:I

    return v0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMenuDir()Ljava/io/File;
    .locals 3

    .line 341
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winlator/cmod/container/Container;->rootDir:Ljava/io/File;

    const-string v2, ".wine/drive_c/ProgramData/Microsoft/Windows/Start Menu/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStartupSelection()B
    .locals 1

    .line 221
    iget-byte v0, p0, Lcom/winlator/cmod/container/Container;->startupSelection:B

    return v0
.end method

.method public getWinComponents()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->wincomponents:Ljava/lang/String;

    return-object v0
.end method

.method public getWineVersion()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->wineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnvVar(Ljava/lang/String;)Z
    .locals 7
    .param p1, "keyValue"    # Ljava/lang/String;

    .line 625
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "vars":[Ljava/lang/String;
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 628
    .local v4, "var":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 629
    const/4 v1, 0x1

    return v1

    .line 627
    .end local v4    # "var":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_2
    return v1

    .line 625
    .end local v0    # "vars":[Ljava/lang/String;
    :cond_3
    :goto_1
    return v1
.end method

.method public isExclusiveXInput()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/winlator/cmod/container/Container;->exclusiveXInput:Z

    return v0
.end method

.method public isFullscreenStretched()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/winlator/cmod/container/Container;->fullscreenStretched:Z

    return v0
.end method

.method public isShowFPS()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/winlator/cmod/container/Container;->showFPS:Z

    return v0
.end method

.method public loadData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 445
    sget-object v0, Lcom/winlator/cmod/core/WineInfo;->MAIN_WINE_VERSION:Lcom/winlator/cmod/core/WineInfo;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/WineInfo;->identifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->wineVersion:Ljava/lang/String;

    .line 446
    const-string v0, ""

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 447
    invoke-static {p1}, Lcom/winlator/cmod/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 449
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "showFPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "dxwrapperConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "graphicsDriverConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "inputType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "startupSelection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "emulator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "fexcorePreset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "desktopTheme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "cpuList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "midiSoundFont"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "fullscreenStretched"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "audioDriver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "dxwrapper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "cpuListWoW64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_2

    :sswitch_f
    const-string v2, "extraData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_10
    const-string v2, "screenSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_11
    const-string v2, "wincomponents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_12
    const-string v2, "box64Version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_13
    const-string v2, "exclusiveXInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_2

    :sswitch_14
    const-string v2, "lc_all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_2

    :sswitch_15
    const-string v2, "controllerMapping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto :goto_2

    :sswitch_16
    const-string v2, "drives"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_17
    const-string v2, "fexcoreVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto :goto_2

    :sswitch_18
    const-string v2, "box64Preset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto :goto_2

    :sswitch_19
    const-string v2, "envVars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1a
    const-string v2, "fpsCounterConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_2

    :sswitch_1b
    const-string v2, "graphicsDriver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_1c
    const-string v2, "wineVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto :goto_2

    :sswitch_1d
    const-string v2, "primaryController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 543
    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setExclusiveXInput(Z)V

    goto/16 :goto_3

    .line 540
    :pswitch_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/winlator/cmod/container/Container;->controllerMapping:Ljava/lang/String;

    .line 541
    goto/16 :goto_3

    .line 537
    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setPrimaryController(I)V

    .line 538
    goto/16 :goto_3

    .line 534
    :pswitch_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setLC_ALL(Ljava/lang/String;)V

    .line 535
    goto/16 :goto_3

    .line 531
    :pswitch_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setMidiSoundFont(Ljava/lang/String;)V

    .line 532
    goto/16 :goto_3

    .line 528
    :pswitch_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setDesktopTheme(Ljava/lang/String;)V

    .line 529
    goto/16 :goto_3

    .line 525
    :pswitch_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setAudioDriver(Ljava/lang/String;)V

    .line 526
    goto/16 :goto_3

    .line 522
    :pswitch_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setBox64Preset(Ljava/lang/String;)V

    .line 523
    goto/16 :goto_3

    .line 519
    :pswitch_8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setFEXCorePreset(Ljava/lang/String;)V

    .line 520
    goto/16 :goto_3

    .line 516
    :pswitch_9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setFEXCoreVersion(Ljava/lang/String;)V

    .line 517
    goto/16 :goto_3

    .line 513
    :pswitch_a
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setBox64Version(Ljava/lang/String;)V

    .line 514
    goto/16 :goto_3

    .line 510
    :pswitch_b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setWineVersion(Ljava/lang/String;)V

    .line 511
    goto/16 :goto_3

    .line 504
    :pswitch_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 505
    .local v2, "extraData":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/winlator/cmod/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 506
    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setExtraData(Lorg/json/JSONObject;)V

    .line 507
    goto/16 :goto_3

    .line 501
    .end local v2    # "extraData":Lorg/json/JSONObject;
    :pswitch_d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setStartupSelection(B)V

    .line 502
    goto/16 :goto_3

    .line 498
    :pswitch_e
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setInputType(I)V

    .line 499
    goto/16 :goto_3

    .line 495
    :pswitch_f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setFullscreenStretched(Z)V

    .line 496
    goto/16 :goto_3

    .line 492
    :pswitch_10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setFPSCounterConfig(Ljava/lang/String;)V

    .line 493
    goto/16 :goto_3

    .line 489
    :pswitch_11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setShowFPS(Z)V

    .line 490
    goto :goto_3

    .line 486
    :pswitch_12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setDrives(Ljava/lang/String;)V

    .line 487
    goto :goto_3

    .line 483
    :pswitch_13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setDXWrapperConfig(Ljava/lang/String;)V

    .line 484
    goto :goto_3

    .line 480
    :pswitch_14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setDXWrapper(Ljava/lang/String;)V

    .line 481
    goto :goto_3

    .line 477
    :pswitch_15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setWinComponents(Ljava/lang/String;)V

    .line 478
    goto :goto_3

    .line 474
    :pswitch_16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setEmulator(Ljava/lang/String;)V

    .line 475
    goto :goto_3

    .line 471
    :pswitch_17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setGraphicsDriverConfig(Ljava/lang/String;)V

    .line 472
    goto :goto_3

    .line 468
    :pswitch_18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setGraphicsDriver(Ljava/lang/String;)V

    .line 469
    goto :goto_3

    .line 465
    :pswitch_19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setCPUListWoW64(Ljava/lang/String;)V

    .line 466
    goto :goto_3

    .line 462
    :pswitch_1a
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setCPUList(Ljava/lang/String;)V

    .line 463
    goto :goto_3

    .line 459
    :pswitch_1b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setEnvVars(Ljava/lang/String;)V

    .line 460
    goto :goto_3

    .line 456
    :pswitch_1c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setScreenSize(Ljava/lang/String;)V

    .line 457
    goto :goto_3

    .line 453
    :pswitch_1d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/container/Container;->setName(Ljava/lang/String;)V

    .line 454
    nop

    .line 546
    .end local v1    # "key":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 547
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72a2ccc2 -> :sswitch_1d
        -0x6e256771 -> :sswitch_1c
        -0x6323256d -> :sswitch_1b
        -0x60d8020b -> :sswitch_1a
        -0x5ece2347 -> :sswitch_19
        -0x5d4a2df8 -> :sswitch_18
        -0x51e39100 -> :sswitch_17
        -0x4ee367d7 -> :sswitch_16
        -0x4907ba6e -> :sswitch_15
        -0x4214dd27 -> :sswitch_14
        -0x3c435190 -> :sswitch_13
        -0x240ded31 -> :sswitch_12
        -0x19a1d40e -> :sswitch_11
        -0x18e10173 -> :sswitch_10
        -0xf209026 -> :sswitch_f
        -0xea54349 -> :sswitch_e
        -0x49e1681 -> :sswitch_d
        0x337a8b -> :sswitch_c
        0xa4679e -> :sswitch_b
        0xaf9ece9 -> :sswitch_a
        0x1c7f1bdd -> :sswitch_9
        0x3abc9266 -> :sswitch_8
        0x3b02a70d -> :sswitch_7
        0x4ea6abb7 -> :sswitch_6
        0x4fa4b315 -> :sswitch_5
        0x51a5cb8f -> :sswitch_4
        0x65be6624 -> :sswitch_3
        0x6f29cfb5 -> :sswitch_2
        0x716afda1 -> :sswitch_1
        0x7b37f8ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    .line 316
    :cond_0
    if-eqz p2, :cond_1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 322
    return-void
.end method

.method public saveData()V
    .locals 3

    .line 406
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "id"

    iget v2, p0, Lcom/winlator/cmod/container/Container;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    const-string v1, "name"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v1, "screenSize"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->screenSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v1, "envVars"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v1, "cpuList"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->cpuList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v1, "cpuListWoW64"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->cpuListWoW64:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v1, "graphicsDriver"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->graphicsDriver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v1, "graphicsDriverConfig"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v1, "emulator"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->emulator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v1, "dxwrapper"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->dxwrapper:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    iget-object v1, p0, Lcom/winlator/cmod/container/Container;->dxwrapperConfig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dxwrapperConfig"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->dxwrapperConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    :cond_0
    const-string v1, "audioDriver"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->audioDriver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v1, "wincomponents"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->wincomponents:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v1, "drives"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->drives:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v1, "showFPS"

    iget-boolean v2, p0, Lcom/winlator/cmod/container/Container;->showFPS:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 422
    const-string v1, "fpsCounterConfig"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->fpsCounterConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v1, "fullscreenStretched"

    iget-boolean v2, p0, Lcom/winlator/cmod/container/Container;->fullscreenStretched:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 424
    const-string v1, "inputType"

    iget v2, p0, Lcom/winlator/cmod/container/Container;->inputType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    const-string v1, "startupSelection"

    iget-byte v2, p0, Lcom/winlator/cmod/container/Container;->startupSelection:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    const-string v1, "box64Version"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->box64Version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v1, "fexcorePreset"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->fexcorePreset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v1, "fexcoreVersion"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->fexcoreVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v1, "box64Preset"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->box64Preset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v1, "desktopTheme"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->desktopTheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v1, "extraData"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v1, "midiSoundFont"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->midiSoundFont:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v1, "lc_all"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->lc_all:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    const-string v1, "primaryController"

    iget v2, p0, Lcom/winlator/cmod/container/Container;->primaryController:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 435
    const-string v1, "controllerMapping"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->controllerMapping:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v1, "exclusiveXInput"

    iget-boolean v2, p0, Lcom/winlator/cmod/container/Container;->exclusiveXInput:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 437
    iget-object v1, p0, Lcom/winlator/cmod/container/Container;->wineVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/winlator/cmod/core/WineInfo;->isMainWineVersion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wineVersion"

    iget-object v2, p0, Lcom/winlator/cmod/container/Container;->wineVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/winlator/cmod/container/Container;->getConfigFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 441
    :goto_0
    return-void
.end method

.method public setAudioDriver(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioDriver"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->audioDriver:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setBox64Preset(Ljava/lang/String;)V
    .locals 0
    .param p1, "box64Preset"    # Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->box64Preset:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setBox64Version(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->box64Version:Ljava/lang/String;

    return-void
.end method

.method public setCPUList(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpuList"    # Ljava/lang/String;

    .line 237
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->cpuList:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setCPUListWoW64(Ljava/lang/String;)V
    .locals 1
    .param p1, "cpuListWoW64"    # Ljava/lang/String;

    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->cpuListWoW64:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setControllerMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerMapping"    # Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->controllerMapping:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setDXWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "dxwrapper"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->dxwrapper:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setDXWrapperConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "dxwrapperConfig"    # Ljava/lang/String;

    .line 149
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->dxwrapperConfig:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setDesktopTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "desktopTheme"    # Ljava/lang/String;

    .line 353
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->desktopTheme:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setDrives(Ljava/lang/String;)V
    .locals 0
    .param p1, "drives"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->drives:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setEmulator(Ljava/lang/String;)V
    .locals 0
    .param p1, "emulator"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->emulator:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setEnvVars(Ljava/lang/String;)V
    .locals 1
    .param p1, "envVars"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/container/Container;->envVars:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setExclusiveXInput(Z)V
    .locals 0
    .param p1, "exclusiveXInput"    # Z

    .line 377
    iput-boolean p1, p0, Lcom/winlator/cmod/container/Container;->exclusiveXInput:Z

    .line 378
    return-void
.end method

.method public setExtraData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "extraData"    # Lorg/json/JSONObject;

    .line 297
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->extraData:Lorg/json/JSONObject;

    .line 298
    return-void
.end method

.method public setFEXCorePreset(Ljava/lang/String;)V
    .locals 0
    .param p1, "preset"    # Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->fexcorePreset:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setFEXCoreVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 253
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->fexcoreVersion:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setFPSCounterConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "fpsCounterConfig"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->fpsCounterConfig:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setFullscreenStretched(Z)V
    .locals 0
    .param p1, "fullscreenStretched"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/winlator/cmod/container/Container;->fullscreenStretched:Z

    return-void
.end method

.method public setGraphicsDriver(Ljava/lang/String;)V
    .locals 0
    .param p1, "graphicsDriver"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->graphicsDriver:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setGraphicsDriverConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "graphicsDriverConfig"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->graphicsDriverConfig:Ljava/lang/String;

    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    .line 369
    iput p1, p0, Lcom/winlator/cmod/container/Container;->inputType:I

    .line 370
    return-void
.end method

.method public setLC_ALL(Ljava/lang/String;)V
    .locals 0
    .param p1, "lc_all"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->lc_all:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setMidiSoundFont(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 361
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->midiSoundFont:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPrimaryController(I)V
    .locals 0
    .param p1, "primaryController"    # I

    .line 189
    iput p1, p0, Lcom/winlator/cmod/container/Container;->primaryController:I

    .line 190
    return-void
.end method

.method public setRootDir(Ljava/io/File;)V
    .locals 0
    .param p1, "rootDir"    # Ljava/io/File;

    .line 293
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->rootDir:Ljava/io/File;

    .line 294
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenSize"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->screenSize:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setShowFPS(Z)V
    .locals 0
    .param p1, "showFPS"    # Z

    .line 209
    iput-boolean p1, p0, Lcom/winlator/cmod/container/Container;->showFPS:Z

    .line 210
    return-void
.end method

.method public setStartupSelection(B)V
    .locals 0
    .param p1, "startupSelection"    # B

    .line 225
    iput-byte p1, p0, Lcom/winlator/cmod/container/Container;->startupSelection:B

    .line 226
    return-void
.end method

.method public setWinComponents(Ljava/lang/String;)V
    .locals 0
    .param p1, "wincomponents"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->wincomponents:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setWineVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "wineVersion"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Lcom/winlator/cmod/container/Container;->wineVersion:Ljava/lang/String;

    .line 330
    return-void
.end method

.class public abstract Lcom/winlator/cmod/core/WineThemeManager;
.super Ljava/lang/Object;
.source "WineThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;,
        Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;,
        Lcom/winlator/cmod/core/WineThemeManager$Theme;
    }
.end annotation


# static fields
.field public static final DEFAULT_DESKTOP_THEME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/winlator/cmod/core/WineThemeManager$Theme;->LIGHT:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",#0277bd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/core/WineThemeManager;->DEFAULT_DESKTOP_THEME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;Lcom/winlator/cmod/xserver/ScreenInfo;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeInfo"    # Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;
    .param p2, "screenInfo"    # Lcom/winlator/cmod/xserver/ScreenInfo;

    .line 44
    move-object/from16 v1, p1

    const-string v0, "96 125 139"

    const-string v2, "158 158 158"

    const-string v3, "33 33 33"

    const-string v4, "48 48 48"

    const-string v5, "245 245 245"

    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v6

    .line 45
    .local v6, "rootDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "/home/xuser/.wine/user.reg"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v7, "userRegFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "background":Ljava/lang/String;
    iget-object v9, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    sget-object v10, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    if-ne v9, v10, :cond_0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-static {v9, v10}, Lcom/winlator/cmod/core/WineThemeManager;->createWallpaperBMPFile(Landroid/content/Context;Lcom/winlator/cmod/xserver/ScreenInfo;)V

    goto :goto_0

    :cond_0
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 50
    :goto_0
    new-instance v11, Lcom/winlator/cmod/core/WineRegistryEditor;

    invoke-direct {v11, v7}, Lcom/winlator/cmod/core/WineRegistryEditor;-><init>(Ljava/io/File;)V

    .line 51
    .local v11, "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :try_start_0
    iget-object v12, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    sget-object v13, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v14, "Wallpaper"

    const-string v15, "Control Panel\\Desktop"

    if-ne v12, v13, :cond_1

    .line 52
    :try_start_1
    const-string v12, "/home/xuser/.cache/wallpaper.bmp"

    invoke-virtual {v11, v15, v14, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto/16 :goto_3

    .line 54
    :cond_1
    :try_start_2
    invoke-virtual {v11, v15, v14}, Lcom/winlator/cmod/core/WineRegistryEditor;->removeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_1
    iget-object v12, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->theme:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    sget-object v13, Lcom/winlator/cmod/core/WineThemeManager$Theme;->LIGHT:Lcom/winlator/cmod/core/WineThemeManager$Theme;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v14, "ButtonShadow"

    const-string v15, "ButtonLight"

    move-object/from16 v16, v6

    .end local v6    # "rootDir":Ljava/io/File;
    .local v16, "rootDir":Ljava/io/File;
    const-string v6, "ButtonHilight"

    move-object/from16 v17, v7

    .end local v7    # "userRegFile":Ljava/io/File;
    .local v17, "userRegFile":Ljava/io/File;
    const-string v7, "ButtonFace"

    const-string v9, "ButtonDkShadow"

    const-string v10, "ButtonAlternateFace"

    move-object/from16 v18, v3

    const-string v3, "Background"

    move-object/from16 v19, v4

    const-string v4, "ActiveTitle"

    const-string v1, "ActiveBorder"

    move-object/from16 v20, v14

    const-string v14, "117 117 117"

    move-object/from16 v21, v14

    const-string v14, "2 136 209"

    move-object/from16 v22, v14

    const-string v14, "0 0 0"

    move-object/from16 v23, v14

    const-string v14, "255 255 255"

    move-object/from16 v24, v14

    const-string v14, "Control Panel\\Colors"

    if-ne v12, v13, :cond_2

    .line 57
    :try_start_3
    invoke-virtual {v11, v14, v1, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v11, v14, v4, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v11, v14, v3, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v11, v14, v10, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v11, v14, v9, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v11, v14, v7, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "224 224 224"

    invoke-virtual {v11, v14, v6, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    move-object/from16 v12, v24

    invoke-virtual {v11, v14, v15, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    move-object/from16 v13, v20

    invoke-virtual {v11, v14, v13, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "ButtonText"

    move-object/from16 v3, v23

    invoke-virtual {v11, v14, v1, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "GradientActiveTitle"

    invoke-virtual {v11, v14, v1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "GradientInactiveTitle"

    move-object/from16 v1, v21

    invoke-virtual {v11, v14, v0, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "GrayText"

    invoke-virtual {v11, v14, v0, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "Hilight"

    move-object/from16 v4, v22

    invoke-virtual {v11, v14, v0, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "HilightText"

    invoke-virtual {v11, v14, v0, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "HotTrackingColor"

    invoke-virtual {v11, v14, v0, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "InactiveBorder"

    invoke-virtual {v11, v14, v0, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "InactiveTitle"

    invoke-virtual {v11, v14, v0, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "InactiveTitleText"

    const-string v1, "200 200 200"

    invoke-virtual {v11, v14, v0, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "InfoText"

    invoke-virtual {v11, v14, v0, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "InfoWindow"

    invoke-virtual {v11, v14, v0, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "Menu"

    invoke-virtual {v11, v14, v0, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "MenuBar"

    invoke-virtual {v11, v14, v0, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "MenuHilight"

    invoke-virtual {v11, v14, v0, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "MenuText"

    invoke-virtual {v11, v14, v0, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "Scrollbar"

    invoke-virtual {v11, v14, v0, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "TitleText"

    invoke-virtual {v11, v14, v0, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "Window"

    invoke-virtual {v11, v14, v0, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "WindowFrame"

    invoke-virtual {v11, v14, v0, v2}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "WindowText"

    invoke-virtual {v11, v14, v0, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 88
    :cond_2
    move-object/from16 v13, v20

    move-object/from16 v0, v21

    move-object/from16 v2, v22

    move-object/from16 v5, v23

    move-object/from16 v12, v24

    move-object v2, v1

    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->theme:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    sget-object v1, Lcom/winlator/cmod/core/WineThemeManager$Theme;->DARK:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    if-ne v0, v1, :cond_3

    .line 89
    move-object/from16 v0, v19

    invoke-virtual {v11, v14, v2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v4, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v11, v14, v3, v8}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v11, v14, v10, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v11, v14, v9, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v11, v14, v7, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v11, v14, v6, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v11, v14, v15, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v11, v14, v13, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "ButtonText"

    invoke-virtual {v11, v14, v2, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "GradientActiveTitle"

    invoke-virtual {v11, v14, v2, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "GradientInactiveTitle"

    invoke-virtual {v11, v14, v2, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "GrayText"

    move-object/from16 v3, v21

    invoke-virtual {v11, v14, v2, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "Hilight"

    move-object/from16 v4, v22

    invoke-virtual {v11, v14, v2, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "HilightText"

    invoke-virtual {v11, v14, v2, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "HotTrackingColor"

    invoke-virtual {v11, v14, v2, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "InactiveBorder"

    invoke-virtual {v11, v14, v2, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "InactiveTitle"

    invoke-virtual {v11, v14, v2, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "InactiveTitleText"

    invoke-virtual {v11, v14, v2, v3}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "InfoText"

    invoke-virtual {v11, v14, v2, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "InfoWindow"

    invoke-virtual {v11, v14, v2, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "Menu"

    invoke-virtual {v11, v14, v2, v1}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "MenuBar"

    invoke-virtual {v11, v14, v1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "MenuHilight"

    invoke-virtual {v11, v14, v1, v4}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "MenuText"

    invoke-virtual {v11, v14, v1, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "Scrollbar"

    invoke-virtual {v11, v14, v1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "TitleText"

    invoke-virtual {v11, v14, v1, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "Window"

    invoke-virtual {v11, v14, v1, v0}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "WindowFrame"

    invoke-virtual {v11, v14, v0, v5}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "WindowText"

    invoke-virtual {v11, v14, v0, v12}, Lcom/winlator/cmod/core/WineRegistryEditor;->setStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :cond_3
    :goto_2
    invoke-virtual {v11}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V

    .line 121
    .end local v11    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    return-void

    .line 50
    .restart local v11    # "registryEditor":Lcom/winlator/cmod/core/WineRegistryEditor;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    .end local v16    # "rootDir":Ljava/io/File;
    .end local v17    # "userRegFile":Ljava/io/File;
    .restart local v6    # "rootDir":Ljava/io/File;
    .restart local v7    # "userRegFile":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object v1, v0

    .end local v6    # "rootDir":Ljava/io/File;
    .end local v7    # "userRegFile":Ljava/io/File;
    .restart local v16    # "rootDir":Ljava/io/File;
    .restart local v17    # "userRegFile":Ljava/io/File;
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Lcom/winlator/cmod/core/WineRegistryEditor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
.end method

.method private static createWallpaperBMPFile(Landroid/content/Context;Lcom/winlator/cmod/xserver/ScreenInfo;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenInfo"    # Lcom/winlator/cmod/xserver/ScreenInfo;

    .line 124
    move-object/from16 v0, p1

    iget-short v1, v0, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    .line 125
    .local v1, "outputHeight":I
    iget-short v2, v0, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    .line 127
    .local v2, "outputWidth":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 128
    .local v3, "outputBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/core/WineThemeManager;->getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    .line 132
    .local v12, "userWallpaperFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v6

    const/4 v13, 0x0

    if-eqz v6, :cond_0

    .line 133
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 134
    .local v6, "image":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v13, v13, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    .local v7, "srcRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v13, v13, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .local v8, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v7    # "srcRect":Landroid/graphics/Rect;
    .end local v8    # "dstRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 139
    :cond_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v14, v6

    .line 140
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v6, 0xf0

    iput v6, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080192

    invoke-static {v6, v7, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 142
    .local v15, "wallpaperBitmap":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    const v6, -0xfea865

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    int-to-float v9, v2

    int-to-float v6, v1

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v10, v6, v16

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v5

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 145
    const v6, -0xfd8843

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    int-to-float v6, v1

    mul-float v8, v6, v16

    int-to-float v9, v2

    int-to-float v10, v1

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    int-to-float v6, v1

    const v7, 0x3f2aaaab

    mul-float/2addr v6, v7

    .line 149
    .local v6, "targetSize":F
    int-to-float v7, v2

    sub-float/2addr v7, v6

    mul-float v7, v7, v16

    .line 150
    .local v7, "centerX":F
    int-to-float v8, v1

    sub-float/2addr v8, v6

    mul-float v8, v8, v16

    .line 151
    .local v8, "centerY":F
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v13, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/RectF;

    add-float v11, v7, v6

    add-float v13, v8, v6

    invoke-direct {v10, v7, v8, v11, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 153
    .local v10, "dstRect":Landroid/graphics/RectF;
    invoke-virtual {v5, v15, v9, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 156
    .end local v6    # "targetSize":F
    .end local v7    # "centerX":F
    .end local v8    # "centerY":F
    .end local v9    # "srcRect":Landroid/graphics/Rect;
    .end local v10    # "dstRect":Landroid/graphics/RectF;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v6

    .line 157
    .local v6, "imageFs":Lcom/winlator/cmod/xenvironment/ImageFs;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "/home/xuser/.cache/wallpaper.bmp"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lcom/winlator/cmod/core/MSBitmap;->create(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 158
    return-void
.end method

.method public static getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winlator/cmod/xenvironment/ImageFs;->getRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/home/xuser/.config/user-wallpaper.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

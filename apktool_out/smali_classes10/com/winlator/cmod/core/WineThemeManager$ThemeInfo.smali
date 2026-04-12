.class public Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;
.super Ljava/lang/Object;
.source "WineThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/core/WineThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeInfo"
.end annotation


# instance fields
.field public final backgroundColor:I

.field public final backgroundType:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

.field public final theme:Lcom/winlator/cmod/core/WineThemeManager$Theme;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/winlator/cmod/core/WineThemeManager$Theme;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/core/WineThemeManager$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->theme:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    .line 32
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 33
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    .line 34
    sget-object v1, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->IMAGE:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    iput-object v1, p0, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    goto :goto_0

    .line 37
    :cond_0
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundType:Lcom/winlator/cmod/core/WineThemeManager$BackgroundType;

    .line 38
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/winlator/cmod/core/WineThemeManager$ThemeInfo;->backgroundColor:I

    .line 40
    :goto_0
    return-void
.end method

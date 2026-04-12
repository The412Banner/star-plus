.class public final enum Lcom/winlator/cmod/core/WineThemeManager$Theme;
.super Ljava/lang/Enum;
.source "WineThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/core/WineThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/core/WineThemeManager$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/core/WineThemeManager$Theme;

.field public static final enum DARK:Lcom/winlator/cmod/core/WineThemeManager$Theme;

.field public static final enum LIGHT:Lcom/winlator/cmod/core/WineThemeManager$Theme;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/core/WineThemeManager$Theme;
    .locals 2

    .line 20
    sget-object v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;->LIGHT:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    sget-object v1, Lcom/winlator/cmod/core/WineThemeManager$Theme;->DARK:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    filled-new-array {v0, v1}, [Lcom/winlator/cmod/core/WineThemeManager$Theme;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/core/WineThemeManager$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;->LIGHT:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    new-instance v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;

    const-string v1, "DARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/core/WineThemeManager$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;->DARK:Lcom/winlator/cmod/core/WineThemeManager$Theme;

    invoke-static {}, Lcom/winlator/cmod/core/WineThemeManager$Theme;->$values()[Lcom/winlator/cmod/core/WineThemeManager$Theme;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;->$VALUES:[Lcom/winlator/cmod/core/WineThemeManager$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/core/WineThemeManager$Theme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/core/WineThemeManager$Theme;
    .locals 1

    .line 20
    sget-object v0, Lcom/winlator/cmod/core/WineThemeManager$Theme;->$VALUES:[Lcom/winlator/cmod/core/WineThemeManager$Theme;

    invoke-virtual {v0}, [Lcom/winlator/cmod/core/WineThemeManager$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/core/WineThemeManager$Theme;

    return-object v0
.end method

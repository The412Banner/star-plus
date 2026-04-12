.class public final enum Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;
.super Ljava/lang/Enum;
.source "ContentsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/contents/ContentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentDirName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

.field public static final enum CONTENT_BOX64_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

.field public static final enum CONTENT_DXVK_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

.field public static final enum CONTENT_MAIN_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

.field public static final enum CONTENT_VKD3D_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

.field public static final enum CONTENT_WINE_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;
    .locals 5

    .line 52
    sget-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_MAIN_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    sget-object v1, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_WINE_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    sget-object v2, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_DXVK_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    sget-object v3, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_VKD3D_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    sget-object v4, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_BOX64_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    const/4 v1, 0x0

    const-string v2, "contents"

    const-string v3, "CONTENT_MAIN_DIR_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_MAIN_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    .line 54
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    const/4 v1, 0x1

    const-string v2, "wine"

    const-string v3, "CONTENT_WINE_DIR_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_WINE_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    .line 55
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    const/4 v1, 0x2

    const-string v2, "dxvk"

    const-string v3, "CONTENT_DXVK_DIR_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_DXVK_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    .line 56
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    const/4 v1, 0x3

    const-string v2, "vkd3d"

    const-string v3, "CONTENT_VKD3D_DIR_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_VKD3D_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    .line 57
    new-instance v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    const/4 v1, 0x4

    const-string v2, "box64"

    const-string v3, "CONTENT_BOX64_DIR_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->CONTENT_BOX64_DIR_NAME:Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    .line 52
    invoke-static {}, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->$values()[Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->$VALUES:[Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;
    .locals 1

    .line 52
    sget-object v0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->$VALUES:[Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    invoke-virtual {v0}, [Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/winlator/cmod/contents/ContentsManager$ContentDirName;->name:Ljava/lang/String;

    return-object v0
.end method

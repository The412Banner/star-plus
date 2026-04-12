.class public final enum Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;
.super Ljava/lang/Enum;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/GraphicsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubwindowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

.field public static final enum CLIP_BY_CHILDREN:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

.field public static final enum INCLUDE_INFERIORS:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;
    .locals 2

    .line 28
    sget-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->CLIP_BY_CHILDREN:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    sget-object v1, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->INCLUDE_INFERIORS:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    filled-new-array {v0, v1}, [Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    const-string v1, "CLIP_BY_CHILDREN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->CLIP_BY_CHILDREN:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    const-string v1, "INCLUDE_INFERIORS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->INCLUDE_INFERIORS:Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    invoke-static {}, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->$values()[Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->$VALUES:[Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;
    .locals 1

    .line 28
    sget-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->$VALUES:[Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/GraphicsContext$SubwindowMode;

    return-object v0
.end method

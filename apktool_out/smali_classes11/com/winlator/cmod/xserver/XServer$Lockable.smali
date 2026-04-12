.class public final enum Lcom/winlator/cmod/xserver/XServer$Lockable;
.super Ljava/lang/Enum;
.source "XServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/XServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lockable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/XServer$Lockable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/XServer$Lockable;

.field public static final enum CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

.field public static final enum DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

.field public static final enum GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

.field public static final enum INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

.field public static final enum PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

.field public static final enum SHMSEGMENT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

.field public static final enum WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/XServer$Lockable;
    .locals 7

    .line 20
    sget-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v3, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v4, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v5, Lcom/winlator/cmod/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    filled-new-array/range {v0 .. v6}, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    const-string v1, "WINDOW_MANAGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$Lockable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    new-instance v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    const-string v1, "PIXMAP_MANAGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$Lockable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    new-instance v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    const-string v1, "DRAWABLE_MANAGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$Lockable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    new-instance v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    const-string v1, "GRAPHIC_CONTEXT_MANAGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$Lockable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    new-instance v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    const-string v1, "INPUT_DEVICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$Lockable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    new-instance v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    const-string v1, "CURSOR_MANAGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$Lockable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    new-instance v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    const-string v1, "SHMSEGMENT_MANAGER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$Lockable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-static {}, Lcom/winlator/cmod/xserver/XServer$Lockable;->$values()[Lcom/winlator/cmod/xserver/XServer$Lockable;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->$VALUES:[Lcom/winlator/cmod/xserver/XServer$Lockable;

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

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/XServer$Lockable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/XServer$Lockable;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/XServer$Lockable;
    .locals 1

    .line 20
    sget-object v0, Lcom/winlator/cmod/xserver/XServer$Lockable;->$VALUES:[Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/XServer$Lockable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    return-object v0
.end method

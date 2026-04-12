.class public final enum Lcom/winlator/cmod/xserver/Window$WMHints;
.super Ljava/lang/Enum;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WMHints"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/Window$WMHints;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum FLAGS:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum ICON_MASK:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum ICON_PIXMAP:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum ICON_WINDOW:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum ICON_X:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum ICON_Y:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum INITIAL_STATE:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum INPUT:Lcom/winlator/cmod/xserver/Window$WMHints;

.field public static final enum WINDOW_GROUP:Lcom/winlator/cmod/xserver/Window$WMHints;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/Window$WMHints;
    .locals 9

    .line 24
    sget-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->FLAGS:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v1, Lcom/winlator/cmod/xserver/Window$WMHints;->INPUT:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v2, Lcom/winlator/cmod/xserver/Window$WMHints;->INITIAL_STATE:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v3, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_PIXMAP:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v4, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_WINDOW:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v5, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_X:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v6, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_Y:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v7, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_MASK:Lcom/winlator/cmod/xserver/Window$WMHints;

    sget-object v8, Lcom/winlator/cmod/xserver/Window$WMHints;->WINDOW_GROUP:Lcom/winlator/cmod/xserver/Window$WMHints;

    filled-new-array/range {v0 .. v8}, [Lcom/winlator/cmod/xserver/Window$WMHints;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "FLAGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->FLAGS:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "INPUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->INPUT:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "INITIAL_STATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->INITIAL_STATE:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "ICON_PIXMAP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_PIXMAP:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "ICON_WINDOW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_WINDOW:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "ICON_X"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_X:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "ICON_Y"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_Y:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "ICON_MASK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->ICON_MASK:Lcom/winlator/cmod/xserver/Window$WMHints;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    const-string v1, "WINDOW_GROUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$WMHints;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->WINDOW_GROUP:Lcom/winlator/cmod/xserver/Window$WMHints;

    invoke-static {}, Lcom/winlator/cmod/xserver/Window$WMHints;->$values()[Lcom/winlator/cmod/xserver/Window$WMHints;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->$VALUES:[Lcom/winlator/cmod/xserver/Window$WMHints;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/Window$WMHints;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Window$WMHints;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/Window$WMHints;
    .locals 1

    .line 24
    sget-object v0, Lcom/winlator/cmod/xserver/Window$WMHints;->$VALUES:[Lcom/winlator/cmod/xserver/Window$WMHints;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/Window$WMHints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/Window$WMHints;

    return-object v0
.end method

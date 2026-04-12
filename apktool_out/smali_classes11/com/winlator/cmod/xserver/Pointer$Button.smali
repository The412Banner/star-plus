.class public final enum Lcom/winlator/cmod/xserver/Pointer$Button;
.super Ljava/lang/Enum;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/Pointer$Button;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/Pointer$Button;

.field public static final enum BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

.field public static final enum BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

.field public static final enum BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

.field public static final enum BUTTON_SCROLL_CLICK_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

.field public static final enum BUTTON_SCROLL_CLICK_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

.field public static final enum BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

.field public static final enum BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/Pointer$Button;
    .locals 7

    .line 8
    sget-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    sget-object v1, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    sget-object v3, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    sget-object v4, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    sget-object v5, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    sget-object v6, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    filled-new-array/range {v0 .. v6}, [Lcom/winlator/cmod/xserver/Pointer$Button;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    const-string v1, "BUTTON_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Pointer$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    new-instance v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    const-string v1, "BUTTON_MIDDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Pointer$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

    new-instance v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    const-string v1, "BUTTON_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Pointer$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    new-instance v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    const-string v1, "BUTTON_SCROLL_UP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Pointer$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    new-instance v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    const-string v1, "BUTTON_SCROLL_DOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Pointer$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    new-instance v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    const-string v1, "BUTTON_SCROLL_CLICK_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Pointer$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    new-instance v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    const-string v1, "BUTTON_SCROLL_CLICK_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Pointer$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_CLICK_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 8
    invoke-static {}, Lcom/winlator/cmod/xserver/Pointer$Button;->$values()[Lcom/winlator/cmod/xserver/Pointer$Button;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->$VALUES:[Lcom/winlator/cmod/xserver/Pointer$Button;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/Pointer$Button;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Pointer$Button;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/Pointer$Button;
    .locals 1

    .line 8
    sget-object v0, Lcom/winlator/cmod/xserver/Pointer$Button;->$VALUES:[Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/Pointer$Button;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/Pointer$Button;

    return-object v0
.end method


# virtual methods
.method public code()B
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/Pointer$Button;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    return v0
.end method

.method public flag()I
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/Pointer$Button;->code()B

    move-result v0

    add-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.class public final enum Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;
.super Ljava/lang/Enum;
.source "DrawRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/requests/DrawRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

.field public static final enum BITMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

.field public static final enum XY_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

.field public static final enum Z_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;
    .locals 3

    .line 20
    sget-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->BITMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    sget-object v1, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->XY_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    sget-object v2, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->Z_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    const-string v1, "BITMAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->BITMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    new-instance v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    const-string v1, "XY_PIXMAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->XY_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    new-instance v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    const-string v1, "Z_PIXMAP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->Z_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    invoke-static {}, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->$values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->$VALUES:[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

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

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;
    .locals 1

    .line 20
    sget-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->$VALUES:[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    return-object v0
.end method

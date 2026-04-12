.class final enum Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;
.super Ljava/lang/Enum;
.source "DrawRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/requests/DrawRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CoordinateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

.field public static final enum ORIGIN:Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

.field public static final enum PREVIOUS:Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;
    .locals 2

    .line 21
    sget-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->ORIGIN:Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    sget-object v1, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->PREVIOUS:Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    filled-new-array {v0, v1}, [Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    const-string v1, "ORIGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->ORIGIN:Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    new-instance v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    const-string v1, "PREVIOUS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->PREVIOUS:Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    invoke-static {}, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->$values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->$VALUES:[Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;
    .locals 1

    .line 21
    sget-object v0, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->$VALUES:[Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    return-object v0
.end method

.class final enum Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
.super Ljava/lang/Enum;
.source "GrabRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/requests/GrabRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

.field public static final enum ALREADY_GRABBED:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

.field public static final enum FROZEN:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

.field public static final enum INVALID_TIME:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

.field public static final enum NOT_VIEWABLE:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

.field public static final enum SUCCESS:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    .locals 5

    .line 17
    sget-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->SUCCESS:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    sget-object v1, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->ALREADY_GRABBED:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    sget-object v2, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->INVALID_TIME:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    sget-object v3, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->NOT_VIEWABLE:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    sget-object v4, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->FROZEN:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->SUCCESS:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    new-instance v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    const-string v1, "ALREADY_GRABBED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->ALREADY_GRABBED:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    new-instance v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    const-string v1, "INVALID_TIME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->INVALID_TIME:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    new-instance v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    const-string v1, "NOT_VIEWABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->NOT_VIEWABLE:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    new-instance v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    const-string v1, "FROZEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->FROZEN:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    invoke-static {}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->$values()[Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->$VALUES:[Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    .locals 1

    .line 17
    sget-object v0, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->$VALUES:[Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    return-object v0
.end method

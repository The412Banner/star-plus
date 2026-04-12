.class public final enum Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
.super Ljava/lang/Enum;
.source "PointerWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/events/PointerWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

.field public static final enum ANCESTOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

.field public static final enum INFERIOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

.field public static final enum NONLINEAR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

.field public static final enum NONLINEAR_VIRTUAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

.field public static final enum VIRTUAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    .locals 5

    .line 11
    sget-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    sget-object v1, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    sget-object v2, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    sget-object v3, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    sget-object v4, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "ANCESTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "VIRTUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "INFERIOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "NONLINEAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "NONLINEAR_VIRTUAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    invoke-static {}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->$values()[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->$VALUES:[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    .locals 1

    .line 11
    sget-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->$VALUES:[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    return-object v0
.end method

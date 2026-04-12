.class public final enum Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;
.super Ljava/lang/Enum;
.source "PointerWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/events/PointerWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

.field public static final enum GRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

.field public static final enum NORMAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

.field public static final enum UNGRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;
    .locals 3

    .line 12
    sget-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->NORMAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    sget-object v1, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->GRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    sget-object v2, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->UNGRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->NORMAL:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    const-string v1, "GRAB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->GRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    new-instance v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    const-string v1, "UNGRAB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->UNGRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    invoke-static {}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->$values()[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->$VALUES:[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;
    .locals 1

    .line 12
    sget-object v0, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->$VALUES:[Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    return-object v0
.end method

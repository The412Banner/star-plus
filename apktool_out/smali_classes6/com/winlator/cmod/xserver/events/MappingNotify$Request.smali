.class public final enum Lcom/winlator/cmod/xserver/events/MappingNotify$Request;
.super Ljava/lang/Enum;
.source "MappingNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/events/MappingNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/events/MappingNotify$Request;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

.field public static final enum KEYBOARD:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

.field public static final enum MODIFIER:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

.field public static final enum POINTER:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/events/MappingNotify$Request;
    .locals 3

    .line 9
    sget-object v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->MODIFIER:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    sget-object v1, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->KEYBOARD:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    sget-object v2, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->POINTER:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    const-string v1, "MODIFIER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->MODIFIER:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    new-instance v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    const-string v1, "KEYBOARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->KEYBOARD:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    new-instance v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    const-string v1, "POINTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->POINTER:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    invoke-static {}, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->$values()[Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->$VALUES:[Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/events/MappingNotify$Request;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/events/MappingNotify$Request;
    .locals 1

    .line 9
    sget-object v0, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->$VALUES:[Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    return-object v0
.end method

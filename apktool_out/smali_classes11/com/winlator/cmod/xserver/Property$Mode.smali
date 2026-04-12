.class public final enum Lcom/winlator/cmod/xserver/Property$Mode;
.super Ljava/lang/Enum;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/Property$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/Property$Mode;

.field public static final enum APPEND:Lcom/winlator/cmod/xserver/Property$Mode;

.field public static final enum PREPEND:Lcom/winlator/cmod/xserver/Property$Mode;

.field public static final enum REPLACE:Lcom/winlator/cmod/xserver/Property$Mode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/Property$Mode;
    .locals 3

    .line 13
    sget-object v0, Lcom/winlator/cmod/xserver/Property$Mode;->REPLACE:Lcom/winlator/cmod/xserver/Property$Mode;

    sget-object v1, Lcom/winlator/cmod/xserver/Property$Mode;->PREPEND:Lcom/winlator/cmod/xserver/Property$Mode;

    sget-object v2, Lcom/winlator/cmod/xserver/Property$Mode;->APPEND:Lcom/winlator/cmod/xserver/Property$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/cmod/xserver/Property$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/winlator/cmod/xserver/Property$Mode;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Property$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Mode;->REPLACE:Lcom/winlator/cmod/xserver/Property$Mode;

    new-instance v0, Lcom/winlator/cmod/xserver/Property$Mode;

    const-string v1, "PREPEND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Property$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Mode;->PREPEND:Lcom/winlator/cmod/xserver/Property$Mode;

    new-instance v0, Lcom/winlator/cmod/xserver/Property$Mode;

    const-string v1, "APPEND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Property$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Mode;->APPEND:Lcom/winlator/cmod/xserver/Property$Mode;

    invoke-static {}, Lcom/winlator/cmod/xserver/Property$Mode;->$values()[Lcom/winlator/cmod/xserver/Property$Mode;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Mode;->$VALUES:[Lcom/winlator/cmod/xserver/Property$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/Property$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/winlator/cmod/xserver/Property$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Property$Mode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/Property$Mode;
    .locals 1

    .line 13
    sget-object v0, Lcom/winlator/cmod/xserver/Property$Mode;->$VALUES:[Lcom/winlator/cmod/xserver/Property$Mode;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/Property$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/Property$Mode;

    return-object v0
.end method

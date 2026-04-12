.class public final enum Lcom/winlator/cmod/container/Container$XrControllerMapping;
.super Ljava/lang/Enum;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/container/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XrControllerMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/container/Container$XrControllerMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum BUTTON_A:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum BUTTON_B:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum BUTTON_GRIP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum BUTTON_TRIGGER:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum BUTTON_X:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum BUTTON_Y:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum THUMBSTICK_DOWN:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum THUMBSTICK_LEFT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum THUMBSTICK_RIGHT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

.field public static final enum THUMBSTICK_UP:Lcom/winlator/cmod/container/Container$XrControllerMapping;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/container/Container$XrControllerMapping;
    .locals 10

    .line 26
    sget-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_A:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_B:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v2, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_X:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v3, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_Y:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v4, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_GRIP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v5, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_TRIGGER:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v6, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_UP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v7, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_DOWN:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v8, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_LEFT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    sget-object v9, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_RIGHT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    filled-new-array/range {v0 .. v9}, [Lcom/winlator/cmod/container/Container$XrControllerMapping;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "BUTTON_A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_A:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "BUTTON_B"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_B:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "BUTTON_X"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_X:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "BUTTON_Y"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_Y:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "BUTTON_GRIP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_GRIP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "BUTTON_TRIGGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_TRIGGER:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    .line 28
    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "THUMBSTICK_UP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_UP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "THUMBSTICK_DOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_DOWN:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "THUMBSTICK_LEFT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_LEFT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    new-instance v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    const-string v1, "THUMBSTICK_RIGHT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/container/Container$XrControllerMapping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_RIGHT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    .line 26
    invoke-static {}, Lcom/winlator/cmod/container/Container$XrControllerMapping;->$values()[Lcom/winlator/cmod/container/Container$XrControllerMapping;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->$VALUES:[Lcom/winlator/cmod/container/Container$XrControllerMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/container/Container$XrControllerMapping;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/container/Container$XrControllerMapping;
    .locals 1

    .line 26
    sget-object v0, Lcom/winlator/cmod/container/Container$XrControllerMapping;->$VALUES:[Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v0}, [Lcom/winlator/cmod/container/Container$XrControllerMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/container/Container$XrControllerMapping;

    return-object v0
.end method

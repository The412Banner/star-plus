.class public final enum Lcom/winlator/cmod/xserver/Window$StackMode;
.super Ljava/lang/Enum;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StackMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/Window$StackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/Window$StackMode;

.field public static final enum ABOVE:Lcom/winlator/cmod/xserver/Window$StackMode;

.field public static final enum BELOW:Lcom/winlator/cmod/xserver/Window$StackMode;

.field public static final enum BOTTOM_IF:Lcom/winlator/cmod/xserver/Window$StackMode;

.field public static final enum OPPOSITE:Lcom/winlator/cmod/xserver/Window$StackMode;

.field public static final enum TOP_IF:Lcom/winlator/cmod/xserver/Window$StackMode;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/Window$StackMode;
    .locals 5

    .line 22
    sget-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->ABOVE:Lcom/winlator/cmod/xserver/Window$StackMode;

    sget-object v1, Lcom/winlator/cmod/xserver/Window$StackMode;->BELOW:Lcom/winlator/cmod/xserver/Window$StackMode;

    sget-object v2, Lcom/winlator/cmod/xserver/Window$StackMode;->TOP_IF:Lcom/winlator/cmod/xserver/Window$StackMode;

    sget-object v3, Lcom/winlator/cmod/xserver/Window$StackMode;->BOTTOM_IF:Lcom/winlator/cmod/xserver/Window$StackMode;

    sget-object v4, Lcom/winlator/cmod/xserver/Window$StackMode;->OPPOSITE:Lcom/winlator/cmod/xserver/Window$StackMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/winlator/cmod/xserver/Window$StackMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/winlator/cmod/xserver/Window$StackMode;

    const-string v1, "ABOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->ABOVE:Lcom/winlator/cmod/xserver/Window$StackMode;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$StackMode;

    const-string v1, "BELOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->BELOW:Lcom/winlator/cmod/xserver/Window$StackMode;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$StackMode;

    const-string v1, "TOP_IF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->TOP_IF:Lcom/winlator/cmod/xserver/Window$StackMode;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$StackMode;

    const-string v1, "BOTTOM_IF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->BOTTOM_IF:Lcom/winlator/cmod/xserver/Window$StackMode;

    new-instance v0, Lcom/winlator/cmod/xserver/Window$StackMode;

    const-string v1, "OPPOSITE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/Window$StackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->OPPOSITE:Lcom/winlator/cmod/xserver/Window$StackMode;

    invoke-static {}, Lcom/winlator/cmod/xserver/Window$StackMode;->$values()[Lcom/winlator/cmod/xserver/Window$StackMode;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->$VALUES:[Lcom/winlator/cmod/xserver/Window$StackMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/Window$StackMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/winlator/cmod/xserver/Window$StackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Window$StackMode;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/Window$StackMode;
    .locals 1

    .line 22
    sget-object v0, Lcom/winlator/cmod/xserver/Window$StackMode;->$VALUES:[Lcom/winlator/cmod/xserver/Window$StackMode;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/Window$StackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/Window$StackMode;

    return-object v0
.end method

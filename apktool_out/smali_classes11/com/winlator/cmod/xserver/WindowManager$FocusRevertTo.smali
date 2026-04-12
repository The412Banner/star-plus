.class public final enum Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;
.super Ljava/lang/Enum;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusRevertTo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

.field public static final enum NONE:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

.field public static final enum PARENT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

.field public static final enum POINTER_ROOT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;
    .locals 3

    .line 23
    sget-object v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    sget-object v1, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->POINTER_ROOT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    sget-object v2, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->PARENT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    new-instance v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    const-string v1, "POINTER_ROOT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->POINTER_ROOT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    new-instance v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    const-string v1, "PARENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->PARENT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    invoke-static {}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->$values()[Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->$VALUES:[Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;
    .locals 1

    .line 23
    sget-object v0, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->$VALUES:[Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    return-object v0
.end method

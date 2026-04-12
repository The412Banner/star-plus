.class public final enum Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
.super Ljava/lang/Enum;
.source "ControlElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/inputcontrols/ControlElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/inputcontrols/ControlElement$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

.field public static final enum BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

.field public static final enum D_PAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

.field public static final enum RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

.field public static final enum STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

.field public static final enum TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
    .locals 5

    .line 34
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v3, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    sget-object v4, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const-string v1, "D_PAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->D_PAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const-string v1, "RANGE_BUTTON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const-string v1, "STICK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    const-string v1, "TRACKPAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    .line 34
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->$values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->$VALUES:[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static names()[Ljava/lang/String;
    .locals 6

    .line 38
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v0

    .line 39
    .local v0, "types":[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 40
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;
    .locals 1

    .line 34
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->$VALUES:[Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    invoke-virtual {v0}, [Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    return-object v0
.end method

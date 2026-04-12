.class public final enum Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;
.super Ljava/lang/Enum;
.source "ControlElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/inputcontrols/ControlElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

.field public static final enum CIRCLE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

.field public static final enum RECT:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

.field public static final enum ROUND_RECT:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

.field public static final enum SQUARE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;
    .locals 4

    .line 44
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    sget-object v1, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->RECT:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->ROUND_RECT:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    sget-object v3, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    filled-new-array {v0, v1, v2, v3}, [Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->CIRCLE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    const-string v1, "RECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->RECT:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    const-string v1, "ROUND_RECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->ROUND_RECT:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    new-instance v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    const-string v1, "SQUARE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->SQUARE:Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    .line 44
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->$values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->$VALUES:[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static names()[Ljava/lang/String;
    .locals 6

    .line 48
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    move-result-object v0

    .line 49
    .local v0, "shapes":[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 50
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;
    .locals 1

    .line 44
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->$VALUES:[Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    invoke-virtual {v0}, [Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    return-object v0
.end method

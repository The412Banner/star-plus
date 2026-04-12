.class public final enum Lcom/winlator/cmod/xserver/GraphicsContext$Function;
.super Ljava/lang/Enum;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/GraphicsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/GraphicsContext$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum AND:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum AND_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum AND_REVERSE:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum CLEAR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum COPY_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum EQUIV:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum INVERT:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum NAND:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum NOR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum NO_OP:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum OR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum OR_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum OR_REVERSE:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum SET:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

.field public static final enum XOR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/GraphicsContext$Function;
    .locals 16

    .line 27
    sget-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->CLEAR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v1, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->AND:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v2, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->AND_REVERSE:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v3, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v4, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->AND_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v5, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->NO_OP:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v6, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->XOR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v7, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->OR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v8, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->NOR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v9, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->EQUIV:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v10, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->INVERT:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v11, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->OR_REVERSE:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v12, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v13, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->OR_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v14, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->NAND:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    sget-object v15, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->SET:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    filled-new-array/range {v0 .. v15}, [Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->CLEAR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "AND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->AND:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "AND_REVERSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->AND_REVERSE:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "COPY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "AND_INVERTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->AND_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "NO_OP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->NO_OP:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "XOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->XOR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "OR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->OR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "NOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->NOR:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "EQUIV"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->EQUIV:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "INVERT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->INVERT:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "OR_REVERSE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->OR_REVERSE:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "COPY_INVERTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "OR_INVERTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->OR_INVERTED:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "NAND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->NAND:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    const-string v1, "SET"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->SET:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    invoke-static {}, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->$values()[Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->$VALUES:[Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/GraphicsContext$Function;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/GraphicsContext$Function;
    .locals 1

    .line 27
    sget-object v0, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->$VALUES:[Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/GraphicsContext$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    return-object v0
.end method

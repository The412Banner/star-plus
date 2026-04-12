.class public final enum Lcom/winlator/cmod/xserver/Property$Format;
.super Ljava/lang/Enum;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/Property$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/Property$Format;

.field public static final enum BYTE_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

.field public static final enum INT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

.field public static final enum SHORT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;


# instance fields
.field public final value:B


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/Property$Format;
    .locals 3

    .line 14
    sget-object v0, Lcom/winlator/cmod/xserver/Property$Format;->BYTE_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    sget-object v1, Lcom/winlator/cmod/xserver/Property$Format;->SHORT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    sget-object v2, Lcom/winlator/cmod/xserver/Property$Format;->INT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/cmod/xserver/Property$Format;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/winlator/cmod/xserver/Property$Format;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "BYTE_ARRAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/xserver/Property$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Format;->BYTE_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    new-instance v0, Lcom/winlator/cmod/xserver/Property$Format;

    const/4 v1, 0x1

    const/16 v2, 0x10

    const-string v3, "SHORT_ARRAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/xserver/Property$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Format;->SHORT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    new-instance v0, Lcom/winlator/cmod/xserver/Property$Format;

    const/4 v1, 0x2

    const/16 v2, 0x20

    const-string v3, "INT_ARRAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/winlator/cmod/xserver/Property$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Format;->INT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    .line 14
    invoke-static {}, Lcom/winlator/cmod/xserver/Property$Format;->$values()[Lcom/winlator/cmod/xserver/Property$Format;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/Property$Format;->$VALUES:[Lcom/winlator/cmod/xserver/Property$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/winlator/cmod/xserver/Property$Format;->value:B

    .line 20
    return-void
.end method

.method public static valueOf(I)Lcom/winlator/cmod/xserver/Property$Format;
    .locals 1
    .param p0, "format"    # I

    .line 23
    sparse-switch p0, :sswitch_data_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 26
    :sswitch_0
    sget-object v0, Lcom/winlator/cmod/xserver/Property$Format;->INT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    return-object v0

    .line 25
    :sswitch_1
    sget-object v0, Lcom/winlator/cmod/xserver/Property$Format;->SHORT_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    return-object v0

    .line 24
    :sswitch_2
    sget-object v0, Lcom/winlator/cmod/xserver/Property$Format;->BYTE_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/Property$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/winlator/cmod/xserver/Property$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/Property$Format;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/Property$Format;
    .locals 1

    .line 14
    sget-object v0, Lcom/winlator/cmod/xserver/Property$Format;->$VALUES:[Lcom/winlator/cmod/xserver/Property$Format;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/Property$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/Property$Format;

    return-object v0
.end method

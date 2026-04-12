.class public final enum Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;
.super Ljava/lang/Enum;
.source "ALSAClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/alsaserver/ALSAClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

.field public static final enum FLOATBE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

.field public static final enum FLOATLE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

.field public static final enum S16BE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

.field public static final enum S16LE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

.field public static final enum U8:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;


# instance fields
.field public final byteCount:B


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;
    .locals 5

    .line 9
    sget-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->U8:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v1, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->S16LE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v2, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->S16BE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v3, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->FLOATLE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    sget-object v4, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->FLOATBE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    const-string v1, "U8"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->U8:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    new-instance v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    const-string v1, "S16LE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->S16LE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    new-instance v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    const-string v1, "S16BE"

    invoke-direct {v0, v1, v2, v2}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->S16BE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    new-instance v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    const-string v1, "FLOATLE"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->FLOATLE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    new-instance v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    const-string v1, "FLOATBE"

    invoke-direct {v0, v1, v3, v3}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->FLOATBE:Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    .line 9
    invoke-static {}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->$values()[Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->$VALUES:[Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->byteCount:B

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;
    .locals 1

    .line 9
    sget-object v0, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->$VALUES:[Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    invoke-virtual {v0}, [Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    return-object v0
.end method

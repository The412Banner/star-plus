.class final enum Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
.super Ljava/lang/Enum;
.source "HuffmanState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum DYNAMIC_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum FIXED_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field public static final enum STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 22
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    const-string v1, "STORED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 23
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    const-string v1, "DYNAMIC_CODES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->DYNAMIC_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 24
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    const-string v1, "FIXED_CODES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->FIXED_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 20
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    sget-object v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    sget-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->DYNAMIC_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    sget-object v3, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->FIXED_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->$VALUES:[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 1

    .line 20
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->$VALUES:[Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    return-object v0
.end method

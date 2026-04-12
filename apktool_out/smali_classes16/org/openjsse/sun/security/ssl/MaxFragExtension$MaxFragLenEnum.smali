.class final enum Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
.super Ljava/lang/Enum;
.source "MaxFragExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/MaxFragExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MaxFragLenEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

.field public static final enum MFL_1024:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

.field public static final enum MFL_2048:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

.field public static final enum MFL_4096:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

.field public static final enum MFL_512:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;


# instance fields
.field final description:Ljava/lang/String;

.field final fragmentSize:I

.field final id:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 102
    new-instance v6, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    const/16 v4, 0x200

    const-string v5, "2^9"

    const-string v1, "MFL_512"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;-><init>(Ljava/lang/String;IBILjava/lang/String;)V

    sput-object v6, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_512:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    .line 103
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    const/16 v11, 0x400

    const-string v12, "2^10"

    const-string v8, "MFL_1024"

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;-><init>(Ljava/lang/String;IBILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_1024:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    .line 104
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    const/16 v5, 0x800

    const-string v6, "2^11"

    const-string v2, "MFL_2048"

    const/4 v3, 0x2

    const/4 v4, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;-><init>(Ljava/lang/String;IBILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_2048:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    .line 105
    new-instance v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    const/16 v11, 0x1000

    const-string v12, "2^12"

    const-string v8, "MFL_4096"

    const/4 v9, 0x3

    const/4 v10, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;-><init>(Ljava/lang/String;IBILjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_4096:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    .line 101
    sget-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_512:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    sget-object v1, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_1024:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    sget-object v2, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_2048:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    sget-object v3, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_4096:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->$VALUES:[Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "fragmentSize"    # I
    .param p5, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->id:B

    .line 113
    iput p4, p0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->fragmentSize:I

    .line 114
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->description:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$1200(B)Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    .locals 1
    .param p0, "x0"    # B

    .line 101
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->valueOf(B)Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # B

    .line 101
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->nameOf(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 128
    invoke-static {}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->values()[Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 129
    .local v3, "mfl":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->id:B

    if-ne v4, p0, :cond_0

    .line 130
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->description:Ljava/lang/String;

    return-object v0

    .line 128
    .end local v3    # "mfl":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDEFINED-MAX-FRAGMENT-LENGTH("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static valueOf(B)Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    .locals 5
    .param p0, "id"    # B

    .line 118
    invoke-static {}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->values()[Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 119
    .local v3, "mfl":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->id:B

    if-ne v4, p0, :cond_0

    .line 120
    return-object v3

    .line 118
    .end local v3    # "mfl":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static valueOf(I)Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    .locals 2
    .param p0, "fragmentSize"    # I

    .line 142
    const/4 v0, 0x0

    if-gtz p0, :cond_0

    .line 143
    return-object v0

    .line 144
    :cond_0
    const/16 v1, 0x400

    if-ge p0, v1, :cond_1

    .line 145
    sget-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_512:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    return-object v0

    .line 146
    :cond_1
    const/16 v1, 0x800

    if-ge p0, v1, :cond_2

    .line 147
    sget-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_1024:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    return-object v0

    .line 148
    :cond_2
    const/16 v1, 0x1000

    if-ge p0, v1, :cond_3

    .line 149
    sget-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_2048:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    return-object v0

    .line 150
    :cond_3
    if-ne p0, v1, :cond_4

    .line 151
    sget-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->MFL_4096:Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    return-object v0

    .line 154
    :cond_4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 101
    const-class v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    .locals 1

    .line 101
    sget-object v0, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->$VALUES:[Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    return-object v0
.end method

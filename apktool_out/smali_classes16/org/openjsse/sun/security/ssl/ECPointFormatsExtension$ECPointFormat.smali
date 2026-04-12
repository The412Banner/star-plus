.class final enum Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;
.super Ljava/lang/Enum;
.source "ECPointFormatsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ECPointFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

.field public static final enum ANSIX962_COMPRESSED_PRIME:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

.field public static final enum FMT_ANSIX962_COMPRESSED_CHAR2:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

.field public static final enum UNCOMPRESSED:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;


# instance fields
.field final id:B

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 131
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    const/4 v1, 0x0

    const-string v2, "uncompressed"

    const-string v3, "UNCOMPRESSED"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    .line 132
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    const/4 v1, 0x1

    const-string v2, "ansiX962_compressed_prime"

    const-string v3, "ANSIX962_COMPRESSED_PRIME"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_PRIME:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    .line 133
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    const/4 v1, 0x2

    const-string v2, "ansiX962_compressed_char2"

    const-string v3, "FMT_ANSIX962_COMPRESSED_CHAR2"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->FMT_ANSIX962_COMPRESSED_CHAR2:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    .line 130
    sget-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->ANSIX962_COMPRESSED_PRIME:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->FMT_ANSIX962_COMPRESSED_CHAR2:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->$VALUES:[Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->id:B

    .line 140
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->name:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # I

    .line 144
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->values()[Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 145
    .local v3, "pf":Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->id:B

    if-ne v4, p0, :cond_0

    .line 146
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->name:Ljava/lang/String;

    return-object v0

    .line 144
    .end local v3    # "pf":Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDEFINED-EC-POINT-FORMAT("

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 130
    const-class v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;
    .locals 1

    .line 130
    sget-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->$VALUES:[Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    return-object v0
.end method

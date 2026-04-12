.class final enum Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
.super Ljava/lang/Enum;
.source "PskKeyExchangeModesExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PskKeyExchangeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

.field public static final enum PSK_DHE_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

.field public static final enum PSK_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;


# instance fields
.field final id:B

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    const/4 v1, 0x0

    const-string v2, "psk_ke"

    const-string v3, "PSK_KE"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->PSK_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    .line 55
    new-instance v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    const/4 v1, 0x1

    const-string v2, "psk_dhe_ke"

    const-string v3, "PSK_DHE_KE"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->PSK_DHE_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->PSK_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->PSK_DHE_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    filled-new-array {v0, v1}, [Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->$VALUES:[Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->id:B

    .line 62
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 76
    invoke-static {}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->values()[Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    .local v3, "pkem":Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->id:B

    if-ne v4, p0, :cond_0

    .line 78
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->name:Ljava/lang/String;

    return-object v0

    .line 76
    .end local v3    # "pkem":Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN PskKeyExchangeMode TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static valueOf(B)Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    .locals 5
    .param p0, "id"    # B

    .line 66
    invoke-static {}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->values()[Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    .local v3, "pkem":Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->id:B

    if-ne v4, p0, :cond_0

    .line 68
    return-object v3

    .line 66
    .end local v3    # "pkem":Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;
    .locals 1

    .line 53
    sget-object v0, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->$VALUES:[Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    return-object v0
.end method

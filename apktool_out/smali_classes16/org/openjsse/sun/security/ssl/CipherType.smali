.class final enum Lorg/openjsse/sun/security/ssl/CipherType;
.super Ljava/lang/Enum;
.source "CipherType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/CipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/CipherType;

.field public static final enum AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

.field public static final enum BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

.field public static final enum NULL_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

.field public static final enum STREAM_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherType;

    const-string v1, "NULL_CIPHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherType;->NULL_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    .line 33
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherType;

    const-string v1, "STREAM_CIPHER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherType;->STREAM_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    .line 34
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherType;

    const-string v1, "BLOCK_CIPHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    .line 35
    new-instance v0, Lorg/openjsse/sun/security/ssl/CipherType;

    const-string v1, "AEAD_CIPHER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    .line 31
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherType;->NULL_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherType;->STREAM_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjsse/sun/security/ssl/CipherType;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/CipherType;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CipherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/openjsse/sun/security/ssl/CipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/CipherType;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/CipherType;
    .locals 1

    .line 31
    sget-object v0, Lorg/openjsse/sun/security/ssl/CipherType;->$VALUES:[Lorg/openjsse/sun/security/ssl/CipherType;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/CipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/CipherType;

    return-object v0
.end method

.class public abstract enum Lorg/bouncycastle/crypto/PasswordConverter;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/bouncycastle/crypto/CharToByteConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/PasswordConverter;",
        ">;",
        "Lorg/bouncycastle/crypto/CharToByteConverter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/PasswordConverter;

.field public static final enum ASCII:Lorg/bouncycastle/crypto/PasswordConverter;

.field public static final enum PKCS12:Lorg/bouncycastle/crypto/PasswordConverter;

.field public static final enum UTF8:Lorg/bouncycastle/crypto/PasswordConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/PasswordConverter$1;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/PasswordConverter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->ASCII:Lorg/bouncycastle/crypto/PasswordConverter;

    new-instance v0, Lorg/bouncycastle/crypto/PasswordConverter$2;

    const-string v1, "UTF8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/PasswordConverter$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->UTF8:Lorg/bouncycastle/crypto/PasswordConverter;

    new-instance v0, Lorg/bouncycastle/crypto/PasswordConverter$3;

    const-string v1, "PKCS12"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/PasswordConverter$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->PKCS12:Lorg/bouncycastle/crypto/PasswordConverter;

    sget-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->ASCII:Lorg/bouncycastle/crypto/PasswordConverter;

    sget-object v1, Lorg/bouncycastle/crypto/PasswordConverter;->UTF8:Lorg/bouncycastle/crypto/PasswordConverter;

    sget-object v2, Lorg/bouncycastle/crypto/PasswordConverter;->PKCS12:Lorg/bouncycastle/crypto/PasswordConverter;

    filled-new-array {v0, v1, v2}, [Lorg/bouncycastle/crypto/PasswordConverter;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->$VALUES:[Lorg/bouncycastle/crypto/PasswordConverter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/bouncycastle/crypto/PasswordConverter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/PasswordConverter;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/PasswordConverter;
    .locals 1

    const-class v0, Lorg/bouncycastle/crypto/PasswordConverter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/PasswordConverter;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/PasswordConverter;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->$VALUES:[Lorg/bouncycastle/crypto/PasswordConverter;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/PasswordConverter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/PasswordConverter;

    return-object v0
.end method

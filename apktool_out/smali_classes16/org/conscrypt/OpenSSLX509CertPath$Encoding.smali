.class final enum Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
.super Ljava/lang/Enum;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLX509CertPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/OpenSSLX509CertPath$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKCS7:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

.field public static final enum PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;


# instance fields
.field private final apiName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    const/4 v1, 0x0

    const-string v2, "PkiPath"

    const-string v3, "PKI_PATH"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 53
    new-instance v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    const-string v1, "PKCS7"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 51
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    sget-object v1, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    filled-new-array {v0, v1}, [Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 51
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method static findByApiName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 5
    .param p0, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    .local v3, "element":Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    iget-object v4, v3, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    return-object v3

    .line 62
    .end local v3    # "element":Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method

.method public static values()[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .locals 1

    .line 51
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->$VALUES:[Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v0}, [Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-object v0
.end method

.class final enum Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
.super Ljava/lang/Enum;
.source "CertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClientCertificateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field private static final CERT_TYPES:[B

.field public static final enum DSS_EPHEMERAL_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum DSS_FIXED_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum DSS_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum ECDSA_FIXED_ECDH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum ECDSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum FORTEZZA_DMS:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_EPHEMERAL_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_FIXED_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_FIXED_ECDH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

.field public static final enum RSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;


# instance fields
.field final id:B

.field final isAvailable:Z

.field final keyAlgorithm:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 70
    new-instance v7, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const-string v5, "RSA"

    const/4 v6, 0x1

    const-string v1, "RSA_SIGN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "rsa_sign"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;Z)V

    sput-object v7, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 71
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const-string v13, "DSA"

    const/4 v14, 0x1

    const-string v9, "DSS_SIGN"

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v12, "dss_sign"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 72
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const-string v1, "rsa_fixed_dh"

    const-string v2, "RSA_FIXED_DH"

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_FIXED_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const-string v1, "dss_fixed_dh"

    const-string v2, "DSS_FIXED_DH"

    const/4 v5, 0x4

    invoke-direct {v0, v2, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_FIXED_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 76
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const-string v1, "rsa_ephemeral_dh"

    const-string v2, "RSA_EPHEMERAL_DH"

    const/4 v6, 0x5

    invoke-direct {v0, v2, v5, v6, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_EPHEMERAL_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 77
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const-string v1, "dss_ephemeral_dh"

    const-string v2, "DSS_EPHEMERAL_DH"

    const/4 v5, 0x6

    invoke-direct {v0, v2, v6, v5, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_EPHEMERAL_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 78
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const/16 v1, 0x14

    const-string v2, "fortezza_dms"

    const-string v6, "FORTEZZA_DMS"

    invoke-direct {v0, v6, v5, v1, v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->FORTEZZA_DMS:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 81
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 82
    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result v13

    const-string v8, "ECDSA_SIGN"

    const/4 v9, 0x7

    const/16 v10, 0x40

    const-string v11, "ecdsa_sign"

    const-string v12, "EC"

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->ECDSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 83
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const/16 v1, 0x41

    const-string v2, "rsa_fixed_ecdh"

    const-string v5, "RSA_FIXED_ECDH"

    const/16 v6, 0x8

    invoke-direct {v0, v5, v6, v1, v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_FIXED_ECDH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 84
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    const/16 v1, 0x42

    const-string v2, "ecdsa_fixed_ecdh"

    const-string v5, "ECDSA_FIXED_ECDH"

    const/16 v6, 0x9

    invoke-direct {v0, v5, v6, v1, v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->ECDSA_FIXED_ECDH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 68
    sget-object v7, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v8, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v9, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_FIXED_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v10, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_FIXED_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v11, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_EPHEMERAL_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v12, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_EPHEMERAL_DH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v13, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->FORTEZZA_DMS:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v14, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->ECDSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v15, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_FIXED_ECDH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    sget-object v16, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->ECDSA_FIXED_ECDH:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    filled-new-array/range {v7 .. v16}, [Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->$VALUES:[Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    .line 87
    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v4, [B

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->ECDSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    aput-byte v4, v0, v2

    sget-object v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    aput-byte v2, v0, v1

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    aput-byte v1, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->RSA_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    aput-byte v3, v0, v2

    sget-object v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->DSS_SIGN:Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    aput-byte v2, v0, v1

    :goto_0
    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->CERT_TYPES:[B

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 7
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p3, "id"    # B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "keyAlgorithm"    # Ljava/lang/String;
    .param p6, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    .line 108
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->name:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->keyAlgorithm:Ljava/lang/String;

    .line 110
    iput-boolean p6, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->isAvailable:Z

    .line 111
    return-void
.end method

.method static synthetic access$600()[B
    .locals 1

    .line 68
    sget-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->CERT_TYPES:[B

    return-object v0
.end method

.method static synthetic access$700([B)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .line 68
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->getKeyTypes([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # B

    .line 68
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->nameOf(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyTypes([B)[Ljava/lang/String;
    .locals 7
    .param p0, "ids"    # [B

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .local v0, "keyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 135
    .local v4, "id":B
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->valueOf(B)Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    move-result-object v5

    .line 136
    .local v5, "cct":Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    iget-boolean v6, v5, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->isAvailable:Z

    if-eqz v6, :cond_0

    .line 137
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->keyAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v4    # "id":B
    .end local v5    # "cct":Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static nameOf(B)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # B

    .line 114
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->values()[Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 115
    .local v3, "cct":Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    if-ne v4, p0, :cond_0

    .line 116
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->name:Ljava/lang/String;

    return-object v0

    .line 114
    .end local v3    # "cct":Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDEFINED-CLIENT-CERTIFICATE-TYPE("

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

.method private static valueOf(B)Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    .locals 5
    .param p0, "id"    # B

    .line 123
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->values()[Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 124
    .local v3, "cct":Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->id:B

    if-ne v4, p0, :cond_0

    .line 125
    return-object v3

    .line 123
    .end local v3    # "cct":Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-class v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    .locals 1

    .line 68
    sget-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->$VALUES:[Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;

    return-object v0
.end method

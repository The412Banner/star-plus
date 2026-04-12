.class final enum Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;
.super Ljava/lang/Enum;
.source "SignatureScheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SignatureScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SigAlgParamSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

.field public static final enum RSA_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

.field public static final enum RSA_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

.field public static final enum RSA_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;


# instance fields
.field private final isAvailable:Z

.field private final parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 186
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const-string v1, "SHA-256"

    const/16 v2, 0x20

    const-string v3, "RSA_PSS_SHA256"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 187
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const-string v1, "SHA-384"

    const/16 v2, 0x30

    const-string v3, "RSA_PSS_SHA384"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 188
    new-instance v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    const-string v1, "SHA-512"

    const/16 v2, 0x40

    const-string v3, "RSA_PSS_SHA512"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 185
    sget-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA256:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA384:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->RSA_PSS_SHA512:Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->$VALUES:[Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "saltLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    new-instance p1, Ljava/security/spec/PSSParameterSpec;

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v3, p3}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v2, "MGF1"

    move-object v0, p1

    move-object v1, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 199
    .local p1, "pssParamSpec":Ljava/security/spec/PSSParameterSpec;
    const/4 p2, 0x1

    .line 201
    .local p2, "mediator":Z
    :try_start_0
    const-string v0, "RSASSA-PSS"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 202
    .local v0, "signer":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0    # "signer":Ljava/security/Signature;
    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 206
    .local v0, "exp":Ljava/lang/Exception;
    :goto_0
    const/4 p2, 0x0

    .line 207
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSASSA-PSS signature with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported by the underlying providers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .end local v0    # "exp":Ljava/lang/Exception;
    :cond_0
    :goto_1
    iput-boolean p2, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->isAvailable:Z

    .line 215
    if-eqz p2, :cond_1

    move-object v0, p1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 185
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->isAvailable:Z

    return v0
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    .line 185
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 185
    const-class v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;
    .locals 1

    .line 185
    sget-object v0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->$VALUES:[Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;

    return-object v0
.end method


# virtual methods
.method getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme$SigAlgParamSpec;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

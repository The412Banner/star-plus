.class Lorg/openjsse/sun/security/ssl/JsseJce$EcAvailability;
.super Ljava/lang/Object;
.source "JsseJce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/JsseJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcAvailability"
.end annotation


# static fields
.field private static final isAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 400
    const-string v0, "EC"

    const/4 v1, 0x1

    .line 402
    .local v1, "mediator":Z
    :try_start_0
    const-string v2, "SHA1withECDSA"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    .line 403
    const-string v2, "NONEwithECDSA"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    .line 404
    const-string v2, "ECDH"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 405
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 406
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 407
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sput-boolean v1, Lorg/openjsse/sun/security/ssl/JsseJce$EcAvailability;->isAvailable:Z

    .line 413
    .end local v1    # "mediator":Z
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 395
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/JsseJce$EcAvailability;->isAvailable:Z

    return v0
.end method

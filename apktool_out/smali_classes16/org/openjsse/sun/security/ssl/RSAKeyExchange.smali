.class final Lorg/openjsse/sun/security/ssl/RSAKeyExchange;
.super Ljava/lang/Object;
.source "RSAKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator;,
        Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;,
        Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossessionGenerator;,
        Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;,
        Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
    }
.end annotation


# static fields
.field static final kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

.field static final poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossessionGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossessionGenerator;-><init>(Lorg/openjsse/sun/security/ssl/RSAKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange;->poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAKAGenerator;-><init>(Lorg/openjsse/sun/security/ssl/RSAKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange;->kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

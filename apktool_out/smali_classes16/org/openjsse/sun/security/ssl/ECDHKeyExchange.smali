.class final Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;
.super Ljava/lang/Object;
.source "ECDHKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAKeyDerivation;,
        Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAGenerator;,
        Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHKAGenerator;,
        Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossessionGenerator;,
        Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;,
        Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    }
.end annotation


# static fields
.field static final ecdhKAGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

.field static final ecdheKAGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

.field static final poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossessionGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossessionGenerator;-><init>(Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;->poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAGenerator;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEKAGenerator;-><init>(Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;->ecdheKAGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHKAGenerator;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHKAGenerator;-><init>(Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;->ecdhKAGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

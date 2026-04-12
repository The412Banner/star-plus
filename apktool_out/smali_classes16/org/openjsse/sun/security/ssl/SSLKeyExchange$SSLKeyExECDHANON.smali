.class Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHANON;
.super Ljava/lang/Object;
.source "SSLKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSLKeyExECDHANON"
.end annotation


# static fields
.field private static KE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 324
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    const/4 v1, 0x0

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ECDHE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;-><init>(Lorg/openjsse/sun/security/ssl/X509Authentication;Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHANON;->KE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .locals 1

    .line 323
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHANON;->KE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    return-object v0
.end method

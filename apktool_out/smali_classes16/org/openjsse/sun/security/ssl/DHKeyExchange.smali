.class final Lorg/openjsse/sun/security/ssl/DHKeyExchange;
.super Ljava/lang/Object;
.source "DHKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;,
        Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;,
        Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;,
        Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    }
.end annotation


# static fields
.field static final kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

.field static final poExportableGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

.field static final poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;-><init>(ZLorg/openjsse/sun/security/ssl/DHKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    .line 59
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;-><init>(ZLorg/openjsse/sun/security/ssl/DHKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->poExportableGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;

    invoke-direct {v0, v2}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEKAGenerator;-><init>(Lorg/openjsse/sun/security/ssl/DHKeyExchange$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

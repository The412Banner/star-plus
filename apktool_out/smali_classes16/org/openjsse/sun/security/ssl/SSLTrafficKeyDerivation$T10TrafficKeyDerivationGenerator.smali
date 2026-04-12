.class final Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T10TrafficKeyDerivationGenerator;
.super Ljava/lang/Object;
.source "SSLTrafficKeyDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivationGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T10TrafficKeyDerivationGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$1;

    .line 95
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$T10TrafficKeyDerivationGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method

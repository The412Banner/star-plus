.class final Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
.super Ljava/lang/Object;
.source "RSAKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EphemeralRSAPossession"
.end annotation


# instance fields
.field final popPrivateKey:Ljava/security/PrivateKey;

.field final popPublicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0
    .param p1, "popPrivateKey"    # Ljava/security/PrivateKey;
    .param p2, "popPublicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;->popPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 62
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 63
    return-void
.end method

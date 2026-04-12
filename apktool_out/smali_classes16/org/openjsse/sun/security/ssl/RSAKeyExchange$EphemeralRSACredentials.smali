.class final Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;
.super Ljava/lang/Object;
.source "RSAKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EphemeralRSACredentials"
.end annotation


# instance fields
.field final popPublicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0
    .param p1, "popPublicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;->popPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 71
    return-void
.end method

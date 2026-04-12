.class final Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
.super Ljava/lang/Object;
.source "X509Authentication.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "X509Credentials"
.end annotation


# instance fields
.field final popCerts:[Ljava/security/cert/X509Certificate;

.field final popPublicKey:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "popPublicKey"    # Ljava/security/PublicKey;
    .param p2, "popCerts"    # [Ljava/security/cert/X509Certificate;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popCerts:[Ljava/security/cert/X509Certificate;

    .line 159
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 160
    return-void
.end method

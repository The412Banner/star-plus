.class final Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;
.super Ljava/lang/Object;
.source "SSLSecurity.java"

# interfaces
.implements Lorg/openjsse/com/sun/net/ssl/X509KeyManager;


# instance fields
.field private theX509KeyManager:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;)V
    .locals 0
    .param p1, "obj"    # Ljavax/net/ssl/X509KeyManager;

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;->theX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 638
    return-void
.end method


# virtual methods
.method public chooseClientAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 645
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 646
    .local v0, "keyTypes":[Ljava/lang/String;
    iget-object v1, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;->theX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 654
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;->theX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;->theX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 641
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;->theX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;->theX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 650
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerComSunWrapper;->theX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

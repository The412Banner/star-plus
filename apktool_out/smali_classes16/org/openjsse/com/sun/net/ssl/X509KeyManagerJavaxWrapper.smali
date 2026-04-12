.class final Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;
.super Ljava/lang/Object;
.source "SSLSecurity.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# instance fields
.field private theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;


# direct methods
.method constructor <init>(Lorg/openjsse/com/sun/net/ssl/X509KeyManager;)V
    .locals 0
    .param p1, "obj"    # Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    .line 508
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 4
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 518
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 519
    return-object v0

    .line 525
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 526
    iget-object v2, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    aget-object v3, p1, v1

    invoke-interface {v2, v3, p2}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->chooseClientAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "retval":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 528
    return-object v3

    .line 525
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "i":I
    .end local v3    # "retval":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Lorg/openjsse/javax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 4
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Lorg/openjsse/javax/net/ssl/SSLEngine;

    .line 544
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 545
    return-object v0

    .line 551
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 552
    iget-object v2, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    aget-object v3, p1, v1

    invoke-interface {v2, v3, p2}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->chooseClientAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "retval":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 554
    return-object v3

    .line 551
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    .end local v3    # "retval":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Lorg/openjsse/javax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Lorg/openjsse/javax/net/ssl/SSLEngine;

    .line 582
    if-nez p1, :cond_0

    .line 583
    const/4 v0, 0x0

    return-object v0

    .line 585
    :cond_0
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 567
    if-nez p1, :cond_0

    .line 568
    const/4 v0, 0x0

    return-object v0

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 511
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 561
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;->theX509KeyManager:Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

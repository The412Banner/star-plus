.class final Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;
.super Ljava/lang/Object;
.source "X509Authentication.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "X509PossessionGenerator"
.end annotation


# instance fields
.field private final keyTypes:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "keyTypes"    # [Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;->keyTypes:[Ljava/lang/String;

    .line 169
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Lorg/openjsse/sun/security/ssl/X509Authentication$1;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/X509Authentication$1;

    .line 164
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private createClientPossession(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 9
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v0

    .line 198
    .local v0, "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    const/4 v1, 0x0

    .line 199
    .local v1, "clientAlias":Ljava/lang/String;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v2, v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 200
    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->peerSupportedAuthorities:[Ljavax/security/auth/x500/X500Principal;

    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v2, v3, v5}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v2, v2, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    if-eqz v2, :cond_1

    .line 205
    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->peerSupportedAuthorities:[Ljavax/security/auth/x500/X500Principal;

    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v5, Lorg/openjsse/javax/net/ssl/SSLEngine;

    invoke-virtual {v0, v2, v3, v5}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_1
    :goto_0
    const-string v2, "ssl"

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 212
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No X.509 cert selected for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_2
    return-object v3

    .line 218
    :cond_3
    invoke-virtual {v0, v1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 219
    .local v5, "clientPrivateKey":Ljava/security/PrivateKey;
    if-nez v5, :cond_5

    .line 220
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " is not a private key entry"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_4
    return-object v3

    .line 227
    :cond_5
    invoke-virtual {v0, v1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 228
    .local v6, "clientCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_a

    array-length v7, v6

    if-nez v7, :cond_6

    goto :goto_2

    .line 236
    :cond_6
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 237
    .local v7, "clientPublicKey":Ljava/security/PublicKey;
    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 238
    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    .line 247
    :cond_7
    new-instance v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    invoke-direct {v2, v5, v6}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object v2

    .line 239
    :cond_8
    :goto_1
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_9

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " private or public key is not of "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " algorithm"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_9
    return-object v3

    .line 229
    .end local v7    # "clientPublicKey":Ljava/security/PublicKey;
    :cond_a
    :goto_2
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_b

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is a private key entry with no cert chain stored"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_b
    return-object v3
.end method

.method private createServerPossession(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 11
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v0

    .line 253
    .local v0, "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    const/4 v1, 0x0

    .line 254
    .local v1, "serverAlias":Ljava/lang/String;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v2, v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p2, v3, v2}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v2, v2, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v2, Lorg/openjsse/javax/net/ssl/SSLEngine;

    invoke-virtual {v0, p2, v3, v2}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    .line 262
    :cond_1
    :goto_0
    const-string v2, "ssl"

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 263
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No X.509 cert selected for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_2
    return-object v3

    .line 269
    :cond_3
    invoke-virtual {v0, v1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 270
    .local v5, "serverPrivateKey":Ljava/security/PrivateKey;
    if-nez v5, :cond_5

    .line 271
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " is not a private key entry"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_4
    return-object v3

    .line 278
    :cond_5
    invoke-virtual {v0, v1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 279
    .local v6, "serverCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_f

    array-length v7, v6

    if-nez v7, :cond_6

    goto/16 :goto_2

    .line 287
    :cond_6
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 288
    .local v7, "serverPublicKey":Ljava/security/PublicKey;
    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 289
    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    .line 301
    :cond_7
    const-string v8, "EC"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 302
    instance-of v8, v7, Ljava/security/interfaces/ECPublicKey;

    if-nez v8, :cond_9

    .line 303
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_8

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " public key is not an instance of ECPublicKey"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_8
    return-object v3

    .line 313
    :cond_9
    move-object v8, v7

    check-cast v8, Ljava/security/interfaces/ECPublicKey;

    .line 314
    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v8

    .line 315
    .local v8, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v9

    .line 316
    .local v9, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v9, :cond_a

    .line 317
    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isSupported(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    if-eqz v10, :cond_c

    iget-object v10, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 319
    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 321
    :cond_a
    sget-boolean v10, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v10, :cond_b

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported named group ("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ") used in the "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " certificate"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_b
    return-object v3

    .line 331
    .end local v8    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v9    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_c
    new-instance v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    invoke-direct {v2, v5, v6}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object v2

    .line 290
    :cond_d
    :goto_1
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_e

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " private or public key is not of "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " algorithm"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_e
    return-object v3

    .line 280
    .end local v7    # "serverPublicKey":Ljava/security/PublicKey;
    :cond_f
    :goto_2
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_10

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is not a certificate entry"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_10
    return-object v3
.end method


# virtual methods
.method public createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 173
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;->keyTypes:[Ljava/lang/String;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 175
    .local v3, "keyType":Ljava/lang/String;
    move-object v4, p1

    check-cast v4, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v4, v3}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;->createClientPossession(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v4

    .line 177
    .local v4, "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-eqz v4, :cond_0

    .line 178
    return-object v4

    .line 174
    .end local v3    # "keyType":Ljava/lang/String;
    .end local v4    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;->keyTypes:[Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 183
    .restart local v3    # "keyType":Ljava/lang/String;
    move-object v4, p1

    check-cast v4, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v4, v3}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;->createServerPossession(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v4

    .line 185
    .restart local v4    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-eqz v4, :cond_2

    .line 186
    return-object v4

    .line 182
    .end local v3    # "keyType":Ljava/lang/String;
    .end local v4    # "poss":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

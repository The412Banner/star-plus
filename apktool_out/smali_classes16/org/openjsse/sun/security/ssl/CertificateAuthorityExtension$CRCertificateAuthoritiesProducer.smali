.class final Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;
.super Ljava/lang/Object;
.source "CertificateAuthorityExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CRCertificateAuthoritiesProducer"
.end annotation


# instance fields
.field private final enableCAExtension:Z

.field private final maxCAExtensionSize:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const-string v0, "org.openjsse.server.enableCAExtension"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;->enableCAExtension:Z

    .line 318
    const-string v0, "org.openjsse.server.maxCAExtensionSize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getUIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;->maxCAExtensionSize:I

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;

    .line 313
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 333
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 340
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;->enableCAExtension:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 341
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const-string v1, "Ignore disabled certificate_authorities extension"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :cond_0
    return-object v2

    .line 349
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    if-nez v1, :cond_3

    .line 350
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 351
    .local v1, "caCerts":[Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .local v4, "authList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/security/auth/x500/X500Principal;>;"
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v1, v3

    .line 353
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 356
    iput-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    .line 359
    .end local v1    # "caCerts":[Ljava/security/cert/X509Certificate;
    .end local v4    # "authList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/security/auth/x500/X500Principal;>;"
    :cond_3
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    if-nez v1, :cond_4

    .line 360
    return-object v2

    .line 362
    :cond_4
    const/4 v1, 0x0

    .line 363
    .local v1, "vectorLen":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v2, "authorities":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/security/auth/x500/X500Principal;

    .line 365
    .local v4, "ca":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    .line 366
    .local v5, "enc":[B
    array-length v6, v5

    add-int/lit8 v6, v6, 0x2

    .line 367
    .local v6, "len":I
    add-int v7, v1, v6

    iget v8, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;->maxCAExtensionSize:I

    if-gt v7, v8, :cond_5

    .line 368
    add-int/2addr v1, v6

    .line 369
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v4    # "ca":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "enc":[B
    .end local v6    # "len":I
    :cond_5
    goto :goto_1

    .line 373
    :cond_6
    add-int/lit8 v3, v1, 0x2

    new-array v3, v3, [B

    .line 374
    .local v3, "extData":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 375
    .local v4, "m":Ljava/nio/ByteBuffer;
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 376
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 377
    .local v6, "enc":[B
    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/Record;->putBytes16(Ljava/nio/ByteBuffer;[B)V

    .line 378
    .end local v6    # "enc":[B
    goto :goto_2

    .line 380
    :cond_7
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v7, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    invoke-direct {v7, v8}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-object v3

    .line 335
    .end local v1    # "vectorLen":I
    .end local v2    # "authorities":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v3    # "extData":[B
    .end local v4    # "m":Ljava/nio/ByteBuffer;
    :cond_8
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->MISSING_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No available certificate_authority extension for client certificate authentication"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.class final Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;
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
    name = "CHCertificateAuthoritiesProducer"
.end annotation


# instance fields
.field private final enableCAExtension:Z

.field private final maxCAExtensionSize:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v0, "org.openjsse.client.enableCAExtension"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;->enableCAExtension:Z

    .line 164
    const-string v0, "org.openjsse.client.maxCAExtensionSize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getUIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;->maxCAExtensionSize:I

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;

    .line 159
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;-><init>()V

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

    .line 176
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 179
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 181
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "Ignore unavailable certificate_authorities extension"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-object v4

    .line 187
    :cond_1
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;->enableCAExtension:Z

    if-nez v1, :cond_3

    .line 188
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const-string v1, "Ignore disabled certificate_authorities extension"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_2
    return-object v4

    .line 196
    :cond_3
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    if-nez v1, :cond_5

    .line 198
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 199
    .local v1, "caCerts":[Ljava/security/cert/X509Certificate;
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v2, "authList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/security/auth/x500/X500Principal;>;"
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v1, v3

    .line 201
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 204
    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    .line 207
    .end local v1    # "caCerts":[Ljava/security/cert/X509Certificate;
    .end local v2    # "authList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/security/auth/x500/X500Principal;>;"
    :cond_5
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    if-nez v1, :cond_6

    .line 208
    return-object v4

    .line 209
    :cond_6
    const/4 v1, 0x0

    .line 210
    .local v1, "vectorLen":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "authorities":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/security/auth/x500/X500Principal;

    .line 212
    .local v4, "ca":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    .line 213
    .local v5, "enc":[B
    array-length v6, v5

    add-int/lit8 v6, v6, 0x2

    .line 214
    .local v6, "len":I
    add-int v7, v1, v6

    iget v8, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;->maxCAExtensionSize:I

    if-gt v7, v8, :cond_7

    .line 215
    add-int/2addr v1, v6

    .line 216
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v4    # "ca":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "enc":[B
    .end local v6    # "len":I
    :cond_7
    goto :goto_1

    .line 220
    :cond_8
    add-int/lit8 v3, v1, 0x2

    new-array v3, v3, [B

    .line 221
    .local v3, "extData":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 222
    .local v4, "m":Ljava/nio/ByteBuffer;
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 223
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 224
    .local v6, "enc":[B
    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/Record;->putBytes16(Ljava/nio/ByteBuffer;[B)V

    .line 225
    .end local v6    # "enc":[B
    goto :goto_2

    .line 227
    :cond_9
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v7, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    invoke-direct {v7, v8}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-object v3
.end method

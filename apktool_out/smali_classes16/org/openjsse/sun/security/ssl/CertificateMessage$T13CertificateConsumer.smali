.class final Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;
.super Ljava/lang/Object;
.source "CertificateMessage.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13CertificateConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$1;

    .line 1154
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;-><init>()V

    return-void
.end method

.method private static checkClientCerts(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/util/List;)[Ljava/security/cert/X509Certificate;
    .locals 8
    .param p0, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    .local p1, "certEntries":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    nop

    .line 1245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 1247
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1248
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .line 1249
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 1250
    .local v4, "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v7, v4, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1252
    .end local v4    # "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    move v2, v5

    goto :goto_0

    .line 1256
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "i":I
    :cond_0
    nop

    .line 1259
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1261
    .local v2, "keyAlgorithm":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v1, "RSASSA-PSS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :sswitch_2
    const-string v1, "DSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_3
    const-string v1, "EC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 1270
    const-string v1, "UNKNOWN"

    .local v1, "authType":Ljava/lang/String;
    goto :goto_3

    .line 1266
    .end local v1    # "authType":Ljava/lang/String;
    :pswitch_0
    move-object v1, v2

    .line 1267
    .restart local v1    # "authType":Ljava/lang/String;
    nop

    .line 1274
    :goto_3
    :try_start_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 1275
    .local v3, "tm":Ljavax/net/ssl/X509TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v4, :cond_3

    .line 1276
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v4, v4, Ljavax/net/ssl/SSLEngine;

    if-eqz v4, :cond_2

    .line 1277
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v4, Ljavax/net/ssl/SSLEngine;

    .line 1278
    .local v4, "engine":Ljavax/net/ssl/SSLEngine;
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 1279
    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 1278
    invoke-virtual {v5, v6, v1, v4}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 1282
    .end local v4    # "engine":Ljavax/net/ssl/SSLEngine;
    goto :goto_4

    .line 1283
    :cond_2
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    .line 1284
    .local v4, "socket":Ljavax/net/ssl/SSLSocket;
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 1285
    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 1284
    invoke-virtual {v5, v6, v1, v4}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 1288
    .end local v4    # "socket":Ljavax/net/ssl/SSLSocket;
    nop

    .line 1298
    :goto_4
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1301
    .end local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    nop

    .line 1303
    return-object v0

    .line 1292
    .restart local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_3
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "Improper X509TrustManager implementation"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v1    # "authType":Ljava/lang/String;
    .end local v2    # "keyAlgorithm":Ljava/lang/String;
    .end local p0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local p1    # "certEntries":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    throw v4
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1299
    .end local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    .restart local v0    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "authType":Ljava/lang/String;
    .restart local v2    # "keyAlgorithm":Ljava/lang/String;
    .restart local p0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local p1    # "certEntries":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    :catch_0
    move-exception v3

    .line 1300
    .local v3, "ce":Ljava/security/cert/CertificateException;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v4, v5, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 1253
    .end local v1    # "authType":Ljava/lang/String;
    .end local v2    # "keyAlgorithm":Ljava/lang/String;
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .line 1254
    .local v1, "ce":Ljava/security/cert/CertificateException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Failed to parse server certificates"

    invoke-virtual {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_3
        0x10992 -> :sswitch_2
        0x13e20 -> :sswitch_1
        0x69d3b2a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static checkServerCerts(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/util/List;)[Ljava/security/cert/X509Certificate;
    .locals 8
    .param p0, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1309
    .local p1, "certEntries":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    nop

    .line 1310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 1312
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1313
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .line 1314
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 1315
    .local v4, "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v7, v4, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1317
    .end local v4    # "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    move v2, v5

    goto :goto_0

    .line 1321
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "i":I
    :cond_0
    nop

    .line 1327
    const-string v1, "UNKNOWN"

    .line 1330
    .local v1, "authType":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 1331
    .local v2, "tm":Ljavax/net/ssl/X509TrustManager;
    instance-of v3, v2, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v3, :cond_2

    .line 1332
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v3, v3, Ljavax/net/ssl/SSLEngine;

    if-eqz v3, :cond_1

    .line 1333
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v3, Ljavax/net/ssl/SSLEngine;

    .line 1334
    .local v3, "engine":Ljavax/net/ssl/SSLEngine;
    move-object v4, v2

    check-cast v4, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 1335
    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 1334
    invoke-virtual {v4, v5, v1, v3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 1338
    .end local v3    # "engine":Ljavax/net/ssl/SSLEngine;
    goto :goto_1

    .line 1339
    :cond_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 1340
    .local v3, "socket":Ljavax/net/ssl/SSLSocket;
    move-object v4, v2

    check-cast v4, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 1341
    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 1340
    invoke-virtual {v4, v5, v1, v3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 1344
    .end local v3    # "socket":Ljavax/net/ssl/SSLSocket;
    nop

    .line 1354
    :goto_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3, v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1357
    .end local v2    # "tm":Ljavax/net/ssl/X509TrustManager;
    nop

    .line 1359
    return-object v0

    .line 1348
    .restart local v2    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Improper X509TrustManager implementation"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v1    # "authType":Ljava/lang/String;
    .end local p0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local p1    # "certEntries":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    throw v3
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1355
    .end local v2    # "tm":Ljavax/net/ssl/X509TrustManager;
    .restart local v0    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "authType":Ljava/lang/String;
    .restart local p0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local p1    # "certEntries":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    :catch_0
    move-exception v2

    .line 1356
    .local v2, "ce":Ljava/security/cert/CertificateException;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {p0, v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;->getCertificateAlert(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/security/cert/CertificateException;)Lorg/openjsse/sun/security/ssl/Alert;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 1318
    .end local v1    # "authType":Ljava/lang/String;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .line 1319
    .local v1, "ce":Ljava/security/cert/CertificateException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Failed to parse server certificates"

    invoke-virtual {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private static getCertificateAlert(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/security/cert/CertificateException;)Lorg/openjsse/sun/security/ssl/Alert;
    .locals 5
    .param p0, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p1, "cexc"    # Ljava/security/cert/CertificateException;

    .line 1375
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    .line 1377
    .local v0, "alert":Lorg/openjsse/sun/security/ssl/Alert;
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1378
    .local v1, "baseCause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/security/cert/CertPathValidatorException;

    if-eqz v2, :cond_3

    .line 1379
    move-object v2, v1

    check-cast v2, Ljava/security/cert/CertPathValidatorException;

    .line 1381
    .local v2, "cpve":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v3

    .line 1382
    .local v3, "reason":Ljava/security/cert/CertPathValidatorException$Reason;
    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v3, v4, :cond_1

    .line 1383
    iget-boolean v4, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->staplingActive:Z

    if-eqz v4, :cond_0

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_REVOKED:Lorg/openjsse/sun/security/ssl/Alert;

    :goto_0
    move-object v0, v4

    goto :goto_2

    .line 1386
    :cond_1
    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v3, v4, :cond_3

    .line 1388
    iget-boolean v4, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->staplingActive:Z

    if-eqz v4, :cond_2

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    :goto_1
    move-object v0, v4

    .line 1394
    .end local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v3    # "reason":Ljava/security/cert/CertPathValidatorException$Reason;
    :cond_3
    :goto_2
    return-object v0
.end method

.method private onConsumeCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)V
    .locals 5
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "certificateMessage"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1216
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1223
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 1224
    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    .line 1225
    .local v0, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 1226
    .local v2, "certEnt":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->access$500(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1227
    .end local v2    # "certEnt":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    goto :goto_0

    .line 1230
    :cond_0
    nop

    .line 1231
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;->checkServerCerts(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/util/List;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 1236
    .local v1, "srvCerts":[Ljava/security/cert/X509Certificate;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 1237
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;-><init>(Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V

    .line 1236
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1239
    return-void

    .line 1217
    .end local v0    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v1    # "srvCerts":[Ljava/security/cert/X509Certificate;
    :cond_1
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Empty server certificate chain"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method private onConsumeCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)V
    .locals 4
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "certificateMessage"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1186
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1187
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1202
    :cond_0
    nop

    .line 1203
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;->checkClientCerts(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/util/List;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1208
    .local v0, "cliCerts":[Ljava/security/cert/X509Certificate;
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 1209
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;-><init>(Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V

    .line 1208
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1211
    return-void

    .line 1190
    .end local v0    # "cliCerts":[Ljava/security/cert/X509Certificate;
    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1191
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 1190
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-eq v0, v1, :cond_2

    .line 1197
    return-void

    .line 1193
    :cond_2
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Empty client certificate chain"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 1167
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 1169
    .local v1, "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const-string v3, "ssl,handshake"

    if-eqz v2, :cond_1

    .line 1170
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    const-string v2, "Consuming server Certificate handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v2, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;->onConsumeCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)V

    goto :goto_0

    .line 1176
    :cond_1
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1177
    const-string v2, "Consuming client Certificate handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v2, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;->onConsumeCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)V

    .line 1182
    :goto_0
    return-void
.end method

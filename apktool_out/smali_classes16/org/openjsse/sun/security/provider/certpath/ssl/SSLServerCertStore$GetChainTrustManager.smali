.class Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SSLServerCertStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetChainTrustManager"
.end annotation


# instance fields
.field private exchangedServerCerts:Z

.field private serverChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 169
    nop

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->serverChain:Ljava/util/List;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->exchangedServerCerts:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$1;

    .line 166
    invoke-direct {p0}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    .line 166
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->serverChain:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    .line 166
    iget-boolean v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->exchangedServerCerts:Z

    return v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->exchangedServerCerts:Z

    .line 204
    if-nez p1, :cond_0

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->serverChain:Ljava/util/List;

    .line 208
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method cleanup()V
    .locals 1

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->exchangedServerCerts:Z

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->serverChain:Ljava/util/List;

    .line 227
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 175
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

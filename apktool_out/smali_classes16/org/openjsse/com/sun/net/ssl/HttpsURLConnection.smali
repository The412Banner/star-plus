.class public abstract Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpsURLConnection.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static defaultHostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

.field private static defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field protected hostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection$1;

    invoke-direct {v0}, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection$1;-><init>()V

    sput-object v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 95
    sget-object v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->hostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 146
    invoke-static {}, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 60
    return-void
.end method

.method public static getDefaultHostnameVerifier()Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;
    .locals 1

    .line 120
    sget-object v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 171
    sget-object v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    sput-object v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 175
    :cond_0
    sget-object v0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static setDefaultHostnameVerifier(Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;)V
    .locals 3
    .param p0, "v"    # Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 103
    if-eqz p0, :cond_1

    .line 108
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 109
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 110
    new-instance v1, Lorg/openjsse/com/sun/net/ssl/SSLPermission;

    const-string v2, "setHostnameVerifier"

    invoke-direct {v1, v2}, Lorg/openjsse/com/sun/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 112
    :cond_0
    sput-object p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 113
    return-void

    .line 104
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no default HostnameVerifier specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 154
    if-eqz p0, :cond_1

    .line 159
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 160
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 163
    :cond_0
    sput-object p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 164
    return-void

    .line 155
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no default SSLSocketFactory specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getCipherSuite()Ljava/lang/String;
.end method

.method public getHostnameVerifier()Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->hostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public abstract getServerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public setHostnameVerifier(Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;)V
    .locals 2
    .param p1, "v"    # Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 128
    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->hostnameVerifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 134
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no HostnameVerifier specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 183
    if-eqz p1, :cond_1

    .line 188
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 189
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 193
    :cond_0
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 194
    return-void

    .line 184
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no SSLSocketFactory specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

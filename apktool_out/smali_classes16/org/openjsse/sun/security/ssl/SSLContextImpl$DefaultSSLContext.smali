.class public final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContext;
.super Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSSLContext"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1238
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;-><init>()V

    .line 1239
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->access$400()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1244
    :try_start_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->access$500()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 1245
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->access$600()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 1244
    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$CustomizedTLSContext;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    nop

    .line 1252
    return-void

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,defaultctx"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    const-string v1, "default context init failed: "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    :cond_0
    throw v0

    .line 1240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->access$400()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method static getDefaultImpl()Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1262
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->reservedException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 1266
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->access$700()Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    move-result-object v0

    return-object v0

    .line 1263
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContextHolder;->reservedException:Ljava/lang/Exception;

    throw v0
.end method


# virtual methods
.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 1257
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Default SSLContext is initialized automatically"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public interface abstract Lorg/openjsse/com/sun/net/ssl/X509TrustManager;
.super Ljava/lang/Object;
.source "X509TrustManager.java"

# interfaces
.implements Lorg/openjsse/com/sun/net/ssl/TrustManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.end method

.method public abstract isClientTrusted([Ljava/security/cert/X509Certificate;)Z
.end method

.method public abstract isServerTrusted([Ljava/security/cert/X509Certificate;)Z
.end method

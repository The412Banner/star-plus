.class public interface abstract Lorg/openjsse/com/sun/net/ssl/X509KeyManager;
.super Ljava/lang/Object;
.source "X509KeyManager.java"

# interfaces
.implements Lorg/openjsse/com/sun/net/ssl/KeyManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract chooseClientAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;
.end method

.method public abstract chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;)Ljava/lang/String;
.end method

.method public abstract getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
.end method

.method public abstract getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
.end method

.method public abstract getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
.end method

.method public abstract getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
.end method

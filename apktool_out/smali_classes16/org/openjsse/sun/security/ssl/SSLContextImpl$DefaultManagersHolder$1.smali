.class final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;
.super Ljava/lang/Object;
.source "SSLContextImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;->val$props:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;->val$props:Ljava/util/Map;

    const-string v1, "javax.net.ssl.keyStore"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "keyStore"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;->val$props:Ljava/util/Map;

    .line 1116
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 1114
    const-string v3, "javax.net.ssl.keyStoreType"

    invoke-static {v3, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "keyStoreType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;->val$props:Ljava/util/Map;

    const-string v1, "javax.net.ssl.keyStoreProvider"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "keyStoreProvider"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;->val$props:Ljava/util/Map;

    const-string v1, "javax.net.ssl.keyStorePassword"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStorePasswd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const/4 v0, 0x0

    return-object v0
.end method

.class final Lorg/openjsse/com/sun/net/ssl/SSLSecurity;
.super Ljava/lang/Object;
.source "SSLSecurity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static checkSuperclass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 241
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 246
    if-nez p0, :cond_0

    .line 247
    return v0

    .line 250
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 242
    :cond_2
    :goto_0
    return v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "engineType"    # Ljava/lang/String;
    .param p2, "provName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 199
    if-eqz p2, :cond_1

    .line 200
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 201
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 202
    .local v1, "prov":Ljava/security/Provider;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1, p1, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 207
    .end local v1    # "prov":Ljava/security/Provider;
    .local v0, "service":Ljava/security/Provider$Service;
    goto :goto_0

    .line 203
    .local v0, "list":Lsun/security/jca/ProviderList;
    .restart local v1    # "prov":Ljava/security/Provider;
    :cond_0
    new-instance v2, Ljava/security/NoSuchProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "prov":Ljava/security/Provider;
    :cond_1
    invoke-static {p1, p0}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 210
    .local v0, "service":Ljava/security/Provider$Service;
    :goto_0
    if-eqz v0, :cond_2

    .line 214
    invoke-static {p0, p1, v0}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl1(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider$Service;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 211
    :cond_2
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;
    .locals 4
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "engineType"    # Ljava/lang/String;
    .param p2, "prov"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 229
    invoke-virtual {p2, p1, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 230
    .local v0, "service":Ljava/security/Provider$Service;
    if-eqz v0, :cond_0

    .line 234
    invoke-static {p0, p1, v0}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl1(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider$Service;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 231
    :cond_0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getImpl1(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider$Service;)[Ljava/lang/Object;
    .locals 8
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "engineType"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 78
    const-string v0, "Spi"

    const-string v1, " configured for "

    const-string v2, "Class "

    invoke-virtual {p2}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    .line 79
    .local v3, "provider":Ljava/security/Provider;
    invoke-virtual {p2}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 83
    .local v5, "cl":Ljava/lang/ClassLoader;
    if-nez v5, :cond_0

    .line 85
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 87
    .end local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .restart local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    nop

    .line 138
    const/4 v5, 0x0

    .line 144
    .local v5, "obj":Ljava/lang/Object;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javax.net.ssl."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v7, v6

    .local v7, "typeClassJavax":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_4

    .line 146
    invoke-static {v1, v7}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->checkSuperclass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 148
    const-string v0, "SSLContext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Lorg/openjsse/com/sun/net/ssl/SSLContextSpiWrapper;

    invoke-direct {v0, p0, v3}, Lorg/openjsse/com/sun/net/ssl/SSLContextSpiWrapper;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    move-object v5, v0

    goto/16 :goto_1

    .line 150
    :cond_1
    const-string v0, "TrustManagerFactory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpiWrapper;

    invoke-direct {v0, p0, v3}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpiWrapper;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    move-object v5, v0

    goto :goto_1

    .line 152
    :cond_2
    const-string v0, "KeyManagerFactory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    new-instance v0, Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpiWrapper;

    invoke-direct {v0, p0, v3}, Lorg/openjsse/com/sun/net/ssl/KeyManagerFactorySpiWrapper;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    move-object v5, v0

    goto :goto_1

    .line 160
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " unknown engineType wrapper:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "provider":Ljava/security/Provider;
    .end local v4    # "className":Ljava/lang/String;
    .end local p0    # "algName":Ljava/lang/String;
    .end local p1    # "engineType":Ljava/lang/String;
    .end local p2    # "service":Ljava/security/Provider$Service;
    throw v0

    .line 165
    .restart local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "provider":Ljava/security/Provider;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local p0    # "algName":Ljava/lang/String;
    .restart local p1    # "engineType":Ljava/lang/String;
    .restart local p2    # "service":Ljava/security/Provider$Service;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "org.openjsse.com.sun.net.ssl."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .local v2, "typeClassCom":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_5

    .line 167
    invoke-static {v1, v2}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->checkSuperclass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    .line 171
    .end local v2    # "typeClassCom":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 172
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 174
    :cond_6
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t locate correct object or wrapper: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "provider":Ljava/security/Provider;
    .end local v4    # "className":Ljava/lang/String;
    .end local p0    # "algName":Ljava/lang/String;
    .end local p1    # "engineType":Ljava/lang/String;
    .end local p2    # "service":Ljava/security/Provider$Service;
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v7    # "typeClassJavax":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "provider":Ljava/security/Provider;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local p0    # "algName":Ljava/lang/String;
    .restart local p1    # "engineType":Ljava/lang/String;
    .restart local p2    # "service":Ljava/security/Provider$Service;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Engine Class Not Found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "exc":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 183
    throw v2

    .line 95
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "exc":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be accessed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "alg"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 63
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;

    .line 64
    .local v2, "p":Ljava/security/Provider;
    invoke-virtual {v2, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 65
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_0

    .line 66
    return-object v3

    .line 68
    .end local v2    # "p":Ljava/security/Provider;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_0
    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static truncateArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "oldArray"    # [Ljava/lang/Object;
    .param p1, "newArray"    # [Ljava/lang/Object;

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 261
    aget-object v1, p0, v0

    aput-object v1, p1, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "i":I
    :cond_0
    return-object p1
.end method

.class final Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;
.super Ljava/lang/Object;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultManagersHolder"
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = "NONE"

.field private static final P11KEYSTORE:Ljava/lang/String; = "PKCS11"

.field private static final keyManagers:[Ljavax/net/ssl/KeyManager;

.field private static final reservedException:Ljava/lang/Exception;

.field private static final trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1061
    const/4 v0, 0x0

    .line 1064
    .local v0, "reserved":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .local v2, "tmMediator":[Ljavax/net/ssl/TrustManager;
    goto :goto_0

    .line 1065
    .end local v2    # "tmMediator":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v2

    .line 1066
    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 1067
    new-array v3, v1, [Ljavax/net/ssl/TrustManager;

    move-object v2, v3

    .line 1069
    .local v2, "tmMediator":[Ljavax/net/ssl/TrustManager;
    :goto_0
    sput-object v2, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 1071
    if-nez v0, :cond_0

    .line 1074
    :try_start_1
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1078
    .local v1, "kmMediator":[Ljavax/net/ssl/KeyManager;
    goto :goto_1

    .line 1075
    .end local v1    # "kmMediator":[Ljavax/net/ssl/KeyManager;
    :catch_1
    move-exception v3

    .line 1076
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 1077
    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    .line 1079
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "kmMediator":[Ljavax/net/ssl/KeyManager;
    :goto_1
    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 1080
    .end local v1    # "kmMediator":[Ljavax/net/ssl/KeyManager;
    goto :goto_2

    .line 1081
    :cond_0
    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 1084
    :goto_2
    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->reservedException:Ljava/lang/Exception;

    .line 1085
    .end local v0    # "reserved":Ljava/lang/Exception;
    .end local v2    # "tmMediator":[Ljavax/net/ssl/TrustManager;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Exception;
    .locals 1

    .line 1051
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->reservedException:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$500()[Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 1051
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->keyManagers:[Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method static synthetic access$600()[Ljavax/net/ssl/TrustManager;
    .locals 1

    .line 1051
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder;->trustManagers:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method private static getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1108
    .local v0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$1;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 1125
    const-string v1, "keyStore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1126
    .local v1, "defaultKeyStore":Ljava/lang/String;
    const-string v2, "keyStoreType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1127
    .local v2, "defaultKeyStoreType":Ljava/lang/String;
    const-string v3, "keyStoreProvider"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1128
    .local v3, "defaultKeyStoreProvider":Ljava/lang/String;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v5, "ssl,defaultctx"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyStore is : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyStore type is : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyStore provider is : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    :cond_0
    const-string v4, "PKCS11"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "NONE"

    if-eqz v7, :cond_2

    .line 1137
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1138
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "if keyStoreType is PKCS11, then keyStore must be NONE"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1142
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 1143
    .local v7, "fs":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 1144
    .local v9, "ks":Ljava/security/KeyStore;
    const/4 v10, 0x0

    .line 1146
    .local v10, "passwd":[C
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 1147
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1148
    new-instance v8, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$2;

    invoke-direct {v8, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultManagersHolder$2;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/FileInputStream;

    move-object v7, v8

    .line 1157
    :cond_3
    const-string v8, "keyStorePasswd"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1158
    .local v8, "defaultKeyStorePassword":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    .line 1159
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    move-object v10, v11

    .line 1165
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_7

    .line 1166
    sget-boolean v11, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v11, :cond_5

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1167
    const-string v11, "init keystore"

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 1170
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    move-object v9, v11

    goto :goto_1

    .line 1172
    :cond_6
    invoke-static {v2, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    move-object v9, v11

    .line 1177
    :goto_1
    invoke-virtual {v9, v7, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    .end local v8    # "defaultKeyStorePassword":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_8

    .line 1181
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1182
    const/4 v7, 0x0

    .line 1189
    :cond_8
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_9

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init keymanager of type "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1191
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    .line 1190
    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    :cond_9
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 1193
    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .line 1196
    .local v5, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1197
    const/4 v4, 0x0

    invoke-virtual {v5, v9, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_2

    .line 1199
    :cond_a
    invoke-virtual {v5, v9, v10}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1202
    :goto_2
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v4

    return-object v4

    .line 1180
    .end local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catchall_0
    move-exception v4

    if-eqz v7, :cond_b

    .line 1181
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1182
    const/4 v7, 0x0

    .line 1184
    :cond_b
    throw v4
.end method

.method private static getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1089
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 1090
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenJSSE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    goto :goto_0

    .line 1098
    :cond_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/TrustStoreManager;->getTrustedKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 1099
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1102
    .end local v1    # "ks":Ljava/security/KeyStore;
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1
.end method

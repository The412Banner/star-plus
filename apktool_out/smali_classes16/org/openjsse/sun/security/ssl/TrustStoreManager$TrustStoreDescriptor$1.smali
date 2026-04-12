.class final Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor$1;
.super Ljava/lang/Object;
.source "TrustStoreManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->createInstance()Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor$1;->run()Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;
    .locals 18

    .line 132
    nop

    .line 133
    invoke-static {}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "javax.net.ssl.trustStore"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "storePropName":Ljava/lang/String;
    nop

    .line 136
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "javax.net.ssl.trustStoreType"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "storePropType":Ljava/lang/String;
    const-string v2, "javax.net.ssl.trustStoreProvider"

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "storePropProvider":Ljava/lang/String;
    const-string v4, "javax.net.ssl.trustStorePassword"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 142
    .local v12, "storePropPassword":Ljava/lang/String;
    const-string v3, ""

    .line 143
    .local v3, "temporaryName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 144
    .local v4, "temporaryFile":Ljava/io/File;
    const-wide/16 v5, 0x0

    .line 145
    .local v5, "temporaryTime":J
    const-string v7, "NONE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 146
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 147
    invoke-static {}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;->access$200()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 148
    .local v7, "fileNames":[Ljava/lang/String;
    array-length v9, v7

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v7, v10

    .line 149
    .local v11, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v13, "f":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 151
    move-object v3, v11

    .line 152
    move-object v4, v13

    .line 153
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 155
    goto :goto_1

    .line 159
    :cond_0
    sget-boolean v14, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v14, :cond_1

    .line 160
    const-string v14, "trustmanager"

    invoke-static {v14}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 161
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Inaccessible trust store: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v13    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 166
    .end local v7    # "fileNames":[Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v13, v3

    move-object v14, v4

    move-wide v15, v5

    goto :goto_2

    .line 167
    :cond_3
    move-object v3, v0

    move-object v13, v3

    move-object v14, v4

    move-wide v15, v5

    .line 170
    .end local v3    # "temporaryName":Ljava/lang/String;
    .end local v4    # "temporaryFile":Ljava/io/File;
    .end local v5    # "temporaryTime":J
    .local v13, "temporaryName":Ljava/lang/String;
    .local v14, "temporaryFile":Ljava/io/File;
    .local v15, "temporaryTime":J
    :goto_2
    new-instance v17, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;

    const/4 v11, 0x0

    move-object/from16 v3, v17

    move-object v4, v13

    move-object v5, v1

    move-object v6, v2

    move-object v7, v12

    move-object v8, v14

    move-wide v9, v15

    invoke-direct/range {v3 .. v11}, Lorg/openjsse/sun/security/ssl/TrustStoreManager$TrustStoreDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLorg/openjsse/sun/security/ssl/TrustStoreManager$1;)V

    return-object v17
.end method

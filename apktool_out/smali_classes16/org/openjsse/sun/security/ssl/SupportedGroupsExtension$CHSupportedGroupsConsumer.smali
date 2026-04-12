.class final Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsConsumer;
.super Ljava/lang/Object;
.source "SupportedGroupsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHSupportedGroupsConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;

    .line 916
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 926
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 929
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 930
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    const-string v1, "Ignore unavailable supported_groups extension"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :cond_0
    return-void

    .line 940
    :cond_1
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;

    const/4 v3, 0x0

    invoke-direct {v1, p3, v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;
    nop

    .line 946
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 947
    .local v3, "knownNamedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;->namedGroupsIds:[I

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_3

    aget v6, v4, v2

    .line 948
    .local v6, "id":I
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(I)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v7

    .line 949
    .local v7, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v7, :cond_2

    .line 950
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v6    # "id":I
    .end local v7    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    :cond_3
    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 955
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    return-void

    .line 941
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;
    .end local v3    # "knownNamedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    :catch_0
    move-exception v1

    .line 942
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

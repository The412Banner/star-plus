.class final Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsProducer;
.super Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;
.source "SupportedGroupsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHSupportedGroupsProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 845
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;-><init>()V

    .line 847
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;

    .line 842
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 13
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 853
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 856
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 857
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const-string v1, "Ignore unavailable supported_groups extension"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    :cond_0
    return-object v3

    .line 865
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    array-length v5, v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 867
    .local v1, "namedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    sget-object v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 868
    .local v8, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->enableFFDHE:Z

    if-nez v9, :cond_2

    iget-object v9, v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v10, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v9, v10, :cond_2

    .line 870
    goto :goto_1

    .line 873
    :cond_2
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-virtual {v8, v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isAvailable(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 874
    invoke-virtual {v8, v9}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isSupported(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v10, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 876
    invoke-static {v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    iget-object v11, v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->algorithm:Ljava/lang/String;

    sget-object v12, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$CHSupportedGroupsProducer;->namedGroupParams:Ljava/util/Map;

    .line 877
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/AlgorithmParameters;

    .line 875
    invoke-interface {v9, v10, v11, v12}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 878
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 879
    :cond_3
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 880
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore inactive or disabled named group: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    .end local v8    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 885
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 886
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_6

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 887
    const-string v2, "no available named group"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    :cond_6
    return-object v3

    .line 893
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    .line 894
    .local v2, "vectorLen":I
    add-int/lit8 v4, v2, 0x2

    new-array v4, v4, [B

    .line 895
    .local v4, "extData":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 896
    .local v5, "m":Ljava/nio/ByteBuffer;
    invoke-static {v5, v2}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 897
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 898
    .local v7, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget v8, v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    invoke-static {v5, v8}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 899
    .end local v7    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    goto :goto_2

    .line 902
    :cond_8
    nop

    .line 903
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 904
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v8, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;

    invoke-direct {v8, v1, v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroupsSpec;-><init>(Ljava/util/List;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    return-object v4
.end method

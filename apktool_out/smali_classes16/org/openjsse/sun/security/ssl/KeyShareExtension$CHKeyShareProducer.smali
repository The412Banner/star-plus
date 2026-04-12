.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareProducer;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHKeyShareProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 217
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 16
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    move-object/from16 v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 230
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 231
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "Ignore unavailable key_share extension"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_0
    return-object v3

    .line 239
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->serverSelectedNamedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    if-eqz v1, :cond_2

    .line 241
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->serverSelectedNamedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v5, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .local v1, "namedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    goto :goto_0

    .line 243
    .end local v1    # "namedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    :cond_2
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 244
    .restart local v1    # "namedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_7

    .line 254
    :cond_3
    :goto_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v5, "keyShares":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 256
    .local v7, "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v8

    .line 257
    .local v8, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-nez v8, :cond_5

    .line 258
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No key exchange for named group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 265
    :cond_5
    invoke-virtual {v8, v0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createPossessions(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v9

    .line 266
    .local v9, "poses":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    array-length v10, v9

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    .line 268
    .local v12, "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    iget-object v13, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    instance-of v13, v12, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    if-nez v13, :cond_6

    instance-of v13, v12, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    if-nez v13, :cond_6

    .line 272
    goto :goto_3

    .line 275
    :cond_6
    new-instance v13, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    iget v14, v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    invoke-interface {v12}, Lorg/openjsse/sun/security/ssl/SSLPossession;->encode()[B

    move-result-object v15

    invoke-direct {v13, v14, v15, v3}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;-><init>(I[BLorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v12    # "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 280
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 281
    goto :goto_4

    .line 283
    .end local v7    # "ng":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .end local v8    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v9    # "poses":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_8
    goto :goto_1

    .line 285
    :cond_9
    :goto_4
    const/4 v2, 0x0

    .line 286
    .local v2, "listLen":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 287
    .local v6, "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->access$1400(Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;)I

    move-result v7

    add-int/2addr v2, v7

    .line 288
    .end local v6    # "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    goto :goto_5

    .line 289
    :cond_a
    add-int/lit8 v4, v2, 0x2

    new-array v4, v4, [B

    .line 290
    .local v4, "extData":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 291
    .local v6, "m":Ljava/nio/ByteBuffer;
    invoke-static {v6, v2}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 292
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 293
    .local v8, "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->access$1500(Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    .end local v8    # "entry":Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
    goto :goto_6

    .line 297
    :cond_b
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v9, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;

    invoke-direct {v9, v5, v3}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;-><init>(Ljava/util/List;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-object v4

    .line 246
    .end local v2    # "listLen":I
    .end local v4    # "extData":[B
    .end local v5    # "keyShares":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;>;"
    .end local v6    # "m":Ljava/nio/ByteBuffer;
    :cond_c
    :goto_7
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_d

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 247
    const-string v2, "Ignore key_share extension, no supported groups"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_d
    return-object v3
.end method

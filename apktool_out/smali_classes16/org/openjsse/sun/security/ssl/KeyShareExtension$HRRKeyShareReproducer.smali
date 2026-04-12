.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareReproducer;
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
    name = "HRRKeyShareReproducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 873
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$HRRKeyShareReproducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 886
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_KEY_SHARE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;

    .line 893
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;->clientShares:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;->clientShares:Ljava/util/List;

    .line 894
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 895
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;->clientShares:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 897
    .local v2, "namedGroupId":I
    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [B

    aput-byte v5, v7, v4

    aput-byte v6, v7, v3

    move-object v3, v7

    .line 902
    .local v3, "extdata":[B
    return-object v3

    .line 905
    .end local v2    # "namedGroupId":I
    .end local v3    # "extdata":[B
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 887
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/KeyShareExtension$CHKeyShareSpec;
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Unsupported key_share extension in HelloRetryRequest"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

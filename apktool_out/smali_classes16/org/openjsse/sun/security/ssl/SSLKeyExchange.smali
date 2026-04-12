.class final Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
.super Ljava/lang/Object;
.source "SSLKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;
.implements Lorg/openjsse/sun/security/ssl/SSLHandshakeBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHANON;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHERSAOrPSS;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHERSA;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHEECDSA;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHRSA;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHECDSA;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHANONExport;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHANON;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHERSAExport;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHERSAOrPSS;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHERSA;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHEDSSExport;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHEDSS;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExRSAExport;,
        Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExRSA;
    }
.end annotation


# instance fields
.field private final authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

.field private final keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/X509Authentication;Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;)V
    .locals 0
    .param p1, "authentication"    # Lorg/openjsse/sun/security/ssl/X509Authentication;
    .param p2, "keyAgreement"    # Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    .line 48
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    .line 49
    return-void
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .locals 3
    .param p0, "keyExchange"    # Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 198
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$1;->$SwitchMap$org$openjsse$sun$security$ssl$CipherSuite$KeyExchange:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 239
    return-object v0

    .line 236
    :pswitch_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHANON;->access$1400()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_1
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHERSAOrPSS;->access$1200()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 233
    :cond_1
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHERSA;->access$1300()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 228
    :pswitch_2
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHEECDSA;->access$1100()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 226
    :pswitch_3
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHRSA;->access$1000()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 224
    :pswitch_4
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExECDHECDSA;->access$900()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 222
    :pswitch_5
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHANONExport;->access$800()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 220
    :pswitch_6
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHANON;->access$700()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 218
    :pswitch_7
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHERSAExport;->access$600()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 212
    :pswitch_8
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHERSAOrPSS;->access$400()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 215
    :cond_2
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHERSA;->access$500()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_9
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHEDSSExport;->access$300()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_a
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExDHEDSS;->access$200()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 206
    :pswitch_b
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExRSAExport;->access$100()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_c
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$SSLKeyExRSA;->access$000()Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v0

    return-object v0

    .line 199
    :cond_3
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .locals 4
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 244
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;

    move-result-object v0

    .line 245
    .local v0, "ka":Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 246
    new-instance v2, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 247
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;-><init>(Lorg/openjsse/sun/security/ssl/X509Authentication;Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;)V

    .line 246
    return-object v2

    .line 250
    :cond_0
    return-object v1
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v0

    return-object v0
.end method

.method createPossessions(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "authPossession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    invoke-interface {v1, p1}, Lorg/openjsse/sun/security/ssl/SSLAuthentication;->createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-array v1, v2, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    return-object v1

    .line 58
    :cond_0
    instance-of v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 62
    .local v1, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iput-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->interimAuthn:Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 68
    .end local v1    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->RSA_EXPORT:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v3, :cond_6

    .line 70
    move-object v1, v0

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 71
    .local v1, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v2

    .line 72
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v3

    const/16 v6, 0x200

    if-le v3, v6, :cond_4

    .line 73
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    invoke-interface {v3, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;->createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v3

    .line 75
    .local v3, "kaPossession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-nez v3, :cond_2

    .line 76
    new-array v2, v2, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    return-object v2

    .line 78
    :cond_2
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    if-eqz v6, :cond_3

    new-array v4, v4, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    aput-object v0, v4, v2

    aput-object v3, v4, v5

    goto :goto_0

    :cond_3
    new-array v4, v5, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    aput-object v3, v4, v2

    :goto_0
    return-object v4

    .line 83
    .end local v3    # "kaPossession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_4
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    if-eqz v3, :cond_5

    new-array v3, v5, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    aput-object v0, v3, v2

    goto :goto_1

    :cond_5
    new-array v3, v2, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    :goto_1
    return-object v3

    .line 88
    .end local v1    # "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    :cond_6
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    invoke-interface {v1, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;->createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v1

    .line 89
    .local v1, "kaPossession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-nez v1, :cond_a

    .line 91
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->RSA:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ECDH:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    if-ne v3, v4, :cond_7

    goto :goto_2

    .line 97
    :cond_7
    new-array v2, v2, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    return-object v2

    .line 93
    :cond_8
    :goto_2
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    if-eqz v3, :cond_9

    new-array v3, v5, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    aput-object v0, v3, v2

    goto :goto_3

    :cond_9
    new-array v3, v2, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    :goto_3
    return-object v3

    .line 100
    :cond_a
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    if-eqz v3, :cond_b

    new-array v3, v4, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    goto :goto_4

    :cond_b
    new-array v3, v5, [Lorg/openjsse/sun/security/ssl/SSLPossession;

    aput-object v1, v3, v2

    :goto_4
    return-object v3
.end method

.method public getHandshakeConsumers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;
    .locals 6
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/HandshakeContext;",
            ")[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    .line 173
    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLAuthentication;->getHandshakeConsumers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;

    move-result-object v0

    .local v0, "auConsumers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/SSLConsumer;>;"
    goto :goto_0

    .line 175
    .end local v0    # "auConsumers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/SSLConsumer;>;"
    :cond_0
    const/4 v0, 0x0

    .line 178
    .restart local v0    # "auConsumers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/SSLConsumer;>;"
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    .line 179
    invoke-interface {v1, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;->getHandshakeConsumers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;

    move-result-object v1

    .line 181
    .local v1, "kaConsumers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/SSLConsumer;>;"
    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    .line 183
    :cond_1
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 186
    :cond_2
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    .line 188
    .local v2, "producers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/SSLConsumer;>;"
    array-length v3, v0

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    return-object v2

    .line 184
    .end local v2    # "producers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/SSLConsumer;>;"
    :cond_3
    :goto_1
    return-object v0

    .line 182
    :cond_4
    :goto_2
    return-object v1
.end method

.method public getHandshakeProducers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;
    .locals 6
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/HandshakeContext;",
            ")[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Lorg/openjsse/sun/security/ssl/HandshakeProducer;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    .line 146
    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLAuthentication;->getHandshakeProducers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;

    move-result-object v0

    .local v0, "auProducers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    goto :goto_0

    .line 148
    .end local v0    # "auProducers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    :cond_0
    const/4 v0, 0x0

    .line 151
    .restart local v0    # "auProducers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    .line 152
    invoke-interface {v1, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;->getHandshakeProducers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;

    move-result-object v1

    .line 154
    .local v1, "kaProducers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    .line 156
    :cond_1
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    .line 161
    .local v2, "producers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    array-length v3, v0

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    return-object v2

    .line 157
    .end local v2    # "producers":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    :cond_3
    :goto_1
    return-object v0

    .line 155
    :cond_4
    :goto_2
    return-object v1
.end method

.method public getRelatedHandshakers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 6
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 117
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->authentication:Lorg/openjsse/sun/security/ssl/SSLAuthentication;

    .line 119
    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLAuthentication;->getRelatedHandshakers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v0

    .local v0, "auHandshakes":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    goto :goto_0

    .line 121
    .end local v0    # "auHandshakes":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    :cond_0
    const/4 v0, 0x0

    .line 124
    .restart local v0    # "auHandshakes":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->keyAgreement:Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;

    .line 125
    invoke-interface {v1, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;->getRelatedHandshakers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v1

    .line 127
    .local v1, "kaHandshakes":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    .line 129
    :cond_1
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 134
    .local v2, "producers":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v3, v0

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-object v2

    .line 130
    .end local v2    # "producers":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    :cond_3
    :goto_1
    return-object v0

    .line 128
    :cond_4
    :goto_2
    return-object v1
.end method

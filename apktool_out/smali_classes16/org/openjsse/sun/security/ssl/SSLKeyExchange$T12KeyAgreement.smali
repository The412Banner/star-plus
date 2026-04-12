.class final enum Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;
.super Ljava/lang/Enum;
.source "SSLKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "T12KeyAgreement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;",
        ">;",
        "Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

.field public static final enum DHE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

.field public static final enum DHE_EXPORT:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

.field public static final enum ECDH:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

.field public static final enum ECDHE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

.field public static final enum RSA:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

.field public static final enum RSA_EXPORT:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;


# instance fields
.field final keyAgreementGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

.field final name:Ljava/lang/String;

.field final possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 329
    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    const/4 v4, 0x0

    sget-object v5, Lorg/openjsse/sun/security/ssl/RSAKeyExchange;->kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    const-string v1, "RSA"

    const/4 v2, 0x0

    const-string v3, "rsa"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;)V

    sput-object v6, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->RSA:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    .line 331
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v11, Lorg/openjsse/sun/security/ssl/RSAKeyExchange;->poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    sget-object v12, Lorg/openjsse/sun/security/ssl/RSAKeyExchange;->kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    const-string v8, "RSA_EXPORT"

    const/4 v9, 0x1

    const-string v10, "rsa_export"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->RSA_EXPORT:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    .line 333
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v5, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    sget-object v6, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    const-string v2, "DHE"

    const/4 v3, 0x2

    const-string v4, "dhe"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->DHE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    .line 335
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v11, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->poExportableGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    sget-object v12, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    const-string v8, "DHE_EXPORT"

    const/4 v9, 0x3

    const-string v10, "dhe_export"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->DHE_EXPORT:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    .line 337
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    const/4 v5, 0x0

    sget-object v6, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;->ecdhKAGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    const-string v2, "ECDH"

    const/4 v3, 0x4

    const-string v4, "ecdh"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ECDH:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    .line 339
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v11, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;->poGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;->ecdheKAGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    const-string v8, "ECDHE"

    const/4 v9, 0x5

    const-string v10, "ecdhe"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ECDHE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    .line 328
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->RSA:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->RSA_EXPORT:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->DHE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->DHE_EXPORT:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ECDH:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ECDHE:Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    filled-new-array/range {v1 .. v6}, [Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "possessionGenerator"    # Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;
    .param p5, "keyAgreementGenerator"    # Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;",
            "Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;",
            ")V"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 349
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->name:Ljava/lang/String;

    .line 350
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    .line 351
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->keyAgreementGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    .line 352
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 328
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;
    .locals 1

    .line 328
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;

    return-object v0
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->keyAgreementGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v0

    return-object v0
.end method

.method public createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 356
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;->createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandshakeConsumers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;
    .locals 5
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

    .line 470
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 471
    new-array v0, v1, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    return-object v0

    .line 474
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 475
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$1;->$SwitchMap$org$openjsse$sun$security$ssl$SSLKeyExchange$T12KeyAgreement:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 496
    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 499
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange;->ecdheHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 496
    return-object v0

    .line 487
    :pswitch_2
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 490
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;->dhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 487
    return-object v0

    .line 477
    :pswitch_3
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 480
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange;->rsaHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 477
    return-object v0

    .line 505
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$1;->$SwitchMap$org$openjsse$sun$security$ssl$SSLKeyExchange$T12KeyAgreement:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 536
    :pswitch_4
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 539
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdheHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 536
    return-object v0

    .line 527
    :pswitch_5
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 530
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 527
    return-object v0

    .line 518
    :pswitch_6
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 521
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;->dhHandshakeConsumer:Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 518
    return-object v0

    .line 508
    :pswitch_7
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 511
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;->rsaHandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 508
    return-object v0

    .line 546
    :goto_0
    new-array v0, v1, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getHandshakeProducers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;
    .locals 5
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

    .line 387
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    new-array v0, v1, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    return-object v0

    .line 391
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 392
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$1;->$SwitchMap$org$openjsse$sun$security$ssl$SSLKeyExchange$T12KeyAgreement:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 423
    goto/16 :goto_0

    :pswitch_0
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 426
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdheHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 423
    return-object v0

    .line 414
    :pswitch_1
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 417
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;->ecdhHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 414
    return-object v0

    .line 405
    :pswitch_2
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 408
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;->dhHandshakeProducer:Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 405
    return-object v0

    .line 395
    :pswitch_3
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 398
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;->rsaHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 395
    return-object v0

    .line 432
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$1;->$SwitchMap$org$openjsse$sun$security$ssl$SSLKeyExchange$T12KeyAgreement:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 453
    :pswitch_5
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 456
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange;->ecdheHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 453
    return-object v0

    .line 444
    :pswitch_6
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 447
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;->dhHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 444
    return-object v0

    .line 434
    :pswitch_7
    new-array v0, v2, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 437
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange;->rsaHandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 434
    return-object v0

    .line 463
    :goto_0
    new-array v0, v1, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getRelatedHandshakers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 3
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 372
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T12KeyAgreement;->possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v2, v0, v1

    return-object v0

    .line 380
    :cond_0
    new-array v0, v1, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

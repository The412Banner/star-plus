.class Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Authenticator$MAC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MacImpl"
.end annotation


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/Authenticator;


# direct methods
.method private constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->this$0:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    sget-object p1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->M_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    .line 457
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->mac:Ljavax/crypto/Mac;

    .line 458
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 448
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;)V

    return-void
.end method

.method private constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)V
    .locals 3
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "macAlg"    # Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .param p4, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->this$0:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    if-eqz p3, :cond_3

    .line 468
    iget p1, p2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 470
    .local p1, "useSSLMac":Z
    :goto_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/Authenticator$1;->$SwitchMap$org$openjsse$sun$security$ssl$CipherSuite$MacAlg:[I

    invoke-virtual {p3}, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 484
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown MacAlg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :pswitch_0
    const-string v0, "HmacSHA384"

    .line 482
    .local v0, "algorithm":Ljava/lang/String;
    goto :goto_3

    .line 478
    .end local v0    # "algorithm":Ljava/lang/String;
    :pswitch_1
    const-string v0, "HmacSHA256"

    .line 479
    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_3

    .line 475
    .end local v0    # "algorithm":Ljava/lang/String;
    :pswitch_2
    if-eqz p1, :cond_1

    const-string v0, "SslMacSHA1"

    goto :goto_1

    :cond_1
    const-string v0, "HmacSHA1"

    .line 476
    .restart local v0    # "algorithm":Ljava/lang/String;
    :goto_1
    goto :goto_3

    .line 472
    .end local v0    # "algorithm":Ljava/lang/String;
    :pswitch_3
    if-eqz p1, :cond_2

    const-string v0, "SslMacMD5"

    goto :goto_2

    :cond_2
    const-string v0, "HmacMD5"

    .line 473
    .restart local v0    # "algorithm":Ljava/lang/String;
    :goto_2
    nop

    .line 487
    :goto_3
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 488
    .local v1, "m":Ljavax/crypto/Mac;
    invoke-virtual {v1, p4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 489
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    .line 490
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->mac:Ljavax/crypto/Mac;

    .line 491
    return-void

    .line 464
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "m":Ljavax/crypto/Mac;
    .end local p1    # "useSSLMac":Z
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null MacAlg"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "x2"    # Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .param p4, "x3"    # Ljavax/crypto/SecretKey;
    .param p5, "x4"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 448
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;)Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;

    .line 448
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    return-object v0
.end method


# virtual methods
.method public compute(BLjava/nio/ByteBuffer;[BZ)[B
    .locals 2
    .param p1, "type"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "sequence"    # [B
    .param p4, "isSimulated"    # Z

    .line 502
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 506
    :cond_0
    if-nez p4, :cond_1

    .line 508
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->this$0:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 509
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v0

    .line 510
    .local v0, "additional":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 512
    .end local v0    # "additional":[B
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 514
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    return-object v0
.end method

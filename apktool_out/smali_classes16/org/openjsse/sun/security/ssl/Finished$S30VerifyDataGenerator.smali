.class final Lorg/openjsse/sun/security/ssl/Finished$S30VerifyDataGenerator;
.super Ljava/lang/Object;
.source "Finished.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "S30VerifyDataGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$1;

    .line 206
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Finished$S30VerifyDataGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "isValidation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 211
    .local v0, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 212
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 214
    .local v1, "masterSecretKey":Ljavax/crypto/SecretKey;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 217
    .local v2, "useClientLabel":Z
    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest(ZLjavax/crypto/SecretKey;)[B

    move-result-object v3

    return-object v3
.end method

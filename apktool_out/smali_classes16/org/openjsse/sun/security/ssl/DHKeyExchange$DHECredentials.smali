.class final Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
.super Ljava/lang/Object;
.source "DHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DHECredentials"
.end annotation


# instance fields
.field final namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field final popPublicKey:Ljavax/crypto/interfaces/DHPublicKey;


# direct methods
.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V
    .locals 0
    .param p1, "popPublicKey"    # Ljavax/crypto/interfaces/DHPublicKey;
    .param p2, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->popPublicKey:Ljavax/crypto/interfaces/DHPublicKey;

    .line 70
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 71
    return-void
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[B)Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
    .locals 6
    .param p0, "ng"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .param p1, "encodedPublic"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_3

    .line 81
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/DHParameterSpec;

    .line 86
    .local v1, "params":Ljavax/crypto/spec/DHParameterSpec;
    if-nez v1, :cond_1

    .line 87
    return-object v0

    .line 90
    :cond_1
    const-string v0, "DiffieHellman"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 91
    .local v0, "kf":Ljava/security/KeyFactory;
    new-instance v2, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 93
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 94
    .local v2, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    nop

    .line 95
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljavax/crypto/interfaces/DHPublicKey;

    .line 97
    .local v3, "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    invoke-direct {v4, v3, p0}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;-><init>(Ljavax/crypto/interfaces/DHPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V

    return-object v4

    .line 82
    .end local v0    # "kf":Ljava/security/KeyFactory;
    .end local v1    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v2    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .end local v3    # "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    :cond_2
    :goto_0
    return-object v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Credentials decoding:  Not FFDHE named group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

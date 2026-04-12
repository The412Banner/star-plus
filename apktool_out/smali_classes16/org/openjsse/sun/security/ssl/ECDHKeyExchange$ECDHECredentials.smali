.class final Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
.super Ljava/lang/Object;
.source "ECDHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECDHECredentials"
.end annotation


# instance fields
.field final namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field final popPublicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method constructor <init>(Ljava/security/interfaces/ECPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V
    .locals 0
    .param p1, "popPublicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->popPublicKey:Ljava/security/interfaces/ECPublicKey;

    .line 71
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 72
    return-void
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;[B)Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;
    .locals 5
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .param p1, "encodedPoint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_3

    .line 82
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    .line 87
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 88
    .local v1, "parameters":Ljava/security/spec/ECParameterSpec;
    if-nez v1, :cond_1

    .line 89
    return-object v0

    .line 92
    :cond_1
    nop

    .line 93
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 94
    .local v0, "point":Ljava/security/spec/ECPoint;
    const-string v2, "EC"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 95
    .local v2, "factory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v0, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 97
    .local v3, "publicKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v4, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    invoke-direct {v4, v3, p0}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;-><init>(Ljava/security/interfaces/ECPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V

    return-object v4

    .line 83
    .end local v0    # "point":Ljava/security/spec/ECPoint;
    .end local v1    # "parameters":Ljava/security/spec/ECParameterSpec;
    .end local v2    # "factory":Ljava/security/KeyFactory;
    .end local v3    # "publicKey":Ljava/security/interfaces/ECPublicKey;
    :cond_2
    :goto_0
    return-object v0

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Credentials decoding:  Not ECDHE named group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

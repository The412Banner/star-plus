.class final Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
.super Ljava/lang/Object;
.source "X509Authentication.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "X509Possession"
.end annotation


# instance fields
.field final popCerts:[Ljava/security/cert/X509Certificate;

.field final popPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "popPrivateKey"    # Ljava/security/PrivateKey;
    .param p2, "popCerts"    # [Ljava/security/cert/X509Certificate;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    .line 129
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 130
    return-void
.end method


# virtual methods
.method getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 134
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    instance-of v0, v0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    check-cast v0, Ljava/security/interfaces/ECKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 144
    .local v0, "publicKey":Ljava/security/PublicKey;
    instance-of v2, v0, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_2

    .line 145
    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    return-object v1

    .line 149
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    :cond_2
    return-object v1

    .line 135
    :cond_3
    :goto_0
    return-object v1
.end method

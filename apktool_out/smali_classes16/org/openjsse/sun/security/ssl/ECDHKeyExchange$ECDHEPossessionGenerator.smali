.class final Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossessionGenerator;
.super Ljava/lang/Object;
.source "ECDHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHEPossessionGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$1;

    .line 205
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossessionGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "preferableNamedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 215
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    invoke-static {v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->getPreferredGroup(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/util/List;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    invoke-static {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->getPreferredGroup(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    .line 228
    :goto_0
    if-eqz v0, :cond_1

    .line 229
    new-instance v1, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 230
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;Ljava/security/SecureRandom;)V

    .line 229
    return-object v1

    .line 235
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

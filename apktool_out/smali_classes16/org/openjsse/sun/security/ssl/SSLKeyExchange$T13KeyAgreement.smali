.class final Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;
.super Ljava/lang/Object;
.source "SSLKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13KeyAgreement"
.end annotation


# static fields
.field static final supportedKeyShares:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            "Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->supportedKeyShares:Ljava/util/Map;

    .line 557
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 558
    .local v3, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->supportedKeyShares:Ljava/util/Map;

    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;

    invoke-direct {v5, v3}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .end local v3    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V
    .locals 0
    .param p1, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 565
    return-void
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;
    .locals 1
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 568
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->supportedKeyShares:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;

    return-object v0
.end method


# virtual methods
.method public createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .locals 2
    .param p1, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_0

    .line 588
    sget-object v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange;->ecdheKAGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v0

    return-object v0

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_1

    .line 590
    sget-object v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange;->kaGenerator:Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;

    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLKeyAgreementGenerator;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v0

    return-object v0

    .line 593
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 3
    .param p1, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 573
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_0

    .line 574
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 575
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;Ljava/security/SecureRandom;)V

    .line 574
    return-object v0

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_1

    .line 577
    new-instance v0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLKeyExchange$T13KeyAgreement;->namedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 578
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;Ljava/security/SecureRandom;)V

    .line 577
    return-object v0

    .line 581
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

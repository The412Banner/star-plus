.class final Lorg/openjsse/sun/security/ssl/SSLConfiguration;
.super Ljava/lang/Object;
.source "SSLConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedServerSignatureSchemes;,
        Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedClientSignatureSchemes;
    }
.end annotation


# static fields
.field static final acknowledgeCloseNotify:Z

.field static final allowLegacyMasterSecret:Z

.field static final allowLegacyResumption:Z

.field static final maxCertificateChainLength:I

.field static final maxHandshakeMessageSize:I

.field static final useCompatibilityMode:Z

.field static final useExtendedMasterSecret:Z


# instance fields
.field applicationProtocols:[Ljava/lang/String;

.field clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

.field enableRetransmissions:Z

.field enableSessionCreation:Z

.field enabledCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field enabledProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field engineAPSelector:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field handshakeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field identificationProtocol:Ljava/lang/String;

.field isClientMode:Z

.field maximumPacketSize:I

.field maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field noSniExtension:Z

.field noSniMatcher:Z

.field preferLocalCipherSuites:Z

.field serverNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field signatureSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation
.end field

.field sniMatchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field socketAPSelector:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userSpecifiedAlgorithmConstraints:Ljava/security/AlgorithmConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 118
    nop

    .line 119
    const-string v0, "jdk.tls.allowLegacyResumption"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->allowLegacyResumption:Z

    .line 122
    nop

    .line 123
    const-string v0, "jdk.tls.allowLegacyMasterSecret"

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->allowLegacyMasterSecret:Z

    .line 126
    const-string v0, "jdk.tls.client.useCompatibilityMode"

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->useCompatibilityMode:Z

    .line 130
    const-string v0, "jdk.tls.acknowledgeCloseNotify"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->acknowledgeCloseNotify:Z

    .line 134
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v2, "jdk.tls.maxHandshakeMessageSize"

    const v3, 0x8000

    invoke-direct {v0, v2, v3}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 135
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxHandshakeMessageSize:I

    .line 139
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v2, "jdk.tls.maxCertificateChainLength"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 140
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxCertificateChainLength:I

    .line 145
    const-string v0, "jdk.tls.useExtendedMasterSecret"

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    .local v0, "supportExtendedMasterSecret":Z
    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    const-string v1, "SunTlsExtendedMasterSecret"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "nae":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    .line 154
    .end local v1    # "nae":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_0
    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->useExtendedMasterSecret:Z

    .line 155
    .end local v0    # "supportExtendedMasterSecret":Z
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Z)V
    .locals 5
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "isClientMode"    # Z

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->DEFAULT:Ljava/security/AlgorithmConstraints;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->userSpecifiedAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 162
    nop

    .line 163
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultProtocolVersions(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    .line 164
    nop

    .line 165
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultCipherSuites(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    .line 166
    sget-object v0, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->sniMatchers:Ljava/util/Collection;

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->preferLocalCipherSuites:Z

    .line 173
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->applicationProtocols:[Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableRetransmissions:Z

    .line 175
    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    .line 177
    if-eqz p2, :cond_0

    .line 178
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedClientSignatureSchemes;->access$000()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedServerSignatureSchemes;->access$100()Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->signatureSchemes:Ljava/util/List;

    .line 180
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 181
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 182
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_1

    .line 183
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 185
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    goto :goto_1

    .line 188
    :cond_2
    iput-boolean p2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z

    .line 190
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->socketAPSelector:Ljava/util/function/BiFunction;

    .line 191
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->engineAPSelector:Ljava/util/function/BiFunction;

    .line 193
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    .line 194
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->noSniExtension:Z

    .line 195
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->noSniMatcher:Z

    .line 196
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 79
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getCustomizedSignatureScheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedSignatureScheme(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-static {p0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "property":Ljava/lang/String;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v2, "ssl,sslctx"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System property "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is set to \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x22

    if-ne v1, v5, :cond_1

    .line 496
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 502
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "signatureSchemeNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v4, "signatureSchemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 506
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 507
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 508
    goto :goto_1

    .line 511
    :cond_2
    aget-object v6, v1, v5

    .line 512
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v6

    .line 513
    .local v6, "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    if-eqz v6, :cond_3

    iget-boolean v7, v6, Lorg/openjsse/sun/security/ssl/SignatureScheme;->isAvailable:Z

    if-eqz v7, :cond_3

    .line 514
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_3
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current installed providers do not support signature scheme: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    .end local v6    # "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 525
    .end local v5    # "i":I
    :cond_5
    return-object v4

    .line 528
    .end local v1    # "signatureSchemeNames":[Ljava/lang/String;
    .end local v4    # "signatureSchemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .line 304
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 448
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 449
    .local v0, "config":Lorg/openjsse/sun/security/ssl/SSLConfiguration;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    .line 452
    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :cond_0
    return-object v0

    .line 456
    .end local v0    # "config":Lorg/openjsse/sun/security/ssl/SSLConfiguration;
    :catch_0
    move-exception v0

    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .locals 7
    .param p1, "handshakeType"    # Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 363
    .local v5, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-ne v6, p1, :cond_0

    .line 364
    invoke-virtual {p0, v5}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v5    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 370
    :cond_1
    new-array v1, v3, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    return-object v1
.end method

.method getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Ljava/util/List;)[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .locals 9
    .param p1, "handshakeType"    # Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/SSLHandshake;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;)[",
            "Lorg/openjsse/sun/security/ssl/SSLExtension;"
        }
    .end annotation

    .line 415
    .local p2, "activeProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 417
    .local v5, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-ne v6, p1, :cond_2

    .line 418
    invoke-virtual {p0, v5}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 419
    goto :goto_2

    .line 422
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 423
    .local v7, "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-virtual {v5, v7}, Lorg/openjsse/sun/security/ssl/SSLExtension;->isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    goto :goto_2

    .line 427
    .end local v7    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    goto :goto_1

    .line 416
    .end local v5    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 431
    :cond_3
    new-array v1, v3, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    return-object v1
.end method

.method getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .locals 2
    .param p1, "handshakeType"    # Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 402
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 403
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 402
    invoke-virtual {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Ljava/util/List;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    return-object v0
.end method

.method getExclusiveExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Ljava/util/List;)[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .locals 7
    .param p1, "handshakeType"    # Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/SSLHandshake;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SSLExtension;",
            ">;)[",
            "Lorg/openjsse/sun/security/ssl/SSLExtension;"
        }
    .end annotation

    .line 381
    .local p2, "excluded":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SSLExtension;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 383
    .local v5, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-ne v6, p1, :cond_0

    .line 384
    invoke-virtual {p0, v5}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 385
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v5    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    :cond_1
    new-array v1, v3, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    return-object v1
.end method

.method getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    .line 199
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLParameters;

    invoke-direct {v0}, Lorg/openjsse/javax/net/ssl/SSLParameters;-><init>()V

    .line 202
    .local v0, "params":Lorg/openjsse/javax/net/ssl/SSLParameters;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->userSpecifiedAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V

    .line 203
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 205
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration$1;->$SwitchMap$org$openjsse$sun$security$ssl$ClientAuthType:[I

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ClientAuthType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    goto :goto_0

    .line 210
    :pswitch_0
    invoke-virtual {v0, v2}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    .line 211
    goto :goto_0

    .line 207
    :pswitch_1
    invoke-virtual {v0, v2}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    .line 208
    nop

    .line 215
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->noSniExtension:Z

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {v0, v2}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    goto :goto_1

    .line 221
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 224
    :goto_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->sniMatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->noSniMatcher:Z

    if-nez v1, :cond_1

    .line 226
    invoke-virtual {v0, v2}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    goto :goto_2

    .line 228
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->sniMatchers:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    .line 231
    :goto_2
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->applicationProtocols:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 232
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->preferLocalCipherSuites:Z

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 233
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableRetransmissions:Z

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setEnableRetransmissions(Z)V

    .line 234
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    invoke-virtual {v0, v1}, Lorg/openjsse/javax/net/ssl/SSLParameters;->setMaximumPacketSize(I)V

    .line 236
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z
    .locals 3
    .param p1, "extension"    # Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 332
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 333
    .local v1, "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/SSLExtension;->isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    iget-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension$ClientExtensions;->defaults:Ljava/util/Collection;

    .line 335
    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension$ServerExtensions;->defaults:Ljava/util/Collection;

    .line 336
    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 340
    .end local v1    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    goto :goto_0

    .line 342
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z
    .locals 1
    .param p1, "extension"    # Lorg/openjsse/sun/security/ssl/SSLExtension;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 350
    invoke-virtual {p1, p2}, Lorg/openjsse/sun/security/ssl/SSLExtension;->isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension$ClientExtensions;->defaults:Ljava/util/Collection;

    .line 351
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLExtension$ServerExtensions;->defaults:Ljava/util/Collection;

    .line 352
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 350
    :goto_1
    return v0
.end method

.method removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .line 315
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    .line 326
    :cond_0
    return-void

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no listeners"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 6
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .line 240
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    .line 241
    .local v0, "ac":Ljava/security/AlgorithmConstraints;
    if-eqz v0, :cond_0

    .line 242
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->userSpecifiedAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "sa":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 247
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->validValuesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    .line 250
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_3

    .line 252
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->namesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    .line 254
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 255
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 256
    .local v3, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_2

    .line 257
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 259
    .end local v3    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    sget-object v2, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_1

    .line 264
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    sget-object v2, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_1

    .line 267
    :cond_5
    sget-object v2, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    .line 270
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 272
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    .line 275
    :cond_6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v3

    .line 276
    .local v3, "sniNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v3, :cond_7

    .line 277
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    iput-boolean v4, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->noSniExtension:Z

    .line 278
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    .line 281
    :cond_7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v4

    .line 282
    .local v4, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    if-eqz v4, :cond_8

    .line 283
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->noSniMatcher:Z

    .line 284
    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->sniMatchers:Ljava/util/Collection;

    .line 287
    :cond_8
    instance-of v5, p1, Lorg/openjsse/javax/net/ssl/SSLParameters;

    if-eqz v5, :cond_a

    .line 289
    move-object v5, p1

    check-cast v5, Lorg/openjsse/javax/net/ssl/SSLParameters;

    invoke-virtual {v5}, Lorg/openjsse/javax/net/ssl/SSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_9

    .line 291
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->applicationProtocols:[Ljava/lang/String;

    .line 294
    :cond_9
    move-object v5, p1

    check-cast v5, Lorg/openjsse/javax/net/ssl/SSLParameters;

    invoke-virtual {v5}, Lorg/openjsse/javax/net/ssl/SSLParameters;->getEnableRetransmissions()Z

    move-result v5

    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableRetransmissions:Z

    .line 295
    move-object v5, p1

    check-cast v5, Lorg/openjsse/javax/net/ssl/SSLParameters;

    invoke-virtual {v5}, Lorg/openjsse/javax/net/ssl/SSLParameters;->getMaximumPacketSize()I

    move-result v5

    iput v5, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    .line 297
    :cond_a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v5

    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->preferLocalCipherSuites:Z

    .line 298
    return-void
.end method

.method toggleClientMode()V
    .locals 1

    .line 435
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    .line 438
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedClientSignatureSchemes;->access$000()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLConfiguration$CustomizedServerSignatureSchemes;->access$100()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->signatureSchemes:Ljava/util/List;

    .line 441
    return-void
.end method

.class final Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;
.super Ljava/lang/Object;
.source "DHKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DHEPossessionGenerator"
.end annotation


# static fields
.field private static final customizedDHKeySize:I

.field private static final useLegacyEphemeralDHKeys:Z

.field private static final useSmartEphemeralDHKeys:Z


# instance fields
.field private final exportable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 254
    const-string v0, "jdk.tls.ephemeralDHKeySize"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "property":Ljava/lang/String;
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    const-string v3, "matched"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 261
    sput-boolean v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useLegacyEphemeralDHKeys:Z

    .line 262
    sput-boolean v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useSmartEphemeralDHKeys:Z

    .line 263
    sput v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    goto :goto_1

    .line 264
    :cond_1
    const-string v3, "legacy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    sput-boolean v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useLegacyEphemeralDHKeys:Z

    .line 266
    sput-boolean v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useSmartEphemeralDHKeys:Z

    .line 267
    sput v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    goto :goto_1

    .line 269
    :cond_2
    sput-boolean v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useLegacyEphemeralDHKeys:Z

    .line 270
    sput-boolean v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useSmartEphemeralDHKeys:Z

    .line 276
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    .line 277
    sget v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_3

    sget v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_3

    sget v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    and-int/lit8 v1, v1, 0x3f

    if-nez v1, :cond_3

    .line 289
    goto :goto_1

    .line 280
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported customized DH key size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". The key size must be multiple of 64, and range from 1024 to 8192 (inclusive)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "property":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .restart local v0    # "property":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid system property jdk.tls.ephemeralDHKeySize"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_0
    sput-boolean v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useLegacyEphemeralDHKeys:Z

    .line 258
    sput-boolean v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useSmartEphemeralDHKeys:Z

    .line 259
    sput v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    .line 291
    .end local v0    # "property":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "exportable"    # Z

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->exportable:Z

    .line 296
    return-void
.end method

.method synthetic constructor <init>(ZLorg/openjsse/sun/security/ssl/DHKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/DHKeyExchange$1;

    .line 236
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "preferableNamedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useLegacyEphemeralDHKeys:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 304
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientRequestedNamedGroups:Ljava/util/List;

    .line 306
    invoke-static {v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->getPreferredGroup(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/util/List;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    .line 312
    new-instance v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 313
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;Ljava/security/SecureRandom;)V

    .line 312
    return-object v1

    .line 356
    :cond_0
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->exportable:Z

    const/16 v2, 0x400

    if-eqz v1, :cond_1

    const/16 v1, 0x200

    goto :goto_0

    :cond_1
    move v1, v2

    .line 357
    .local v1, "keySize":I
    :goto_0
    iget-boolean v3, p0, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->exportable:Z

    if-nez v3, :cond_7

    .line 358
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useLegacyEphemeralDHKeys:Z

    if-eqz v3, :cond_2

    .line 359
    const/16 v1, 0x300

    goto :goto_2

    .line 360
    :cond_2
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->useSmartEphemeralDHKeys:Z

    if-eqz v3, :cond_6

    .line 361
    const/4 v3, 0x0

    .line 362
    .local v3, "key":Ljava/security/PrivateKey;
    move-object v4, p1

    check-cast v4, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 364
    .local v4, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->interimAuthn:Lorg/openjsse/sun/security/ssl/SSLPossession;

    instance-of v5, v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v5, :cond_3

    .line 365
    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->interimAuthn:Lorg/openjsse/sun/security/ssl/SSLPossession;

    check-cast v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    iget-object v3, v5, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 368
    :cond_3
    if-eqz v3, :cond_5

    .line 369
    invoke-static {v3}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v5

    .line 381
    .local v5, "ks":I
    if-gt v5, v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x800

    :goto_1
    move v1, v2

    .line 383
    .end local v3    # "key":Ljava/security/PrivateKey;
    .end local v4    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local v5    # "ks":I
    :cond_5
    goto :goto_2

    :cond_6
    sget v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    if-lez v2, :cond_5

    .line 384
    sget v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossessionGenerator;->customizedDHKeySize:I

    .line 388
    :cond_7
    :goto_2
    new-instance v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 389
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;-><init>(ILjava/security/SecureRandom;)V

    .line 388
    return-object v2
.end method

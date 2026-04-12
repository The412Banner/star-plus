.class final enum Lorg/openjsse/sun/security/ssl/X509Authentication;
.super Ljava/lang/Enum;
.source "X509Authentication.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLAuthentication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;,
        Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;,
        Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/X509Authentication;",
        ">;",
        "Lorg/openjsse/sun/security/ssl/SSLAuthentication;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/X509Authentication;

.field public static final enum DSA:Lorg/openjsse/sun/security/ssl/X509Authentication;

.field public static final enum EC:Lorg/openjsse/sun/security/ssl/X509Authentication;

.field public static final enum RSA:Lorg/openjsse/sun/security/ssl/X509Authentication;

.field public static final enum RSASSA_PSS:Lorg/openjsse/sun/security/ssl/X509Authentication;

.field public static final enum RSA_OR_PSS:Lorg/openjsse/sun/security/ssl/X509Authentication;


# instance fields
.field final keyType:Ljava/lang/String;

.field final possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509Authentication;

    new-instance v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RSA"

    aput-object v5, v3, v4

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;-><init>([Ljava/lang/String;Lorg/openjsse/sun/security/ssl/X509Authentication$1;)V

    invoke-direct {v0, v5, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->RSA:Lorg/openjsse/sun/security/ssl/X509Authentication;

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509Authentication;

    new-instance v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;

    new-array v3, v2, [Ljava/lang/String;

    const-string v7, "RSASSA-PSS"

    aput-object v7, v3, v4

    invoke-direct {v1, v3, v6}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;-><init>([Ljava/lang/String;Lorg/openjsse/sun/security/ssl/X509Authentication$1;)V

    const-string v3, "RSASSA_PSS"

    invoke-direct {v0, v3, v2, v7, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->RSASSA_PSS:Lorg/openjsse/sun/security/ssl/X509Authentication;

    .line 56
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509Authentication;

    new-instance v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    aput-object v5, v8, v4

    aput-object v7, v8, v2

    invoke-direct {v1, v8, v6}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;-><init>([Ljava/lang/String;Lorg/openjsse/sun/security/ssl/X509Authentication$1;)V

    const-string v5, "RSA_OR_PSS"

    invoke-direct {v0, v5, v3, v5, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->RSA_OR_PSS:Lorg/openjsse/sun/security/ssl/X509Authentication;

    .line 60
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509Authentication;

    new-instance v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;

    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "DSA"

    aput-object v5, v3, v4

    invoke-direct {v1, v3, v6}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;-><init>([Ljava/lang/String;Lorg/openjsse/sun/security/ssl/X509Authentication$1;)V

    const/4 v3, 0x3

    invoke-direct {v0, v5, v3, v5, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->DSA:Lorg/openjsse/sun/security/ssl/X509Authentication;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509Authentication;

    new-instance v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "EC"

    aput-object v3, v2, v4

    invoke-direct {v1, v2, v6}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509PossessionGenerator;-><init>([Ljava/lang/String;Lorg/openjsse/sun/security/ssl/X509Authentication$1;)V

    const/4 v2, 0x4

    invoke-direct {v0, v3, v2, v3, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->EC:Lorg/openjsse/sun/security/ssl/X509Authentication;

    .line 42
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->RSA:Lorg/openjsse/sun/security/ssl/X509Authentication;

    sget-object v1, Lorg/openjsse/sun/security/ssl/X509Authentication;->RSASSA_PSS:Lorg/openjsse/sun/security/ssl/X509Authentication;

    sget-object v2, Lorg/openjsse/sun/security/ssl/X509Authentication;->RSA_OR_PSS:Lorg/openjsse/sun/security/ssl/X509Authentication;

    sget-object v3, Lorg/openjsse/sun/security/ssl/X509Authentication;->DSA:Lorg/openjsse/sun/security/ssl/X509Authentication;

    sget-object v4, Lorg/openjsse/sun/security/ssl/X509Authentication;->EC:Lorg/openjsse/sun/security/ssl/X509Authentication;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjsse/sun/security/ssl/X509Authentication;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->$VALUES:[Lorg/openjsse/sun/security/ssl/X509Authentication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;)V
    .locals 0
    .param p3, "keyType"    # Ljava/lang/String;
    .param p4, "possessionGenerator"    # Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/X509Authentication;->keyType:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/X509Authentication;->possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/X509Authentication;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lorg/openjsse/sun/security/ssl/X509Authentication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/X509Authentication;

    return-object v0
.end method

.method static valueOf(Lorg/openjsse/sun/security/ssl/SignatureScheme;)Lorg/openjsse/sun/security/ssl/X509Authentication;
    .locals 6
    .param p0, "signatureScheme"    # Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 77
    invoke-static {}, Lorg/openjsse/sun/security/ssl/X509Authentication;->values()[Lorg/openjsse/sun/security/ssl/X509Authentication;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    .local v3, "au":Lorg/openjsse/sun/security/ssl/X509Authentication;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication;->keyType:Ljava/lang/String;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    return-object v3

    .line 77
    .end local v3    # "au":Lorg/openjsse/sun/security/ssl/X509Authentication;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/X509Authentication;
    .locals 1

    .line 42
    sget-object v0, Lorg/openjsse/sun/security/ssl/X509Authentication;->$VALUES:[Lorg/openjsse/sun/security/ssl/X509Authentication;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/X509Authentication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/X509Authentication;

    return-object v0
.end method


# virtual methods
.method public createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 88
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509Authentication;->possessionGenerator:Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;

    invoke-interface {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLPossessionGenerator;->createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v0

    return-object v0
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

    .line 108
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 111
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 109
    return-object v0

    .line 117
    :cond_0
    new-array v0, v1, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getRelatedHandshakers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 3
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 94
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v2, v0, v1

    return-object v0

    .line 101
    :cond_0
    new-array v0, v1, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.class final enum Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;
.super Ljava/lang/Enum;
.source "SSLTrafficKeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeySchedule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

.field public static final enum TlsIv:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

.field public static final enum TlsKey:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

.field public static final enum TlsUpdateNplus1:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;


# instance fields
.field private final isIv:Z

.field private final label:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 181
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    const-string v1, "key"

    const-string v2, "TlsKey"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->TlsKey:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    .line 182
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    const/4 v1, 0x1

    const-string v2, "iv"

    const-string v4, "TlsIv"

    invoke-direct {v0, v4, v1, v2, v1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->TlsIv:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    .line 183
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    const/4 v1, 0x2

    const-string v2, "traffic upd"

    const-string v4, "TlsUpdateNplus1"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->TlsUpdateNplus1:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    .line 179
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->TlsKey:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->TlsIv:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->TlsUpdateNplus1:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    filled-new-array {v0, v1, v2}, [Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isIv"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tls13 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->label:[B

    .line 190
    iput-boolean p4, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->isIv:Z

    .line 191
    return-void
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    .line 179
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->label:[B

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 179
    const-class v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    return-object v0
.end method

.method public static values()[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;
    .locals 1

    .line 179
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->$VALUES:[Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    invoke-virtual {v0}, [Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    return-object v0
.end method


# virtual methods
.method getAlgorithm(Lorg/openjsse/sun/security/ssl/CipherSuite;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 200
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->isIv:Z

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->algorithm:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method getKeyLength(Lorg/openjsse/sun/security/ssl/CipherSuite;)I
    .locals 1
    .param p1, "cs"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 194
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->TlsUpdateNplus1:Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;

    if-ne p0, v0, :cond_0

    .line 195
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    return v0

    .line 196
    :cond_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$KeySchedule;->isIv:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->ivSize:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->keySize:I

    :goto_0
    return v0
.end method

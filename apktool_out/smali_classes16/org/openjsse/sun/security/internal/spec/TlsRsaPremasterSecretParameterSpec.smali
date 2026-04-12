.class public Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;
.super Ljava/lang/Object;
.source "TlsRsaPremasterSecretParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PROP_NAME:Ljava/lang/String; = "com.sun.net.ssl.rsaPreMasterSecretFix"

.field private static final rsaPreMasterSecretFix:Z


# instance fields
.field private final clientVersion:I

.field private final encodedSecret:[B

.field private final serverVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec$1;

    invoke-direct {v0}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec$1;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->rsaPreMasterSecretFix:Z

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "clientVersion"    # I
    .param p2, "serverVersion"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->clientVersion:I

    .line 93
    invoke-direct {p0, p2}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->serverVersion:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->encodedSecret:[B

    .line 95
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .param p1, "clientVersion"    # I
    .param p2, "serverVersion"    # I
    .param p3, "encodedSecret"    # [B

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->clientVersion:I

    .line 115
    invoke-direct {p0, p2}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->serverVersion:I

    .line 116
    if-eqz p3, :cond_0

    array-length v0, p3

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->encodedSecret:[B

    .line 121
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoded secret is not exactly 48 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkVersion(I)I
    .locals 2
    .param p1, "version"    # I

    .line 173
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 177
    return p1

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version must be between 0 and 65,535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClientVersion()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->clientVersion:I

    return v0
.end method

.method public getEncodedSecret()[B
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->encodedSecret:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->encodedSecret:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public getMajorVersion()I
    .locals 2

    .line 150
    sget-boolean v0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->rsaPreMasterSecretFix:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->clientVersion:I

    const/16 v1, 0x302

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->serverVersion:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 152
    :cond_1
    :goto_0
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->clientVersion:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMinorVersion()I
    .locals 2

    .line 164
    sget-boolean v0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->rsaPreMasterSecretFix:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->clientVersion:I

    const/16 v1, 0x302

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->serverVersion:I

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 166
    :cond_1
    :goto_0
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->clientVersion:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getServerVersion()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->serverVersion:I

    return v0
.end method

.class Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;
.super Lorg/openjsse/sun/security/ssl/Authenticator;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DTLSAuthenticator"
.end annotation


# direct methods
.method private constructor <init>([B)V
    .locals 1
    .param p1, "block"    # [B

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/Authenticator;-><init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V

    .line 299
    return-void
.end method

.method synthetic constructor <init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 296
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;-><init>([B)V

    return-void
.end method


# virtual methods
.method seqNumIsHuge()Z
    .locals 3

    .line 316
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method seqNumOverflow()Z
    .locals 3

    .line 307
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    const/4 v2, 0x5

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    const/4 v2, 0x6

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setEpochNumber(I)V
    .locals 3
    .param p1, "epoch"    # I

    .line 323
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 324
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;->block:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 325
    return-void
.end method

.class Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;
.super Lorg/openjsse/sun/security/ssl/Authenticator;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSLAuthenticator"
.end annotation


# direct methods
.method private constructor <init>([B)V
    .locals 1
    .param p1, "block"    # [B

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/Authenticator;-><init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V

    .line 176
    return-void
.end method

.method synthetic constructor <init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 173
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;-><init>([B)V

    return-void
.end method


# virtual methods
.method seqNumIsHuge()Z
    .locals 5

    .line 193
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    aget-byte v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method seqNumOverflow()Z
    .locals 5

    .line 184
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    aget-byte v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v4, 0x4

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v4, 0x5

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;->block:[B

    const/4 v4, 0x6

    aget-byte v0, v0, v4

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.class Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;
.super Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TLS10Authenticator"
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0xd


# direct methods
.method private constructor <init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 3
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 239
    const/16 v0, 0xd

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;-><init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V

    .line 240
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;->block:[B

    const/16 v1, 0x9

    iget-byte v2, p1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    aput-byte v2, v0, v1

    .line 241
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;->block:[B

    const/16 v1, 0xa

    iget-byte v2, p1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    aput-byte v2, v0, v1

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 233
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    return-void
.end method


# virtual methods
.method acquireAuthenticationBytes(BI[B)[B
    .locals 4
    .param p1, "type"    # B
    .param p2, "length"    # I
    .param p3, "sequence"    # [B

    .line 247
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;->block:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 248
    .local v0, "ad":[B
    const/16 v1, 0x8

    if-eqz p3, :cond_1

    .line 249
    array-length v2, p3

    if-ne v2, v1, :cond_0

    .line 254
    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Insufficient explicit sequence number bytes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_1
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$TLS10Authenticator;->increaseSequenceNumber()V

    .line 260
    :goto_0
    aput-byte p1, v0, v1

    .line 261
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    .line 262
    const/16 v1, 0xc

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 264
    return-object v0
.end method

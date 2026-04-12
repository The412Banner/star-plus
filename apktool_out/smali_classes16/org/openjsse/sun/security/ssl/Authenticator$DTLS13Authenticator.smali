.class final Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;
.super Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DTLS13Authenticator"
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0xd


# direct methods
.method private constructor <init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 3
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 385
    const/16 v0, 0xd

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSAuthenticator;-><init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V

    .line 386
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;->block:[B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    .line 387
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;->block:[B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 378
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    return-void
.end method


# virtual methods
.method acquireAuthenticationBytes(BI[B)[B
    .locals 3
    .param p1, "type"    # B
    .param p2, "length"    # I
    .param p3, "sequence"    # [B

    .line 393
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;->block:[B

    const/16 v1, 0x8

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 396
    .local v0, "ad":[B
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLS13Authenticator;->increaseSequenceNumber()V

    .line 398
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 399
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 400
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 402
    return-object v0
.end method

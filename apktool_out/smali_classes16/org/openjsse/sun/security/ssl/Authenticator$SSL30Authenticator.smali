.class Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Authenticator;
.super Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSL30Authenticator"
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0xb


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 213
    const/16 v0, 0xb

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator$SSLAuthenticator;-><init>([BLorg/openjsse/sun/security/ssl/Authenticator$1;)V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Authenticator$1;

    .line 207
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method acquireAuthenticationBytes(BI[B)[B
    .locals 3
    .param p1, "type"    # B
    .param p2, "length"    # I
    .param p3, "sequence"    # [B

    .line 219
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Authenticator;->block:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 222
    .local v0, "ad":[B
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/Authenticator$SSL30Authenticator;->increaseSequenceNumber()V

    .line 224
    const/16 v1, 0x8

    aput-byte p1, v0, v1

    .line 225
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    .line 226
    const/16 v1, 0xa

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 228
    return-object v0
.end method

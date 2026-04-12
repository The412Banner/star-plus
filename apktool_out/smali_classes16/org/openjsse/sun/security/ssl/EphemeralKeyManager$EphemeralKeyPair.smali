.class Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/EphemeralKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EphemeralKeyPair"
.end annotation


# static fields
.field private static final MAX_USE:I = 0xc8

.field private static final USE_INTERVAL:J = 0x36ee80L


# instance fields
.field private expirationTime:J

.field private keyPair:Ljava/security/KeyPair;

.field private uses:I


# direct methods
.method private constructor <init>(Ljava/security/KeyPair;)V
    .locals 4
    .param p1, "keyPair"    # Ljava/security/KeyPair;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->expirationTime:J

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/KeyPair;Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/security/KeyPair;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$1;

    .line 87
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;)V

    return-void
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    .line 87
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method private getKeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 116
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    .line 118
    return-object v0

    .line 120
    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    .line 121
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method private isValid()Z
    .locals 4

    .line 108
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/openjsse/sun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->expirationTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0
.end method

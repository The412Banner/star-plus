.class public final Lorg/conscrypt/KeyGeneratorImpl$ARC4;
.super Lorg/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ARC4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 182
    const/16 v0, 0x80

    const/4 v1, 0x0

    const-string v2, "ARC4"

    invoke-direct {p0, v2, v0, v1}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V

    .line 183
    return-void
.end method


# virtual methods
.method protected checkKeySize(I)V
    .locals 2
    .param p1, "keySize"    # I

    .line 187
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    const/16 v0, 0x800

    if-lt v0, p1, :cond_0

    .line 190
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be between 40 and 2048 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

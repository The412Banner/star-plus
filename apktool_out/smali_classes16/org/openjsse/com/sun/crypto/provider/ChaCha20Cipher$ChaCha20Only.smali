.class public final Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaCha20Only;
.super Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.source "ChaCha20Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChaCha20Only"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1439
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;-><init>()V

    .line 1440
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaCha20Only;->mode:I

    .line 1441
    return-void
.end method

.class public final Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaCha20Poly1305;
.super Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.source "ChaCha20Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChaCha20Poly1305"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1445
    invoke-direct {p0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;-><init>()V

    .line 1446
    const/4 v0, 0x1

    iput v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaCha20Poly1305;->mode:I

    .line 1447
    const-string v0, "Poly1305"

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaCha20Poly1305;->authAlgName:Ljava/lang/String;

    .line 1448
    return-void
.end method

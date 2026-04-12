.class interface abstract Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;
.super Ljava/lang/Object;
.source "ChaCha20Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ChaChaEngine"
.end annotation


# virtual methods
.method public abstract doFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/AEADBadTagException;,
            Ljava/security/KeyException;
        }
    .end annotation
.end method

.method public abstract doUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/KeyException;
        }
    .end annotation
.end method

.method public abstract getOutputSize(IZ)I
.end method

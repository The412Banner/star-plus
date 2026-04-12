.class final Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;
.super Ljava/lang/Object;
.source "ChaCha20Cipher.java"

# interfaces
.implements Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineStreamOnly"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;


# direct methods
.method private constructor <init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p2, "x1"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;

    .line 1230
    invoke-direct {p0, p1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;-><init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V

    return-void
.end method


# virtual methods
.method public doFinal([BII[BI)I
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/KeyException;
        }
    .end annotation

    .line 1268
    invoke-virtual/range {p0 .. p5}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;->doUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method public doUpdate([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/KeyException;
        }
    .end annotation

    .line 1243
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$300(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    const-string v0, "Output buffer too small"

    if-eqz p4, :cond_1

    .line 1246
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    array-length v2, p4

    invoke-static {v1, p5, p3, v2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$400(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;III)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    nop

    .line 1254
    if-eqz p1, :cond_0

    .line 1255
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    array-length v1, p1

    invoke-static {v0, p2, p3, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$400(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;III)I

    .line 1256
    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineStreamOnly;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$500(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII[BI)V

    .line 1258
    :cond_0
    return p3

    .line 1248
    :cond_1
    :try_start_1
    new-instance v1, Ljavax/crypto/ShortBufferException;

    invoke-direct {v1, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    .end local p4    # "out":[B
    .end local p5    # "outOff":I
    throw v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1251
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    .restart local p4    # "out":[B
    .restart local p5    # "outOff":I
    :catch_0
    move-exception v1

    .line 1252
    .local v1, "iobe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljavax/crypto/ShortBufferException;

    invoke-direct {v2, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1260
    .end local v1    # "iobe":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must use either a different key or iv."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(IZ)I
    .locals 0
    .param p1, "inLength"    # I
    .param p2, "isFinal"    # Z

    .line 1237
    return p1
.end method

.class final Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;
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
    name = "EngineAEADEnc"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;


# direct methods
.method private constructor <init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1279
    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    invoke-static {p1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$600(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V

    .line 1281
    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$702(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)J

    .line 1282
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p2, "x1"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1272
    invoke-direct {p0, p1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;-><init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V

    return-void
.end method


# virtual methods
.method public doFinal([BII[BI)I
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

    .line 1323
    add-int/lit8 v0, p3, 0x10

    array-length v1, p4

    sub-int/2addr v1, p5

    if-gt v0, v1, :cond_0

    .line 1327
    invoke-virtual/range {p0 .. p5}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->doUpdate([BII[BI)I

    .line 1328
    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    const/4 v5, 0x0

    add-int v7, p5, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$1300(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII[BI)V

    .line 1329
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$802(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Z)Z

    .line 1330
    add-int/lit8 v0, p3, 0x10

    return v0

    .line 1324
    :cond_0
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer too small"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1287
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$300(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1291
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$800(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$900(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$1000(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)V

    .line 1293
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$802(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Z)Z

    .line 1296
    :cond_0
    const-string v0, "Output buffer too small"

    if-eqz p4, :cond_2

    .line 1297
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    array-length v2, p4

    invoke-static {v1, p5, p3, v2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$400(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;III)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    nop

    .line 1305
    if-eqz p1, :cond_1

    .line 1306
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    array-length v1, p1

    invoke-static {v0, p2, p3, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$400(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;III)I

    .line 1307
    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$500(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII[BI)V

    .line 1308
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$1100(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADEnc;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v3, p4, p5, p3}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$1200(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$1102(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)J

    .line 1311
    :cond_1
    return p3

    .line 1299
    :cond_2
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

    .line 1302
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    .restart local p4    # "out":[B
    .restart local p5    # "outOff":I
    :catch_0
    move-exception v1

    .line 1303
    .local v1, "iobe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljavax/crypto/ShortBufferException;

    invoke-direct {v2, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1313
    .end local v1    # "iobe":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must use either a different key or iv."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(IZ)I
    .locals 1
    .param p1, "inLength"    # I
    .param p2, "isFinal"    # Z

    .line 1276
    if-eqz p2, :cond_0

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

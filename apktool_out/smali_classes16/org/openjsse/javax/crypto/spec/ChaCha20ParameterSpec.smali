.class public final Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;
.super Ljava/lang/Object;
.source "ChaCha20ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static final NONCE_LENGTH:I = 0xc


# instance fields
.field private final counter:I

.field private final nonce:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .param p1, "nonce"    # [B
    .param p2, "counter"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p2, p0, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;->counter:I

    .line 92
    const-string v0, "Nonce must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;->nonce:[B

    .line 94
    iget-object v0, p0, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;->nonce:[B

    array-length v0, v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 98
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nonce must be 12-bytes in length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCounter()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;->counter:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/openjsse/javax/crypto/spec/ChaCha20ParameterSpec;->nonce:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

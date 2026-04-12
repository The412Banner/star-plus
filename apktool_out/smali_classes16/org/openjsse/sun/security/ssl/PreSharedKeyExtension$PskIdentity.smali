.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PskIdentity"
.end annotation


# instance fields
.field final identity:[B

.field final obfuscatedAge:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "identity"    # [B
    .param p2, "obfuscatedAge"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->identity:[B

    .line 106
    iput p2, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->obfuscatedAge:I

    .line 107
    return-void
.end method


# virtual methods
.method getEncodedLength()I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->identity:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->identity:[B

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->obfuscatedAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeEncoded(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->identity:[B

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/Record;->putBytes16(Ljava/nio/ByteBuffer;[B)V

    .line 115
    iget v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->obfuscatedAge:I

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/Record;->putInt32(Ljava/nio/ByteBuffer;I)V

    .line 116
    return-void
.end method

.class interface abstract Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MAC"
.end annotation


# virtual methods
.method public compute(BLjava/nio/ByteBuffer;Z)[B
    .locals 1
    .param p1, "type"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "isSimulated"    # Z

    .line 444
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->compute(BLjava/nio/ByteBuffer;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract compute(BLjava/nio/ByteBuffer;[BZ)[B
.end method

.method public abstract macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
.end method

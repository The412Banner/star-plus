.class final Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;
.super Ljava/lang/Object;
.source "HandshakeHash.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeHash$TranscriptHash;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HandshakeHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloneableHash"
.end annotation


# instance fields
.field private final md:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "md"    # Ljava/security/MessageDigest;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;->md:Ljava/security/MessageDigest;

    .line 587
    return-void
.end method


# virtual methods
.method public archived()[B
    .locals 2

    .line 606
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public digest()[B
    .locals 2

    .line 597
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 591
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeHash$CloneableHash;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 592
    return-void
.end method

.class final Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullMac;
.super Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullAuthenticator;
.source "Authenticator.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Authenticator$MAC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DTLSNullMac"
.end annotation


# instance fields
.field private final macImpl:Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullAuthenticator;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator$1;)V

    .line 591
    new-instance v1, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;

    invoke-direct {v1, p0, v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/Authenticator$1;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullMac;->macImpl:Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;

    .line 592
    return-void
.end method


# virtual methods
.method public compute(BLjava/nio/ByteBuffer;[BZ)[B
    .locals 1
    .param p1, "type"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "sequence"    # [B
    .param p4, "isSimulated"    # Z

    .line 602
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullMac;->macImpl:Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->compute(BLjava/nio/ByteBuffer;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Authenticator$DTLSNullMac;->macImpl:Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;->access$1000(Lorg/openjsse/sun/security/ssl/Authenticator$MacImpl;)Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    return-object v0
.end method

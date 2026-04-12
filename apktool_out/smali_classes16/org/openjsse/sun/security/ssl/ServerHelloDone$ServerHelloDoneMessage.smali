.class final Lorg/openjsse/sun/security/ssl/ServerHelloDone$ServerHelloDoneMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "ServerHelloDone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHelloDone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerHelloDoneMessage"
.end annotation


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 0
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 46
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 52
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Error parsing ServerHelloDone message: not empty"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 60
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 0
    .param p1, "s"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "<empty>"

    return-object v0
.end method

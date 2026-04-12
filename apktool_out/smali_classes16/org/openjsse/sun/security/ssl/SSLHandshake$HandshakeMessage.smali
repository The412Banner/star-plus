.class abstract Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.super Ljava/lang/Object;
.source "SSLHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "HandshakeMessage"
.end annotation


# instance fields
.field final handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 0
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 554
    return-void
.end method


# virtual methods
.method abstract handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
.end method

.method abstract messageLength()I
.end method

.method abstract send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->messageLength()I

    move-result v0

    .line 562
    .local v0, "len":I
    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v1

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write(I)V

    .line 567
    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt24(I)V

    .line 568
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 569
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->complete()V

    .line 570
    return-void

    .line 563
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake message is overflow, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 564
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

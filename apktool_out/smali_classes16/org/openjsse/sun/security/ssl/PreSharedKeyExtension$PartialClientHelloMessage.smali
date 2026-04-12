.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "PreSharedKeyExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PartialClientHelloMessage"
.end annotation


# instance fields
.field private final msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

.field private final psk:Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;)V
    .locals 0
    .param p1, "ctx"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "msg"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p3, "psk"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    .line 586
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 588
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 589
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->psk:Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    .line 590
    return-void
.end method

.method private pskTotalLength()I
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->psk:Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->getIdsEncodedLength()I

    move-result v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->psk:Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    .line 599
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->getBindersEncodedLength()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    .line 598
    return v0
.end method


# virtual methods
.method handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v0

    return-object v0
.end method

.method messageLength()I
    .locals 2

    .line 605
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->get(Lorg/openjsse/sun/security/ssl/SSLExtension;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->messageLength()I

    move-result v0

    return v0

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->messageLength()I

    move-result v0

    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->pskTotalLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 8
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sendCore(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 617
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v0

    .line 618
    .local v0, "extsLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->get(Lorg/openjsse/sun/security/ssl/SSLExtension;)[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 619
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->pskTotalLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_0
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 623
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 624
    .local v5, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->msg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v6, v5}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->get(Lorg/openjsse/sun/security/ssl/SSLExtension;)[B

    move-result-object v6

    .line 625
    .local v6, "extData":[B
    if-nez v6, :cond_1

    .line 626
    goto :goto_1

    .line 629
    :cond_1
    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    if-ne v5, v7, :cond_2

    .line 630
    goto :goto_1

    .line 632
    :cond_2
    iget v7, v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    .line 633
    .local v7, "extID":I
    invoke-virtual {p1, v7}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 634
    invoke-virtual {p1, v6}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 623
    .end local v5    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v6    # "extData":[B
    .end local v7    # "extID":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 638
    :cond_3
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    .line 639
    .local v1, "extID":I
    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 640
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->psk:Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->getEncoded()[B

    move-result-object v2

    .line 641
    .local v2, "encodedPsk":[B
    array-length v4, v2

    invoke-virtual {p1, v4}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 642
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->psk:Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->getIdsEncodedLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 643
    return-void
.end method

.class final Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "Finished.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinishedMessage"
.end annotation


# instance fields
.field private final verifyData:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 75
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 76
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    move-result-object v0

    .line 78
    .local v0, "vds":Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;
    const/4 v1, 0x0

    .line 80
    .local v1, "vd":[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 84
    nop

    .line 86
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    .line 87
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Failed to generate verify_data"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 92
    const/16 v0, 0xc

    .line 93
    .local v0, "verifyDataLen":I
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL30:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v1, v2, :cond_0

    .line 94
    const/16 v0, 0x24

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    iget v0, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 106
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    .line 107
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 110
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;

    move-result-object v1

    .line 113
    .local v1, "vd":Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;->createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .local v2, "myVerifyData":[B
    nop

    .line 118
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    invoke-static {v2, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    return-void

    .line 119
    :cond_2
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->DECRYPT_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "The Finished message cannot be verified."

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 114
    .end local v2    # "myVerifyData":[B
    :catch_0
    move-exception v2

    .line 115
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Failed to generate verify_data"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 101
    .end local v1    # "vd":Lorg/openjsse/sun/security/ssl/Finished$VerifyDataScheme;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_3
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->DECODE_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inappropriate finished message: need "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but remaining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes verify_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method static synthetic access$800(Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;

    .line 69
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    return-object v0
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 126
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    array-length v0, v0

    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write([B)V

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 141
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"Finished\": \'{\'\n  \"verify data\": \'{\'\n{0}\n  \'}\'\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 149
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 150
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->verifyData:[B

    .line 151
    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "    "

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.class final Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "NewSessionTicket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/NewSessionTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewSessionTicketMessage"
.end annotation


# instance fields
.field final extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

.field final ticket:[B

.field final ticketAgeAdd:I

.field final ticketLifetime:I

.field final ticketNonce:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;ILjava/security/SecureRandom;[B[B)V
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "ticketLifetime"    # I
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .param p4, "ticketNonce"    # [B
    .param p5, "ticket"    # [B

    .line 67
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 69
    iput p2, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketLifetime:I

    .line 70
    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketAgeAdd:I

    .line 71
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketNonce:[B

    .line 72
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticket:[B

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 74
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 87
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xe

    const-string v2, "Invalid NewSessionTicket message: no sufficient data"

    if-lt v0, v1, :cond_3

    .line 92
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt32(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketLifetime:I

    .line 93
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt32(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketAgeAdd:I

    .line 94
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketNonce:[B

    .line 96
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 101
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticket:[B

    .line 102
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticket:[B

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 112
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 113
    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    .line 115
    .local v0, "supportedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v1, p0, p2, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 116
    return-void

    .line 108
    .end local v0    # "supportedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 103
    :cond_1
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "No ticket in the NewSessionTicket handshake message"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 97
    :cond_2
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 88
    :cond_3
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 120
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 3

    .line 125
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v0

    .line 126
    .local v0, "extLen":I
    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x2

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketNonce:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticket:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
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
    iget v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketLifetime:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt32(I)V

    .line 137
    iget v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketAgeAdd:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt32(I)V

    .line 138
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketNonce:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 139
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticket:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 142
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 147
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 151
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"NewSessionTicket\": \'{\'\n  \"ticket_lifetime\"      : \"{0}\",\n  \"ticket_age_add\"       : \"{1}\",\n  \"ticket_nonce\"         : \"{2}\",\n  \"ticket\"               : \"{3}\",\n  \"extensions\"           : [\n{4}\n  ]\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 163
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketLifetime:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticketNonce:[B

    .line 166
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->ticket:[B

    .line 167
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/NewSessionTicket$NewSessionTicketMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 168
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "    "

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<omitted>"

    filled-new-array {v1, v5, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

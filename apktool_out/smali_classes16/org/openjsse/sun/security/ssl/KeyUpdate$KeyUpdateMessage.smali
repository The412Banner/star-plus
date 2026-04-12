.class final Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "KeyUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyUpdateMessage"
.end annotation


# instance fields
.field private final status:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/PostHandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 80
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 86
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 87
    .local v0, "request":B
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->valueOf(B)Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->status:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    .line 88
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->status:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    if-eqz v1, :cond_0

    .line 93
    return-void

    .line 89
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid KeyUpdate message value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->nameOf(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 81
    .end local v0    # "request":B
    :cond_1
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyUpdate has an unexpected length of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/PostHandshakeContext;Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;)V
    .locals 0
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
    .param p2, "status"    # Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    .line 72
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 73
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->status:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    .line 74
    return-void
.end method

.method static synthetic access$300(Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;)Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;

    .line 67
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->status:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    return-object v0
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 97
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->status:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->id:B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"KeyUpdate\": \'{\'\n  \"request_update\": {0}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 119
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->status:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

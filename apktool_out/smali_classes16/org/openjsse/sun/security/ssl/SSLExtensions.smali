.class final Lorg/openjsse/sun/security/ssl/SSLExtensions;
.super Ljava/lang/Object;
.source "SSLExtensions.java"


# instance fields
.field private encodedLength:I

.field private extMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjsse/sun/security/ssl/SSLExtension;",
            "[B>;"
        }
    .end annotation
.end field

.field private final handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

.field private final logMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 1
    .param p1, "handshakeMessage"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    .line 45
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    .line 51
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V
    .locals 12
    .param p1, "hm"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .param p3, "extensions"    # [Lorg/openjsse/sun/security/ssl/SSLExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    .line 45
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    .line 57
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 58
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    .line 59
    :goto_1
    if-lez v0, :cond_d

    .line 60
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 61
    .local v1, "extId":I
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 62
    .local v2, "extLen":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_c

    .line 69
    const/4 v3, 0x1

    .line 70
    .local v3, "isSupported":Z
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v4

    .line 71
    .local v4, "handshakeType":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLExtension;->isConsumable(I)Z

    move-result v5

    const-string v6, "ssl,handshake"

    const-string v7, ") should not be presented in "

    const-string v8, "extension ("

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    .line 72
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/SSLExtension;->valueOf(Lorg/openjsse/sun/security/ssl/SSLHandshake;I)Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v5

    if-nez v5, :cond_3

    .line 73
    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_GROUPS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    if-ne v1, v5, :cond_1

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-ne v4, v5, :cond_1

    .line 83
    const/4 v3, 0x0

    .line 84
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_3

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    const-string v5, "Received buggy supported_groups extension in the ServerHello handshake message"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 89
    :cond_1
    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-eq v4, v5, :cond_2

    .line 95
    const/4 v3, 0x0

    goto :goto_2

    .line 90
    :cond_2
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 100
    :cond_3
    :goto_2
    if-eqz v3, :cond_8

    .line 101
    const/4 v3, 0x0

    .line 102
    array-length v5, p3

    :goto_3
    if-ge v9, v5, :cond_8

    aget-object v10, p3, v9

    .line 103
    .local v10, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget v11, v10, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    if-ne v11, v1, :cond_7

    iget-object v11, v10, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    if-nez v11, :cond_4

    .line 105
    goto :goto_4

    .line 108
    :cond_4
    iget-object v5, v10, Lorg/openjsse/sun/security/ssl/SSLExtension;->handshakeType:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-ne v5, v4, :cond_6

    .line 115
    new-array v5, v2, [B

    .line 116
    .local v5, "extData":[B
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v7, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    if-eqz v7, :cond_5

    .line 119
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_5
    const/4 v3, 0x1

    .line 123
    goto :goto_5

    .line 109
    .end local v5    # "extData":[B
    :cond_6
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 102
    .end local v10    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 127
    :cond_8
    :goto_5
    if-nez v3, :cond_b

    .line 128
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    if-eqz v5, :cond_a

    .line 130
    new-array v5, v2, [B

    .line 131
    .restart local v5    # "extData":[B
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 132
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_9

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 135
    nop

    .line 137
    invoke-static {v1, v5}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString(I[B)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 135
    const-string v7, "Ignore unknown or unsupported extension"

    invoke-static {v7, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .end local v5    # "extData":[B
    :cond_9
    goto :goto_6

    .line 141
    :cond_a
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    .line 142
    .local v5, "pos":I
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    .end local v5    # "pos":I
    :cond_b
    :goto_6
    add-int/lit8 v5, v2, 0x4

    sub-int/2addr v0, v5

    .line 147
    .end local v1    # "extId":I
    .end local v2    # "extLen":I
    .end local v3    # "isSupported":Z
    .end local v4    # "handshakeType":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    goto/16 :goto_1

    .line 63
    .restart local v1    # "extId":I
    .restart local v2    # "extLen":I
    :cond_c
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing extension ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): no sufficient data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 148
    .end local v1    # "extId":I
    .end local v2    # "extLen":I
    :cond_d
    return-void
.end method

.method private static toString(I[B)Ljava/lang/String;
    .locals 6
    .param p0, "extId"    # I
    .param p1, "extData"    # [B

    .line 371
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLExtension;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "extName":Ljava/lang/String;
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "\"{0} ({1})\": \'{\'\n{2}\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 378
    .local v1, "messageFormat":Ljava/text/MessageFormat;
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 379
    .local v2, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    invoke-virtual {v2, p1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "encoded":Ljava/lang/String;
    nop

    .line 383
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 384
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 387
    .local v4, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "extensions"    # [Lorg/openjsse/sun/security/ssl/SSLExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p2, v2

    .line 160
    .local v3, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const-string v5, "Ignore unsupported extension: "

    const-string v6, "ssl,handshake"

    if-eqz v4, :cond_0

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 161
    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;->isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 169
    :cond_0
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    if-eqz v4, :cond_1

    .line 171
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    invoke-virtual {v3, p1, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;->absentOnLoad(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto/16 :goto_1

    .line 172
    :cond_1
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore unavailable extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->onLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    if-nez v4, :cond_3

    .line 181
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    :cond_3
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 189
    .local v4, "m":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    invoke-virtual {v3, p1, v5, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V

    .line 191
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_4

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Consumed extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .end local v3    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v4    # "m":Ljava/nio/ByteBuffer;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 195
    :cond_5
    return-void
.end method

.method consumeOnTrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "extensions"    # [Lorg/openjsse/sun/security/ssl/SSLExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 203
    .local v3, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ssl,handshake"

    if-nez v4, :cond_1

    .line 204
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    invoke-virtual {v3, p1, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;->absentOnTrade(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto/16 :goto_1

    .line 206
    :cond_0
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore unavailable extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 213
    :cond_1
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->onTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    if-nez v4, :cond_2

    .line 214
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore impact of unsupported extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 222
    :cond_2
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    invoke-virtual {v3, p1, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;->consumeOnTrade(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 223
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Populated with extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .end local v3    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 227
    :cond_4
    return-void
.end method

.method get(Lorg/openjsse/sun/security/ssl/SSLExtension;)[B
    .locals 1
    .param p1, "ext"    # Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 151
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method length()I
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    return v0
.end method

.method produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "extensions"    # [Lorg/openjsse/sun/security/ssl/SSLExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 235
    .local v3, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ssl,handshake"

    if-eqz v4, :cond_0

    .line 236
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore, duplicated extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 244
    :cond_0
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->networkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    if-nez v4, :cond_1

    .line 245
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore, no extension producer defined: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 253
    :cond_1
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    invoke-virtual {v3, p1, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v4

    .line 254
    .local v4, "encoded":[B
    if-eqz v4, :cond_2

    .line 255
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    array-length v6, v4

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iput v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    goto :goto_1

    .line 258
    :cond_2
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_3

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore, context unavailable extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .end local v3    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v4    # "encoded":[B
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 265
    :cond_4
    return-void
.end method

.method reproduce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "extensions"    # [Lorg/openjsse/sun/security/ssl/SSLExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p2, v2

    .line 274
    .local v3, "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->networkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    const-string v5, "ssl,handshake"

    if-nez v4, :cond_0

    .line 275
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore, no extension producer defined: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    :cond_0
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    invoke-virtual {v3, p1, v4}, Lorg/openjsse/sun/security/ssl/SSLExtension;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v4

    .line 284
    .local v4, "encoded":[B
    if-eqz v4, :cond_3

    .line 285
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 287
    .local v5, "old":[B
    if-eqz v5, :cond_1

    .line 288
    iget v6, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    array-length v7, v5

    add-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    .line 290
    :cond_1
    iget v6, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    .line 291
    .end local v5    # "old":[B
    goto :goto_1

    .line 292
    :cond_2
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    array-length v6, v4

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iput v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->encodedLength:I

    goto :goto_1

    .line 297
    :cond_3
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_4

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore, context unavailable extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .end local v3    # "extension":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v4    # "encoded":[B
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 304
    :cond_5
    return-void
.end method

.method send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 7
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v0

    .line 320
    .local v0, "extsLen":I
    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 325
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLExtension;->values()[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 326
    .local v4, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 327
    .local v5, "extData":[B
    if-eqz v5, :cond_1

    .line 328
    iget v6, v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->id:I

    invoke-virtual {p1, v6}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 329
    invoke-virtual {p1, v5}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 325
    .end local v4    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v5    # "extData":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 336
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    const-string v0, "<no extension>"

    return-object v0

    .line 339
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    const-string v2, ",\n"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 341
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->logMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 342
    .local v3, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->handshakeMessage:Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;

    .line 343
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 342
    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLExtension;->valueOf(Lorg/openjsse/sun/security/ssl/SSLHandshake;I)Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v4

    .line 344
    .local v4, "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_2
    if-eqz v4, :cond_3

    .line 348
    nop

    .line 349
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLExtension;->toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 351
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString(I[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .end local v3    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    .end local v4    # "ext":Lorg/openjsse/sun/security/ssl/SSLExtension;
    :goto_1
    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 357
    :cond_5
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLExtensions;->extMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 358
    .local v3, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLExtension;[B>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_6
    nop

    .line 362
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLExtension;->toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v3    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SSLExtension;[B>;"
    goto :goto_2

    .line 365
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

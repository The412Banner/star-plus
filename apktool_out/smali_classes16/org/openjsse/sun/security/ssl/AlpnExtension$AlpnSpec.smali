.class final Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;
.super Ljava/lang/Object;
.source "AlpnExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/AlpnExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlpnSpec"
.end annotation


# instance fields
.field final applicationProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const-string v1, ")"

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 100
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 101
    .local v0, "listLen":I
    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 107
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 108
    .local v1, "protocolNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 111
    .local v2, "bytes":[B
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 117
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lorg/openjsse/sun/security/ssl/AlpnExtension;->alpnCharset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 118
    .local v3, "appProtocol":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v2    # "bytes":[B
    .end local v3    # "appProtocol":Ljava/lang/String;
    goto :goto_0

    .line 112
    .restart local v2    # "bytes":[B
    :cond_0
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    const-string v4, "Invalid application_layer_protocol_negotiation extension: empty application protocol name"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    .end local v2    # "bytes":[B
    :cond_1
    nop

    .line 122
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;->applicationProtocols:Ljava/util/List;

    .line 123
    return-void

    .line 102
    .end local v1    # "protocolNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid application_layer_protocol_negotiation: incorrect list length (length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v0    # "listLen":I
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid application_layer_protocol_negotiation: insufficient data (length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/AlpnExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationProtocols"    # [Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    nop

    .line 89
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;->applicationProtocols:Ljava/util/List;

    .line 90
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/AlpnExtension$1;

    .line 84
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;->applicationProtocols:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

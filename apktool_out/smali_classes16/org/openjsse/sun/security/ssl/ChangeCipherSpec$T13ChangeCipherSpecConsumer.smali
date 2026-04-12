.class final Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T13ChangeCipherSpecConsumer;
.super Ljava/lang/Object;
.source "ChangeCipherSpec.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13ChangeCipherSpecConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;

    .line 220
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T13ChangeCipherSpecConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 238
    .local v0, "tc":Lorg/openjsse/sun/security/ssl/TransportContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-ne v1, v2, :cond_1

    .line 245
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Consuming ChangeCipherSpec message"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_0
    return-void

    .line 242
    :cond_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Malformed or unexpected ChangeCipherSpec message"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHKeyShareSpec"
.end annotation


# instance fields
.field final serverShare:Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 465
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 466
    .local v0, "namedGroupId":I
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 468
    .local v1, "keyExchange":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    new-instance v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;-><init>(I[BLorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;->serverShare:Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 474
    return-void

    .line 469
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string v3, "Invalid key_share extension: unknown extra data"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    .end local v0    # "namedGroupId":I
    .end local v1    # "keyExchange":[B
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key_share extension: insufficient data (length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 462
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;)V
    .locals 0
    .param p1, "serverShare"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;->serverShare:Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 453
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 478
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"server_share\": \'{\'\n  \"named group\": {0}\n  \"key_exchange\": \'{\'\n{1}\n  \'}\'\n\'}\',"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 486
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 487
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;->serverShare:Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 488
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$SHKeyShareSpec;->serverShare:Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    .line 490
    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 489
    const-string v4, "    "

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 493
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

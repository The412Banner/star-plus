.class final Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;
.super Ljava/lang/Object;
.source "KeyShareExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyShareExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyShareEntry"
.end annotation


# instance fields
.field final keyExchange:[B

.field final namedGroupId:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "namedGroupId"    # I
    .param p2, "keyExchange"    # [B

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 94
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    .line 95
    return-void
.end method

.method synthetic constructor <init>(I[BLorg/openjsse/sun/security/ssl/KeyShareExtension$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$1;

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;-><init>(I[B)V

    return-void
.end method

.method static synthetic access$1400(Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;)I
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 88
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->getEncodedSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;

    .line 88
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method private getEncoded()[B
    .locals 5

    .line 98
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 101
    .local v0, "buffer":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 103
    .local v1, "m":Ljava/nio/ByteBuffer;
    :try_start_0
    iget v2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 104
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/Record;->putBytes16(Ljava/nio/ByteBuffer;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "ioe":Ljava/io/IOException;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_0

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const-string v3, "Unlikely IOException"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getEncodedSize()I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 122
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\n\'{\'\n  \"named group\": {0}\n  \"key_exchange\": \'{\'\n{1}\n  \'}\'\n\'}\',"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 130
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 131
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget v2, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->namedGroupId:I

    .line 132
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/KeyShareExtension$KeyShareEntry;->keyExchange:[B

    .line 133
    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "    "

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 136
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

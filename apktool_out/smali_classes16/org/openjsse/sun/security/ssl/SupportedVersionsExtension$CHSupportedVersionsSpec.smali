.class final Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;
.super Ljava/lang/Object;
.source "SupportedVersionsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CHSupportedVersionsSpec"
.end annotation


# instance fields
.field final requestedProtocols:[I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 83
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 84
    .local v0, "vbs":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    array-length v1, v0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 94
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 95
    .local v1, "protocols":[I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 96
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-byte v2, v0, v2

    .line 97
    .local v2, "major":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, v0, v4

    .line 98
    .local v4, "minor":B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "j":I
    .local v6, "j":I
    and-int/lit16 v7, v2, 0xff

    shl-int/lit8 v7, v7, 0x8

    and-int/lit16 v8, v4, 0xff

    or-int/2addr v7, v8

    aput v7, v1, v3

    .line 99
    .end local v2    # "major":B
    .end local v4    # "minor":B
    move v2, v5

    move v3, v6

    goto :goto_0

    .line 101
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;->requestedProtocols:[I

    .line 102
    return-void

    .line 90
    .end local v1    # "protocols":[I
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid supported_versions extension: incomplete data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid supported_versions extension: unknown extra data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "vbs":[B
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid supported_versions extension: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>([I)V
    .locals 0
    .param p1, "requestedProtocols"    # [I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;->requestedProtocols:[I

    .line 74
    return-void
.end method

.method synthetic constructor <init>([ILorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;

    .line 69
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;-><init>([I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 106
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"versions\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 109
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;->requestedProtocols:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;->requestedProtocols:[I

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 117
    .local v2, "isFirst":Z
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;->requestedProtocols:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 118
    .local v6, "pv":I
    if-eqz v2, :cond_1

    .line 119
    const/4 v2, 0x0

    goto :goto_1

    .line 121
    :cond_1
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_1
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .end local v6    # "pv":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_2
    nop

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 110
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "isFirst":Z
    .end local v3    # "messageFields":[Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v1, "<no supported version specified>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

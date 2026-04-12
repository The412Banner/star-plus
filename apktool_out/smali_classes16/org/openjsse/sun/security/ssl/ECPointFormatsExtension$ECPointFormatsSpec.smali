.class Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;
.super Ljava/lang/Object;
.source "ECPointFormatsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ECPointFormatsSpec"
.end annotation


# static fields
.field static final DEFAULT:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;


# instance fields
.field final formats:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->id:B

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    invoke-direct {v0, v2}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;-><init>([B)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->DEFAULT:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->formats:[B

    .line 75
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid ec_point_formats extension: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "formats"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->formats:[B

    .line 65
    return-void
.end method

.method static synthetic access$500(Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;

    .line 57
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->hasUncompressedFormat()Z

    move-result v0

    return v0
.end method

.method private hasUncompressedFormat()Z
    .locals 6

    .line 78
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->formats:[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, v0, v3

    .line 79
    .local v4, "format":B
    sget-object v5, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->id:B

    if-ne v4, v5, :cond_0

    .line 80
    const/4 v0, 0x1

    return v0

    .line 78
    .end local v4    # "format":B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 89
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"formats\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 91
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->formats:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->formats:[B

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 99
    .local v2, "isFirst":Z
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->formats:[B

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-byte v6, v3, v5

    .line 100
    .local v6, "pf":B
    if-eqz v2, :cond_1

    .line 101
    const/4 v2, 0x0

    goto :goto_1

    .line 103
    :cond_1
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :goto_1
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormat;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .end local v6    # "pf":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 109
    :cond_2
    nop

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 92
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "isFirst":Z
    .end local v3    # "messageFields":[Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v1, "<no EC point format specified>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

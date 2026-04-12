.class final Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;
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
    name = "SHSupportedVersionsSpec"
.end annotation


# instance fields
.field final selectedVersion:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 259
    .local v0, "major":B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 260
    .local v1, "minor":B
    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v1, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;->selectedVersion:I

    .line 261
    return-void

    .line 254
    .end local v0    # "major":B
    .end local v1    # "minor":B
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid supported_versions: insufficient data"

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

    .line 245
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "selectedVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iget v0, p1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;->selectedVersion:I

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;

    .line 245
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;-><init>(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 265
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"selected version\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 268
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;->selectedVersion:I

    .line 269
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

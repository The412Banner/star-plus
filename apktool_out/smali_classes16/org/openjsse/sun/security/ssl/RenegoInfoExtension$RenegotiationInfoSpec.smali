.class final Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;
.super Ljava/lang/Object;
.source "RenegoInfoExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RenegotiationInfoSpec"
.end annotation


# static fields
.field static final NOMINAL:Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;


# instance fields
.field private final renegotiatedConnection:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    new-instance v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;-><init>([B)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->NOMINAL:Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;

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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 110
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->renegotiatedConnection:[B

    .line 111
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid renegotiation_info extension data: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "renegotiatedConnection"    # [B

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->renegotiatedConnection:[B

    .line 101
    return-void
.end method

.method static synthetic access$800(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;

    .line 91
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->renegotiatedConnection:[B

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"renegotiated connection\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 117
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->renegotiatedConnection:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 118
    const-string v1, "<no renegotiated connection>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 123
    .end local v1    # "messageFields":[Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->renegotiatedConnection:[B

    .line 124
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 126
    .restart local v1    # "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

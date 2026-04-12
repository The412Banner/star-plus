.class final Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;
.super Ljava/lang/Object;
.source "SignatureAlgorithmsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SignatureSchemesSpec"
.end annotation


# instance fields
.field final signatureSchemes:[I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 92
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 93
    .local v0, "algs":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    if-eqz v0, :cond_1

    array-length v2, v0

    if-eqz v2, :cond_1

    array-length v2, v0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 103
    array-length v2, v0

    div-int/2addr v2, v1

    new-array v1, v2, [I

    .line 104
    .local v1, "schemes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 105
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-byte v2, v0, v2

    .line 106
    .local v2, "hash":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, v0, v4

    .line 107
    .local v4, "sign":B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "j":I
    .local v6, "j":I
    and-int/lit16 v7, v2, 0xff

    shl-int/lit8 v7, v7, 0x8

    and-int/lit16 v8, v4, 0xff

    or-int/2addr v7, v8

    aput v7, v1, v3

    .line 108
    .end local v2    # "hash":B
    .end local v4    # "sign":B
    move v2, v5

    move v3, v6

    goto :goto_0

    .line 110
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    .line 111
    return-void

    .line 99
    .end local v1    # "schemes":[I
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid signature_algorithms: incomplete data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid signature_algorithms: unknown extra data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "algs":[B
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid signature_algorithms: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "schemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 79
    .local v2, "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    iget v5, v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    aput v5, v3, v0

    .line 80
    .end local v2    # "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    move v0, v4

    goto :goto_0

    .line 81
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 82
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    .line 84
    :goto_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 115
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"signature schemes\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 126
    .local v2, "isFirst":Z
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 127
    .local v6, "pv":I
    if-eqz v2, :cond_1

    .line 128
    const/4 v2, 0x0

    goto :goto_1

    .line 130
    :cond_1
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_1
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .end local v6    # "pv":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_2
    nop

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 140
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 119
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "isFirst":Z
    .end local v3    # "messageFields":[Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v1, "<no supported signature schemes specified>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

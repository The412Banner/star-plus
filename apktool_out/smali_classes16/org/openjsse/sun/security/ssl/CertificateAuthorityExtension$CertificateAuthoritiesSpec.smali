.class final Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;
.super Ljava/lang/Object;
.source "CertificateAuthorityExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateAuthoritiesSpec"
.end annotation


# instance fields
.field final authorities:[Ljavax/security/auth/x500/X500Principal;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 91
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 92
    .local v0, "caLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "dnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/security/auth/x500/X500Principal;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 99
    .local v2, "dn":[B
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v3, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 100
    .local v3, "ca":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "dn":[B
    .end local v3    # "ca":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/security/auth/x500/X500Principal;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 103
    return-void

    .line 93
    .end local v1    # "dnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/security/auth/x500/X500Principal;>;"
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Invalid certificate_authorities: incorrect data size"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0    # "caLength":I
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid signature_algorithms: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "authorities":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 78
    .local v2, "name":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aput-object v2, v3, v0

    .line 79
    .end local v2    # "name":Ljavax/security/auth/x500/X500Principal;
    move v0, v4

    goto :goto_0

    .line 80
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 81
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 83
    :goto_1
    return-void
.end method


# virtual methods
.method getAuthorities()[Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 111
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"certificate authorities\": \'[\'{0}\']\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 122
    .local v2, "isFirst":Z
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 123
    .local v6, "ca":Ljavax/security/auth/x500/X500Principal;
    if-eqz v2, :cond_1

    .line 124
    const/4 v2, 0x0

    goto :goto_1

    .line 126
    :cond_1
    const-string v7, "]; ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .end local v6    # "ca":Ljavax/security/auth/x500/X500Principal;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    :cond_2
    nop

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 136
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 115
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "isFirst":Z
    .end local v3    # "messageFields":[Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v1, "<no supported certificate authorities specified>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

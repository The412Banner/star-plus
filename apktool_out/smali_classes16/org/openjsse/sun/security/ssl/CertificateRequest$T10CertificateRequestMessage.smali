.class final Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T10CertificateRequestMessage"
.end annotation


# instance fields
.field final authorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field final types:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 173
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 177
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->types:[B

    .line 179
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 180
    .local v0, "listLen":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 185
    if-lez v0, :cond_0

    .line 186
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 187
    :goto_0
    if-lez v0, :cond_1

    .line 189
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 190
    .local v1, "encoded":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 191
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v1    # "encoded":[B
    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 196
    :cond_1
    return-void

    .line 181
    :cond_2
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Incorrect CertificateRequest message:no sufficient data"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 174
    .end local v0    # "listLen":I
    :cond_3
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Incorrect CertificateRequest message: no sufficient data"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Ljava/security/cert/X509Certificate;Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;)V
    .locals 6
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "trustedCerts"    # [Ljava/security/cert/X509Certificate;
    .param p3, "keyExchange"    # Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    .line 154
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 157
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 158
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 159
    .local v3, "x500Principal":Ljavax/security/auth/x500/X500Principal;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "x500Principal":Ljavax/security/auth/x500/X500Principal;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->access$600()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->types:[B

    .line 163
    return-void
.end method


# virtual methods
.method getAuthorities()[Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 204
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v0, "principals":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 206
    .local v2, "encoded":[B
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v3, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 207
    .local v3, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v2    # "encoded":[B
    .end local v3    # "principal":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 210
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/security/auth/x500/X500Principal;

    return-object v1
.end method

.method getKeyTypes()[Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->types:[B

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->access$700([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 215
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 4

    .line 220
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->types:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 221
    .local v0, "len":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 222
    .local v2, "encoded":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 223
    .end local v2    # "encoded":[B
    goto :goto_0

    .line 224
    :cond_0
    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->types:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "listLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 233
    .local v2, "encoded":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 234
    .end local v2    # "encoded":[B
    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 237
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 238
    .restart local v2    # "encoded":[B
    invoke-virtual {p1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 239
    .end local v2    # "encoded":[B
    goto :goto_1

    .line 240
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 244
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"CertificateRequest\": \'{\'\n  \"certificate types\": {0}\n  \"certificate authorities\": {1}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 251
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->types:[B

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .local v1, "typeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->types:[B

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 253
    .local v5, "type":B
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->access$800(B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v5    # "type":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v2, "authorityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 258
    .local v4, "encoded":[B
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v5, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 259
    .local v5, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v4    # "encoded":[B
    .end local v5    # "principal":Ljavax/security/auth/x500/X500Principal;
    goto :goto_1

    .line 261
    :cond_1
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    .line 266
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.class final Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T13CertificateMessage"
.end annotation


# instance fields
.field private final certEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final requestContext:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 835
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, ")"

    if-lt v0, v1, :cond_5

    .line 840
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->requestContext:[B

    .line 842
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    .line 849
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 850
    .local v0, "listLen":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 856
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 857
    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    .line 859
    .local v1, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 860
    .local v3, "certList":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 862
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes24(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 863
    .local v4, "encodedCert":[B
    array-length v5, v4

    if-eqz v5, :cond_1

    .line 868
    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v5, p0, p2, v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 870
    .local v5, "extensions":Lorg/openjsse/sun/security/ssl/SSLExtensions;
    new-instance v6, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    invoke-direct {v6, v4, v5}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;-><init>([BLorg/openjsse/sun/security/ssl/SSLExtensions;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxCertificateChainLength:I

    if-gt v6, v7, :cond_0

    .line 879
    .end local v4    # "encodedCert":[B
    .end local v5    # "extensions":Lorg/openjsse/sun/security/ssl/SSLExtensions;
    goto :goto_0

    .line 872
    .restart local v4    # "encodedCert":[B
    .restart local v5    # "extensions":Lorg/openjsse/sun/security/ssl/SSLExtensions;
    :cond_0
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The certificate chain length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 874
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") exceeds the maximum allowed length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxCertificateChainLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 864
    .end local v5    # "extensions":Lorg/openjsse/sun/security/ssl/SSLExtensions;
    :cond_1
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string v5, "Invalid Certificate message: empty cert_data"

    invoke-direct {v2, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 881
    .end local v4    # "encodedCert":[B
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    .line 882
    return-void

    .line 851
    .end local v1    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v3    # "certList":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    :cond_3
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Certificate message: incorrect list length (length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    .end local v0    # "listLen":I
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Certificate message: insufficient certificate entries data (length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 846
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_5
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Certificate message: insufficient data (length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 838
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[BLjava/util/List;)V
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "requestContext"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/HandshakeContext;",
            "[B",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;",
            ">;)V"
        }
    .end annotation

    .line 821
    .local p3, "certificates":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;>;"
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 823
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->requestContext:[B

    .line 824
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    .line 825
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[B[Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "requestContext"    # [B
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 808
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 810
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->requestContext:[B

    .line 811
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    .line 812
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 813
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 814
    .local v3, "encoded":[B
    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v4, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 815
    .local v4, "extensions":Lorg/openjsse/sun/security/ssl/SSLExtensions;
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    new-instance v6, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    invoke-direct {v6, v3, v4}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;-><init>([BLorg/openjsse/sun/security/ssl/SSLExtensions;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "encoded":[B
    .end local v4    # "extensions":Lorg/openjsse/sun/security/ssl/SSLExtensions;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    :cond_0
    return-void
.end method

.method static synthetic access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;

    .line 801
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 886
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 4

    .line 891
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->requestContext:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 892
    .local v0, "msgLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 893
    .local v2, "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->access$400(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)I

    move-result v3

    add-int/2addr v0, v3

    .line 894
    .end local v2    # "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    goto :goto_0

    .line 896
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

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, "entryListLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 903
    .local v2, "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->access$400(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)I

    move-result v3

    add-int/2addr v0, v3

    .line 904
    .end local v2    # "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    goto :goto_0

    .line 906
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->requestContext:[B

    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 907
    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt24(I)V

    .line 908
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 909
    .restart local v2    # "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    invoke-virtual {p1, v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes24([B)V

    .line 911
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->access$500(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 912
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    goto :goto_2

    .line 914
    :cond_1
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->access$500(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 916
    .end local v2    # "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    :goto_2
    goto :goto_1

    .line 917
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 921
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"Certificate\": \'{\'\n  \"certificate_request_context\": \"{0}\",\n  \"certificate_list\": [{1}\n]\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 928
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 929
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->certEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 930
    .local v3, "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .end local v3    # "entry":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    goto :goto_0

    .line 933
    :cond_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->requestContext:[B

    .line 934
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 935
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 938
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

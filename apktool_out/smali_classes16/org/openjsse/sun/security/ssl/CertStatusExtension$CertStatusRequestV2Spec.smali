.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;
.super Ljava/lang/Object;
.source "CertStatusExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertStatusRequestV2Spec"
.end annotation


# static fields
.field static final DEFAULT:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;


# instance fields
.field final certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 769
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    const/4 v2, 0x0

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->EMPTY_OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;-><init>([Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->DEFAULT:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 783
    new-array v0, v1, [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 784
    return-void

    .line 787
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v2, 0x5

    const-string v3, "Invalid status_request_v2 extension: insufficient data"

    if-lt v0, v2, :cond_9

    .line 794
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 795
    .local v0, "listLen":I
    const-string v2, ")"

    if-lez v0, :cond_8

    .line 801
    move v4, v0

    .line 802
    .local v4, "remaining":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v5, "statusRequests":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;>;"
    :goto_0
    if-lez v4, :cond_7

    .line 804
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-byte v6, v6

    .line 805
    .local v6, "statusType":B
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 807
    .local v7, "requestLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lt v8, v7, :cond_6

    .line 814
    new-array v8, v7, [B

    .line 815
    .local v8, "encoded":[B
    array-length v9, v8

    if-eqz v9, :cond_1

    .line 816
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 818
    :cond_1
    add-int/lit8 v4, v4, -0x3

    .line 819
    sub-int/2addr v4, v7

    .line 821
    sget-object v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v9, v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    if-eq v6, v9, :cond_4

    sget-object v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v9, v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    if-ne v6, v9, :cond_2

    goto :goto_1

    .line 833
    :cond_2
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_3

    const-string v9, "ssl,handshake"

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 834
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown certificate status request (status type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    :cond_3
    new-instance v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    invoke-direct {v9, v6, v8}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;-><init>(B[B)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 823
    :cond_4
    :goto_1
    array-length v9, v8

    const/4 v10, 0x4

    if-lt v9, v10, :cond_5

    .line 830
    new-instance v9, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v8, v10}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;-><init>(B[BLorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v6    # "statusType":B
    .end local v7    # "requestLen":I
    .end local v8    # "encoded":[B
    :goto_2
    goto :goto_0

    .line 826
    .restart local v6    # "statusType":B
    .restart local v7    # "requestLen":I
    .restart local v8    # "encoded":[B
    :cond_5
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    .end local v8    # "encoded":[B
    :cond_6
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid status_request_v2 extension: insufficient data (request_length="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", remining="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 811
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    .end local v6    # "statusType":B
    .end local v7    # "requestLen":I
    :cond_7
    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 844
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 845
    return-void

    .line 796
    .end local v4    # "remaining":I
    .end local v5    # "statusRequests":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;>;"
    :cond_8
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "certificate_status_req_list length must be positive (received length: "

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

    .line 790
    .end local v0    # "listLen":I
    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v0, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>([Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;)V
    .locals 0
    .param p1, "certStatusRequests"    # [Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 777
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .line 849
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 852
    :cond_0
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"cert status request\": \'{\'\n{0}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 855
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 856
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 857
    .local v2, "isFirst":Z
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->certStatusRequests:[Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 858
    .local v6, "csr":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    if-eqz v2, :cond_1

    .line 859
    const/4 v2, 0x0

    goto :goto_1

    .line 861
    :cond_1
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :goto_1
    nop

    .line 864
    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 866
    .local v7, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .end local v6    # "csr":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
    .end local v7    # "messageFields":[Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 869
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 850
    .end local v0    # "messageFormat":Ljava/text/MessageFormat;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "isFirst":Z
    :cond_3
    :goto_2
    const-string v0, "<empty>"

    return-object v0
.end method

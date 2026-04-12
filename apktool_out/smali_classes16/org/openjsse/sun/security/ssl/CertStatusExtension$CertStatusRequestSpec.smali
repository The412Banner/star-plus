.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;
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
    name = "CertStatusRequestSpec"
.end annotation


# static fields
.field static final DEFAULT:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;


# instance fields
.field final statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->EMPTY_OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;-><init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->DEFAULT:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 129
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    .line 137
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-byte v0, v0

    .line 138
    .local v0, "statusType":B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 139
    .local v2, "encoded":[B
    array-length v3, v2

    if-eqz v3, :cond_1

    .line 140
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 142
    :cond_1
    sget-object v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    if-ne v0, v3, :cond_2

    .line 143
    new-instance v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    invoke-direct {v3, v0, v2, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;-><init>(B[BLorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    goto :goto_0

    .line 145
    :cond_2
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_3

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown certificate status request (status type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_3
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    invoke-direct {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;-><init>(B[B)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 153
    :goto_0
    return-void

    .line 133
    .end local v0    # "statusType":B
    .end local v2    # "encoded":[B
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Invalid status_request extension: insufficient data"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

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

    .line 114
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;)V
    .locals 0
    .param p1, "statusRequest"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 122
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    if-nez v0, :cond_0

    const-string v0, "<empty>"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->statusRequest:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;

    .line 158
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0
.end method

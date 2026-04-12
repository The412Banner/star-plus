.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;
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
    name = "CertStatusResponseSpec"
.end annotation


# instance fields
.field final statusResponse:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 188
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-byte v0, v0

    .line 189
    .local v0, "type":B
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/Record;->getBytes24(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 192
    .local v1, "respData":[B
    sget-object v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    if-ne v0, v2, :cond_0

    .line 193
    new-instance v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;-><init>(B[BLorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;->statusResponse:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    goto :goto_0

    .line 195
    :cond_0
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown certificate status response (status type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_1
    new-instance v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    invoke-direct {v2, v0, v1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;-><init>(B[B)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;->statusResponse:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    .line 203
    :goto_0
    return-void

    .line 183
    .end local v0    # "type":B
    .end local v1    # "respData":[B
    :cond_2
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

    .line 174
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;)V
    .locals 0
    .param p1, "resp"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;->statusResponse:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    .line 179
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;->statusResponse:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    if-nez v0, :cond_0

    const-string v0, "<empty>"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;->statusResponse:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    .line 208
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0
.end method

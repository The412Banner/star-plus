.class Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;
.super Ljava/lang/Object;
.source "CertStatusExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CertStatusResponse"
.end annotation


# instance fields
.field final encodedResponse:[B

.field final statusType:B


# direct methods
.method protected constructor <init>(B[B)V
    .locals 0
    .param p1, "statusType"    # B
    .param p2, "respDer"    # [B

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-byte p1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->statusType:B

    .line 462
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->encodedResponse:[B

    .line 463
    return-void
.end method


# virtual methods
.method toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->encodedResponse:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 469
    .local v0, "outData":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 470
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget-byte v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->statusType:B

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/Record;->putInt8(Ljava/nio/ByteBuffer;I)V

    .line 471
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->encodedResponse:[B

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/Record;->putBytes24(Ljava/nio/ByteBuffer;[B)V

    .line 472
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 477
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"certificate status response type\": {0}\n\"encoded certificate status\": \'{\'\n{1}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 484
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 485
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->encodedResponse:[B

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "encoded":Ljava/lang/String;
    iget-byte v3, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->statusType:B

    .line 488
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->nameOf(B)Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 492
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

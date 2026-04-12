.class Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
.super Ljava/lang/Object;
.source "CertStatusExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CertStatusRequest"
.end annotation


# instance fields
.field final encodedRequest:[B

.field final statusType:B


# direct methods
.method protected constructor <init>(B[B)V
    .locals 0
    .param p1, "statusType"    # B
    .param p2, "encodedRequest"    # [B

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-byte p1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->statusType:B

    .line 280
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->encodedRequest:[B

    .line 281
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 285
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"certificate status type\": {0}\n\"encoded certificate status\": \'{\'\n{1}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 292
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 293
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->encodedRequest:[B

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "encoded":Ljava/lang/String;
    iget-byte v3, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;->statusType:B

    .line 296
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->nameOf(B)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 300
    .local v3, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

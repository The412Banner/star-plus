.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
.super Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;
.source "CertStatusExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OCSPStatusRequest"
.end annotation


# static fields
.field static final EMPTY_OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

.field static final EMPTY_OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;


# instance fields
.field private final extListLen:I

.field final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field final responderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/ResponderId;",
            ">;"
        }
    .end annotation
.end field

.field private final ridListLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    const/4 v1, 0x0

    .line 330
    .local v1, "multiReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    :try_start_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    const/4 v4, 0x4

    new-array v5, v4, [B

    fill-array-data v5, :array_0

    invoke-direct {v2, v3, v5}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;-><init>(B[B)V

    move-object v0, v2

    .line 333
    new-instance v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    invoke-direct {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;-><init>(B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v2

    .line 340
    :goto_0
    sput-object v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->EMPTY_OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 341
    sput-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->EMPTY_OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;

    .line 342
    .end local v0    # "ocspReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    .end local v1    # "multiReq":Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(B[B)V
    .locals 11
    .param p1, "statusType"    # B
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequest;-><init>(B[B)V

    .line 348
    const-string v0, "Invalid OCSP status request: insufficient data"

    if-eqz p2, :cond_5

    array-length v1, p2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, "rids":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/ResponderId;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v2, "exts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 359
    .local v3, "m":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    iput v4, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->ridListLen:I

    .line 360
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->ridListLen:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    .line 365
    iget v0, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->ridListLen:I

    .line 366
    .local v0, "ridListBytesRemaining":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 367
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 369
    .local v4, "ridBytes":[B
    :try_start_0
    new-instance v5, Lsun/security/provider/certpath/ResponderId;

    invoke-direct {v5, v4}, Lsun/security/provider/certpath/ResponderId;-><init>([B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    nop

    .line 374
    array-length v5, v4

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 375
    .end local v4    # "ridBytes":[B
    goto :goto_0

    .line 370
    .restart local v4    # "ridBytes":[B
    :catch_0
    move-exception v5

    .line 371
    .local v5, "ioe":Ljava/io/IOException;
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    const-string v7, "Invalid OCSP status request: invalid responder ID"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 377
    .end local v4    # "ridBytes":[B
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_0
    if-nez v0, :cond_3

    .line 382
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 383
    .local v4, "extListBytes":[B
    array-length v5, v4

    iput v5, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->extListLen:I

    .line 384
    iget v5, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->extListLen:I

    if-lez v5, :cond_2

    .line 386
    :try_start_1
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-direct {v5, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 387
    .local v5, "dis":Lsun/security/util/DerInputStream;
    array-length v6, v4

    .line 388
    invoke-virtual {v5, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 389
    .local v6, "extSeqContents":[Lsun/security/util/DerValue;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 390
    .local v9, "extDerVal":Lsun/security/util/DerValue;
    new-instance v10, Lsun/security/x509/Extension;

    invoke-direct {v10, v9}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    nop

    .end local v9    # "extDerVal":Lsun/security/util/DerValue;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 395
    .end local v5    # "dis":Lsun/security/util/DerInputStream;
    .end local v6    # "extSeqContents":[Lsun/security/util/DerValue;
    :cond_1
    goto :goto_2

    .line 392
    :catch_1
    move-exception v5

    .line 393
    .local v5, "ioe":Ljava/io/IOException;
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    const-string v7, "Invalid OCSP status request: invalid extension"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 398
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_2
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->responderIds:Ljava/util/List;

    .line 399
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->extensions:Ljava/util/List;

    .line 400
    return-void

    .line 378
    .end local v4    # "extListBytes":[B
    :cond_3
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    const-string v5, "Invalid OCSP status request: incomplete data"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    .end local v0    # "ridListBytesRemaining":I
    :cond_4
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v4, v0}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    .end local v1    # "rids":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/ResponderId;>;"
    .end local v2    # "exts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .end local v3    # "m":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(B[BLorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;-><init>(B[B)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10

    .line 404
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"certificate status type\": {0}\n\"OCSP status request\": \'{\'\n{1}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 411
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "\"responder_id\": {0}\n\"request extensions\": \'{\'\n{1}\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 418
    .local v1, "requestFormat":Ljava/text/MessageFormat;
    const-string v2, "<empty>"

    .line 419
    .local v2, "ridStr":Ljava/lang/String;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->responderIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->responderIds:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    :cond_0
    const-string v3, "<empty>"

    .line 424
    .local v3, "extsStr":Ljava/lang/String;
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 426
    .local v4, "extBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 427
    .local v5, "isFirst":Z
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->extensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Extension;

    .line 428
    .local v7, "ext":Ljava/security/cert/Extension;
    if-eqz v5, :cond_1

    .line 429
    const/4 v5, 0x0

    goto :goto_1

    .line 431
    :cond_1
    const-string v8, ",\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :goto_1
    const-string v8, "{\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 434
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 435
    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .end local v7    # "ext":Ljava/security/cert/Extension;
    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    .end local v4    # "extBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "isFirst":Z
    :cond_3
    nop

    .line 443
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 445
    .local v4, "requestFields":[Ljava/lang/Object;
    invoke-virtual {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, "ocspStatusRequest":Ljava/lang/String;
    iget-byte v6, p0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusRequest;->statusType:B

    .line 448
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->nameOf(B)Ljava/lang/String;

    move-result-object v6

    .line 449
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 452
    .local v6, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

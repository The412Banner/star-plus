.class Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;
.super Ljava/lang/Object;
.source "SSLLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSLSimpleFormatter"
.end annotation


# static fields
.field private static final basicCertFormat:Ljava/text/MessageFormat;

.field private static final dateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final extendedCertFormart:Ljava/text/MessageFormat;

.field private static final keyObjectFormat:Ljava/text/MessageFormat;

.field private static final messageCompactFormatNoParas:Ljava/text/MessageFormat;

.field private static final messageCompactFormatWithParas:Ljava/text/MessageFormat;

.field private static final messageFormatNoParas:Ljava/text/MessageFormat;

.field private static final messageFormatWithParas:Ljava/text/MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 362
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter$1;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter$1;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->dateFormat:Ljava/lang/ThreadLocal;

    .line 370
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"version\"            : \"v{0}\",\n\"serial number\"      : \"{1}\",\n\"signature algorithm\": \"{2}\",\n\"issuer\"             : \"{3}\",\n\"not before\"         : \"{4}\",\n\"not  after\"         : \"{5}\",\n\"subject\"            : \"{6}\",\n\"subject public key\" : \"{7}\"\n"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->basicCertFormat:Ljava/text/MessageFormat;

    .line 381
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"version\"            : \"v{0}\",\n\"serial number\"      : \"{1}\",\n\"signature algorithm\": \"{2}\",\n\"issuer\"             : \"{3}\",\n\"not before\"         : \"{4}\",\n\"not  after\"         : \"{5}\",\n\"subject\"            : \"{6}\",\n\"subject public key\" : \"{7}\",\n\"extensions\"         : [\n{8}\n]\n"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->extendedCertFormart:Ljava/text/MessageFormat;

    .line 405
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\'{\'\n  \"logger\"      : \"{0}\",\n  \"level\"       : \"{1}\",\n  \"thread id\"   : \"{2}\",\n  \"thread name\" : \"{3}\",\n  \"time\"        : \"{4}\",\n  \"caller\"      : \"{5}\",\n  \"message\"     : \"{6}\"\n\'}\'\n"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageFormatNoParas:Ljava/text/MessageFormat;

    .line 418
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{0}|{1}|{2}|{3}|{4}|{5}|{6}\n"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageCompactFormatNoParas:Ljava/text/MessageFormat;

    .line 423
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\'{\'\n  \"logger\"      : \"{0}\",\n  \"level\"       : \"{1}\",\n  \"thread id\"   : \"{2}\",\n  \"thread name\" : \"{3}\",\n  \"time\"        : \"{4}\",\n  \"caller\"      : \"{5}\",\n  \"message\"     : \"{6}\",\n  \"specifics\"   : [\n{7}\n  ]\n\'}\'\n"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageFormatWithParas:Ljava/text/MessageFormat;

    .line 439
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{0}|{1}|{2}|{3}|{4}|{5}|{6} (\n{7}\n)\n"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageCompactFormatWithParas:Ljava/text/MessageFormat;

    .line 446
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"{0}\" : \'{\'\n{1}\'}\'\n"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->keyObjectFormat:Ljava/text/MessageFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 361
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatParameters([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;
    .param p1, "x1"    # Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .line 361
    invoke-static {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->format(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs format(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "logger"    # Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;
    .param p1, "level"    # Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;

    .line 459
    if-eqz p3, :cond_3

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_1

    .line 477
    :cond_0
    nop

    .line 478
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->access$200(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->getName()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 481
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->dateFormat:Ljava/lang/ThreadLocal;

    .line 482
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatCaller()Ljava/lang/String;

    move-result-object v6

    .line 485
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->access$300(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatParameters([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 487
    :cond_1
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatParameters([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_0
    move-object v7, p2

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 490
    .local v0, "messageFields":[Ljava/lang/Object;
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->access$300(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageCompactFormatWithParas:Ljava/text/MessageFormat;

    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 493
    :cond_2
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageFormatWithParas:Ljava/text/MessageFormat;

    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 460
    .end local v0    # "messageFields":[Ljava/lang/Object;
    :cond_3
    :goto_1
    nop

    .line 461
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->access$200(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->getName()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->dateFormat:Ljava/lang/ThreadLocal;

    .line 465
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 466
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatCaller()Ljava/lang/String;

    move-result-object v7

    move-object v8, p2

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 470
    .restart local v0    # "messageFields":[Ljava/lang/Object;
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->access$300(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageCompactFormatNoParas:Ljava/text/MessageFormat;

    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 473
    :cond_4
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->messageFormatNoParas:Ljava/text/MessageFormat;

    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatByteArrayInputStream(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # Ljava/io/ByteArrayInputStream;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 638
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    .local v1, "bytesOut":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 640
    .local v2, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    invoke-virtual {v2, p0, v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 642
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    nop

    .end local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 645
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 638
    .restart local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "bytes":Ljava/io/ByteArrayInputStream;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 643
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "bytes":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p0    # "bytes":Ljava/io/ByteArrayInputStream;
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local p0    # "bytes":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v1

    .line 647
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 652
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .local v1, "bytesOut":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 654
    .local v2, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 655
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    nop

    .end local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 658
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 652
    .restart local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 656
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local p0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 660
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatCaller()Ljava/lang/String;
    .locals 5

    .line 499
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 500
    .local v0, "stElements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 501
    aget-object v2, v0, v1

    .line 502
    .local v2, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/openjsse/sun/security/ssl/SSLLogger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 503
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.System"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 500
    .end local v2    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_1
    const-string v1, "unknown caller"

    return-object v1
.end method

.method private static formatCertificate(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 17
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .line 568
    move-object/from16 v1, p0

    instance-of v0, v1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 569
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    .line 574
    .local v3, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 575
    invoke-static {v0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    .line 576
    .local v0, "x509":Lsun/security/x509/X509CertImpl;
    const-string v4, "x509.info"

    .line 577
    invoke-virtual {v0, v4}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X509CertInfo;

    .line 579
    .local v4, "certInfo":Lsun/security/x509/X509CertInfo;
    const-string v5, "extensions"

    .line 580
    invoke-virtual {v4, v5}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/CertificateExtensions;

    .line 581
    .local v5, "certExts":Lsun/security/x509/CertificateExtensions;
    if-nez v5, :cond_1

    .line 582
    nop

    .line 583
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 585
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 584
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 586
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v8

    .line 587
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->dateFormat:Ljava/lang/ThreadLocal;

    .line 588
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->dateFormat:Ljava/lang/ThreadLocal;

    .line 589
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 590
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v12

    .line 591
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v6 .. v13}, [Ljava/lang/Object;

    move-result-object v2

    .line 593
    .local v2, "certFields":[Ljava/lang/Object;
    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->basicCertFormat:Ljava/text/MessageFormat;

    .line 594
    invoke-virtual {v6, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 593
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    nop

    .end local v2    # "certFields":[Ljava/lang/Object;
    goto/16 :goto_2

    .line 596
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v6

    .line 597
    .local v2, "extBuilder":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .line 598
    .local v6, "isFirst":Z
    invoke-virtual {v5}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Extension;

    .line 599
    .local v8, "certExt":Ljava/security/cert/Extension;
    if-eqz v6, :cond_2

    .line 600
    const/4 v6, 0x0

    goto :goto_1

    .line 602
    :cond_2
    const-string v9, ",\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 605
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 604
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    nop

    .end local v8    # "certExt":Ljava/security/cert/Extension;
    goto :goto_0

    .line 607
    :cond_3
    nop

    .line 608
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 610
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 609
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 611
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v10

    .line 612
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->dateFormat:Ljava/lang/ThreadLocal;

    .line 613
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->dateFormat:Ljava/lang/ThreadLocal;

    .line 614
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 615
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v14

    .line 616
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v8 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    .line 619
    .local v7, "certFields":[Ljava/lang/Object;
    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->extendedCertFormart:Ljava/text/MessageFormat;

    .line 620
    invoke-virtual {v8, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 619
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v0    # "x509":Lsun/security/x509/X509CertImpl;
    .end local v2    # "extBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "certInfo":Lsun/security/x509/X509CertInfo;
    .end local v5    # "certExts":Lsun/security/x509/CertificateExtensions;
    .end local v6    # "isFirst":Z
    .end local v7    # "certFields":[Ljava/lang/Object;
    :goto_2
    goto :goto_3

    .line 622
    :catch_0
    move-exception v0

    .line 626
    :goto_3
    nop

    .line 628
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "certificate"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 631
    .local v0, "fields":[Ljava/lang/Object;
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->keyObjectFormat:Ljava/text/MessageFormat;

    invoke-virtual {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static formatMapEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 664
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 665
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 668
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    const-string v3, "\": \""

    const-string v4, "\""

    if-eqz v2, :cond_0

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "formatted":Ljava/lang/String;
    goto/16 :goto_1

    .line 671
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_0
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 677
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    .line 678
    .local v3, "strings":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": [\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 680
    .local v7, "string":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v3, v8

    if-eq v7, v8, :cond_1

    .line 682
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .end local v7    # "string":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 686
    :cond_2
    const-string v4, "      ]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .end local v3    # "strings":[Ljava/lang/String;
    .local v2, "formatted":Ljava/lang/String;
    goto/16 :goto_1

    .end local v2    # "formatted":Ljava/lang/String;
    :cond_3
    instance-of v2, v1, [B

    if-eqz v2, :cond_4

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, [B

    check-cast v3, [B

    .line 691
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formatted":Ljava/lang/String;
    goto :goto_1

    .line 692
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_4
    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_5

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Byte;

    .line 694
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formatted":Ljava/lang/String;
    goto :goto_1

    .line 696
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 697
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 700
    .restart local v2    # "formatted":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 704
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs formatParameters([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "parameters"    # [Ljava/lang/Object;

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 512
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 513
    .local v1, "isFirst":Z
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, p0, v3

    .line 514
    .local v4, "parameter":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 515
    const/4 v1, 0x0

    goto :goto_1

    .line 517
    :cond_0
    const-string v5, ",\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :goto_1
    instance-of v5, v4, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 521
    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 522
    :cond_1
    instance-of v5, v4, Ljava/security/cert/Certificate;

    if-eqz v5, :cond_2

    .line 523
    move-object v5, v4

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatCertificate(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 524
    :cond_2
    instance-of v5, v4, Ljava/io/ByteArrayInputStream;

    if-eqz v5, :cond_3

    .line 525
    move-object v5, v4

    check-cast v5, Ljava/io/ByteArrayInputStream;

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatByteArrayInputStream(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 527
    :cond_3
    instance-of v5, v4, Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_4

    .line 528
    move-object v5, v4

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 529
    :cond_4
    instance-of v5, v4, [B

    if-eqz v5, :cond_5

    .line 530
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v6, v4

    check-cast v6, [B

    check-cast v6, [B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatByteArrayInputStream(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 532
    :cond_5
    instance-of v5, v4, Ljava/util/Map$Entry;

    if-eqz v5, :cond_6

    .line 534
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .line 536
    .local v5, "mapParameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatMapEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .end local v5    # "mapParameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_2

    .line 538
    :cond_6
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .end local v4    # "parameter":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static formatThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 550
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 551
    .local v1, "bytesOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 552
    .local v2, "out":Ljava/io/PrintStream;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 553
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 555
    .end local v2    # "out":Ljava/io/PrintStream;
    nop

    .line 557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "throwable"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 560
    .local v2, "fields":[Ljava/lang/Object;
    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->keyObjectFormat:Ljava/text/MessageFormat;

    invoke-virtual {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 551
    .local v2, "out":Ljava/io/PrintStream;
    :catchall_0
    move-exception v3

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/PrintStream;
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 554
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "bytesOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
.end method

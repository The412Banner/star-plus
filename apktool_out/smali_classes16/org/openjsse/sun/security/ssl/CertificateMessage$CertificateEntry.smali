.class final Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
.super Ljava/lang/Object;
.source "CertificateMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateEntry"
.end annotation


# instance fields
.field final encoded:[B

.field private final extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;


# direct methods
.method constructor <init>([BLorg/openjsse/sun/security/ssl/SSLExtensions;)V
    .locals 0
    .param p1, "encoded"    # [B
    .param p2, "extensions"    # Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    .line 757
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 758
    return-void
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)I
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 751
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->getEncodedSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)Lorg/openjsse/sun/security/ssl/SSLExtensions;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 751
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    return-object v0
.end method

.method private getEncodedSize()I
    .locals 2

    .line 761
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v0

    .line 762
    .local v0, "extLen":I
    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x2

    .line 765
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 770
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\n\'{\'\n{0}\n  \"extensions\": \'{\'\n{1}\n  \'}\'\n\'}\',"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 781
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 782
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 783
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 787
    .local v1, "x509Certs":Ljava/lang/Object;
    goto :goto_0

    .line 784
    .end local v1    # "x509Certs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 786
    .local v1, "ce":Ljava/security/cert/CertificateException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    move-object v1, v2

    .line 789
    .local v1, "x509Certs":Ljava/lang/Object;
    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 790
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 791
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "    "

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 794
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

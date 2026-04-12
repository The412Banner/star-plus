.class public Lorg/bouncycastle/its/asn1/SspRange;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final bitmapSspRange:Lorg/bouncycastle/its/asn1/BitmapSspRange;

.field private final isAll:Z

.field private final opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->isAll:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lorg/bouncycastle/its/asn1/BitmapSspRange;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/its/asn1/BitmapSspRange;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->isAll:Z

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lorg/bouncycastle/its/asn1/BitmapSspRange;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/SspRange;->opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/its/asn1/SequenceOfOctetString;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->isAll:Z

    invoke-virtual {p1}, Lorg/bouncycastle/its/asn1/SequenceOfOctetString;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/SspRange;->opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    :goto_0
    iput-object v2, p0, Lorg/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lorg/bouncycastle/its/asn1/BitmapSspRange;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/its/asn1/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/its/asn1/BitmapSspRange;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/BitmapSspRange;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/SspRange;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/its/asn1/SspRange;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/its/asn1/SspRange;

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz v0, :cond_2

    new-instance p0, Lorg/bouncycastle/its/asn1/SspRange;

    invoke-direct {p0}, Lorg/bouncycastle/its/asn1/SspRange;-><init>()V

    return-object p0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/its/asn1/SspRange;

    invoke-static {p0}, Lorg/bouncycastle/its/asn1/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/asn1/SspRange;-><init>(Lorg/bouncycastle/its/asn1/SequenceOfOctetString;)V

    return-object v0

    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/SspRange;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBitmapSspRange()Lorg/bouncycastle/its/asn1/BitmapSspRange;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lorg/bouncycastle/its/asn1/BitmapSspRange;

    return-object v0
.end method

.method public getOpaque()Lorg/bouncycastle/its/asn1/SequenceOfOctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    return-object v0
.end method

.method public isAll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->isAll:Z

    return v0
.end method

.method public maybeOpaque()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->isAll:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lorg/bouncycastle/its/asn1/BitmapSspRange;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lorg/bouncycastle/its/asn1/BitmapSspRange;

    invoke-virtual {v0}, Lorg/bouncycastle/its/asn1/BitmapSspRange;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/its/asn1/SspRange;->opaque:Lorg/bouncycastle/its/asn1/SequenceOfOctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/its/asn1/SequenceOfOctetString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

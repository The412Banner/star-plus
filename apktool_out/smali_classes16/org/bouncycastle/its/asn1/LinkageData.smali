.class public Lorg/bouncycastle/its/asn1/LinkageData;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final groupLinkageValue:Lorg/bouncycastle/its/asn1/GroupLinkageValue;

.field private final iCert:Lorg/bouncycastle/its/asn1/IValue;

.field private final linkageValue:Lorg/bouncycastle/its/asn1/LinkageValue;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence must be size 2 or 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/its/asn1/IValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/IValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/LinkageData;->iCert:Lorg/bouncycastle/its/asn1/IValue;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/its/asn1/LinkageValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/LinkageValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/LinkageData;->linkageValue:Lorg/bouncycastle/its/asn1/LinkageValue;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/its/asn1/GroupLinkageValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/GroupLinkageValue;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/LinkageData;->groupLinkageValue:Lorg/bouncycastle/its/asn1/GroupLinkageValue;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/LinkageData;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/its/asn1/LinkageData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/its/asn1/LinkageData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/its/asn1/LinkageData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/asn1/LinkageData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

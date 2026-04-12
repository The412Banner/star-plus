.class public Lorg/bouncycastle/asn1/cmc/CMCFailInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final authDataFail:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final badAlg:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final badCertId:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final badIdentity:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final badMessageCheck:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final badRequest:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final badTime:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final internalCAError:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final mustArchiveKeys:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final noKeyReuse:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final popFailed:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field private static range:Ljava/util/Map;

.field public static final tryLater:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field public static final unsupportedExt:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;


# instance fields
.field private final value:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badAlg:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badMessageCheck:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badRequest:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badTime:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->unsupportedExt:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x6

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->mustArchiveKeys:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x7

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badIdentity:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x9

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popFailed:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xa

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->noKeyReuse:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xb

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->internalCAError:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xc

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->tryLater:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xd

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->authDataFail:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badAlg:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badAlg:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badMessageCheck:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badMessageCheck:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badRequest:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badRequest:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badTime:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badTime:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->unsupportedExt:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->unsupportedExt:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->mustArchiveKeys:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->mustArchiveKeys:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badIdentity:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badIdentity:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popFailed:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popFailed:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->noKeyReuse:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->noKeyReuse:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->internalCAError:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->internalCAError:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->tryLater:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->tryLater:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->authDataFail:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->authDataFail:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCFailInfo;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

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

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

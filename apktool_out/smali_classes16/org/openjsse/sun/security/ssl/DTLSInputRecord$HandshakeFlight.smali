.class final Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;
.super Ljava/lang/Object;
.source "DTLSInputRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandshakeFlight"
.end annotation


# static fields
.field static final HF_UNKNOWN:B


# instance fields
.field flightEpoch:I

.field handshakeType:B

.field holesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field maxMessageSeq:I

.field maxRecordEpoch:I

.field maxRecordSeq:J

.field minMessageSeq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 535
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    sput-byte v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->HF_UNKNOWN:B

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    sget-byte v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->HF_UNKNOWN:B

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    .line 550
    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    .line 552
    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    .line 553
    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    .line 554
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    .line 556
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    .line 557
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 567
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;-><init>()V

    .line 569
    .local v0, "hf":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;
    iget-byte v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    .line 570
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->flightEpoch:I

    .line 571
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    .line 573
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxMessageSeq:I

    .line 574
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordEpoch:I

    .line 575
    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    iput-wide v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->maxRecordSeq:J

    .line 577
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->holesMap:Ljava/util/HashMap;

    .line 579
    return-object v0
.end method

.method isRetransmitOf(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;)Z
    .locals 2
    .param p1, "hs"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;

    .line 560
    if-eqz p1, :cond_0

    iget-byte v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    iget-byte v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->handshakeType:B

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;->minMessageSeq:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

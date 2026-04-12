.class public Ljp/kshoji/javax/sound/midi/Sequence;
.super Ljava/lang/Object;
.source "Sequence.java"


# static fields
.field public static final PPQ:F = 0.0f

.field public static final SMPTE_24:F = 24.0f

.field public static final SMPTE_25:F = 25.0f

.field public static final SMPTE_30:F = 30.0f

.field public static final SMPTE_30DROP:F = 29.97f

.field private static final SUPPORTING_DIVISION_TYPES:[F


# instance fields
.field protected divisionType:F

.field protected resolution:I

.field protected tracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljp/kshoji/javax/sound/midi/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ljp/kshoji/javax/sound/midi/Sequence;->SUPPORTING_DIVISION_TYPES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41c00000    # 24.0f
        0x41c80000    # 25.0f
        0x41f00000    # 30.0f
        0x41efc28f    # 29.97f
    .end array-data
.end method

.method public constructor <init>(FI)V
    .locals 3
    .param p1, "divisionType"    # F
    .param p2, "resolution"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljp/kshoji/javax/sound/midi/Sequence;->isSupportingDivisionType(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput p1, p0, Ljp/kshoji/javax/sound/midi/Sequence;->divisionType:F

    .line 57
    iput p2, p0, Ljp/kshoji/javax/sound/midi/Sequence;->resolution:I

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    .line 59
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported division type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FII)V
    .locals 3
    .param p1, "divisionType"    # F
    .param p2, "resolution"    # I
    .param p3, "numberOfTracks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljp/kshoji/javax/sound/midi/Sequence;-><init>(FI)V

    .line 76
    if-lez p3, :cond_0

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 78
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    new-instance v2, Ljp/kshoji/javax/sound/midi/Track;

    invoke-direct {v2}, Ljp/kshoji/javax/sound/midi/Track;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static isSupportingDivisionType(F)Z
    .locals 6
    .param p0, "divisionType"    # F

    .line 32
    sget-object v0, Ljp/kshoji/javax/sound/midi/Sequence;->SUPPORTING_DIVISION_TYPES:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 33
    .local v4, "supportingDivisionType":F
    cmpl-float v5, p0, v4

    if-nez v5, :cond_0

    .line 34
    const/4 v0, 0x1

    return v0

    .line 32
    .end local v4    # "supportingDivisionType":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_1
    return v2
.end method


# virtual methods
.method public createTrack()Ljp/kshoji/javax/sound/midi/Track;
    .locals 2

    .line 93
    new-instance v0, Ljp/kshoji/javax/sound/midi/Track;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/Track;-><init>()V

    .line 94
    .local v0, "track":Ljp/kshoji/javax/sound/midi/Track;
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    return-object v0
.end method

.method public deleteTrack(Ljp/kshoji/javax/sound/midi/Track;)Z
    .locals 1
    .param p1, "track"    # Ljp/kshoji/javax/sound/midi/Track;

    .line 105
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDivisionType()F
    .locals 1

    .line 114
    iget v0, p0, Ljp/kshoji/javax/sound/midi/Sequence;->divisionType:F

    return v0
.end method

.method public getMicrosecondLength()J
    .locals 3

    .line 123
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/Sequence;->getTickLength()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    iget v1, p0, Ljp/kshoji/javax/sound/midi/Sequence;->divisionType:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    iget v1, p0, Ljp/kshoji/javax/sound/midi/Sequence;->divisionType:F

    :goto_0
    iget v2, p0, Ljp/kshoji/javax/sound/midi/Sequence;->resolution:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getPatchList()[Ljp/kshoji/javax/sound/midi/Patch;
    .locals 1

    .line 170
    const/4 v0, 0x0

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/Patch;

    return-object v0
.end method

.method public getResolution()I
    .locals 1

    .line 132
    iget v0, p0, Ljp/kshoji/javax/sound/midi/Sequence;->resolution:I

    return v0
.end method

.method public getTickLength()J
    .locals 5

    .line 144
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "maxTick":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 146
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/kshoji/javax/sound/midi/Track;

    invoke-virtual {v3}, Ljp/kshoji/javax/sound/midi/Track;->ticks()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public getTracks()[Ljp/kshoji/javax/sound/midi/Track;
    .locals 2

    .line 158
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/Track;

    .line 159
    .local v0, "track":[Ljp/kshoji/javax/sound/midi/Track;
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Sequence;->tracks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    return-object v0
.end method

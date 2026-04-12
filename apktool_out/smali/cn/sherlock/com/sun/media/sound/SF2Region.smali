.class public Lcn/sherlock/com/sun/media/sound/SF2Region;
.super Ljava/lang/Object;
.source "SF2Region.java"


# static fields
.field public static final GENERATOR_ATTACKMODENV:I = 0x1a

.field public static final GENERATOR_ATTACKVOLENV:I = 0x22

.field public static final GENERATOR_CHORUSEFFECTSSEND:I = 0xf

.field public static final GENERATOR_COARSETUNE:I = 0x33

.field public static final GENERATOR_DECAYMODENV:I = 0x1c

.field public static final GENERATOR_DECAYVOLENV:I = 0x24

.field public static final GENERATOR_DELAYMODENV:I = 0x19

.field public static final GENERATOR_DELAYMODLFO:I = 0x15

.field public static final GENERATOR_DELAYVIBLFO:I = 0x17

.field public static final GENERATOR_DELAYVOLENV:I = 0x21

.field public static final GENERATOR_ENDADDRSCOARSEOFFSET:I = 0xc

.field public static final GENERATOR_ENDADDRSOFFSET:I = 0x1

.field public static final GENERATOR_ENDLOOPADDRSCOARSEOFFSET:I = 0x32

.field public static final GENERATOR_ENDLOOPADDRSOFFSET:I = 0x3

.field public static final GENERATOR_ENDOPR:I = 0x3c

.field public static final GENERATOR_EXCLUSIVECLASS:I = 0x39

.field public static final GENERATOR_FINETUNE:I = 0x34

.field public static final GENERATOR_FREQMODLFO:I = 0x16

.field public static final GENERATOR_FREQVIBLFO:I = 0x18

.field public static final GENERATOR_HOLDMODENV:I = 0x1b

.field public static final GENERATOR_HOLDVOLENV:I = 0x23

.field public static final GENERATOR_INITIALATTENUATION:I = 0x30

.field public static final GENERATOR_INITIALFILTERFC:I = 0x8

.field public static final GENERATOR_INITIALFILTERQ:I = 0x9

.field public static final GENERATOR_INSTRUMENT:I = 0x29

.field public static final GENERATOR_KEYNUM:I = 0x2e

.field public static final GENERATOR_KEYNUMTOMODENVDECAY:I = 0x20

.field public static final GENERATOR_KEYNUMTOMODENVHOLD:I = 0x1f

.field public static final GENERATOR_KEYNUMTOVOLENVDECAY:I = 0x28

.field public static final GENERATOR_KEYNUMTOVOLENVHOLD:I = 0x27

.field public static final GENERATOR_KEYRANGE:I = 0x2b

.field public static final GENERATOR_MODENVTOFILTERFC:I = 0xb

.field public static final GENERATOR_MODENVTOPITCH:I = 0x7

.field public static final GENERATOR_MODLFOTOFILTERFC:I = 0xa

.field public static final GENERATOR_MODLFOTOPITCH:I = 0x5

.field public static final GENERATOR_MODLFOTOVOLUME:I = 0xd

.field public static final GENERATOR_OVERRIDINGROOTKEY:I = 0x3a

.field public static final GENERATOR_PAN:I = 0x11

.field public static final GENERATOR_RELEASEMODENV:I = 0x1e

.field public static final GENERATOR_RELEASEVOLENV:I = 0x26

.field public static final GENERATOR_RESERVED1:I = 0x2a

.field public static final GENERATOR_RESERVED2:I = 0x31

.field public static final GENERATOR_RESERVED3:I = 0x37

.field public static final GENERATOR_REVERBEFFECTSSEND:I = 0x10

.field public static final GENERATOR_SAMPLEID:I = 0x35

.field public static final GENERATOR_SAMPLEMODES:I = 0x36

.field public static final GENERATOR_SCALETUNING:I = 0x38

.field public static final GENERATOR_STARTADDRSCOARSEOFFSET:I = 0x4

.field public static final GENERATOR_STARTADDRSOFFSET:I = 0x0

.field public static final GENERATOR_STARTLOOPADDRSCOARSEOFFSET:I = 0x2d

.field public static final GENERATOR_STARTLOOPADDRSOFFSET:I = 0x2

.field public static final GENERATOR_SUSTAINMODENV:I = 0x1d

.field public static final GENERATOR_SUSTAINVOLENV:I = 0x25

.field public static final GENERATOR_UNUSED1:I = 0xe

.field public static final GENERATOR_UNUSED2:I = 0x12

.field public static final GENERATOR_UNUSED3:I = 0x13

.field public static final GENERATOR_UNUSED4:I = 0x14

.field public static final GENERATOR_UNUSED5:I = 0x3b

.field public static final GENERATOR_VELOCITY:I = 0x2f

.field public static final GENERATOR_VELRANGE:I = 0x2c

.field public static final GENERATOR_VIBLFOTOPITCH:I = 0x6


# instance fields
.field protected generators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field protected modulators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2Modulator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->modulators:Ljava/util/List;

    return-void
.end method

.method public static getDefaultValue(I)S
    .locals 2
    .param p0, "generator"    # I

    .line 112
    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/16 v0, 0x34bc

    return v0

    .line 113
    :cond_0
    const/16 v0, 0x15

    const/16 v1, -0x2ee0

    if-ne p0, v0, :cond_1

    return v1

    .line 114
    :cond_1
    const/16 v0, 0x17

    if-ne p0, v0, :cond_2

    return v1

    .line 115
    :cond_2
    const/16 v0, 0x19

    if-ne p0, v0, :cond_3

    return v1

    .line 116
    :cond_3
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_4

    return v1

    .line 117
    :cond_4
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_5

    return v1

    .line 118
    :cond_5
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_6

    return v1

    .line 119
    :cond_6
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_7

    return v1

    .line 120
    :cond_7
    const/16 v0, 0x21

    if-ne p0, v0, :cond_8

    return v1

    .line 121
    :cond_8
    const/16 v0, 0x22

    if-ne p0, v0, :cond_9

    return v1

    .line 122
    :cond_9
    const/16 v0, 0x23

    if-ne p0, v0, :cond_a

    return v1

    .line 123
    :cond_a
    const/16 v0, 0x24

    if-ne p0, v0, :cond_b

    return v1

    .line 124
    :cond_b
    const/16 v0, 0x26

    if-ne p0, v0, :cond_c

    return v1

    .line 125
    :cond_c
    const/16 v0, 0x2b

    const/16 v1, 0x7f00

    if-ne p0, v0, :cond_d

    return v1

    .line 126
    :cond_d
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_e

    return v1

    .line 127
    :cond_e
    const/16 v0, 0x2e

    const/4 v1, -0x1

    if-ne p0, v0, :cond_f

    return v1

    .line 128
    :cond_f
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_10

    return v1

    .line 129
    :cond_10
    const/16 v0, 0x38

    if-ne p0, v0, :cond_11

    const/16 v0, 0x64

    return v0

    .line 130
    :cond_11
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_12

    return v1

    .line 131
    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public contains(I)Z
    .locals 2
    .param p1, "generator"    # I

    .line 108
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "generator"    # I

    .line 145
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SF2Region;->getInteger(I)I

    move-result v0

    .line 146
    .local v0, "val":I
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 147
    .local v1, "bytes":[B
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 148
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 149
    return-object v1
.end method

.method public getGenerators()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    return-object v0
.end method

.method public getInteger(I)I
    .locals 2
    .param p1, "generator"    # I

    .line 157
    const v0, 0xffff

    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SF2Region;->getShort(I)S

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public getModulators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2Modulator;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->modulators:Ljava/util/List;

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "generator"    # I

    .line 135
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SF2Region;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SF2Region;->getDefaultValue(I)S

    move-result v0

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public putBytes(I[B)V
    .locals 4
    .param p1, "generator"    # I
    .param p2, "bytes"    # [B

    .line 153
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, p2, v2

    const/4 v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public putInteger(II)V
    .locals 3
    .param p1, "generator"    # I
    .param p2, "value"    # I

    .line 161
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    int-to-short v2, p2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public putShort(IS)V
    .locals 3
    .param p1, "generator"    # I
    .param p2, "value"    # S

    .line 141
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Region;->generators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

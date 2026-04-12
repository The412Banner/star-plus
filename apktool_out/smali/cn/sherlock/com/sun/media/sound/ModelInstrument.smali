.class public abstract Lcn/sherlock/com/sun/media/sound/ModelInstrument;
.super Ljp/kshoji/javax/sound/midi/Instrument;
.source "ModelInstrument.java"


# direct methods
.method protected constructor <init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;
    .param p2, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/kshoji/javax/sound/midi/Soundbank;",
            "Ljp/kshoji/javax/sound/midi/Patch;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 54
    .local p4, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljp/kshoji/javax/sound/midi/Instrument;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getChannelMixer(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;
    .locals 1
    .param p1, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannels()[Z
    .locals 8

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "percussion":Z
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v1

    instance-of v1, v1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v0

    .line 113
    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 114
    new-array v3, v3, [Z

    .line 115
    .local v3, "ch":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 116
    aput-boolean v1, v3, v5

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 117
    .end local v5    # "i":I
    :cond_1
    aput-boolean v4, v3, v2

    .line 118
    return-object v3

    .line 122
    .end local v3    # "ch":[Z
    :cond_2
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v5

    invoke-virtual {v5}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v5

    .line 123
    .local v5, "bank":I
    shr-int/lit8 v6, v5, 0x7

    const/16 v7, 0x78

    if-eq v6, v7, :cond_5

    shr-int/lit8 v6, v5, 0x7

    const/16 v7, 0x79

    if-ne v6, v7, :cond_3

    goto :goto_2

    .line 130
    :cond_3
    new-array v3, v3, [Z

    .line 131
    .restart local v3    # "ch":[Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_4

    .line 132
    aput-boolean v4, v3, v6

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 133
    .end local v6    # "i":I
    :cond_4
    aput-boolean v1, v3, v2

    .line 134
    return-object v3

    .line 124
    .end local v3    # "ch":[Z
    :cond_5
    :goto_2
    new-array v1, v3, [Z

    .line 125
    .local v1, "ch":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 126
    aput-boolean v4, v1, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 127
    .end local v2    # "i":I
    :cond_6
    return-object v1
.end method

.method public getDirector([Lcn/sherlock/com/sun/media/sound/ModelPerformer;Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)Lcn/sherlock/com/sun/media/sound/ModelDirector;
    .locals 1
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;
    .param p3, "player"    # Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    .line 59
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;

    invoke-direct {v0, p1, p3}, Lcn/sherlock/com/sun/media/sound/ModelStandardIndexedDirector;-><init>([Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)V

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 8

    .line 91
    const/16 v0, 0x80

    new-array v1, v0, [Ljava/lang/String;

    .line 92
    .local v1, "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 93
    .local v5, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v6

    .local v6, "k":I
    :goto_1
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 94
    if-ltz v6, :cond_1

    if-ge v6, v0, :cond_1

    aget-object v7, v1, v6

    if-nez v7, :cond_1

    .line 95
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getName()Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 97
    const-string/jumbo v7, "untitled"

    .line 98
    :cond_0
    aput-object v7, v1, v6

    .line 93
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 92
    .end local v5    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v6    # "k":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_3
    return-object v1
.end method

.method public getPatchAlias()Ljp/kshoji/javax/sound/midi/Patch;
    .locals 6

    .line 73
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v0

    .line 74
    .local v0, "patch":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v1

    .line 75
    .local v1, "program":I
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v2

    .line 76
    .local v2, "bank":I
    if-eqz v2, :cond_0

    .line 77
    return-object v0

    .line 78
    :cond_0
    const/4 v3, 0x0

    .line 79
    .local v3, "percussion":Z
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v4

    instance-of v4, v4, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v4

    check-cast v4, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v3

    .line 81
    :cond_1
    if-eqz v3, :cond_2

    .line 82
    new-instance v4, Ljp/kshoji/javax/sound/midi/Patch;

    const/16 v5, 0x3c00

    invoke-direct {v4, v5, v1}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    return-object v4

    .line 84
    :cond_2
    new-instance v4, Ljp/kshoji/javax/sound/midi/Patch;

    const/16 v5, 0x3c80

    invoke-direct {v4, v5, v1}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    return-object v4
.end method

.method public getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .locals 1

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    return-object v0
.end method

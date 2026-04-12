.class public Lcn/sherlock/com/sun/media/sound/SimpleInstrument;
.super Lcn/sherlock/com/sun/media/sound/ModelInstrument;
.source "SimpleInstrument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;
    }
.end annotation


# instance fields
.field protected bank:I

.field protected name:Ljava/lang/String;

.field protected parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;",
            ">;"
        }
    .end annotation
.end field

.field protected percussion:Z

.field protected preset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->preset:I

    .line 48
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->bank:I

    .line 49
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->percussion:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->name:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->parts:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public add(Lcn/sherlock/com/sun/media/sound/ModelInstrument;)V
    .locals 1
    .param p1, "ins"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 121
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    .line 122
    return-void
.end method

.method public add(Lcn/sherlock/com/sun/media/sound/ModelInstrument;II)V
    .locals 1
    .param p1, "ins"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I

    .line 117
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;II)V

    .line 118
    return-void
.end method

.method public add(Lcn/sherlock/com/sun/media/sound/ModelInstrument;IIII)V
    .locals 6
    .param p1, "ins"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I
    .param p4, "velFrom"    # I
    .param p5, "velTo"    # I

    .line 113
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIII)V

    .line 114
    return-void
.end method

.method public add(Lcn/sherlock/com/sun/media/sound/ModelInstrument;IIIII)V
    .locals 7
    .param p1, "ins"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I
    .param p4, "velFrom"    # I
    .param p5, "velTo"    # I
    .param p6, "exclusiveClass"    # I

    .line 108
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIIII)V

    .line 109
    return-void
.end method

.method public add(Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V
    .locals 2
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    .line 104
    return-void
.end method

.method public add(Lcn/sherlock/com/sun/media/sound/ModelPerformer;II)V
    .locals 2
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;II)V

    .line 100
    return-void
.end method

.method public add(Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIII)V
    .locals 7
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I
    .param p4, "velFrom"    # I
    .param p5, "velTo"    # I

    .line 95
    const/4 v0, 0x1

    new-array v2, v0, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIII)V

    .line 96
    return-void
.end method

.method public add(Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIIII)V
    .locals 8
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I
    .param p4, "velFrom"    # I
    .param p5, "velTo"    # I
    .param p6, "exclusiveClass"    # I

    .line 89
    const/4 v0, 0x1

    new-array v2, v0, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIIII)V

    .line 91
    return-void
.end method

.method public add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V
    .locals 7
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 84
    const/16 v5, 0x7f

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x7f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIIII)V

    .line 85
    return-void
.end method

.method public add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;II)V
    .locals 7
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I

    .line 80
    const/16 v5, 0x7f

    const/4 v6, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIIII)V

    .line 81
    return-void
.end method

.method public add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIII)V
    .locals 7
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I
    .param p4, "velFrom"    # I
    .param p5, "velTo"    # I

    .line 76
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIIII)V

    .line 77
    return-void
.end method

.method public add([Lcn/sherlock/com/sun/media/sound/ModelPerformer;IIIII)V
    .locals 2
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "keyFrom"    # I
    .param p3, "keyTo"    # I
    .param p4, "velFrom"    # I
    .param p5, "velTo"    # I
    .param p6, "exclusiveClass"    # I

    .line 64
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;-><init>(Lcn/sherlock/com/sun/media/sound/SimpleInstrument-IA;)V

    .line 65
    .local v0, "part":Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;
    iput-object p1, v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 66
    iput p2, v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->keyFrom:I

    .line 67
    iput p3, v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->keyTo:I

    .line 68
    iput p4, v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->velFrom:I

    .line 69
    iput p5, v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->velTo:I

    .line 70
    iput p6, v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->exclusiveClass:I

    .line 71
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public clear()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()Lcn/sherlock/com/sun/media/sound/ModelPatch;
    .locals 4

    .line 182
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->bank:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->preset:I

    iget-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->percussion:Z

    invoke-direct {v0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/ModelPatch;-><init>(IIZ)V

    return-object v0
.end method

.method public bridge synthetic getPatch()Ljp/kshoji/javax/sound/midi/Patch;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->getPatch()Lcn/sherlock/com/sun/media/sound/ModelPatch;

    move-result-object v0

    return-object v0
.end method

.method public getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .locals 12

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "percount":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;

    .line 128
    .local v2, "part":Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;
    iget-object v3, v2, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, v2, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    array-length v3, v3

    add-int/2addr v0, v3

    .line 128
    .end local v2    # "part":Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;
    :cond_0
    goto :goto_0

    .line 131
    :cond_1
    new-array v1, v0, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 132
    .local v1, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    const/4 v2, 0x0

    .line 133
    .local v2, "px":I
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;

    .line 134
    .local v4, "part":Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;
    iget-object v5, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    if-eqz v5, :cond_7

    .line 135
    iget-object v5, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 136
    .local v8, "mperfm":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    invoke-direct {v9}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;-><init>()V

    .line 137
    .local v9, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setName(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "px":I
    .local v10, "px":I
    aput-object v9, v1, v2

    .line 140
    nop

    .line 141
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isDefaultConnectionsEnabled()Z

    move-result v2

    .line 140
    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setDefaultConnectionsEnabled(Z)V

    .line 142
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v2

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyFrom(I)V

    .line 143
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v2

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyTo(I)V

    .line 144
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v2

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelFrom(I)V

    .line 145
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v2

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelTo(I)V

    .line 146
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getExclusiveClass()I

    move-result v2

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setExclusiveClass(I)V

    .line 147
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isSelfNonExclusive()Z

    move-result v2

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setSelfNonExclusive(Z)V

    .line 148
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isReleaseTriggered()Z

    move-result v2

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setReleaseTriggered(Z)V

    .line 149
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->exclusiveClass:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_2

    .line 150
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->exclusiveClass:I

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setExclusiveClass(I)V

    .line 151
    :cond_2
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->keyFrom:I

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v11

    if-le v2, v11, :cond_3

    .line 152
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->keyFrom:I

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyFrom(I)V

    .line 153
    :cond_3
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->keyTo:I

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v11

    if-ge v2, v11, :cond_4

    .line 154
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->keyTo:I

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyTo(I)V

    .line 155
    :cond_4
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->velFrom:I

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v11

    if-le v2, v11, :cond_5

    .line 156
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->velFrom:I

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelFrom(I)V

    .line 157
    :cond_5
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->velTo:I

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 158
    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;->velTo:I

    invoke-virtual {v9, v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelTo(I)V

    .line 159
    :cond_6
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v11

    .line 160
    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    .end local v8    # "mperfm":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v9    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    add-int/lit8 v7, v7, 0x1

    move v2, v10

    goto/16 :goto_2

    .line 164
    .end local v4    # "part":Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;
    .end local v10    # "px":I
    .restart local v2    # "px":I
    :cond_7
    goto/16 :goto_1

    .line 166
    :cond_8
    return-object v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->name:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setPatch(Ljp/kshoji/javax/sound/midi/Patch;)V
    .locals 1
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 186
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->percussion:Z

    .line 188
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->bank:I

    .line 189
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->preset:I

    goto :goto_0

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->percussion:Z

    .line 192
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->bank:I

    .line 193
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->preset:I

    .line 195
    :goto_0
    return-void
.end method

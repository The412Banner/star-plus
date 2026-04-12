.class public Lcn/sherlock/com/sun/media/sound/SoftInstrument;
.super Ljp/kshoji/javax/sound/midi/Instrument;
.source "SoftInstrument.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

.field private modelperformers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

.field private performers:[Lcn/sherlock/com/sun/media/sound/SoftPerformer;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelInstrument;)V
    .locals 4
    .param p1, "ins"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 43
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    .line 43
    invoke-direct {p0, v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Instrument;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->data:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 47
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->initPerformers([Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelInstrument;[Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V
    .locals 4
    .param p1, "ins"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .param p2, "overrideperformers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 52
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    .line 52
    invoke-direct {p0, v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Instrument;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->data:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 56
    invoke-direct {p0, p2}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->initPerformers([Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    .line 57
    return-void
.end method

.method private initPerformers([Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V
    .locals 4
    .param p1, "modelperformers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 60
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->modelperformers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 61
    array-length v0, p1

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->performers:[Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->performers:[Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    new-instance v2, Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;-><init>(Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDirector(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)Lcn/sherlock/com/sun/media/sound/ModelDirector;
    .locals 2
    .param p1, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;
    .param p2, "player"    # Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    .line 68
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->modelperformers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    invoke-virtual {v0, v1, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getDirector([Lcn/sherlock/com/sun/media/sound/ModelPerformer;Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)Lcn/sherlock/com/sun/media/sound/ModelDirector;

    move-result-object v0

    return-object v0
.end method

.method public getPerformers()[Lcn/sherlock/com/sun/media/sound/SoftPerformer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->performers:[Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    return-object v0
.end method

.method public getSourceInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    return-object v0
.end method

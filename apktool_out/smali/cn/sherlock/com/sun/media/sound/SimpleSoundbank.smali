.class public Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;
.super Ljava/lang/Object;
.source "SimpleSoundbank.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/Soundbank;


# instance fields
.field description:Ljava/lang/String;

.field instruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Instrument;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/SoundbankResource;",
            ">;"
        }
    .end annotation
.end field

.field vendor:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->name:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->version:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->vendor:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->description:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->resources:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->instruments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)V
    .locals 4
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;

    .line 137
    invoke-interface {p1}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 138
    .local v3, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    invoke-virtual {p0, v3}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->addInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V

    .line 137
    .end local v3    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public addInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V
    .locals 1
    .param p1, "resource"    # Ljp/kshoji/javax/sound/midi/Instrument;

    .line 129
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->instruments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public addResource(Ljp/kshoji/javax/sound/midi/SoundbankResource;)V
    .locals 2
    .param p1, "resource"    # Ljp/kshoji/javax/sound/midi/SoundbankResource;

    .line 115
    instance-of v0, p1, Ljp/kshoji/javax/sound/midi/Instrument;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->instruments:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljp/kshoji/javax/sound/midi/Instrument;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrument(Ljp/kshoji/javax/sound/midi/Patch;)Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 10
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 94
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v0

    .line 95
    .local v0, "program":I
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v1

    .line 96
    .local v1, "bank":I
    const/4 v2, 0x0

    .line 97
    .local v2, "percussion":Z
    instance-of v3, p1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v3, :cond_0

    .line 98
    move-object v3, p1

    check-cast v3, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v2

    .line 99
    :cond_0
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->instruments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/kshoji/javax/sound/midi/Instrument;

    .line 100
    .local v4, "instrument":Ljp/kshoji/javax/sound/midi/Instrument;
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v5

    .line 101
    .local v5, "patch2":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-virtual {v5}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v6

    .line 102
    .local v6, "program2":I
    invoke-virtual {v5}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v7

    .line 103
    .local v7, "bank2":I
    if-ne v0, v6, :cond_2

    if-ne v1, v7, :cond_2

    .line 104
    const/4 v8, 0x0

    .line 105
    .local v8, "percussion2":Z
    instance-of v9, v5, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v9, :cond_1

    .line 106
    move-object v9, v5

    check-cast v9, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v8

    .line 107
    :cond_1
    if-ne v2, v8, :cond_2

    .line 108
    return-object v4

    .line 110
    .end local v4    # "instrument":Ljp/kshoji/javax/sound/midi/Instrument;
    .end local v5    # "patch2":Ljp/kshoji/javax/sound/midi/Patch;
    .end local v6    # "program2":I
    .end local v7    # "bank2":I
    .end local v8    # "percussion2":Z
    :cond_2
    goto :goto_0

    .line 111
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->instruments:Ljava/util/List;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->resources:Ljava/util/List;

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljp/kshoji/javax/sound/midi/Instrument;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/kshoji/javax/sound/midi/Instrument;

    .line 89
    .local v0, "inslist_array":[Ljp/kshoji/javax/sound/midi/Instrument;
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 90
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()[Ljp/kshoji/javax/sound/midi/SoundbankResource;
    .locals 2

    .line 83
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->resources:Ljava/util/List;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->resources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljp/kshoji/javax/sound/midi/SoundbankResource;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/kshoji/javax/sound/midi/SoundbankResource;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->version:Ljava/lang/String;

    return-object v0
.end method

.method public removeAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)V
    .locals 4
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;

    .line 142
    invoke-interface {p1}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    .local v3, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    invoke-virtual {p0, v3}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->removeInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V

    .line 142
    .end local v3    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public removeInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V
    .locals 1
    .param p1, "resource"    # Ljp/kshoji/javax/sound/midi/Instrument;

    .line 133
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->instruments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public removeResource(Ljp/kshoji/javax/sound/midi/SoundbankResource;)V
    .locals 2
    .param p1, "resource"    # Ljp/kshoji/javax/sound/midi/SoundbankResource;

    .line 122
    instance-of v0, p1, Ljp/kshoji/javax/sound/midi/Instrument;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->instruments:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljp/kshoji/javax/sound/midi/Instrument;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    :goto_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->description:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->vendor:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->version:Ljava/lang/String;

    .line 80
    return-void
.end method

.class public Lcn/sherlock/com/sun/media/sound/SF2Layer;
.super Ljp/kshoji/javax/sound/midi/SoundbankResource;
.source "SF2Layer.java"


# instance fields
.field protected globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

.field protected name:Ljava/lang/String;

.field protected regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Ljp/kshoji/javax/sound/midi/SoundbankResource;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->name:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->regions:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V
    .locals 2
    .param p1, "soundBank"    # Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljp/kshoji/javax/sound/midi/SoundbankResource;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->name:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->regions:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalRegion()Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->regions:Ljava/util/List;

    return-object v0
.end method

.method public setGlobalZone(Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;)V
    .locals 0
    .param p1, "zone"    # Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 72
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->globalregion:Lcn/sherlock/com/sun/media/sound/SF2GlobalRegion;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Layer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SF2Layer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

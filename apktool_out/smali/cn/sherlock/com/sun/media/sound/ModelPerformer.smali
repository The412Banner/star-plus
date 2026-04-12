.class public Lcn/sherlock/com/sun/media/sound/ModelPerformer;
.super Ljava/lang/Object;
.source "ModelPerformer.java"


# instance fields
.field private addDefaultConnections:Z

.field private connectionBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;",
            ">;"
        }
    .end annotation
.end field

.field private exclusiveClass:I

.field private keyFrom:I

.field private keyTo:I

.field private name:Ljava/lang/String;

.field private oscillators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private releaseTrigger:Z

.field private selfNonExclusive:Z

.field private userObject:Ljava/lang/Object;

.field private velFrom:I

.field private velTo:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->oscillators:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->connectionBlocks:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->keyFrom:I

    .line 42
    const/16 v1, 0x7f

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->keyTo:I

    .line 43
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->velFrom:I

    .line 44
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->velTo:I

    .line 45
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->exclusiveClass:I

    .line 46
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->releaseTrigger:Z

    .line 47
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->selfNonExclusive:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->userObject:Ljava/lang/Object;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->addDefaultConnections:Z

    .line 50
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConnectionBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->connectionBlocks:Ljava/util/List;

    return-object v0
.end method

.method public getExclusiveClass()I
    .locals 1

    .line 73
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->exclusiveClass:I

    return v0
.end method

.method public getKeyFrom()I
    .locals 1

    .line 89
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->keyFrom:I

    return v0
.end method

.method public getKeyTo()I
    .locals 1

    .line 97
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->keyTo:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOscillators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelOscillator;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->oscillators:Ljava/util/List;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .line 129
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getVelFrom()I
    .locals 1

    .line 105
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->velFrom:I

    return v0
.end method

.method public getVelTo()I
    .locals 1

    .line 113
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->velTo:I

    return v0
.end method

.method public isDefaultConnectionsEnabled()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->addDefaultConnections:Z

    return v0
.end method

.method public isReleaseTriggered()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->releaseTrigger:Z

    return v0
.end method

.method public isSelfNonExclusive()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->selfNonExclusive:Z

    return v0
.end method

.method public setConnectionBlocks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "connectionBlocks":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->connectionBlocks:Ljava/util/List;

    .line 66
    return-void
.end method

.method public setDefaultConnectionsEnabled(Z)V
    .locals 0
    .param p1, "addDefaultConnections"    # Z

    .line 141
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->addDefaultConnections:Z

    .line 142
    return-void
.end method

.method public setExclusiveClass(I)V
    .locals 0
    .param p1, "exclusiveClass"    # I

    .line 77
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->exclusiveClass:I

    .line 78
    return-void
.end method

.method public setKeyFrom(I)V
    .locals 0
    .param p1, "keyFrom"    # I

    .line 93
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->keyFrom:I

    .line 94
    return-void
.end method

.method public setKeyTo(I)V
    .locals 0
    .param p1, "keyTo"    # I

    .line 101
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->keyTo:I

    .line 102
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setReleaseTriggered(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 125
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->releaseTrigger:Z

    .line 126
    return-void
.end method

.method public setSelfNonExclusive(Z)V
    .locals 0
    .param p1, "selfNonExclusive"    # Z

    .line 85
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->selfNonExclusive:Z

    .line 86
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->userObject:Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public setVelFrom(I)V
    .locals 0
    .param p1, "velFrom"    # I

    .line 109
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->velFrom:I

    .line 110
    return-void
.end method

.method public setVelTo(I)V
    .locals 0
    .param p1, "velTo"    # I

    .line 117
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->velTo:I

    .line 118
    return-void
.end method

.class public Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;
.super Ljava/lang/Object;
.source "ModelStandardDirector.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelDirector;


# instance fields
.field noteOffUsed:Z

.field noteOnUsed:Z

.field performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

.field player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;


# direct methods
.method public constructor <init>([Lcn/sherlock/com/sun/media/sound/ModelPerformer;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)V
    .locals 4
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "player"    # Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->noteOnUsed:Z

    .line 38
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->noteOffUsed:Z

    .line 42
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 43
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 45
    aget-object v1, p1, v0

    .line 46
    .local v1, "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isReleaseTriggered()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 47
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->noteOffUsed:Z

    goto :goto_1

    .line 49
    :cond_0
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->noteOnUsed:Z

    .line 44
    .end local v1    # "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 55
    return-void
.end method

.method public noteOff(II)V
    .locals 4
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 58
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->noteOffUsed:Z

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 61
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    aget-object v1, v1, v0

    .line 62
    .local v1, "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v2

    if-gt v2, p1, :cond_1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v2

    if-lt v2, p1, :cond_1

    .line 63
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v2

    if-gt v2, p2, :cond_1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 64
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isReleaseTriggered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;->play(I[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)V

    .line 60
    .end local v1    # "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public noteOn(II)V
    .locals 4
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 73
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->noteOnUsed:Z

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 76
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    aget-object v1, v1, v0

    .line 77
    .local v1, "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v2

    if-gt v2, p1, :cond_1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v2

    if-lt v2, p1, :cond_1

    .line 78
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v2

    if-gt v2, p2, :cond_1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 79
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isReleaseTriggered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardDirector;->player:Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;->play(I[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)V

    .line 75
    .end local v1    # "p":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

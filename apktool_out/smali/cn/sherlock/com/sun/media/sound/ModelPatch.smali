.class public Lcn/sherlock/com/sun/media/sound/ModelPatch;
.super Ljp/kshoji/javax/sound/midi/Patch;
.source "ModelPatch.java"


# instance fields
.field private percussion:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "bank"    # I
    .param p2, "program"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPatch;->percussion:Z

    .line 42
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "bank"    # I
    .param p2, "program"    # I
    .param p3, "percussion"    # Z

    .line 45
    invoke-direct {p0, p1, p2}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPatch;->percussion:Z

    .line 46
    iput-boolean p3, p0, Lcn/sherlock/com/sun/media/sound/ModelPatch;->percussion:Z

    .line 47
    return-void
.end method


# virtual methods
.method public isPercussion()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelPatch;->percussion:Z

    return v0
.end method

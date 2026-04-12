.class public Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;
.super Ljava/lang/Object;
.source "ModelInstrumentComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljp/kshoji/javax/sound/midi/Instrument;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Ljp/kshoji/javax/sound/midi/Instrument;

    check-cast p2, Ljp/kshoji/javax/sound/midi/Instrument;

    invoke-virtual {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;->compare(Ljp/kshoji/javax/sound/midi/Instrument;Ljp/kshoji/javax/sound/midi/Instrument;)I

    move-result p1

    return p1
.end method

.method public compare(Ljp/kshoji/javax/sound/midi/Instrument;Ljp/kshoji/javax/sound/midi/Instrument;)I
    .locals 7
    .param p1, "arg0"    # Ljp/kshoji/javax/sound/midi/Instrument;
    .param p2, "arg1"    # Ljp/kshoji/javax/sound/midi/Instrument;

    .line 40
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v0

    .line 41
    .local v0, "p0":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-virtual {p2}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v1

    .line 42
    .local v1, "p1":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v3

    add-int/2addr v2, v3

    .line 43
    .local v2, "a":I
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v3

    mul-int/lit16 v3, v3, 0x80

    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v4

    add-int/2addr v3, v4

    .line 44
    .local v3, "b":I
    instance-of v4, v0, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    const/high16 v5, 0x200000

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 45
    move-object v4, v0

    check-cast v4, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    add-int/2addr v2, v4

    .line 47
    :cond_1
    instance-of v4, v1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v4, :cond_3

    .line 48
    move-object v4, v1

    check-cast v4, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    add-int/2addr v3, v5

    .line 50
    :cond_3
    sub-int v4, v2, v3

    return v4
.end method

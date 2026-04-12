.class public Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;
.super Lcn/sherlock/com/sun/media/sound/SF2Region;
.source "SF2InstrumentRegion.java"


# instance fields
.field protected layer:Lcn/sherlock/com/sun/media/sound/SF2Layer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SF2Region;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayer()Lcn/sherlock/com/sun/media/sound/SF2Layer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->layer:Lcn/sherlock/com/sun/media/sound/SF2Layer;

    return-object v0
.end method

.method public setLayer(Lcn/sherlock/com/sun/media/sound/SF2Layer;)V
    .locals 0
    .param p1, "layer"    # Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 41
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2InstrumentRegion;->layer:Lcn/sherlock/com/sun/media/sound/SF2Layer;

    .line 42
    return-void
.end method

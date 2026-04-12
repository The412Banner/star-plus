.class public Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;
.super Lcn/sherlock/com/sun/media/sound/SF2Region;
.source "SF2LayerRegion.java"


# instance fields
.field protected sample:Lcn/sherlock/com/sun/media/sound/SF2Sample;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SF2Region;-><init>()V

    return-void
.end method


# virtual methods
.method public getSample()Lcn/sherlock/com/sun/media/sound/SF2Sample;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->sample:Lcn/sherlock/com/sun/media/sound/SF2Sample;

    return-object v0
.end method

.method public setSample(Lcn/sherlock/com/sun/media/sound/SF2Sample;)V
    .locals 0
    .param p1, "sample"    # Lcn/sherlock/com/sun/media/sound/SF2Sample;

    .line 41
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2LayerRegion;->sample:Lcn/sherlock/com/sun/media/sound/SF2Sample;

    .line 42
    return-void
.end method

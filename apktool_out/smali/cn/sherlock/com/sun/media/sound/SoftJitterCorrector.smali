.class public Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector;
.super Lcn/sherlock/javax/sound/sampled/AudioInputStream;
.source "SoftJitterCorrector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;II)V
    .locals 4
    .param p1, "stream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .param p2, "buffersize"    # I
    .param p3, "smallbuffersize"    # I

    .line 274
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;

    invoke-direct {v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector$JitterStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;II)V

    .line 275
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v2

    .line 274
    invoke-direct {p0, v0, v1, v2, v3}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    .line 276
    return-void
.end method

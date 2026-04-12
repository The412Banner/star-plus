.class public abstract Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.super Ljava/lang/Object;
.source "SoftAbstractResampler.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftResampler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPadding()I
.end method

.method public abstract interpolate([F[FF[FF[F[II)V
.end method

.method public openStreamer()Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;
    .locals 1

    .line 388
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;-><init>(Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;)V

    return-object v0
.end method

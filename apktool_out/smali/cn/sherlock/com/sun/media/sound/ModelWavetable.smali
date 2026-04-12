.class public interface abstract Lcn/sherlock/com/sun/media/sound/ModelWavetable;
.super Ljava/lang/Object;
.source "ModelWavetable.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelOscillator;


# static fields
.field public static final LOOP_TYPE_FORWARD:I = 0x1

.field public static final LOOP_TYPE_OFF:I = 0x0

.field public static final LOOP_TYPE_PINGPONG:I = 0x4

.field public static final LOOP_TYPE_RELEASE:I = 0x2

.field public static final LOOP_TYPE_REVERSE:I = 0x8


# virtual methods
.method public abstract getLoopLength()F
.end method

.method public abstract getLoopStart()F
.end method

.method public abstract getLoopType()I
.end method

.method public abstract getPitchcorrection()F
.end method

.method public abstract openStream()Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.end method

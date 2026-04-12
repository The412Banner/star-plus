.class public interface abstract Lcn/sherlock/javax/sound/sampled/DataLine;
.super Ljava/lang/Object;
.source "DataLine.java"

# interfaces
.implements Lcn/sherlock/javax/sound/sampled/Line;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/javax/sound/sampled/DataLine$Info;
    }
.end annotation


# virtual methods
.method public abstract available()I
.end method

.method public abstract drain()V
.end method

.method public abstract flush()V
.end method

.method public abstract getBufferSize()I
.end method

.method public abstract getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
.end method

.method public abstract getFramePosition()I
.end method

.method public abstract getLevel()F
.end method

.method public abstract getLongFramePosition()J
.end method

.method public abstract getMicrosecondPosition()J
.end method

.method public abstract isActive()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

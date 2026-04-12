.class public interface abstract Lcn/sherlock/javax/sound/sampled/SourceDataLine;
.super Ljava/lang/Object;
.source "SourceDataLine.java"

# interfaces
.implements Lcn/sherlock/javax/sound/sampled/DataLine;


# virtual methods
.method public abstract open(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
        }
    .end annotation
.end method

.method public abstract open(Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
        }
    .end annotation
.end method

.method public abstract write([BII)I
.end method

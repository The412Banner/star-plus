.class public interface abstract Lcn/sherlock/javax/sound/sampled/Line;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lcn/sherlock/javax/sound/sampled/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/javax/sound/sampled/Line$Info;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getLineInfo()Lcn/sherlock/javax/sound/sampled/Line$Info;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
        }
    .end annotation
.end method

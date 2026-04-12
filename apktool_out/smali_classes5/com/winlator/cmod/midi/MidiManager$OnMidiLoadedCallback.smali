.class public interface abstract Lcom/winlator/cmod/midi/MidiManager$OnMidiLoadedCallback;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMidiLoadedCallback"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V
.end method

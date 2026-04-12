.class public abstract Ljp/kshoji/javax/sound/midi/Instrument;
.super Ljp/kshoji/javax/sound/midi/SoundbankResource;
.source "Instrument.java"


# instance fields
.field private final patch:Ljp/kshoji/javax/sound/midi/Patch;


# direct methods
.method protected constructor <init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;
    .param p2, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/kshoji/javax/sound/midi/Soundbank;",
            "Ljp/kshoji/javax/sound/midi/Patch;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 22
    .local p4, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p3, p4}, Ljp/kshoji/javax/sound/midi/SoundbankResource;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    iput-object p2, p0, Ljp/kshoji/javax/sound/midi/Instrument;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    .line 24
    return-void
.end method


# virtual methods
.method public getPatch()Ljp/kshoji/javax/sound/midi/Patch;
    .locals 1

    .line 33
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Instrument;->patch:Ljp/kshoji/javax/sound/midi/Patch;

    return-object v0
.end method

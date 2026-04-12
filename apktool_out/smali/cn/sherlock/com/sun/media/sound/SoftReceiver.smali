.class public Lcn/sherlock/com/sun/media/sound/SoftReceiver;
.super Ljava/lang/Object;
.source "SoftReceiver.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/MidiDeviceReceiver;


# instance fields
.field private control_mutex:Ljava/lang/Object;

.field protected mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

.field protected midimessages:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected open:Z

.field private synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V
    .locals 1
    .param p1, "synth"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->open:Z

    .line 47
    iget-object v0, p1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->control_mutex:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 49
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getMainMixer()Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    .line 50
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->open:Z

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->removeReceiver(Ljp/kshoji/javax/sound/midi/Receiver;)V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMidiDevice()Ljp/kshoji/javax/sound/midi/MidiDevice;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    return-object v0
.end method

.method public send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    .locals 4
    .param p1, "message"    # Ljp/kshoji/javax/sound/midi/MidiMessage;
    .param p2, "timeStamp"    # J

    .line 60
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->open:Z

    if-eqz v1, :cond_3

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 68
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    goto :goto_0

    .line 70
    :cond_0
    instance-of v1, p1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    .line 71
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getChannel()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    .line 72
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MidiMessage;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getMessage()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 78
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v0, p1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessage(Ljp/kshoji/javax/sound/midi/MidiMessage;)V

    .line 80
    :goto_2
    return-void

    .line 62
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Receiver is not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    .end local p2    # "timeStamp":J
    throw v1

    .line 63
    .restart local p1    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    .restart local p2    # "timeStamp":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.class public Lcom/winlator/cmod/midi/MidiHandler;
.super Ljava/lang/Object;
.source "MidiHandler.java"


# static fields
.field private static final BUF_SIZE:I = 0x9

.field private static final CHECK_DELAY:J = 0xc8L

.field private static final CLIENT_PORT:S = 0x1f05s

.field private static final SERVER_PORT:S = 0x1f06s

.field private static final TAG:Ljava/lang/String; = "MidiHandler"


# instance fields
.field private lastMidiMsgTime:J

.field private message:Ljp/kshoji/javax/sound/midi/ShortMessage;

.field private final receiveData:Ljava/nio/ByteBuffer;

.field private final receivePacket:Ljava/net/DatagramPacket;

.field private recv:Ljp/kshoji/javax/sound/midi/Receiver;

.field private running:Z

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private sf2SoundBank:Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

.field private socket:Ljava/net/DatagramSocket;

.field private synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;


# direct methods
.method public static synthetic $r8$lambda$AN0mm0NTZHXvbAfisEynmsxeXTg(Lcom/winlator/cmod/midi/MidiHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->lambda$start$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z8iE_xXkTQdoo06j5reDH_GM2vg(Lcom/winlator/cmod/midi/MidiHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->lambda$startMidiDataChecking$1()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->running:Z

    .line 26
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->receiveData:Ljava/nio/ByteBuffer;

    .line 27
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/winlator/cmod/midi/MidiHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->receivePacket:Ljava/net/DatagramPacket;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->lastMidiMsgTime:J

    .line 32
    new-instance v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->message:Ljp/kshoji/javax/sound/midi/ShortMessage;

    return-void
.end method

.method private clearRecv()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/Receiver;->close()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    .line 124
    :cond_0
    return-void
.end method

.method private clearSynth()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->close()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 131
    :cond_0
    return-void
.end method

.method private handleRequest(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "received"    # Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 80
    .local v0, "requestCode":B
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 108
    :pswitch_0
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearRecv()V

    .line 109
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearSynth()V

    .line 110
    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_1

    .line 100
    :pswitch_1
    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    if-nez v1, :cond_1

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearRecv()V

    .line 102
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearSynth()V

    .line 103
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->prepareSynthAndRecv()V

    .line 104
    invoke-virtual {p0}, Lcom/winlator/cmod/midi/MidiHandler;->startMidiDataChecking()V

    goto :goto_1

    .line 98
    :pswitch_2
    goto :goto_1

    .line 95
    :pswitch_3
    goto :goto_1

    .line 92
    :pswitch_4
    goto :goto_1

    .line 82
    :pswitch_5
    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    if-eqz v1, :cond_1

    .line 84
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->lastMidiMsgTime:J

    .line 85
    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->message:Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 86
    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    iget-object v2, p0, Lcom/winlator/cmod/midi/MidiHandler;->message:Ljp/kshoji/javax/sound/midi/ShortMessage;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 117
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$start$0()V
    .locals 4

    .line 46
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->socket:Ljava/net/DatagramSocket;

    .line 47
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 48
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    move-object v3, v1

    check-cast v3, Ljava/net/InetAddress;

    const/16 v3, 0x1f06

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 50
    :goto_0
    iget-boolean v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->running:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 52
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/midi/MidiHandler;->handleRequest(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :cond_0
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 58
    :goto_1
    return-void
.end method

.method private synthetic lambda$startMidiDataChecking$1()V
    .locals 8

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/winlator/cmod/midi/MidiHandler;->lastMidiMsgTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/winlator/cmod/midi/MidiHandler;->lastMidiMsgTime:J

    sub-long v2, v0, v2

    const-wide/16 v6, 0x64

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->sendAllOff()V

    .line 173
    iput-wide v4, p0, Lcom/winlator/cmod/midi/MidiHandler;->lastMidiMsgTime:J

    .line 175
    :cond_0
    return-void
.end method

.method private prepareSynthAndRecv()V
    .locals 2

    .line 135
    :try_start_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 136
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open()V

    .line 137
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->sf2SoundBank:Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)Z

    .line 138
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getReceiver()Ljp/kshoji/javax/sound/midi/Receiver;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearRecv()V

    .line 141
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearSynth()V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendAllOff()V
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    if-eqz v0, :cond_2

    .line 149
    :try_start_0
    new-instance v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    .line 150
    .local v0, "msg":Ljp/kshoji/javax/sound/midi/ShortMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 151
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 152
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(IIII)V

    .line 153
    iget-object v4, p0, Lcom/winlator/cmod/midi/MidiHandler;->recv:Ljp/kshoji/javax/sound/midi/Receiver;

    const-wide/16 v5, -0x1

    invoke-interface {v4, v0, v5, v6}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "msg":Ljp/kshoji/javax/sound/midi/ShortMessage;
    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public setSoundBank(Lcn/sherlock/com/sun/media/sound/SF2Soundbank;)V
    .locals 0
    .param p1, "soundBank"    # Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    .line 37
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearRecv()V

    .line 38
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearSynth()V

    .line 39
    iput-object p1, p0, Lcom/winlator/cmod/midi/MidiHandler;->sf2SoundBank:Lcn/sherlock/com/sun/media/sound/SF2Soundbank;

    .line 40
    return-void
.end method

.method public start()V
    .locals 2

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->running:Z

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/midi/MidiHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/midi/MidiHandler$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/midi/MidiHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public startMidiDataChecking()V
    .locals 8

    .line 165
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 168
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 169
    new-instance v2, Lcom/winlator/cmod/midi/MidiHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/midi/MidiHandler$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/midi/MidiHandler;)V

    .line 176
    .local v2, "checkTask":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v5, 0xc8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 177
    return-void
.end method

.method public stop()V
    .locals 2

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->running:Z

    .line 64
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->socket:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 66
    iput-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->socket:Ljava/net/DatagramSocket;

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearRecv()V

    .line 70
    invoke-direct {p0}, Lcom/winlator/cmod/midi/MidiHandler;->clearSynth()V

    .line 72
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 74
    iput-object v1, p0, Lcom/winlator/cmod/midi/MidiHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    :cond_1
    return-void
.end method

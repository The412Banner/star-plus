.class public Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;
.super Ljava/lang/Object;
.source "SoftSynthesizer.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/AudioSynthesizer;
.implements Lcn/sherlock/com/sun/media/sound/ReferenceCountingDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;,
        Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$Info;
    }
.end annotation


# static fields
.field protected static final INFO_DESCRIPTION:Ljava/lang/String; = "Software MIDI Synthesizer"

.field protected static final INFO_NAME:Ljava/lang/String; = "Gervill"

.field protected static final INFO_VENDOR:Ljava/lang/String; = "OpenJDK"

.field protected static final INFO_VERSION:Ljava/lang/String; = "1.0"

.field private static defaultSoundBank:Ljp/kshoji/javax/sound/midi/Soundbank;

.field protected static final info:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

.field private static testline:Lcn/sherlock/javax/sound/sampled/SourceDataLine;


# instance fields
.field protected agc_on:Z

.field protected channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

.field protected chorus_on:Z

.field protected control_mutex:Ljava/lang/Object;

.field private controlrate:F

.field private deviceid:I

.field protected external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

.field private format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

.field private gmmode:I

.field private implicitOpen:Z

.field private inslist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/sherlock/com/sun/media/sound/SoftInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private jitter_correction:Z

.field private largemode:Z

.field private latency:J

.field protected load_default_soundbank:Z

.field private loadedlist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/sherlock/com/sun/media/sound/ModelInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

.field private maxpoly:I

.field private number_of_midi_channels:I

.field private open:Z

.field private pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

.field private pusher_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

.field private recvslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljp/kshoji/javax/sound/midi/Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

.field private resamplerType:Ljava/lang/String;

.field protected reverb_light:Z

.field protected reverb_on:Z

.field private sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

.field private tunings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/sherlock/com/sun/media/sound/SoftTuning;",
            ">;"
        }
    .end annotation
.end field

.field protected voiceIDCounter:I

.field protected voice_allocation_mode:I

.field private voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

.field protected weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$Info;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$Info;-><init>()V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->info:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->testline:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 176
    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->defaultSoundBank:Ljp/kshoji/javax/sound/midi/Soundbank;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    .line 180
    iput-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voiceIDCounter:I

    .line 186
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voice_allocation_mode:I

    .line 188
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->load_default_soundbank:Z

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_light:Z

    .line 190
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_on:Z

    .line 191
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->chorus_on:Z

    .line 192
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->agc_on:Z

    .line 195
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    .line 197
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->largemode:Z

    .line 202
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->gmmode:I

    .line 204
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->deviceid:I

    .line 206
    new-instance v2, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v4, 0x472c4400    # 44100.0f

    const/16 v5, 0x10

    const/4 v6, 0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 208
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 210
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    .line 211
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 213
    const/high16 v0, 0x43130000    # 147.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->controlrate:F

    .line 215
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open:Z

    .line 216
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->implicitOpen:Z

    .line 218
    const-string v0, "linear"

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    .line 219
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 221
    const/16 v0, 0x10

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->number_of_midi_channels:I

    .line 222
    const/16 v0, 0x40

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->maxpoly:I

    .line 223
    const-wide/32 v2, 0x30d40

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->latency:J

    .line 224
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->jitter_correction:Z

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->tunings:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    return-void
.end method

.method private getBuffers(Lcn/sherlock/com/sun/media/sound/ModelInstrument;Ljava/util/List;)V
    .locals 8
    .param p1, "instrument"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/com/sun/media/sound/ModelInstrument;",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p2, "buffers":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;>;"
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 241
    .local v3, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 242
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/sherlock/com/sun/media/sound/ModelOscillator;

    .line 243
    .local v5, "osc":Lcn/sherlock/com/sun/media/sound/ModelOscillator;
    instance-of v6, v5, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    if-eqz v6, :cond_1

    .line 244
    move-object v6, v5

    check-cast v6, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    .line 245
    .local v6, "w":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->getBuffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v7

    .line 246
    .local v7, "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    if-eqz v7, :cond_0

    .line 247
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;->get8BitExtensionBuffer()Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    move-result-object v7

    .line 249
    if-eqz v7, :cond_1

    .line 250
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v5    # "osc":Lcn/sherlock/com/sun/media/sound/ModelOscillator;
    .end local v6    # "w":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    .end local v7    # "buff":Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;
    :cond_1
    goto :goto_1

    .line 240
    .end local v3    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_3
    return-void
.end method

.method private getStoredProperties()Ljava/util/Properties;
    .locals 1

    .line 704
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$1;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$1;-><init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V

    .line 705
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 704
    return-object v0
.end method

.method private loadInstruments(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelInstrument;",
            ">;)Z"
        }
    .end annotation

    .line 272
    .local p1, "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelInstrument;>;"
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    return v1

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadSamples(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    return v1

    .line 277
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-eqz v2, :cond_2

    .line 279
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 281
    .local v4, "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    const/4 v5, 0x0

    iput-object v5, v4, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 282
    iput-object v5, v4, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_director:Lcn/sherlock/com/sun/media/sound/ModelDirector;

    .line 279
    .end local v4    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/kshoji/javax/sound/midi/Instrument;

    .line 285
    .local v2, "instrument":Ljp/kshoji/javax/sound/midi/Instrument;
    invoke-virtual {v2}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->patchToString(Ljp/kshoji/javax/sound/midi/Patch;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "pat":Ljava/lang/String;
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    move-object v5, v2

    check-cast v5, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;-><init>(Lcn/sherlock/com/sun/media/sound/ModelInstrument;)V

    .line 288
    .local v4, "softins":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    move-object v6, v2

    check-cast v6, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    nop

    .end local v2    # "instrument":Ljp/kshoji/javax/sound/midi/Instrument;
    .end local v3    # "pat":Ljava/lang/String;
    .end local v4    # "softins":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    goto :goto_1

    .line 291
    :cond_3
    monitor-exit v0

    .line 293
    const/4 v0, 0x1

    return v0

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadSamples(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/sherlock/com/sun/media/sound/ModelInstrument;",
            ">;)Z"
        }
    .end annotation

    .line 258
    .local p1, "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelInstrument;>;"
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->largemode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    return v1

    .line 260
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "buffers":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 262
    .local v3, "instrument":Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    invoke-direct {p0, v3, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getBuffers(Lcn/sherlock/com/sun/media/sound/ModelInstrument;Ljava/util/List;)V

    .end local v3    # "instrument":Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    goto :goto_0

    .line 264
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;->loadAll(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    nop

    .line 268
    return v1

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return v2
.end method

.method private patchToString(Ljp/kshoji/javax/sound/midi/Patch;)Ljava/lang/String;
    .locals 3
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 352
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    const-string v1, "."

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processPropertyInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getPropertyInfo(Ljava/util/Map;)[Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    move-result-object v0

    .line 299
    .local v0, "items":[Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 300
    .local v1, "resamplerType":Ljava/lang/String;
    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftPointResampler;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftPointResampler;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 303
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_0
    const-string v2, "linear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 308
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_1
    const-string v2, "linear1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 313
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_2
    const-string v2, "linear2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 317
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 318
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_3
    const-string v2, "cubic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftCubicResampler;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftCubicResampler;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 323
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_4
    const-string v2, "lanczos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 328
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_0

    .line 330
    :cond_5
    const-string/jumbo v2, "sinc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 332
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    .line 333
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    .line 336
    :cond_6
    :goto_0
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setFormat(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V

    .line 337
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->controlrate:F

    .line 338
    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->latency:J

    .line 339
    const/4 v2, 0x4

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->deviceid:I

    .line 340
    const/4 v2, 0x5

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->maxpoly:I

    .line 341
    const/4 v2, 0x6

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_on:Z

    .line 342
    const/4 v2, 0x7

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->chorus_on:Z

    .line 343
    const/16 v2, 0x8

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->agc_on:Z

    .line 344
    const/16 v2, 0x9

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->largemode:Z

    .line 345
    const/16 v2, 0xa

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->number_of_midi_channels:I

    .line 346
    const/16 v2, 0xb

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->jitter_correction:Z

    .line 347
    const/16 v2, 0xc

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_light:Z

    .line 348
    const/16 v2, 0xd

    aget-object v2, v0, v2

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->load_default_soundbank:Z

    .line 349
    return-void
.end method

.method private setFormat(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 2
    .param p1, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 359
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 363
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 366
    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio format not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only mono and stereo audio supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 1080
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    return-void

    .line 1083
    :cond_0
    const/4 v0, 0x0

    .line 1084
    .local v0, "pusher_to_be_closed":Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;
    const/4 v1, 0x0

    .line 1085
    .local v1, "pusher_stream_to_be_closed":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1086
    :try_start_0
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1087
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    move-object v0, v3

    .line 1088
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-object v1, v3

    .line 1089
    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    .line 1090
    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 1092
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1094
    if-eqz v0, :cond_2

    .line 1098
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->stop()V

    .line 1101
    :try_start_1
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1104
    goto :goto_0

    .line 1102
    :catch_0
    move-exception v2

    .line 1107
    :cond_2
    :goto_0
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1109
    :try_start_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    if-eqz v2, :cond_3

    .line 1110
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->close()V

    .line 1111
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open:Z

    .line 1112
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->implicitOpen:Z

    .line 1113
    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    .line 1114
    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 1115
    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 1117
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    if-eqz v2, :cond_4

    .line 1118
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 1119
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->setChannel(Ljp/kshoji/javax/sound/midi/MidiChannel;)V

    .line 1118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1121
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    if-eqz v2, :cond_5

    .line 1122
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    invoke-interface {v2}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->close()V

    .line 1123
    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 1126
    :cond_5
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1127
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1128
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->tunings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1130
    :goto_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1131
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/kshoji/javax/sound/midi/Receiver;

    invoke-interface {v2}, Ljp/kshoji/javax/sound/midi/Receiver;->close()V

    goto :goto_2

    .line 1133
    :cond_6
    monitor-exit v3

    .line 1134
    return-void

    .line 1133
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1092
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method protected findInstrument(III)Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    .locals 9
    .param p1, "program"    # I
    .param p2, "bank"    # I
    .param p3, "channel"    # I

    .line 392
    shr-int/lit8 v0, p2, 0x7

    const/4 v1, 0x0

    const-string v2, "0.0"

    const-string v3, ".0"

    const-string v4, "."

    const/16 v5, 0x78

    if-eq v0, v5, :cond_5

    shr-int/lit8 v0, p2, 0x7

    const/16 v6, 0x79

    if-ne v0, v6, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    const/16 v0, 0x9

    if-ne p3, v0, :cond_1

    .line 428
    const-string/jumbo v0, "p."

    .local v0, "p_plaf":Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v0    # "p_plaf":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .line 432
    .restart local v0    # "p_plaf":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 434
    .local v4, "current_instrument":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    if-eqz v4, :cond_2

    .line 435
    return-object v4

    .line 437
    :cond_2
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 438
    .end local v4    # "current_instrument":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    .local v3, "current_instrument":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    if-eqz v3, :cond_3

    .line 439
    return-object v3

    .line 441
    :cond_3
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 442
    .end local v3    # "current_instrument":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    .local v2, "current_instrument":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    if-eqz v2, :cond_4

    .line 443
    return-object v2

    .line 444
    :cond_4
    return-object v1

    .line 393
    .end local v0    # "p_plaf":Ljava/lang/String;
    .end local v2    # "current_instrument":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 395
    .local v0, "current_instrument":Lcn/sherlock/com/sun/media/sound/SoftInstrument;
    if-eqz v0, :cond_6

    .line 396
    return-object v0

    .line 399
    :cond_6
    shr-int/lit8 v6, p2, 0x7

    if-ne v6, v5, :cond_7

    .line 400
    const-string/jumbo v5, "p."

    .local v5, "p_plaf":Ljava/lang/String;
    goto :goto_2

    .line 402
    .end local v5    # "p_plaf":Ljava/lang/String;
    :cond_7
    const-string v5, ""

    .line 405
    .restart local v5    # "p_plaf":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, p2, 0x80

    shl-int/lit8 v8, v8, 0x7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 407
    if-eqz v0, :cond_8

    .line 408
    return-object v0

    .line 410
    :cond_8
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v7, p2, 0x80

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 412
    if-eqz v0, :cond_9

    .line 413
    return-object v0

    .line 415
    :cond_9
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 416
    if-eqz v0, :cond_a

    .line 417
    return-object v0

    .line 419
    :cond_a
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 420
    if-eqz v0, :cond_b

    .line 421
    return-object v0

    .line 422
    :cond_b
    return-object v1
.end method

.method public getAvailableInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 3

    .line 624
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getDefaultSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;

    move-result-object v0

    .line 625
    .local v0, "defsbk":Ljp/kshoji/javax/sound/midi/Soundbank;
    if-nez v0, :cond_0

    .line 626
    const/4 v1, 0x0

    new-array v1, v1, [Ljp/kshoji/javax/sound/midi/Instrument;

    return-object v1

    .line 627
    :cond_0
    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v1

    .line 628
    .local v1, "inslist_array":[Ljp/kshoji/javax/sound/midi/Instrument;
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 629
    return-object v1
.end method

.method public getChannels()[Ljp/kshoji/javax/sound/midi/MidiChannel;
    .locals 5

    .line 501
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    const/16 v2, 0x10

    if-nez v1, :cond_0

    .line 506
    new-array v1, v2, [Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    .line 507
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 508
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;-><init>()V

    aput-object v4, v3, v1

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v1, v1

    new-array v1, v1, [Ljp/kshoji/javax/sound/midi/MidiChannel;

    .local v1, "ret":[Ljp/kshoji/javax/sound/midi/MidiChannel;
    goto :goto_1

    .line 514
    .end local v1    # "ret":[Ljp/kshoji/javax/sound/midi/MidiChannel;
    :cond_1
    new-array v1, v2, [Ljp/kshoji/javax/sound/midi/MidiChannel;

    .line 515
    .restart local v1    # "ret":[Ljp/kshoji/javax/sound/midi/MidiChannel;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 516
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 517
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    return-object v1

    .line 518
    .end local v1    # "ret":[Ljp/kshoji/javax/sound/midi/MidiChannel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getControlRate()F
    .locals 1

    .line 464
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->controlrate:F

    return v0
.end method

.method public getDefaultSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 1

    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDeviceID()I
    .locals 1

    .line 460
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->deviceid:I

    return v0
.end method

.method public getDeviceInfo()Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    .locals 1

    .line 700
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->info:Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    return-object v0
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 2

    .line 488
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    monitor-exit v0

    return-object v1

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getGeneralMidiMode()I
    .locals 1

    .line 452
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->gmmode:I

    return v0
.end method

.method public getLatency()J
    .locals 3

    .line 482
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->latency:J

    monitor-exit v0

    return-wide v1

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLoadedInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 3

    .line 633
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/Instrument;

    return-object v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    .line 638
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 639
    .local v1, "inslist_array":[Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 640
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/ModelInstrumentComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 641
    monitor-exit v0

    return-object v1

    .line 642
    .end local v1    # "inslist_array":[Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getMainMixer()Lcn/sherlock/com/sun/media/sound/SoftMainMixer;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    return-object v0
.end method

.method public getMaxPolyphony()I
    .locals 2

    .line 494
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->maxpoly:I

    monitor-exit v0

    return v1

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxReceivers()I
    .locals 1

    .line 1153
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxTransmitters()I
    .locals 1

    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public getMicrosecondPosition()J
    .locals 3

    .line 1144
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1147
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->getMicrosecondPosition()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPropertyInfo(Ljava/util/Map;)[Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;"
        }
    .end annotation

    .line 729
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 738
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;>;"
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-boolean v5, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open:Z

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v0

    .line 740
    .local v5, "o":Z
    :goto_0
    new-instance v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    const-string v7, "linear"

    if-eqz v5, :cond_1

    iget-object v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    const-string v9, "interpolation"

    invoke-direct {v6, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    .local v6, "item":Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v0

    const-string v7, "linear1"

    aput-object v7, v8, v4

    const/4 v7, 0x2

    const-string v9, "linear2"

    aput-object v9, v8, v7

    const/4 v7, 0x3

    const-string v9, "cubic"

    aput-object v9, v8, v7

    const/4 v7, 0x4

    const-string v9, "lanczos"

    aput-object v9, v8, v7

    const/4 v7, 0x5

    const-string/jumbo v9, "sinc"

    aput-object v9, v8, v7

    const/4 v7, 0x6

    const-string/jumbo v9, "point"

    aput-object v9, v8, v7

    iput-object v8, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->choices:[Ljava/lang/Object;

    .line 743
    const-string v7, "Interpolation method"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 744
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_2

    iget v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->controlrate:F

    goto :goto_2

    :cond_2
    const/high16 v8, 0x43130000    # 147.0f

    :goto_2
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v9, "control rate"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 747
    const-string v7, "Control rate"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 748
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    .line 751
    if-eqz v5, :cond_3

    iget-object v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    goto :goto_3

    :cond_3
    new-instance v8, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const v10, 0x472c4400    # 44100.0f

    const/16 v11, 0x10

    const/4 v12, 0x2

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    :goto_3
    const-string v9, "format"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 752
    const-string v7, "Default audio format"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 753
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_4

    iget-wide v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->latency:J

    goto :goto_4

    :cond_4
    const-wide/32 v8, 0x1d4c0

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "latency"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 756
    const-string v7, "Default latency"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 757
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_5

    iget v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->deviceid:I

    goto :goto_5

    :cond_5
    move v8, v0

    :goto_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "device id"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 760
    const-string v7, "Device ID for SysEx Messages"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 761
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_6

    iget v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->maxpoly:I

    goto :goto_6

    :cond_6
    const/16 v8, 0x40

    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "max polyphony"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 764
    const-string v7, "Maximum polyphony"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 765
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_7

    iget-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_on:Z

    goto :goto_7

    :cond_7
    move v8, v4

    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v9, "reverb"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 768
    const-string v7, "Turn reverb effect on or off"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 769
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_8

    iget-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->chorus_on:Z

    goto :goto_8

    :cond_8
    move v8, v4

    :goto_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "chorus"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 772
    const-string v7, "Turn chorus effect on or off"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 773
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_9

    iget-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->agc_on:Z

    goto :goto_9

    :cond_9
    move v8, v4

    :goto_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "auto gain control"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 776
    const-string v7, "Turn auto gain control on or off"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 777
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_a

    iget-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->largemode:Z

    goto :goto_a

    :cond_a
    move v8, v0

    :goto_a
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "large mode"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 780
    const-string v7, "Turn large mode on or off."

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 781
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_b

    iget-object v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v8, v8

    goto :goto_b

    :cond_b
    const/16 v8, 0x10

    :goto_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "midi channels"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 784
    const-string v7, "Number of midi channels."

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 785
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_c

    iget-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->jitter_correction:Z

    goto :goto_c

    :cond_c
    move v8, v4

    :goto_c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "jitter correction"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 788
    const-string v7, "Turn jitter correction on or off."

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 789
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_d

    iget-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_light:Z

    goto :goto_d

    :cond_d
    move v8, v4

    :goto_d
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "light reverb"

    invoke-direct {v7, v9, v8}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v7

    .line 792
    const-string v7, "Turn light reverb mode on or off"

    iput-object v7, v6, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 793
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance v7, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    if-eqz v5, :cond_e

    iget-boolean v4, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->load_default_soundbank:Z

    :cond_e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v8, "load default soundbank"

    invoke-direct {v7, v8, v4}, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v7

    .line 796
    .end local v6    # "item":Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    .local v4, "item":Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    const-string v6, "Enabled/disable loading default soundbank"

    iput-object v6, v4, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 797
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;

    .line 802
    .local v6, "items":[Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    invoke-direct/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getStoredProperties()Ljava/util/Properties;

    move-result-object v7

    .line 804
    .local v7, "storedProperties":Ljava/util/Properties;
    array-length v8, v6

    move v9, v0

    :goto_e
    if-ge v9, v8, :cond_2a

    aget-object v10, v6, v9

    .line 805
    .local v10, "item2":Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    if-nez v2, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    iget-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 806
    .local v0, "v":Ljava/lang/Object;
    :goto_f
    if-eqz v0, :cond_10

    move-object v11, v0

    goto :goto_10

    :cond_10
    iget-object v11, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 807
    .end local v0    # "v":Ljava/lang/Object;
    .local v11, "v":Ljava/lang/Object;
    :goto_10
    if-eqz v11, :cond_29

    .line 808
    iget-object v12, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    .line 809
    .local v12, "c":Ljava/lang/Class;
    invoke-virtual {v12, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 810
    iput-object v11, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto/16 :goto_17

    .line 811
    :cond_11
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 812
    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    .line 813
    .local v13, "s":Ljava/lang/String;
    const-class v0, Ljava/lang/Boolean;

    if-ne v12, v0, :cond_13

    .line 814
    const-string/jumbo v0, "true"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 815
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 816
    :cond_12
    const-string v0, "false"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 817
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto/16 :goto_16

    .line 818
    :cond_13
    const-class v0, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    if-ne v12, v0, :cond_1b

    .line 819
    const/4 v14, 0x2

    .line 820
    .local v14, "channels":I
    const/4 v15, 0x1

    .line 821
    .local v15, "signed":Z
    const/16 v16, 0x0

    .line 822
    .local v16, "bigendian":Z
    const/16 v17, 0x10

    .line 823
    .local v17, "bits":I
    const v18, 0x472c4400    # 44100.0f

    .line 825
    .local v18, "sampleRate":F
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, v13, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .local v0, "st":Ljava/util/StringTokenizer;
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v23, v17

    move/from16 v24, v18

    .line 827
    .end local v14    # "channels":I
    .end local v15    # "signed":Z
    .end local v16    # "bigendian":Z
    .end local v17    # "bits":I
    .end local v18    # "sampleRate":F
    .local v1, "prevToken":Ljava/lang/String;
    .local v20, "channels":I
    .local v21, "signed":Z
    .local v22, "bigendian":Z
    .local v23, "bits":I
    .local v24, "sampleRate":F
    :goto_11
    :try_start_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 828
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 829
    .local v14, "token":Ljava/lang/String;
    const-string v15, "mono"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v15, :cond_14

    .line 830
    const/4 v15, 0x1

    .end local v20    # "channels":I
    .local v15, "channels":I
    goto :goto_12

    .line 829
    .end local v15    # "channels":I
    .restart local v20    # "channels":I
    :cond_14
    move/from16 v15, v20

    .line 831
    .end local v20    # "channels":I
    .restart local v15    # "channels":I
    :goto_12
    move-object/from16 v25, v0

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .local v25, "st":Ljava/util/StringTokenizer;
    :try_start_2
    const-string v0, "channel"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 832
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v20, v0

    .end local v15    # "channels":I
    .local v0, "channels":I
    goto :goto_13

    .line 831
    .end local v0    # "channels":I
    .restart local v15    # "channels":I
    :cond_15
    move/from16 v20, v15

    .line 833
    .end local v15    # "channels":I
    .restart local v20    # "channels":I
    :goto_13
    :try_start_3
    const-string/jumbo v0, "unsigned"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 834
    const/4 v0, 0x0

    move/from16 v21, v0

    .line 835
    :cond_16
    const-string v0, "big-endian"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 836
    const/4 v0, 0x1

    move/from16 v22, v0

    .line 837
    :cond_17
    const-string v0, "bit"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 838
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 839
    :cond_18
    const-string v0, "hz"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 840
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move/from16 v24, v0

    .line 841
    :cond_19
    move-object v1, v14

    .line 842
    .end local v14    # "token":Ljava/lang/String;
    move-object/from16 v0, v25

    goto :goto_11

    .line 845
    .end local v1    # "prevToken":Ljava/lang/String;
    .end local v20    # "channels":I
    .end local v25    # "st":Ljava/util/StringTokenizer;
    .restart local v15    # "channels":I
    :catch_0
    move-exception v0

    move v14, v15

    move/from16 v15, v21

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v24

    goto :goto_14

    .line 843
    .end local v15    # "channels":I
    .local v0, "st":Ljava/util/StringTokenizer;
    .restart local v1    # "prevToken":Ljava/lang/String;
    .restart local v20    # "channels":I
    :cond_1a
    move-object/from16 v25, v0

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v25    # "st":Ljava/util/StringTokenizer;
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-object v14, v0

    move/from16 v15, v24

    move/from16 v16, v23

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-direct/range {v14 .. v19}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 846
    .end local v1    # "prevToken":Ljava/lang/String;
    .end local v25    # "st":Ljava/util/StringTokenizer;
    goto :goto_14

    .line 845
    :catch_1
    move-exception v0

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v24

    goto :goto_14

    .end local v20    # "channels":I
    .end local v21    # "signed":Z
    .end local v22    # "bigendian":Z
    .end local v23    # "bits":I
    .end local v24    # "sampleRate":F
    .local v14, "channels":I
    .local v15, "signed":Z
    .restart local v16    # "bigendian":Z
    .restart local v17    # "bits":I
    .restart local v18    # "sampleRate":F
    :catch_2
    move-exception v0

    .line 848
    .end local v14    # "channels":I
    .end local v15    # "signed":Z
    .end local v16    # "bigendian":Z
    .end local v17    # "bits":I
    .end local v18    # "sampleRate":F
    :goto_14
    goto/16 :goto_16

    .line 850
    :cond_1b
    :try_start_4
    const-class v0, Ljava/lang/Byte;

    if-ne v12, v0, :cond_1c

    .line 851
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_15

    .line 852
    :cond_1c
    const-class v0, Ljava/lang/Short;

    if-ne v12, v0, :cond_1d

    .line 853
    invoke-static {v13}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_15

    .line 854
    :cond_1d
    const-class v0, Ljava/lang/Integer;

    if-ne v12, v0, :cond_1e

    .line 855
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_15

    .line 856
    :cond_1e
    const-class v0, Ljava/lang/Long;

    if-ne v12, v0, :cond_1f

    .line 857
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_15

    .line 858
    :cond_1f
    const-class v0, Ljava/lang/Float;

    if-ne v12, v0, :cond_20

    .line 859
    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_15

    .line 860
    :cond_20
    const-class v0, Ljava/lang/Double;

    if-ne v12, v0, :cond_21

    .line 861
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 863
    :cond_21
    :goto_15
    goto :goto_16

    .line 862
    :catch_3
    move-exception v0

    goto :goto_16

    .line 864
    .end local v13    # "s":Ljava/lang/String;
    :cond_22
    instance-of v0, v11, Ljava/lang/Number;

    if-eqz v0, :cond_28

    .line 865
    move-object v0, v11

    check-cast v0, Ljava/lang/Number;

    .line 866
    .local v0, "n":Ljava/lang/Number;
    const-class v1, Ljava/lang/Byte;

    if-ne v12, v1, :cond_23

    .line 867
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 868
    :cond_23
    const-class v1, Ljava/lang/Short;

    if-ne v12, v1, :cond_24

    .line 869
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 870
    :cond_24
    const-class v1, Ljava/lang/Integer;

    if-ne v12, v1, :cond_25

    .line 871
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 872
    :cond_25
    const-class v1, Ljava/lang/Long;

    if-ne v12, v1, :cond_26

    .line 873
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 874
    :cond_26
    const-class v1, Ljava/lang/Float;

    if-ne v12, v1, :cond_27

    .line 875
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 876
    :cond_27
    const-class v1, Ljava/lang/Double;

    if-ne v12, v1, :cond_29

    .line 877
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v10, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_17

    .line 864
    .end local v0    # "n":Ljava/lang/Number;
    :cond_28
    :goto_16
    nop

    .line 804
    .end local v10    # "item2":Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    .end local v11    # "v":Ljava/lang/Object;
    .end local v12    # "c":Ljava/lang/Class;
    :cond_29
    :goto_17
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_e

    .line 882
    :cond_2a
    return-object v6
.end method

.method public getReceiver()Ljp/kshoji/javax/sound/midi/Receiver;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_0
    new-instance v1, Lcn/sherlock/com/sun/media/sound/SoftReceiver;

    invoke-direct {v1, p0}, Lcn/sherlock/com/sun/media/sound/SoftReceiver;-><init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V

    .line 1164
    .local v1, "receiver":Lcn/sherlock/com/sun/media/sound/SoftReceiver;
    iget-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open:Z

    iput-boolean v2, v1, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->open:Z

    .line 1165
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    monitor-exit v0

    return-object v1

    .line 1167
    .end local v1    # "receiver":Lcn/sherlock/com/sun/media/sound/SoftReceiver;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReceiverReferenceCounting()Ljp/kshoji/javax/sound/midi/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 1192
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open()V

    .line 1194
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->implicitOpen:Z

    .line 1196
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getReceiver()Ljp/kshoji/javax/sound/midi/Receiver;

    move-result-object v0

    return-object v0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Receiver;",
            ">;"
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v1, "recvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/kshoji/javax/sound/midi/Receiver;>;"
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1175
    monitor-exit v0

    return-object v1

    .line 1176
    .end local v1    # "recvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/kshoji/javax/sound/midi/Receiver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransmitter()Ljp/kshoji/javax/sound/midi/Transmitter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 1181
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v1, "No transmitter available"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransmitterReferenceCounting()Ljp/kshoji/javax/sound/midi/Transmitter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 1205
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v1, "No transmitter available"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransmitters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Transmitter;",
            ">;"
        }
    .end annotation

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getTuning(Ljp/kshoji/javax/sound/midi/Patch;)Lcn/sherlock/com/sun/media/sound/SoftTuning;
    .locals 3
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 472
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->patchToString(Ljp/kshoji/javax/sound/midi/Patch;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "t_id":Ljava/lang/String;
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->tunings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 474
    .local v1, "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    if-nez v1, :cond_0

    .line 475
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-direct {v2, p1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;-><init>(Ljp/kshoji/javax/sound/midi/Patch;)V

    move-object v1, v2

    .line 476
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->tunings:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_0
    return-object v1
.end method

.method protected getVoiceAllocationMode()I
    .locals 1

    .line 448
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voice_allocation_mode:I

    return v0
.end method

.method public getVoiceStatus()[Ljp/kshoji/javax/sound/midi/VoiceStatus;
    .locals 6

    .line 522
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    nop

    .line 524
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getMaxPolyphony()I

    move-result v0

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/VoiceStatus;

    .line 525
    .local v0, "tempVoiceStatusArray":[Ljp/kshoji/javax/sound/midi/VoiceStatus;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 526
    new-instance v2, Ljp/kshoji/javax/sound/midi/VoiceStatus;

    invoke-direct {v2}, Ljp/kshoji/javax/sound/midi/VoiceStatus;-><init>()V

    .line 527
    .local v2, "b":Ljp/kshoji/javax/sound/midi/VoiceStatus;
    const/4 v3, 0x0

    iput-boolean v3, v2, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    .line 528
    iput v3, v2, Ljp/kshoji/javax/sound/midi/VoiceStatus;->bank:I

    .line 529
    iput v3, v2, Ljp/kshoji/javax/sound/midi/VoiceStatus;->channel:I

    .line 530
    iput v3, v2, Ljp/kshoji/javax/sound/midi/VoiceStatus;->note:I

    .line 531
    iput v3, v2, Ljp/kshoji/javax/sound/midi/VoiceStatus;->program:I

    .line 532
    iput v3, v2, Ljp/kshoji/javax/sound/midi/VoiceStatus;->volume:I

    .line 533
    aput-object v2, v0, v1

    .line 525
    .end local v2    # "b":Ljp/kshoji/javax/sound/midi/VoiceStatus;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 538
    .end local v0    # "tempVoiceStatusArray":[Ljp/kshoji/javax/sound/midi/VoiceStatus;
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v1, v1

    new-array v1, v1, [Ljp/kshoji/javax/sound/midi/VoiceStatus;

    .line 540
    .local v1, "tempVoiceStatusArray":[Ljp/kshoji/javax/sound/midi/VoiceStatus;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 541
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    .line 542
    .local v3, "a":Ljp/kshoji/javax/sound/midi/VoiceStatus;
    new-instance v4, Ljp/kshoji/javax/sound/midi/VoiceStatus;

    invoke-direct {v4}, Ljp/kshoji/javax/sound/midi/VoiceStatus;-><init>()V

    .line 543
    .local v4, "b":Ljp/kshoji/javax/sound/midi/VoiceStatus;
    iget-boolean v5, v3, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    iput-boolean v5, v4, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    .line 544
    iget v5, v3, Ljp/kshoji/javax/sound/midi/VoiceStatus;->bank:I

    iput v5, v4, Ljp/kshoji/javax/sound/midi/VoiceStatus;->bank:I

    .line 545
    iget v5, v3, Ljp/kshoji/javax/sound/midi/VoiceStatus;->channel:I

    iput v5, v4, Ljp/kshoji/javax/sound/midi/VoiceStatus;->channel:I

    .line 546
    iget v5, v3, Ljp/kshoji/javax/sound/midi/VoiceStatus;->note:I

    iput v5, v4, Ljp/kshoji/javax/sound/midi/VoiceStatus;->note:I

    .line 547
    iget v5, v3, Ljp/kshoji/javax/sound/midi/VoiceStatus;->program:I

    iput v5, v4, Ljp/kshoji/javax/sound/midi/VoiceStatus;->program:I

    .line 548
    iget v5, v3, Ljp/kshoji/javax/sound/midi/VoiceStatus;->volume:I

    iput v5, v4, Ljp/kshoji/javax/sound/midi/VoiceStatus;->volume:I

    .line 549
    aput-object v4, v1, v2

    .line 540
    .end local v3    # "a":Ljp/kshoji/javax/sound/midi/VoiceStatus;
    .end local v4    # "b":Ljp/kshoji/javax/sound/midi/VoiceStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 551
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    return-object v1

    .line 552
    .end local v1    # "tempVoiceStatusArray":[Ljp/kshoji/javax/sound/midi/VoiceStatus;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getVoices()[Lcn/sherlock/com/sun/media/sound/SoftVoice;
    .locals 1

    .line 468
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 1137
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open:Z

    monitor-exit v0

    return v1

    .line 1139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSoundbankSupported(Ljp/kshoji/javax/sound/midi/Soundbank;)Z
    .locals 6
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;

    .line 556
    invoke-interface {p1}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 557
    .local v4, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    instance-of v5, v4, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-nez v5, :cond_0

    .line 558
    return v2

    .line 556
    .end local v4    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public loadAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)Z
    .locals 6
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelInstrument;>;"
    invoke-interface {p1}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 648
    .local v4, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v5, :cond_0

    .line 652
    move-object v5, v4

    check-cast v5, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    .end local v4    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    .restart local v4    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported instrument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    .end local v4    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    :cond_1
    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadInstruments(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public loadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)Z
    .locals 3
    .param p1, "instrument"    # Ljp/kshoji/javax/sound/midi/Instrument;

    .line 563
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v0, "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelInstrument;>;"
    move-object v1, p1

    check-cast v1, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadInstruments(Ljava/util/List;)Z

    move-result v1

    return v1

    .line 564
    .end local v0    # "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelInstrument;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported instrument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;[Ljp/kshoji/javax/sound/midi/Patch;)Z
    .locals 6
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;
    .param p2, "patchList"    # [Ljp/kshoji/javax/sound/midi/Patch;

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v0, "instruments":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelInstrument;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 674
    .local v3, "patch":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-interface {p1, v3}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstrument(Ljp/kshoji/javax/sound/midi/Patch;)Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v4

    .line 675
    .local v4, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v5, :cond_0

    .line 679
    move-object v5, v4

    check-cast v5, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    .end local v3    # "patch":Ljp/kshoji/javax/sound/midi/Patch;
    .end local v4    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .restart local v3    # "patch":Ljp/kshoji/javax/sound/midi/Patch;
    .restart local v4    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported instrument: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    .end local v3    # "patch":Ljp/kshoji/javax/sound/midi/Patch;
    .end local v4    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    :cond_1
    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadInstruments(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->implicitOpen:Z

    .line 889
    monitor-exit v0

    .line 890
    return-void

    .line 889
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 892
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open(Lcn/sherlock/javax/sound/sampled/SourceDataLine;Ljava/util/Map;)V

    .line 893
    return-void
.end method

.method public open(Lcn/sherlock/javax/sound/sampled/SourceDataLine;Ljava/util/Map;)V
    .locals 10
    .param p1, "line"    # Lcn/sherlock/javax/sound/sampled/SourceDataLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/javax/sound/sampled/SourceDataLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 896
    .local p2, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->implicitOpen:Z

    .line 899
    monitor-exit v0

    .line 900
    return-void

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 902
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    const/4 v1, 0x0

    .line 905
    .local v1, "causeException":Ljava/lang/Throwable;
    if-eqz p1, :cond_1

    .line 907
    :try_start_1
    invoke-interface {p1}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setFormat(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->openStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Ljava/util/Map;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v2

    .line 912
    .local v2, "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    invoke-direct {v3, v2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    .line 913
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->getAudioInputStream()Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v3

    move-object v2, v3

    .line 915
    if-nez p1, :cond_3

    .line 917
    sget-object v3, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->testline:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    if-eqz v3, :cond_2

    .line 918
    sget-object v3, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->testline:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    move-object p1, v3

    goto :goto_0

    .line 922
    :cond_2
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    invoke-static {v3}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getSourceDataLine(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    move-result-object v3

    move-object p1, v3

    .line 926
    :cond_3
    :goto_0
    iget-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->latency:J

    long-to-double v3, v3

    .line 928
    .local v3, "latency":D
    invoke-interface {p1}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->isOpen()Z

    move-result v5

    if-nez v5, :cond_4

    .line 929
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v5

    .line 930
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double v8, v3, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    mul-int/2addr v5, v6

    .line 933
    .local v5, "bufferSize":I
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v6

    invoke-interface {p1, v6, v5}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->open(Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V

    .line 937
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    .line 939
    .end local v5    # "bufferSize":I
    :cond_4
    invoke-interface {p1}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->isActive()Z

    move-result v5

    if-nez v5, :cond_5

    .line 940
    invoke-interface {p1}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->start()V
    :try_end_1
    .catch Lcn/sherlock/javax/sound/sampled/LineUnavailableException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 942
    :cond_5
    const/16 v5, 0x200

    .line 944
    .local v5, "controlbuffersize":I
    :try_start_2
    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->available()I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcn/sherlock/javax/sound/sampled/LineUnavailableException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v6

    .line 946
    goto :goto_1

    .line 945
    :catch_0
    move-exception v6

    .line 954
    :goto_1
    :try_start_3
    invoke-interface {p1}, Lcn/sherlock/javax/sound/sampled/SourceDataLine;->getBufferSize()I

    move-result v6

    .line 955
    .local v6, "buffersize":I
    rem-int v7, v6, v5

    sub-int/2addr v6, v7

    .line 957
    mul-int/lit8 v7, v5, 0x3

    if-ge v6, v7, :cond_6

    .line 958
    mul-int/lit8 v6, v5, 0x3

    .line 960
    :cond_6
    iget-boolean v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->jitter_correction:Z

    if-eqz v7, :cond_7

    .line 961
    new-instance v7, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector;

    invoke-direct {v7, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/SoftJitterCorrector;-><init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;II)V

    move-object v2, v7

    .line 963
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    if-eqz v7, :cond_7

    .line 964
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iput-object v2, v7, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 966
    :cond_7
    new-instance v7, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    invoke-direct {v7, p1, v2, v5}, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;-><init>(Lcn/sherlock/javax/sound/sampled/SourceDataLine;Lcn/sherlock/javax/sound/sampled/AudioInputStream;I)V

    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    .line 967
    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher_stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 968
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;->start()V

    .line 970
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    if-eqz v7, :cond_8

    .line 972
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    iput-object v8, v7, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->pusher:Lcn/sherlock/com/sun/media/sound/SoftAudioPusher;

    .line 973
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;

    iput-object v8, v7, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcn/sherlock/javax/sound/sampled/SourceDataLine;
    :try_end_3
    .catch Lcn/sherlock/javax/sound/sampled/LineUnavailableException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 994
    .end local v1    # "causeException":Ljava/lang/Throwable;
    .end local v2    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .end local v3    # "latency":D
    .end local v5    # "controlbuffersize":I
    .end local v6    # "buffersize":I
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 980
    .restart local v1    # "causeException":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 981
    .local v2, "e":Ljava/lang/SecurityException;
    move-object v1, v2

    goto :goto_3

    .line 978
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 979
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 976
    :catch_3
    move-exception v2

    .line 977
    .local v2, "e":Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
    move-object v1, v2

    .line 982
    .end local v2    # "e":Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
    :cond_8
    :goto_2
    nop

    .line 984
    :goto_3
    if-eqz v1, :cond_a

    .line 985
    :try_start_4
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 986
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->close()V

    .line 988
    :cond_9
    new-instance v2, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v3, "Can not open line"

    invoke-direct {v2, v3}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    .line 990
    .local v2, "ex":Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
    invoke-virtual {v2, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 991
    nop

    .end local p1    # "line":Lcn/sherlock/javax/sound/sampled/SourceDataLine;
    .end local p2    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    throw v2

    .line 994
    .end local v1    # "causeException":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
    .restart local p1    # "line":Lcn/sherlock/javax/sound/sampled/SourceDataLine;
    .restart local p2    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    monitor-exit v0

    .line 995
    return-void

    .line 994
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public openStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Ljava/util/Map;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 6
    .param p1, "targetFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/javax/sound/sampled/AudioFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sherlock/javax/sound/sampled/AudioInputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 1000
    .local p2, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1003
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->gmmode:I

    .line 1006
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voice_allocation_mode:I

    .line 1008
    invoke-direct {p0, p2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->processPropertyInfo(Ljava/util/Map;)V

    .line 1010
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open:Z

    .line 1011
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->implicitOpen:Z

    .line 1013
    if-eqz p1, :cond_0

    .line 1014
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setFormat(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V

    .line 1016
    :cond_0
    iget-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->load_default_soundbank:Z

    if-eqz v2, :cond_1

    .line 1018
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getDefaultSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;

    move-result-object v2

    .line 1019
    .local v2, "defbank":Ljp/kshoji/javax/sound/midi/Soundbank;
    if-eqz v2, :cond_1

    .line 1020
    invoke-virtual {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)Z

    .line 1024
    .end local v2    # "defbank":Ljp/kshoji/javax/sound/midi/Soundbank;
    :cond_1
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->maxpoly:I

    new-array v2, v2, [Lcn/sherlock/com/sun/media/sound/SoftVoice;

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 1025
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->maxpoly:I

    if-ge v2, v3, :cond_2

    .line 1026
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-direct {v4, p0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;-><init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V

    aput-object v4, v3, v2

    .line 1025
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1028
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-direct {v2, p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;-><init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    .line 1030
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->number_of_midi_channels:I

    new-array v2, v2, [Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 1031
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 1032
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftChannel;

    invoke-direct {v4, p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;-><init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;I)V

    aput-object v4, v3, v2

    .line 1031
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1034
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    if-nez v2, :cond_6

    .line 1039
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v2, v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    .line 1040
    new-array v2, v3, [Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    goto :goto_2

    .line 1042
    :cond_4
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v2, v2

    new-array v2, v2, [Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    .line 1043
    :goto_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 1044
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;-><init>()V

    aput-object v4, v3, v2

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    :cond_5
    goto :goto_6

    .line 1049
    :cond_6
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v2, v2

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    array-length v3, v3

    if-le v2, v3, :cond_8

    .line 1050
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v2, v2

    new-array v2, v2, [Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    .line 1052
    .local v2, "new_external_channels":[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 1053
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    .line 1052
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1054
    .end local v3    # "i":I
    :cond_7
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    array-length v3, v3

    .line 1055
    .restart local v3    # "i":I
    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_8

    .line 1056
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;-><init>()V

    aput-object v4, v2, v3

    .line 1055
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1061
    .end local v2    # "new_external_channels":[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;
    .end local v3    # "i":I
    :cond_8
    :goto_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 1062
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->external_channels:[Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->setChannel(Ljp/kshoji/javax/sound/midi/MidiChannel;)V

    .line 1061
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1064
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getVoices()[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    move-result-object v2

    array-length v3, v2

    :goto_8
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 1065
    .local v4, "voice":Lcn/sherlock/com/sun/media/sound/SoftVoice;
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResampler;

    invoke-interface {v5}, Lcn/sherlock/com/sun/media/sound/SoftResampler;->openStreamer()Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;

    move-result-object v5

    iput-object v5, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;

    .line 1064
    .end local v4    # "voice":Lcn/sherlock/com/sun/media/sound/SoftVoice;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1067
    :cond_a
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/kshoji/javax/sound/midi/Receiver;

    .line 1068
    .local v2, "recv":Ljp/kshoji/javax/sound/midi/Receiver;
    move-object v3, v2

    check-cast v3, Lcn/sherlock/com/sun/media/sound/SoftReceiver;

    .line 1069
    .local v3, "srecv":Lcn/sherlock/com/sun/media/sound/SoftReceiver;
    iget-boolean v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->open:Z

    iput-boolean v4, v3, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->open:Z

    .line 1070
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iput-object v4, v3, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    .line 1071
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iget-object v4, v4, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    iput-object v4, v3, Lcn/sherlock/com/sun/media/sound/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    .line 1072
    .end local v2    # "recv":Ljp/kshoji/javax/sound/midi/Receiver;
    .end local v3    # "srecv":Lcn/sherlock/com/sun/media/sound/SoftReceiver;
    goto :goto_9

    .line 1074
    :cond_b
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->getInputStream()Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1075
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1001
    :cond_c
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v1, "Synthesizer is already open"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remapInstrument(Ljp/kshoji/javax/sound/midi/Instrument;Ljp/kshoji/javax/sound/midi/Instrument;)Z
    .locals 4
    .param p1, "from"    # Ljp/kshoji/javax/sound/midi/Instrument;
    .param p2, "to"    # Ljp/kshoji/javax/sound/midi/Instrument;

    .line 594
    if-eqz p1, :cond_5

    .line 596
    if-eqz p2, :cond_4

    .line 598
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v0, :cond_3

    .line 602
    instance-of v0, p2, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->unloadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V

    .line 613
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;

    move-object v2, p2

    check-cast v2, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 614
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;-><init>(Lcn/sherlock/com/sun/media/sound/ModelInstrument;Ljp/kshoji/javax/sound/midi/Patch;)V

    .line 615
    .local v1, "mfrom":Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;
    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 611
    .end local v1    # "mfrom":Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Instrument to is not loaded."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "from":Ljp/kshoji/javax/sound/midi/Instrument;
    .end local p2    # "to":Ljp/kshoji/javax/sound/midi/Instrument;
    throw v1

    .line 616
    .restart local p1    # "from":Ljp/kshoji/javax/sound/midi/Instrument;
    .restart local p2    # "to":Ljp/kshoji/javax/sound/midi/Instrument;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 603
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported instrument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 604
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported instrument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 600
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 595
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected removeReceiver(Ljp/kshoji/javax/sound/midi/Receiver;)V
    .locals 3
    .param p1, "recv"    # Ljp/kshoji/javax/sound/midi/Receiver;

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "perform_close":Z
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->implicitOpen:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 375
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->close()V

    .line 378
    :cond_1
    return-void

    .line 375
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected setGeneralMidiMode(I)V
    .locals 0
    .param p1, "gmmode"    # I

    .line 456
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->gmmode:I

    .line 457
    return-void
.end method

.method public unloadAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)V
    .locals 5
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;

    .line 658
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isSoundbankSupported(Ljp/kshoji/javax/sound/midi/Soundbank;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    invoke-interface {p1}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 665
    .local v3, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    instance-of v4, v3, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v4, :cond_1

    .line 666
    invoke-virtual {p0, v3}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->unloadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V

    .line 664
    .end local v3    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_2
    return-void

    .line 659
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported soundbank: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unloadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V
    .locals 7
    .param p1, "instrument"    # Ljp/kshoji/javax/sound/midi/Instrument;

    .line 573
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v0, :cond_3

    .line 577
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->patchToString(Ljp/kshoji/javax/sound/midi/Patch;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "pat":Ljava/lang/String;
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 583
    .local v5, "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    const/4 v6, 0x0

    iput-object v6, v5, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 582
    .end local v5    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 584
    :cond_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->inslist:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 587
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allSoundOff()V

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 589
    .end local v2    # "i":I
    :cond_2
    monitor-exit v1

    .line 590
    return-void

    .line 589
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 574
    .end local v0    # "pat":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported instrument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unloadInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;[Ljp/kshoji/javax/sound/midi/Patch;)V
    .locals 5
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;
    .param p2, "patchList"    # [Ljp/kshoji/javax/sound/midi/Patch;

    .line 685
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isSoundbankSupported(Ljp/kshoji/javax/sound/midi/Soundbank;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    return-void

    .line 691
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 692
    .local v2, "pat":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-interface {p1, v2}, Ljp/kshoji/javax/sound/midi/Soundbank;->getInstrument(Ljp/kshoji/javax/sound/midi/Patch;)Ljp/kshoji/javax/sound/midi/Instrument;

    move-result-object v3

    .line 693
    .local v3, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    instance-of v4, v3, Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    if-eqz v4, :cond_1

    .line 694
    invoke-virtual {p0, v3}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->unloadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V

    .line 691
    .end local v2    # "pat":Ljp/kshoji/javax/sound/midi/Patch;
    .end local v3    # "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_2
    return-void

    .line 686
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported soundbank: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

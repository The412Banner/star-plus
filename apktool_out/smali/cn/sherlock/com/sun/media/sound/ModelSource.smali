.class public Lcn/sherlock/com/sun/media/sound/ModelSource;
.super Ljava/lang/Object;
.source "ModelSource.java"


# static fields
.field public static final SOURCE_EG1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_EG2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_LFO2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_MIDI_CC_0:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_MIDI_CHANNEL_PRESSURE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_MIDI_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_MIDI_POLY_PRESSURE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_MIDI_RPN_0:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final SOURCE_NOTEON_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;


# instance fields
.field private source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field private transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 36
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v2, "keynumber"

    const-string v3, "noteon"

    invoke-direct {v1, v3, v2}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 38
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v2, "velocity"

    invoke-direct {v1, v3, v2}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NOTEON_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 40
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v2, "eg"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_EG1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 42
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v4}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_EG2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 44
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v2, "lfo"

    invoke-direct {v1, v2, v0, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 46
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v2, v0, v4}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO2:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 48
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v1, "pitch"

    const-string v2, "midi"

    invoke-direct {v0, v2, v1, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 50
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "channel_pressure"

    invoke-direct {v0, v2, v1, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_CHANNEL_PRESSURE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 54
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v1, "poly_pressure"

    invoke-direct {v0, v2, v1, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_POLY_PRESSURE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 56
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "midi_cc"

    const-string v2, "0"

    invoke-direct {v0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_CC_0:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 58
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "midi_rpn"

    invoke-direct {v0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_MIDI_RPN_0:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 64
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V
    .locals 1
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 68
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 69
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;Lcn/sherlock/com/sun/media/sound/ModelTransform;)V
    .locals 1
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p2, "transform"    # Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 90
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 91
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;Z)V
    .locals 1
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p2, "direction"    # Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 73
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 74
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    invoke-direct {v0, p2}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;-><init>(Z)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZ)V
    .locals 1
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p2, "direction"    # Z
    .param p3, "polarity"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 78
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 79
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    invoke-direct {v0, p2, p3}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;-><init>(ZZ)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V
    .locals 1
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p2, "direction"    # Z
    .param p3, "polarity"    # Z
    .param p4, "transform"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 84
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 85
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    invoke-direct {v0, p2, p3, p4}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;-><init>(ZZI)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 87
    return-void
.end method


# virtual methods
.method public getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    return-object v0
.end method

.method public getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    return-object v0
.end method

.method public setIdentifier(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V
    .locals 0
    .param p1, "source"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 99
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->source:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 100
    return-void
.end method

.method public setTransform(Lcn/sherlock/com/sun/media/sound/ModelTransform;)V
    .locals 0
    .param p1, "transform"    # Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 107
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelSource;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 108
    return-void
.end method

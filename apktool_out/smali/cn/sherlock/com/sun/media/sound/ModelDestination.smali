.class public Lcn/sherlock/com/sun/media/sound/ModelDestination;
.super Ljava/lang/Object;
.source "ModelDestination.java"


# static fields
.field public static final DESTINATION_CHORUS:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG1_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG1_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG1_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG1_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG1_SHUTDOWN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG1_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG2_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG2_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG2_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG2_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG2_SHUTDOWN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_EG2_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_FILTER_Q:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_LFO1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_LFO1_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_LFO2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_LFO2_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_PAN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_REVERB:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field public static final DESTINATION_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;


# instance fields
.field private destination:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

.field private transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 36
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "keynumber"

    const-string v2, "noteon"

    invoke-direct {v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_KEYNUMBER:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 38
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v1, "velocity"

    invoke-direct {v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_VELOCITY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 40
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "osc"

    const-string/jumbo v2, "pitch"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 42
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "gain"

    const-string v2, "mixer"

    invoke-direct {v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 44
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v1, "pan"

    invoke-direct {v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PAN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 46
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v1, "reverb"

    invoke-direct {v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_REVERB:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 48
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "chorus"

    invoke-direct {v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_CHORUS:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 50
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "lfo"

    const-string v2, "delay"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 52
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v4, "freq"

    invoke-direct {v0, v1, v4, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO1_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 54
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 56
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_LFO2_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 58
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "eg"

    invoke-direct {v0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 60
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "attack"

    invoke-direct {v0, v1, v6, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 62
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "hold"

    invoke-direct {v0, v1, v7, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 64
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v8, "decay"

    invoke-direct {v0, v1, v8, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 66
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v9, "sustain"

    invoke-direct {v0, v1, v9, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 69
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v10, "release"

    invoke-direct {v0, v1, v10, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 71
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v11, "shutdown"

    invoke-direct {v0, v1, v11, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG1_SHUTDOWN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 73
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v2, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_DELAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 75
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v6, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_ATTACK:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 77
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v7, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_HOLD:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 79
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v8, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_DECAY:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 81
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_SUSTAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 84
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v10, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_RELEASE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 86
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v0, v1, v11, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_EG2_SHUTDOWN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 88
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "filter"

    invoke-direct {v0, v1, v4, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 90
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v2, "q"

    invoke-direct {v0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_Q:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->destination:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 93
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V
    .locals 1
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_NONE:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->destination:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 93
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 99
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->destination:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 100
    return-void
.end method


# virtual methods
.method public getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->destination:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    return-object v0
.end method

.method public getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    return-object v0
.end method

.method public setIdentifier(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V
    .locals 0
    .param p1, "destination"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 107
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->destination:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 108
    return-void
.end method

.method public setTransform(Lcn/sherlock/com/sun/media/sound/ModelTransform;)V
    .locals 0
    .param p1, "transform"    # Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 115
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelDestination;->transform:Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 116
    return-void
.end method

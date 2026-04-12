.class Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
.super Ljava/lang/Object;
.source "SoftMainMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftMainMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftChannelMixerContainer"
.end annotation


# instance fields
.field buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;


# direct methods
.method private constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;Lcn/sherlock/com/sun/media/sound/SoftMainMixer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;-><init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)V

    return-void
.end method

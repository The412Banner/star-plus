.class Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MidiControlObject"
.end annotation


# instance fields
.field channel_pressure:[D

.field pitch:[D

.field poly_pressure:[D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;


# direct methods
.method private constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iget-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->-$$Nest$fgetco_midi_pitch(Lcn/sherlock/com/sun/media/sound/SoftChannel;)[D

    move-result-object p1

    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->pitch:[D

    .line 132
    iget-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->-$$Nest$fgetco_midi_channel_pressure(Lcn/sherlock/com/sun/media/sound/SoftChannel;)[D

    move-result-object p1

    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->channel_pressure:[D

    .line 133
    const/4 p1, 0x1

    new-array p1, p1, [D

    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->poly_pressure:[D

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;Lcn/sherlock/com/sun/media/sound/SoftChannel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;-><init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;)V

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 2
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 137
    return-object v0

    .line 138
    :cond_0
    const-string/jumbo v1, "pitch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->pitch:[D

    return-object v0

    .line 140
    :cond_1
    const-string v1, "channel_pressure"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->channel_pressure:[D

    return-object v0

    .line 142
    :cond_2
    const-string/jumbo v1, "poly_pressure"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;->poly_pressure:[D

    return-object v0

    .line 144
    :cond_3
    return-object v0
.end method

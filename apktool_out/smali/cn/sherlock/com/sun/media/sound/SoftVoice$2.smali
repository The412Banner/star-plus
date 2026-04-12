.class Lcn/sherlock/com/sun/media/sound/SoftVoice$2;
.super Ljava/lang/Object;
.source "SoftVoice.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field active:[D

.field balance:[D

.field chorus:[D

.field gain:[D

.field pan:[D

.field reverb:[D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 128
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_mixer_active(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->active:[D

    .line 130
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_mixer_gain(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->gain:[D

    .line 131
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_mixer_pan(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->pan:[D

    .line 132
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_mixer_balance(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->balance:[D

    .line 133
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_mixer_reverb(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->reverb:[D

    .line 134
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_mixer_chorus(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->chorus:[D

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
    const-string v1, "active"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->active:[D

    return-object v0

    .line 140
    :cond_1
    const-string v1, "gain"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->gain:[D

    return-object v0

    .line 142
    :cond_2
    const-string/jumbo v1, "pan"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->pan:[D

    return-object v0

    .line 144
    :cond_3
    const-string v1, "balance"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->balance:[D

    return-object v0

    .line 146
    :cond_4
    const-string/jumbo v1, "reverb"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->reverb:[D

    return-object v0

    .line 148
    :cond_5
    const-string v1, "chorus"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;->chorus:[D

    return-object v0

    .line 150
    :cond_6
    return-object v0
.end method

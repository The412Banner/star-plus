.class Lcn/sherlock/com/sun/media/sound/SoftVoice$4;
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
.field freq:[D

.field ftype:[D

.field q:[D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 167
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_filter_freq(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->freq:[D

    .line 169
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_filter_type(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->ftype:[D

    .line 170
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_filter_q(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->q:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 2
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 173
    return-object v0

    .line 174
    :cond_0
    const-string v1, "freq"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->freq:[D

    return-object v0

    .line 176
    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->ftype:[D

    return-object v0

    .line 178
    :cond_2
    const-string/jumbo v1, "q"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;->q:[D

    return-object v0

    .line 180
    :cond_3
    return-object v0
.end method

.class Lcn/sherlock/com/sun/media/sound/SoftVoice$3;
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
.field pitch:[D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 154
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$3;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$3;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->-$$Nest$fgetco_osc_pitch(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$3;->pitch:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 2
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 158
    return-object v0

    .line 159
    :cond_0
    const-string/jumbo v1, "pitch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$3;->pitch:[D

    return-object v0

    .line 161
    :cond_1
    return-object v0
.end method

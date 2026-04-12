.class Lcn/sherlock/com/sun/media/sound/SoftVoice$1;
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
.field keynumber:[D

.field on:[D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

.field velocity:[D


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 106
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->keynumber:[D

    .line 108
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_velocity:[D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->velocity:[D

    .line 109
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftVoice;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->on:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 2
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 112
    return-object v0

    .line 113
    :cond_0
    const-string v1, "keynumber"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->keynumber:[D

    return-object v0

    .line 115
    :cond_1
    const-string/jumbo v1, "velocity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->velocity:[D

    return-object v0

    .line 117
    :cond_2
    const-string v1, "on"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;->on:[D

    return-object v0

    .line 119
    :cond_3
    return-object v0
.end method

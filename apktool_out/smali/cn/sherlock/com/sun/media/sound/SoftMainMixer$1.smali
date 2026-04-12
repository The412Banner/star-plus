.class Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;
.super Ljava/lang/Object;
.source "SoftMainMixer.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftMainMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field balance:[D

.field coarse_tuning:[D

.field fine_tuning:[D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

.field volume:[D


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    .line 100
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetco_master_balance(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->balance:[D

    .line 103
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetco_master_volume(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->volume:[D

    .line 104
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetco_master_coarse_tuning(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->coarse_tuning:[D

    .line 105
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->-$$Nest$fgetco_master_fine_tuning(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->fine_tuning:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 2
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 109
    return-object v0

    .line 110
    :cond_0
    const-string v1, "balance"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->balance:[D

    return-object v0

    .line 112
    :cond_1
    const-string/jumbo v1, "volume"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->volume:[D

    return-object v0

    .line 114
    :cond_2
    const-string v1, "coarse_tuning"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->coarse_tuning:[D

    return-object v0

    .line 116
    :cond_3
    const-string v1, "fine_tuning"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;->fine_tuning:[D

    return-object v0

    .line 118
    :cond_4
    return-object v0
.end method

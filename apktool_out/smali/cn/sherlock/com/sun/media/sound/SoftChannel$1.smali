.class Lcn/sherlock/com/sun/media/sound/SoftChannel$1;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cc:[[D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;)V
    .locals 1
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 156
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$1;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->-$$Nest$fgetco_midi_cc_cc(Lcn/sherlock/com/sun/media/sound/SoftChannel;)[[D

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$1;->cc:[[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .locals 2
    .param p1, "instance"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 159
    if-nez p2, :cond_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$1;->cc:[[D

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

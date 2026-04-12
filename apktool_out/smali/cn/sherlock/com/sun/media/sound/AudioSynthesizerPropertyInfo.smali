.class public Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
.super Ljava/lang/Object;
.source "AudioSynthesizerPropertyInfo.java"


# instance fields
.field public choices:[Ljava/lang/Object;

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/Object;

.field public valueClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->description:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    .line 77
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->choices:[Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->name:Ljava/lang/String;

    .line 45
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    goto :goto_0

    .line 49
    :cond_0
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    .line 50
    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

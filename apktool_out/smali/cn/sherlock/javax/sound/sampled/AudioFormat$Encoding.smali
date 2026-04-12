.class public Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/javax/sound/sampled/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoding"
.end annotation


# static fields
.field public static final ALAW:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

.field public static final PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

.field public static final PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

.field public static final PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

.field public static final ULAW:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 568
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const-string v1, "PCM_SIGNED"

    invoke-direct {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 573
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const-string v1, "PCM_UNSIGNED"

    invoke-direct {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 580
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const-string v1, "PCM_FLOAT"

    invoke-direct {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 585
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const-string v1, "ULAW"

    invoke-direct {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->ULAW:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 590
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const-string v1, "ALAW"

    invoke-direct {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->ALAW:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->name:Ljava/lang/String;

    .line 609
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 618
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 619
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 621
    :cond_1
    instance-of v0, p1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    if-eqz v0, :cond_2

    .line 622
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 624
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    return v0

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->name:Ljava/lang/String;

    return-object v0
.end method

.class public Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;
.super Ljava/lang/Object;
.source "AudioFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final AIFC:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

.field public static final AIFF:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

.field public static final AU:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

.field public static final SND:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

.field public static final WAVE:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;


# instance fields
.field private final extension:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 323
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    const-string v1, "WAVE"

    const-string/jumbo v2, "wav"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->WAVE:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    .line 328
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    const-string v1, "AU"

    const-string v2, "au"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->AU:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    .line 333
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    const-string v1, "AIFF"

    const-string v2, "aif"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->AIFF:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    .line 338
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    const-string v1, "AIFF-C"

    const-string v2, "aifc"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->AIFC:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    .line 343
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    const-string v1, "SND"

    const-string/jumbo v2, "snd"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->SND:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->name:Ljava/lang/String;

    .line 370
    iput-object p2, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->extension:Ljava/lang/String;

    .line 371
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 380
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 381
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 383
    :cond_1
    instance-of v0, p1, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 386
    :cond_2
    return v1
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->name:Ljava/lang/String;

    return-object v0
.end method

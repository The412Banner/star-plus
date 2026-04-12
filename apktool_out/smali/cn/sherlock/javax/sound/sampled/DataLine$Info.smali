.class public Lcn/sherlock/javax/sound/sampled/DataLine$Info;
.super Lcn/sherlock/javax/sound/sampled/Line$Info;
.source "DataLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/javax/sound/sampled/DataLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

.field private final maxBufferSize:I

.field private final minBufferSize:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 1
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcn/sherlock/javax/sound/sampled/AudioFormat;",
            ")V"
        }
    .end annotation

    .line 352
    .local p1, "lineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;-><init>(Ljava/lang/Class;Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V

    .line 353
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V
    .locals 2
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcn/sherlock/javax/sound/sampled/AudioFormat;",
            "I)V"
        }
    .end annotation

    .line 329
    .local p1, "lineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcn/sherlock/javax/sound/sampled/Line$Info;-><init>(Ljava/lang/Class;)V

    .line 331
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 332
    new-array v0, v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    goto :goto_0

    .line 334
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    aput-object p2, v1, v0

    iput-object v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 337
    :goto_0
    iput p3, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    .line 338
    iput p3, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->maxBufferSize:I

    .line 339
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lcn/sherlock/javax/sound/sampled/AudioFormat;II)V
    .locals 1
    .param p2, "formats"    # [Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p3, "minBufferSize"    # I
    .param p4, "maxBufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcn/sherlock/javax/sound/sampled/AudioFormat;",
            "II)V"
        }
    .end annotation

    .line 304
    .local p1, "lineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcn/sherlock/javax/sound/sampled/Line$Info;-><init>(Ljava/lang/Class;)V

    .line 306
    if-nez p2, :cond_0

    .line 307
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    goto :goto_0

    .line 309
    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 312
    :goto_0
    iput p3, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    .line 313
    iput p4, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->maxBufferSize:I

    .line 314
    return-void
.end method


# virtual methods
.method public getFormats()[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 2

    .line 377
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .line 415
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->maxBufferSize:I

    return v0
.end method

.method public getMinBufferSize()I
    .locals 1

    .line 406
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    return v0
.end method

.method public isFormatSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z
    .locals 2
    .param p1, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 393
    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->matches(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const/4 v1, 0x1

    return v1

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public matches(Lcn/sherlock/javax/sound/sampled/Line$Info;)Z
    .locals 5
    .param p1, "info"    # Lcn/sherlock/javax/sound/sampled/Line$Info;

    .line 431
    invoke-super {p0, p1}, Lcn/sherlock/javax/sound/sampled/Line$Info;->matches(Lcn/sherlock/javax/sound/sampled/Line$Info;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    return v1

    .line 435
    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;

    .line 440
    .local v0, "dataLineInfo":Lcn/sherlock/javax/sound/sampled/DataLine$Info;
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMaxBufferSize()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMaxBufferSize()I

    move-result v2

    if-ltz v2, :cond_1

    .line 441
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMaxBufferSize()I

    move-result v2

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMaxBufferSize()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 442
    return v1

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMinBufferSize()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMinBufferSize()I

    move-result v2

    if-ltz v2, :cond_2

    .line 447
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMinBufferSize()I

    move-result v2

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getMinBufferSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 448
    return v1

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getFormats()[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    .line 454
    .local v2, "localFormats":[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    if-eqz v2, :cond_4

    .line 456
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 457
    aget-object v4, v2, v3

    if-eqz v4, :cond_3

    .line 458
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->isFormatSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 459
    return v1

    .line 456
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    .end local v3    # "i":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 474
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 476
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " supporting format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getFormats()[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_1

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " supporting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->getFormats()[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audio formats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    :cond_1
    :goto_0
    iget v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    const-string v2, " bytes"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->maxBufferSize:I

    if-eq v1, v3, :cond_2

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", and buffers of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->maxBufferSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 484
    :cond_2
    iget v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    if-lez v1, :cond_3

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", and buffers of at least "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 486
    :cond_3
    iget v1, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->maxBufferSize:I

    if-eq v1, v3, :cond_4

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", and buffers of up to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/sherlock/javax/sound/sampled/DataLine$Info;->minBufferSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcn/sherlock/javax/sound/sampled/Line$Info;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

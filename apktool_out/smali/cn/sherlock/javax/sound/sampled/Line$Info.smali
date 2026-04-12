.class public Lcn/sherlock/javax/sound/sampled/Line$Info;
.super Ljava/lang/Object;
.source "Line.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/javax/sound/sampled/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final lineClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 181
    .local p1, "lineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    if-nez p1, :cond_0

    .line 184
    const-class v0, Lcn/sherlock/javax/sound/sampled/Line;

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/Line$Info;->lineClass:Ljava/lang/Class;

    goto :goto_0

    .line 186
    :cond_0
    iput-object p1, p0, Lcn/sherlock/javax/sound/sampled/Line$Info;->lineClass:Ljava/lang/Class;

    .line 188
    :goto_0
    return-void
.end method


# virtual methods
.method public getLineClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/Line$Info;->lineClass:Ljava/lang/Class;

    return-object v0
.end method

.method public matches(Lcn/sherlock/javax/sound/sampled/Line$Info;)Z
    .locals 3
    .param p1, "info"    # Lcn/sherlock/javax/sound/sampled/Line$Info;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 247
    return v1

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/Line$Info;->getLineClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/Line$Info;->getLineClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    return v1

    .line 259
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 269
    const-string v0, "javax.sound.sampled."

    .line 270
    .local v0, "fullPackagePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/Line$Info;->getLineClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "initialString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 275
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "finalString":Ljava/lang/String;
    goto :goto_0

    .line 278
    .end local v3    # "finalString":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    .line 281
    .restart local v3    # "finalString":Ljava/lang/String;
    :goto_0
    return-object v3
.end method

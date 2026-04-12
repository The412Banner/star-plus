.class public Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
.super Ljava/lang/Object;
.source "AudioFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;
    }
.end annotation


# instance fields
.field private byteLength:I

.field private format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

.field private frameLength:I

.field private properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;


# direct methods
.method protected constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;ILcn/sherlock/javax/sound/sampled/AudioFormat;I)V
    .locals 1
    .param p1, "type"    # Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;
    .param p2, "byteLength"    # I
    .param p3, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p4, "frameLength"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->type:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    .line 151
    iput p2, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->byteLength:I

    .line 152
    iput-object p3, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 153
    iput p4, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->frameLength:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->properties:Ljava/util/HashMap;

    .line 155
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V
    .locals 1
    .param p1, "type"    # Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p3, "frameLength"    # I

    .line 169
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;ILcn/sherlock/javax/sound/sampled/AudioFormat;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;Lcn/sherlock/javax/sound/sampled/AudioFormat;ILjava/util/Map;)V
    .locals 1
    .param p1, "type"    # Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p3, "frameLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;",
            "Lcn/sherlock/javax/sound/sampled/AudioFormat;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p4, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;ILcn/sherlock/javax/sound/sampled/AudioFormat;I)V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->properties:Ljava/util/HashMap;

    .line 192
    return-void
.end method


# virtual methods
.method public getByteLength()I
    .locals 1

    .line 215
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->byteLength:I

    return v0
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 223
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()I
    .locals 1

    .line 232
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->frameLength:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->properties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->type:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    return-object v0
.end method

.method public properties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->properties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 252
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 254
    .restart local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 288
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->type:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    if-eqz v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->type:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->type:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 294
    :cond_0
    const-string/jumbo v1, "unknown file format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :goto_0
    iget v1, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->byteLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", byte length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->byteLength:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", data format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    iget v1, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->frameLength:I

    if-eq v1, v2, :cond_2

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", frame length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->frameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method

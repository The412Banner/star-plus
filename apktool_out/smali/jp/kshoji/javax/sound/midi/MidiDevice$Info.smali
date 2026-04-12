.class public Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
.super Ljava/lang/Object;
.source "MidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/MidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final vendor:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->name:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->vendor:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->description:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->version:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 181
    return v0

    .line 183
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 184
    return v1

    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 187
    return v1

    .line 189
    :cond_2
    move-object v2, p1

    check-cast v2, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    .line 190
    .local v2, "other":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->description:Ljava/lang/String;

    iget-object v4, v2, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    return v1

    .line 193
    :cond_3
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->name:Ljava/lang/String;

    iget-object v4, v2, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 194
    return v1

    .line 196
    :cond_4
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->vendor:Ljava/lang/String;

    iget-object v4, v2, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->vendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 197
    return v1

    .line 199
    :cond_5
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->version:Ljava/lang/String;

    iget-object v4, v2, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 200
    return v1

    .line 202
    :cond_6
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 169
    const/16 v0, 0x1f

    .line 170
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 171
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 172
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 173
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->vendor:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 174
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->version:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 175
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->name:Ljava/lang/String;

    return-object v0
.end method

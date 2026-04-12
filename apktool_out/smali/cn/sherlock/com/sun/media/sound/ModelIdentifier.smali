.class public Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
.super Ljava/lang/Object;
.source "ModelIdentifier.java"


# instance fields
.field private instance:I

.field private object:Ljava/lang/String;

.field private variable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 92
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "instance"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 96
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "variable"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 101
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "variable"    # Ljava/lang/String;
    .param p3, "instance"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 107
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    .line 109
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 111
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    return v1

    .line 148
    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 149
    .local v0, "mobj":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eq v2, v4, :cond_3

    .line 150
    return v1

    .line 151
    :cond_3
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-eq v2, v4, :cond_6

    .line 152
    return v1

    .line 153
    :cond_6
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getInstance()I

    move-result v2

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getInstance()I

    move-result v4

    if-eq v2, v4, :cond_7

    .line 154
    return v1

    .line 155
    :cond_7
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 156
    return v1

    .line 157
    :cond_8
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 158
    return v1

    .line 159
    :cond_9
    return v3
.end method

.method public getInstance()I
    .locals 1

    .line 114
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    return v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    return-object v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 138
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 139
    .local v0, "hashcode":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 140
    :cond_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 141
    :cond_1
    return v0
.end method

.method public setInstance(I)V
    .locals 0
    .param p1, "instance"    # I

    .line 118
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    .line 119
    return-void
.end method

.method public setObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setVariable(Ljava/lang/String;)V
    .locals 0
    .param p1, "variable"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 163
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    const-string v1, "["

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->object:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->instance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->variable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/winlator/cmod/xserver/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/Property$Format;,
        Lcom/winlator/cmod/xserver/Property$Mode;
    }
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public final format:Lcom/winlator/cmod/xserver/Property$Format;

.field public final name:I

.field public final type:I


# direct methods
.method public constructor <init>(IILcom/winlator/cmod/xserver/Property$Format;[B)V
    .locals 0
    .param p1, "name"    # I
    .param p2, "type"    # I
    .param p3, "format"    # Lcom/winlator/cmod/xserver/Property$Format;
    .param p4, "data"    # [B

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/winlator/cmod/xserver/Property;->name:I

    .line 38
    iput p2, p0, Lcom/winlator/cmod/xserver/Property;->type:I

    .line 39
    iput-object p3, p0, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    .line 40
    invoke-virtual {p0, p4}, Lcom/winlator/cmod/xserver/Property;->replace([B)V

    .line 41
    return-void
.end method


# virtual methods
.method public append([B)V
    .locals 1
    .param p1, "values"    # [B

    .line 52
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    filled-new-array {v0, p1}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Property;->replace([B)V

    .line 53
    return-void
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 89
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 93
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nameAsString()Ljava/lang/String;
    .locals 1

    .line 97
    iget v0, p0, Lcom/winlator/cmod/xserver/Property;->name:I

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepend([B)V
    .locals 1
    .param p1, "values"    # [B

    .line 48
    iget-object v0, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    filled-new-array {p1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/Property;->replace([B)V

    .line 49
    return-void
.end method

.method public replace([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 44
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 58
    iget v0, p0, Lcom/winlator/cmod/xserver/Property;->type:I

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "UTF8_STRING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "ATOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "STRING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget-object v4, p0, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    iget-byte v4, v4, Lcom/winlator/cmod/xserver/Property$Format;->value:B

    shr-int/lit8 v4, v4, 0x3

    div-int/2addr v3, v4

    .local v3, "size":I
    goto :goto_2

    .line 66
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :pswitch_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/winlator/cmod/xserver/Atom;->getName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :pswitch_1
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sget-object v2, Lcom/winlator/cmod/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/StringUtils;->fromANSIString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 62
    :pswitch_2
    iget-object v1, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/StringUtils;->fromANSIString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 70
    if-lez v2, :cond_1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    sget-object v4, Lcom/winlator/cmod/xserver/Property$1;->$SwitchMap$com$winlator$cmod$xserver$Property$Format:[I

    iget-object v5, p0, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/Property$Format;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_3

    .line 79
    :pswitch_3
    iget-object v4, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 76
    :pswitch_4
    iget-object v4, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_3

    .line 73
    :pswitch_5
    iget-object v4, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    nop

    .line 69
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 83
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d97abef -> :sswitch_2
        0x1ed151 -> :sswitch_1
        0xfd8f47f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

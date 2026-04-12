.class public Lcom/winlator/cmod/core/MSLogFont;
.super Ljava/lang/Object;
.source "MSLogFont.java"


# instance fields
.field private charSet:B

.field private clipPrecision:B

.field private escapement:I

.field private faceName:Ljava/lang/String;

.field private height:I

.field private italic:B

.field private orientation:I

.field private outPrecision:B

.field private pitchAndFamily:B

.field private quality:B

.field private strikeOut:B

.field private underline:B

.field private weight:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, -0xb

    iput v0, p0, Lcom/winlator/cmod/core/MSLogFont;->height:I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/core/MSLogFont;->width:I

    .line 9
    iput v0, p0, Lcom/winlator/cmod/core/MSLogFont;->escapement:I

    .line 10
    iput v0, p0, Lcom/winlator/cmod/core/MSLogFont;->orientation:I

    .line 11
    const/16 v1, 0x190

    iput v1, p0, Lcom/winlator/cmod/core/MSLogFont;->weight:I

    .line 12
    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->italic:B

    .line 13
    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->underline:B

    .line 14
    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->strikeOut:B

    .line 15
    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->charSet:B

    .line 16
    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->outPrecision:B

    .line 17
    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->clipPrecision:B

    .line 18
    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->quality:B

    .line 19
    const/16 v0, 0x22

    iput-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->pitchAndFamily:B

    .line 20
    const-string v0, "Tahoma"

    iput-object v0, p0, Lcom/winlator/cmod/core/MSLogFont;->faceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharSet()B
    .locals 1

    .line 95
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->charSet:B

    return v0
.end method

.method public getClipPrecision()B
    .locals 1

    .line 113
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->clipPrecision:B

    return v0
.end method

.method public getEscapement()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/winlator/cmod/core/MSLogFont;->escapement:I

    return v0
.end method

.method public getFaceName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/winlator/cmod/core/MSLogFont;->faceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/winlator/cmod/core/MSLogFont;->height:I

    return v0
.end method

.method public getItalic()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->italic:B

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/winlator/cmod/core/MSLogFont;->orientation:I

    return v0
.end method

.method public getOutPrecision()B
    .locals 1

    .line 104
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->outPrecision:B

    return v0
.end method

.method public getPitchAndFamily()B
    .locals 1

    .line 131
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->pitchAndFamily:B

    return v0
.end method

.method public getQuality()B
    .locals 1

    .line 122
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->quality:B

    return v0
.end method

.method public getStrikeOut()B
    .locals 1

    .line 86
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->strikeOut:B

    return v0
.end method

.method public getUnderline()B
    .locals 1

    .line 77
    iget-byte v0, p0, Lcom/winlator/cmod/core/MSLogFont;->underline:B

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/winlator/cmod/core/MSLogFont;->weight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/winlator/cmod/core/MSLogFont;->width:I

    return v0
.end method

.method public setCharSet(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "charSet"    # B

    .line 99
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->charSet:B

    .line 100
    return-object p0
.end method

.method public setClipPrecision(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "clipPrecision"    # B

    .line 117
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->clipPrecision:B

    .line 118
    return-object p0
.end method

.method public setEscapement(I)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "escapement"    # I

    .line 45
    iput p1, p0, Lcom/winlator/cmod/core/MSLogFont;->escapement:I

    .line 46
    return-object p0
.end method

.method public setFaceName(Ljava/lang/String;)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "faceName"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/winlator/cmod/core/MSLogFont;->faceName:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setHeight(I)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "height"    # I

    .line 27
    iput p1, p0, Lcom/winlator/cmod/core/MSLogFont;->height:I

    .line 28
    return-object p0
.end method

.method public setItalic(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "italic"    # B

    .line 72
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->italic:B

    .line 73
    return-object p0
.end method

.method public setOrientation(I)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "orientation"    # I

    .line 54
    iput p1, p0, Lcom/winlator/cmod/core/MSLogFont;->orientation:I

    .line 55
    return-object p0
.end method

.method public setOutPrecision(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "outPrecision"    # B

    .line 108
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->outPrecision:B

    .line 109
    return-object p0
.end method

.method public setPitchAndFamily(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "pitchAndFamily"    # B

    .line 135
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->pitchAndFamily:B

    .line 136
    return-object p0
.end method

.method public setQuality(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "quality"    # B

    .line 126
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->quality:B

    .line 127
    return-object p0
.end method

.method public setStrikeOut(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "strikeOut"    # B

    .line 90
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->strikeOut:B

    .line 91
    return-object p0
.end method

.method public setUnderline(B)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "underline"    # B

    .line 81
    iput-byte p1, p0, Lcom/winlator/cmod/core/MSLogFont;->underline:B

    .line 82
    return-object p0
.end method

.method public setWeight(I)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "weight"    # I

    .line 63
    iput p1, p0, Lcom/winlator/cmod/core/MSLogFont;->weight:I

    .line 64
    return-object p0
.end method

.method public setWidth(I)Lcom/winlator/cmod/core/MSLogFont;
    .locals 0
    .param p1, "width"    # I

    .line 36
    iput p1, p0, Lcom/winlator/cmod/core/MSLogFont;->width:I

    .line 37
    return-object p0
.end method

.method public toByteArray()[B
    .locals 3

    .line 149
    const/16 v0, 0x5c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    .local v0, "data":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/winlator/cmod/core/MSLogFont;->height:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget v1, p0, Lcom/winlator/cmod/core/MSLogFont;->width:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    iget v1, p0, Lcom/winlator/cmod/core/MSLogFont;->escapement:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    iget v1, p0, Lcom/winlator/cmod/core/MSLogFont;->orientation:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    iget v1, p0, Lcom/winlator/cmod/core/MSLogFont;->weight:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->italic:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->underline:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->strikeOut:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->charSet:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->outPrecision:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->clipPrecision:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->quality:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    iget-byte v1, p0, Lcom/winlator/cmod/core/MSLogFont;->pitchAndFamily:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/winlator/cmod/core/MSLogFont;->faceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/core/MSLogFont;->faceName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

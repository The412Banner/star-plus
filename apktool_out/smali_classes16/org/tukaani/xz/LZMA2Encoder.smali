.class Lorg/tukaani/xz/LZMA2Encoder;
.super Lorg/tukaani/xz/LZMA2Coder;

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# instance fields
.field private final options:Lorg/tukaani/xz/LZMA2Options;

.field private final props:[B


# direct methods
.method constructor <init>(Lorg/tukaani/xz/LZMA2Options;)V
    .locals 4

    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2Coder;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getPresetDict()[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    aput-byte v2, v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v1

    const/16 v3, 0x1000

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    sub-int/2addr v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x17

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    :goto_0
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/tukaani/xz/LZMA2Options;

    iput-object p1, p0, Lorg/tukaani/xz/LZMA2Encoder;->options:Lorg/tukaani/xz/LZMA2Options;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XZ doesn\'t support a preset dictionary for now"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFilterID()J
    .locals 2

    const-wide/16 v0, 0x21

    return-wide v0
.end method

.method public getFilterProps()[B
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->options:Lorg/tukaani/xz/LZMA2Options;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/LZMA2Options;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public supportsFlushing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public Lorg/tukaani/xz/LZMA2Options;
.super Lorg/tukaani/xz/FilterOptions;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DICT_SIZE_DEFAULT:I = 0x800000

.field public static final DICT_SIZE_MAX:I = 0x30000000

.field public static final DICT_SIZE_MIN:I = 0x1000

.field public static final LC_DEFAULT:I = 0x3

.field public static final LC_LP_MAX:I = 0x4

.field public static final LP_DEFAULT:I = 0x0

.field public static final MF_BT4:I = 0x14

.field public static final MF_HC4:I = 0x4

.field public static final MODE_FAST:I = 0x1

.field public static final MODE_NORMAL:I = 0x2

.field public static final MODE_UNCOMPRESSED:I = 0x0

.field public static final NICE_LEN_MAX:I = 0x111

.field public static final NICE_LEN_MIN:I = 0x8

.field public static final PB_DEFAULT:I = 0x2

.field public static final PB_MAX:I = 0x4

.field public static final PRESET_DEFAULT:I = 0x6

.field public static final PRESET_MAX:I = 0x9

.field public static final PRESET_MIN:I

.field private static final presetToDepthLimit:[I

.field private static final presetToDictSize:[I


# instance fields
.field private depthLimit:I

.field private dictSize:I

.field private lc:I

.field private lp:I

.field private mf:I

.field private mode:I

.field private niceLen:I

.field private pb:I

.field private presetDict:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/LZMA2Options;->presetToDictSize:[I

    const/16 v0, 0x18

    const/16 v1, 0x30

    const/4 v2, 0x4

    const/16 v3, 0x8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/LZMA2Options;->presetToDepthLimit:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x40000
        0x100000
        0x200000
        0x400000
        0x400000
        0x800000
        0x800000
        0x1000000
        0x2000000
        0x4000000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    invoke-virtual {p0, p2, p3}, Lorg/tukaani/xz/LZMA2Options;->setLcLp(II)V

    invoke-virtual {p0, p4}, Lorg/tukaani/xz/LZMA2Options;->setPb(I)V

    invoke-virtual {p0, p5}, Lorg/tukaani/xz/LZMA2Options;->setMode(I)V

    invoke-virtual {p0, p6}, Lorg/tukaani/xz/LZMA2Options;->setNiceLen(I)V

    invoke-virtual {p0, p7}, Lorg/tukaani/xz/LZMA2Options;->setMatchFinder(I)V

    invoke-virtual {p0, p8}, Lorg/tukaani/xz/LZMA2Options;->setDepthLimit(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getDecoderMemoryUsage()I
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x3

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/tukaani/xz/LZMA2InputStream;->getMemoryUsage(I)I

    move-result v0

    return v0
.end method

.method public getDepthLimit()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->depthLimit:I

    return v0
.end method

.method public getDictSize()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    return v0
.end method

.method public getEncoderMemoryUsage()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->getMemoryUsage()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->getMemoryUsage(Lorg/tukaani/xz/LZMA2Options;)I

    move-result v0

    :goto_0
    return v0
.end method

.method getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .locals 1

    new-instance v0, Lorg/tukaani/xz/LZMA2Encoder;

    invoke-direct {v0, p0}, Lorg/tukaani/xz/LZMA2Encoder;-><init>(Lorg/tukaani/xz/LZMA2Options;)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/tukaani/xz/LZMA2InputStream;

    iget v1, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[BLorg/tukaani/xz/ArrayCache;)V

    return-object v0
.end method

.method public getLc()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->lc:I

    return v0
.end method

.method public getLp()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->lp:I

    return v0
.end method

.method public getMatchFinder()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->mf:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    return v0
.end method

.method public getNiceLen()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->niceLen:I

    return v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;

    invoke-direct {v0, p1, p2}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/tukaani/xz/LZMA2OutputStream;

    invoke-direct {v0, p1, p0, p2}, Lorg/tukaani/xz/LZMA2OutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/LZMA2Options;Lorg/tukaani/xz/ArrayCache;)V

    return-object v0
.end method

.method public getPb()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->pb:I

    return v0
.end method

.method public getPresetDict()[B
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    return-object v0
.end method

.method public setDepthLimit(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->depthLimit:I

    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Depth limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDictSize(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/16 v0, 0x1000

    const-string v1, " B"

    if-lt p1, v0, :cond_1

    const/high16 v0, 0x30000000

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LZMA2 dictionary size must not exceed 768 MiB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LZMA2 dictionary size must be at least 4 KiB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLc(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->lp:I

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/LZMA2Options;->setLcLp(II)V

    return-void
.end method

.method public setLcLp(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    add-int v1, p1, p2

    if-gt v1, v0, :cond_0

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->lc:I

    iput p2, p0, Lorg/tukaani/xz/LZMA2Options;->lp:I

    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lc + lp must not exceed 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    iget v0, p0, Lorg/tukaani/xz/LZMA2Options;->lc:I

    invoke-virtual {p0, v0, p1}, Lorg/tukaani/xz/LZMA2Options;->setLcLp(II)V

    return-void
.end method

.method public setMatchFinder(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported match finder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->mf:I

    return-void
.end method

.method public setMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported compression mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNiceLen(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x111

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->niceLen:I

    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum nice length of matches is 273: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum nice length of matches is 8 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPb(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->pb:I

    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pb must not exceed 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreset(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    if-ltz p1, :cond_4

    const/16 v0, 0x9

    if-gt p1, v0, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->lc:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/LZMA2Options;->lp:I

    const/4 v2, 0x2

    iput v2, p0, Lorg/tukaani/xz/LZMA2Options;->pb:I

    sget-object v3, Lorg/tukaani/xz/LZMA2Options;->presetToDictSize:[I

    aget v3, v3, p1

    iput v3, p0, Lorg/tukaani/xz/LZMA2Options;->dictSize:I

    const/4 v3, 0x4

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    iput v3, p0, Lorg/tukaani/xz/LZMA2Options;->mf:I

    if-gt p1, v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x111

    :goto_0
    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->niceLen:I

    sget-object v0, Lorg/tukaani/xz/LZMA2Options;->presetToDepthLimit:[I

    aget p1, v0, p1

    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->depthLimit:I

    goto :goto_2

    :cond_1
    iput v2, p0, Lorg/tukaani/xz/LZMA2Options;->mode:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/tukaani/xz/LZMA2Options;->mf:I

    if-ne p1, v3, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/16 p1, 0x20

    goto :goto_1

    :cond_3
    const/16 p1, 0x40

    :goto_1
    iput p1, p0, Lorg/tukaani/xz/LZMA2Options;->niceLen:I

    iput v1, p0, Lorg/tukaani/xz/LZMA2Options;->depthLimit:I

    :goto_2
    return-void

    :cond_4
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported preset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPresetDict([B)V
    .locals 0

    iput-object p1, p0, Lorg/tukaani/xz/LZMA2Options;->presetDict:[B

    return-void
.end method

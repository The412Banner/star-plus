.class public Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;
.super Ljava/lang/Object;
.source "ResourceAlignmentExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final ALLOW_METHOD_MESSAGE_CHANGE_FLAG:I = 0x8000

.field public static final BASE_SIZE:I = 0x2

.field public static final ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private alignment:S

.field private allowMethodChange:Z

.field private padding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const v1, 0xa11e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "alignment"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "alignment"    # I
    .param p2, "allowMethodChange"    # Z

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZI)V

    .line 64
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 3
    .param p1, "alignment"    # I
    .param p2, "allowMethodChange"    # Z
    .param p3, "padding"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    .line 67
    if-ltz p1, :cond_1

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    .line 70
    if-ltz p3, :cond_0

    .line 73
    int-to-short v0, p1

    iput-short v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    .line 74
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    .line 75
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    .line 76
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding must not be negative, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alignment must be between 0 and 0x7fff, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public allowMethodChange()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    return v0
.end method

.method public getAlignment()S
    .locals 1

    .line 85
    iget-short v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    return v0
.end method

.method public getCentralDirectoryData()[B
    .locals 2

    .line 123
    iget-short v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    if-eqz v1, :cond_0

    const v1, 0x8000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 110
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 100
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 4

    .line 115
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 116
    .local v0, "content":[B
    iget-short v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    invoke-static {v1, v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 118
    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 105
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    .line 137
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    .line 138
    .local v0, "alignmentValue":I
    and-int/lit16 v1, v0, 0x7fff

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    .line 139
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    .line 140
    return-void

    .line 135
    .end local v0    # "alignmentValue":I
    :cond_1
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too short content for ResourceAlignmentExtraField (0xa11e): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->parseFromCentralDirectoryData([BII)V

    .line 129
    add-int/lit8 v0, p3, -0x2

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    .line 130
    return-void
.end method

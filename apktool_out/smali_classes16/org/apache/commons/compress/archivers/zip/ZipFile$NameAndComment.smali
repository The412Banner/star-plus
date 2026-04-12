.class final Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAndComment"
.end annotation


# instance fields
.field private final comment:[B

.field private final name:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0
    .param p1, "name"    # [B
    .param p2, "comment"    # [B

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->name:[B

    .line 1412
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->comment:[B

    .line 1413
    return-void
.end method

.method synthetic constructor <init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    .line 1407
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 1407
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->name:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 1407
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->comment:[B

    return-object v0
.end method

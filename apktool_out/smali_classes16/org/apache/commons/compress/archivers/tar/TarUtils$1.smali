.class final Lorg/apache/commons/compress/archivers/tar/TarUtils$1;
.super Ljava/lang/Object;
.source "TarUtils.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/tar/TarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public decode([B)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # [B

    .line 67
    array-length v0, p1

    .line 68
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    .line 71
    .local v4, "b":B
    if-nez v4, :cond_0

    .line 72
    goto :goto_1

    .line 74
    :cond_0
    and-int/lit16 v5, v4, 0xff

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 56
    .local v0, "length":I
    new-array v1, v0, [B

    .line 59
    .local v1, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

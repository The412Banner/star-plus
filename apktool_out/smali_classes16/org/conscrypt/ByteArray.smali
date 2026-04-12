.class final Lorg/conscrypt/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final bytes:[B

.field private final hashCode:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/conscrypt/ByteArray;->bytes:[B

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/conscrypt/ByteArray;->hashCode:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Lorg/conscrypt/ByteArray;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/conscrypt/ByteArray;

    .line 44
    .local v0, "lhs":Lorg/conscrypt/ByteArray;
    iget-object v1, p0, Lorg/conscrypt/ByteArray;->bytes:[B

    iget-object v2, v0, Lorg/conscrypt/ByteArray;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/conscrypt/ByteArray;->hashCode:I

    return v0
.end method

.class public Lcom/winlator/cmod/core/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x10000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .line 21
    const/high16 v0, 0x10000

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 23
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "amountRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 24
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const/4 v1, 0x1

    return v1

    .line 29
    .end local v0    # "buffer":[B
    .end local v3    # "amountRead":I
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    return v1
.end method

.method public static copyToByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;

    .line 12
    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 15
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/winlator/cmod/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

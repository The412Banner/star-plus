.class public abstract Lorg/newsclub/net/unix/AFOutputStream;
.super Ljava/io/OutputStream;
.source "AFOutputStream.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public transferFrom(Ljava/io/InputStream;)J
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const-string v0, "in"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Lorg/newsclub/net/unix/AFInputStream;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFInputStream;

    invoke-virtual {v0, p0}, Lorg/newsclub/net/unix/AFInputStream;->transferTo(Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    .line 35
    .local v0, "transferred":J
    const/16 v2, 0x2000

    new-array v3, v2, [B

    .line 37
    .local v3, "buffer":[B
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-ltz v5, :cond_1

    .line 38
    invoke-virtual {p0, v3, v4, v6}, Lorg/newsclub/net/unix/AFOutputStream;->write([BII)V

    .line 39
    int-to-long v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 41
    :cond_1
    return-wide v0
.end method

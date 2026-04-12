.class public abstract Lorg/newsclub/net/unix/AFInputStream;
.super Ljava/io/InputStream;
.source "AFInputStream.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public transferTo(Ljava/io/OutputStream;)J
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const-string v0, "out"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .local v0, "transferred":J
    const/16 v2, 0x2000

    new-array v3, v2, [B

    .line 23
    .local v3, "buffer":[B
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Lorg/newsclub/net/unix/AFInputStream;->read([BII)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-ltz v5, :cond_0

    .line 24
    invoke-virtual {p1, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 25
    int-to-long v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 27
    :cond_0
    return-wide v0
.end method

.class final Lorg/newsclub/net/unix/FileDescriptorCast$LenientFileInputStream;
.super Ljava/io/FileInputStream;
.source "FileDescriptorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/FileDescriptorCast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LenientFileInputStream"
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 388
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/FileDescriptorCast$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/FileDescriptor;
    .param p2, "x1"    # Lorg/newsclub/net/unix/FileDescriptorCast$1;

    .line 386
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/FileDescriptorCast$LenientFileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    :try_start_0
    invoke-super {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "Invalid seek"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const/4 v2, 0x0

    return v2

    .line 401
    :cond_0
    throw v0
.end method

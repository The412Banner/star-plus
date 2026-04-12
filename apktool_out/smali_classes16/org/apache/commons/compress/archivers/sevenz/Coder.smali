.class Lorg/apache/commons/compress/archivers/sevenz/Coder;
.super Ljava/lang/Object;
.source "Coder.java"


# instance fields
.field decompressionMethodId:[B

.field numInStreams:J

.field numOutStreams:J

.field properties:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    return-void
.end method

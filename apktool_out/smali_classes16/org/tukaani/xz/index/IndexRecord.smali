.class Lorg/tukaani/xz/index/IndexRecord;
.super Ljava/lang/Object;


# instance fields
.field final uncompressed:J

.field final unpadded:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/tukaani/xz/index/IndexRecord;->unpadded:J

    iput-wide p3, p0, Lorg/tukaani/xz/index/IndexRecord;->uncompressed:J

    return-void
.end method

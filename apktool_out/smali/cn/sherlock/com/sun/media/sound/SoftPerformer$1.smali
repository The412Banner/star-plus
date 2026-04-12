.class Lcn/sherlock/com/sun/media/sound/SoftPerformer$1;
.super Ljava/lang/Object;
.source "SoftPerformer.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(D)D
    .locals 5
    .param p1, "value"    # D

    .line 96
    const-wide/high16 v0, 0x40d0000000000000L    # 16384.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 97
    .local v0, "v":I
    shr-int/lit8 v1, v0, 0x7

    .line 98
    .local v1, "msb":I
    and-int/lit8 v2, v0, 0x7f

    .line 99
    .local v2, "lsb":I
    mul-int/lit8 v3, v1, 0x64

    add-int/2addr v3, v2

    int-to-double v3, v3

    return-wide v3
.end method

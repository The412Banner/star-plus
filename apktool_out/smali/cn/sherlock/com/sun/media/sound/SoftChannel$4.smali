.class Lcn/sherlock/com/sun/media/sound/SoftChannel$4;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sherlock/com/sun/media/sound/SoftChannel;->createModelConnections(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;[I[I)[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field s:D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

.field final synthetic val$scale:D


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;D)V
    .locals 0
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 870
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->val$scale:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    iget-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->val$scale:D

    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->s:D

    return-void
.end method


# virtual methods
.method public transform(D)D
    .locals 6
    .param p1, "value"    # D

    .line 873
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->s:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 874
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->s:D

    iget-wide v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->s:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    .end local p1    # "value":D
    .local v0, "value":D
    goto :goto_0

    .line 875
    .end local v0    # "value":D
    .restart local p1    # "value":D
    :cond_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->s:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 876
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;->s:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    .line 879
    .end local p1    # "value":D
    .restart local v0    # "value":D
    :goto_0
    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    div-double/2addr v2, p1

    neg-double p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr p1, v2

    return-wide p1

    .line 878
    .end local v0    # "value":D
    .restart local p1    # "value":D
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

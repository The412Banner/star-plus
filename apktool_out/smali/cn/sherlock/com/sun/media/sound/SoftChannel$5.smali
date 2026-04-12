.class Lcn/sherlock/com/sun/media/sound/SoftChannel$5;
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

    .line 924
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$5;->this$0:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$5;->val$scale:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iget-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$5;->val$scale:D

    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$5;->s:D

    return-void
.end method


# virtual methods
.method public transform(D)D
    .locals 6
    .param p1, "value"    # D

    .line 927
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    div-double/2addr v2, v0

    neg-double v0, v2

    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel$5;->s:D

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    .line 928
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 927
    return-wide v0
.end method

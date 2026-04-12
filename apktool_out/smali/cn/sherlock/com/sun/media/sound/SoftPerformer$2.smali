.class Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;
.super Ljava/lang/Object;
.source "SoftPerformer.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sherlock/com/sun/media/sound/SoftPerformer;-><init>(Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field s:D

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

.field final synthetic val$scale:D


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftPerformer;D)V
    .locals 0
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SoftPerformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->this$0:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->val$scale:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iget-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->val$scale:D

    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->s:D

    return-void
.end method


# virtual methods
.method public transform(D)D
    .locals 4
    .param p1, "value"    # D

    .line 653
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 654
    .end local p1    # "value":D
    .local v0, "value":D
    const-wide p1, 0x4082c00000000000L    # 600.0

    mul-double/2addr v0, p1

    .line 655
    iget-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->s:D

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-nez p1, :cond_0

    .line 656
    return-wide v0

    .line 657
    :cond_0
    iget-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->s:D

    cmpl-double p1, p1, v2

    if-lez p1, :cond_2

    .line 658
    iget-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->s:D

    neg-double p1, p1

    cmpg-double p1, v0, p1

    if-gez p1, :cond_1

    .line 659
    iget-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->s:D

    neg-double v0, p1

    .line 660
    :cond_1
    return-wide v0

    .line 662
    :cond_2
    iget-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->s:D

    cmpg-double p1, v0, p1

    if-gez p1, :cond_3

    .line 663
    iget-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;->s:D

    neg-double v0, p1

    .line 664
    :cond_3
    neg-double p1, v0

    return-wide p1
.end method

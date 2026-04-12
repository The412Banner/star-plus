.class Lcn/sherlock/com/sun/media/sound/SF2Instrument$1;
.super Ljava/lang/Object;
.source "SF2Instrument.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sherlock/com/sun/media/sound/SF2Instrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SF2Instrument;


# direct methods
.method constructor <init>(Lcn/sherlock/com/sun/media/sound/SF2Instrument;)V
    .locals 0
    .param p1, "this$0"    # Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    .line 610
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SF2Instrument$1;->this$0:Lcn/sherlock/com/sun/media/sound/SF2Instrument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(D)D
    .locals 4
    .param p1, "value"    # D

    .line 612
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 613
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2

    .line 615
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

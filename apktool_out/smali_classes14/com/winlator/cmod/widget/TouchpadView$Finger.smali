.class Lcom/winlator/cmod/widget/TouchpadView$Finger;
.super Ljava/lang/Object;
.source "TouchpadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/widget/TouchpadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finger"
.end annotation


# instance fields
.field private lastX:I

.field private lastY:I

.field private final startX:I

.field private final startY:I

.field final synthetic this$0:Lcom/winlator/cmod/widget/TouchpadView;

.field private final touchTime:J

.field private x:I

.field private y:I


# direct methods
.method static bridge synthetic -$$Nest$fgetlastY(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->lastY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettouchTime(Lcom/winlator/cmod/widget/TouchpadView$Finger;)J
    .locals 2

    iget-wide v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->touchTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetx(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->x:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgety(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->y:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeltaX(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->deltaX()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeltaY(Lcom/winlator/cmod/widget/TouchpadView$Finger;)I
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->deltaY()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTap(Lcom/winlator/cmod/widget/TouchpadView$Finger;)Z
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->isTap()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtravelDistance(Lcom/winlator/cmod/widget/TouchpadView$Finger;)F
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->travelDistance()F

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/winlator/cmod/widget/TouchpadView;FF)V
    .locals 2
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 129
    iput-object p1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->this$0:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/winlator/cmod/widget/TouchpadView;->-$$Nest$fgetxform(Lcom/winlator/cmod/widget/TouchpadView;)[F

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object p1

    .line 131
    .local p1, "transformedPoint":[F
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->lastX:I

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->startX:I

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->x:I

    .line 132
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->lastY:I

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->startY:I

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->y:I

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->touchTime:J

    .line 134
    return-void
.end method

.method private deltaX()I
    .locals 3

    .line 145
    iget v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->x:I

    iget v1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->lastX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->this$0:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView;->-$$Nest$fgetsensitivity(Lcom/winlator/cmod/widget/TouchpadView;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 146
    .local v0, "dx":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    .line 147
    :cond_0
    invoke-static {v0}, Lcom/winlator/cmod/math/Mathf;->roundPoint(F)I

    move-result v1

    return v1
.end method

.method private deltaY()I
    .locals 3

    .line 151
    iget v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->y:I

    iget v1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->lastY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->this$0:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-static {v1}, Lcom/winlator/cmod/widget/TouchpadView;->-$$Nest$fgetsensitivity(Lcom/winlator/cmod/widget/TouchpadView;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 152
    .local v0, "dy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    .line 153
    :cond_0
    invoke-static {v0}, Lcom/winlator/cmod/math/Mathf;->roundPoint(F)I

    move-result v1

    return v1
.end method

.method private isTap()Z
    .locals 4

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->touchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/winlator/cmod/widget/TouchpadView$Finger;->travelDistance()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private travelDistance()F
    .locals 4

    .line 161
    iget v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->x:I

    iget v1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->startX:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->y:I

    iget v3, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->startY:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public update(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 137
    iget v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->x:I

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->lastX:I

    .line 138
    iget v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->y:I

    iput v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->lastY:I

    .line 139
    iget-object v0, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->this$0:Lcom/winlator/cmod/widget/TouchpadView;

    invoke-static {v0}, Lcom/winlator/cmod/widget/TouchpadView;->-$$Nest$fgetxform(Lcom/winlator/cmod/widget/TouchpadView;)[F

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/winlator/cmod/math/XForm;->transformPoint([FFF)[F

    move-result-object v0

    .line 140
    .local v0, "transformedPoint":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->x:I

    .line 141
    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/winlator/cmod/widget/TouchpadView$Finger;->y:I

    .line 142
    return-void
.end method

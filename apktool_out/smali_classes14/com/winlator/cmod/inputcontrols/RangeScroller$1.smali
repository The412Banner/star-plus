.class Lcom/winlator/cmod/inputcontrols/RangeScroller$1;
.super Ljava/util/TimerTask;
.source "RangeScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/inputcontrols/RangeScroller;->handleTouchDown(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/inputcontrols/RangeScroller;


# direct methods
.method public static synthetic $r8$lambda$U17TKanUa5Z7_oePqJLjUDdBJHo(Lcom/winlator/cmod/inputcontrols/RangeScroller$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/winlator/cmod/inputcontrols/RangeScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/inputcontrols/RangeScroller;

    .line 92
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;->this$0:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;->this$0:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-static {v0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->-$$Nest$fgetinputControlsView(Lcom/winlator/cmod/inputcontrols/RangeScroller;)Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;->this$0:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-static {v1}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->-$$Nest$fgetbinding(Lcom/winlator/cmod/inputcontrols/RangeScroller;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/widget/InputControlsView;->handleInputEvent(Lcom/winlator/cmod/inputcontrols/Binding;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;->this$0:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-static {v0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->-$$Nest$fgetscrolling(Lcom/winlator/cmod/inputcontrols/RangeScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/RangeScroller$1;->this$0:Lcom/winlator/cmod/inputcontrols/RangeScroller;

    invoke-static {v0}, Lcom/winlator/cmod/inputcontrols/RangeScroller;->-$$Nest$fgetinputControlsView(Lcom/winlator/cmod/inputcontrols/RangeScroller;)Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/inputcontrols/RangeScroller$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/inputcontrols/RangeScroller$1$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/inputcontrols/RangeScroller$1;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/InputControlsView;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    return-void
.end method

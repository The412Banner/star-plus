.class public Lcom/winlator/cmod/xserver/SelectionManager$Selection;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/SelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Selection"
.end annotation


# instance fields
.field private client:Lcom/winlator/cmod/xserver/XClient;

.field public owner:Lcom/winlator/cmod/xserver/Window;


# direct methods
.method static bridge synthetic -$$Nest$fgetclient(Lcom/winlator/cmod/xserver/SelectionManager$Selection;)Lcom/winlator/cmod/xserver/XClient;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/xserver/SelectionManager$Selection;->client:Lcom/winlator/cmod/xserver/XClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputclient(Lcom/winlator/cmod/xserver/SelectionManager$Selection;Lcom/winlator/cmod/xserver/XClient;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/xserver/SelectionManager$Selection;->client:Lcom/winlator/cmod/xserver/XClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

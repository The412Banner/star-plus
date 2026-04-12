.class Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;
.super Ljava/lang/Object;
.source "PresentExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/extensions/PresentExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field private client:Lcom/winlator/cmod/xserver/XClient;

.field private id:I

.field private mask:Lcom/winlator/cmod/xserver/Bitmask;

.field private window:Lcom/winlator/cmod/xserver/Window;


# direct methods
.method static bridge synthetic -$$Nest$fgetclient(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/XClient;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->client:Lcom/winlator/cmod/xserver/XClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->id:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmask(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/Bitmask;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->mask:Lcom/winlator/cmod/xserver/Bitmask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindow(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/Window;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->window:Lcom/winlator/cmod/xserver/Window;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputclient(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;Lcom/winlator/cmod/xserver/XClient;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->client:Lcom/winlator/cmod/xserver/XClient;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;I)V
    .locals 0

    iput p1, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->id:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmask(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->mask:Lcom/winlator/cmod/xserver/Bitmask;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwindow(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;Lcom/winlator/cmod/xserver/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->window:Lcom/winlator/cmod/xserver/Window;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/xserver/extensions/PresentExtension-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;-><init>()V

    return-void
.end method

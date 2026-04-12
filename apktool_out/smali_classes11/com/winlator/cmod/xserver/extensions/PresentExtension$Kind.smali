.class public final enum Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;
.super Ljava/lang/Enum;
.source "PresentExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/extensions/PresentExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

.field public static final enum MSC_NOTIFY:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

.field public static final enum PIXMAP:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;
    .locals 2

    .line 32
    sget-object v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->PIXMAP:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    sget-object v1, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->MSC_NOTIFY:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    filled-new-array {v0, v1}, [Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    const-string v1, "PIXMAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->PIXMAP:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    new-instance v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    const-string v1, "MSC_NOTIFY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->MSC_NOTIFY:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    invoke-static {}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->$values()[Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->$VALUES:[Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;
    .locals 1

    .line 32
    sget-object v0, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->$VALUES:[Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    return-object v0
.end method

.class public final enum Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;
.super Ljava/lang/Enum;
.source "WindowAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/WindowAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackingStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

.field public static final enum ALWAYS:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

.field public static final enum NOT_USEFUL:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

.field public static final enum WHEN_MAPPED:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;


# direct methods
.method private static synthetic $values()[Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;
    .locals 3

    .line 21
    sget-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->NOT_USEFUL:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    sget-object v1, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->WHEN_MAPPED:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    sget-object v2, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->ALWAYS:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    filled-new-array {v0, v1, v2}, [Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    const-string v1, "NOT_USEFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->NOT_USEFUL:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    new-instance v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    const-string v1, "WHEN_MAPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->WHEN_MAPPED:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    new-instance v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    const-string v1, "ALWAYS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->ALWAYS:Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    invoke-static {}, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->$values()[Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->$VALUES:[Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    return-object v0
.end method

.method public static values()[Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;
    .locals 1

    .line 21
    sget-object v0, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->$VALUES:[Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    invoke-virtual {v0}, [Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    return-object v0
.end method

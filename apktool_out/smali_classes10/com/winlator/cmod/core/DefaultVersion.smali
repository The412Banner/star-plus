.class public abstract Lcom/winlator/cmod/core/DefaultVersion;
.super Ljava/lang/Object;
.source "DefaultVersion.java"


# static fields
.field public static final BOX64:Ljava/lang/String; = "0.3.7"

.field public static final D8VK:Ljava/lang/String; = "1.0"

.field public static final DXVK:Ljava/lang/String;

.field public static final FEXCORE:Ljava/lang/String; = "2508"

.field public static final VKD3D:Ljava/lang/String; = "None"

.field public static final WOWBOX64:Ljava/lang/String; = "0.3.7"

.field public static final WRAPPER:Ljava/lang/String; = "System"

.field public static final WRAPPER_ADRENO:Ljava/lang/String; = "turnip25.1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/winlator/cmod/core/GPUInformation;->getRenderer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mali"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.10.3"

    goto :goto_0

    :cond_0
    const-string v0, "2.3.1"

    :goto_0
    sput-object v0, Lcom/winlator/cmod/core/DefaultVersion;->DXVK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

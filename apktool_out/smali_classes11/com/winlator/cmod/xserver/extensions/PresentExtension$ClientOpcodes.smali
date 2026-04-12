.class abstract Lcom/winlator/cmod/xserver/extensions/PresentExtension$ClientOpcodes;
.super Ljava/lang/Object;
.source "PresentExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/extensions/PresentExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClientOpcodes"
.end annotation


# static fields
.field private static final PRESENT_PIXMAP:B = 0x1t

.field private static final QUERY_VERSION:B = 0x0t

.field private static final SELECT_INPUT:B = 0x3t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

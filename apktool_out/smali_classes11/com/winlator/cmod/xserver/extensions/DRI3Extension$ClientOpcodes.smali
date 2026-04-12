.class abstract Lcom/winlator/cmod/xserver/extensions/DRI3Extension$ClientOpcodes;
.super Ljava/lang/Object;
.source "DRI3Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/extensions/DRI3Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClientOpcodes"
.end annotation


# static fields
.field private static final OPEN:B = 0x1t

.field private static final PIXMAP_FROM_BUFFER:B = 0x2t

.field private static final PIXMAP_FROM_BUFFERS:B = 0x7t

.field private static final QUERY_VERSION:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class abstract Lcom/winlator/cmod/xserver/extensions/MITSHMExtension$ClientOpcodes;
.super Ljava/lang/Object;
.source "MITSHMExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClientOpcodes"
.end annotation


# static fields
.field private static final ATTACH:B = 0x1t

.field private static final DETACH:B = 0x2t

.field private static final PUT_IMAGE:B = 0x3t

.field private static final QUERY_VERSION:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

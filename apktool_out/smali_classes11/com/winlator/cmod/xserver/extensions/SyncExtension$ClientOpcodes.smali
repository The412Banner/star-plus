.class abstract Lcom/winlator/cmod/xserver/extensions/SyncExtension$ClientOpcodes;
.super Ljava/lang/Object;
.source "SyncExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/xserver/extensions/SyncExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClientOpcodes"
.end annotation


# static fields
.field private static final AWAIT_FENCE:B = 0x13t

.field private static final CREATE_FENCE:B = 0xet

.field private static final DESTROY_FENCE:B = 0x11t

.field private static final RESET_FENCE:B = 0x10t

.field private static final TRIGGER_FENCE:B = 0xft


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

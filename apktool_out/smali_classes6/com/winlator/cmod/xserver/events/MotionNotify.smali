.class public Lcom/winlator/cmod/xserver/events/MotionNotify;
.super Lcom/winlator/cmod/xserver/events/InputDeviceEvent;
.source "MotionNotify.java"


# direct methods
.method public constructor <init>(ZLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V
    .locals 12
    .param p1, "detail"    # Z
    .param p2, "root"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "event"    # Lcom/winlator/cmod/xserver/Window;
    .param p4, "child"    # Lcom/winlator/cmod/xserver/Window;
    .param p5, "rootX"    # S
    .param p6, "rootY"    # S
    .param p7, "eventX"    # S
    .param p8, "eventY"    # S
    .param p9, "state"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 8
    move v0, p1

    int-to-byte v3, v0

    const/4 v2, 0x6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;-><init>(IBLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V

    .line 9
    return-void
.end method

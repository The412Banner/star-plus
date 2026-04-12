.class public Lcom/winlator/cmod/xserver/events/ButtonRelease;
.super Lcom/winlator/cmod/xserver/events/InputDeviceEvent;
.source "ButtonRelease.java"


# direct methods
.method public constructor <init>(BLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V
    .locals 11
    .param p1, "detail"    # B
    .param p2, "root"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "event"    # Lcom/winlator/cmod/xserver/Window;
    .param p4, "child"    # Lcom/winlator/cmod/xserver/Window;
    .param p5, "rootX"    # S
    .param p6, "rootY"    # S
    .param p7, "eventX"    # S
    .param p8, "eventY"    # S
    .param p9, "state"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 8
    const/4 v1, 0x5

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/winlator/cmod/xserver/events/InputDeviceEvent;-><init>(IBLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V

    .line 9
    return-void
.end method

.class public Lcom/winlator/cmod/xserver/events/EnterNotify;
.super Lcom/winlator/cmod/xserver/events/PointerWindowEvent;
.source "EnterNotify.java"


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;Z)V
    .locals 13
    .param p1, "detail"    # Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    .param p2, "root"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "event"    # Lcom/winlator/cmod/xserver/Window;
    .param p4, "child"    # Lcom/winlator/cmod/xserver/Window;
    .param p5, "rootX"    # S
    .param p6, "rootY"    # S
    .param p7, "eventX"    # S
    .param p8, "eventY"    # S
    .param p9, "state"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p10, "mode"    # Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;
    .param p11, "sameScreenAndFocus"    # Z

    .line 8
    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/winlator/cmod/xserver/events/PointerWindowEvent;-><init>(ILcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;Z)V

    .line 9
    return-void
.end method

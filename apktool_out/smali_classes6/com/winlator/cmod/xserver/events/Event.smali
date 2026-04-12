.class public abstract Lcom/winlator/cmod/xserver/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final BUTTON1_MOTION:I = 0x100

.field public static final BUTTON2_MOTION:I = 0x200

.field public static final BUTTON3_MOTION:I = 0x400

.field public static final BUTTON4_MOTION:I = 0x800

.field public static final BUTTON5_MOTION:I = 0x1000

.field public static final BUTTON_MOTION:I = 0x2000

.field public static final BUTTON_PRESS:I = 0x4

.field public static final BUTTON_RELEASE:I = 0x8

.field public static final COLORMAP_CHANGE:I = 0x800000

.field public static final ENTER_WINDOW:I = 0x10

.field public static final EXPOSURE:I = 0x8000

.field public static final FOCUS_CHANGE:I = 0x200000

.field public static final KEYMAP_STATE:I = 0x4000

.field public static final KEY_PRESS:I = 0x1

.field public static final KEY_RELEASE:I = 0x2

.field public static final LEAVE_WINDOW:I = 0x20

.field public static final OWNER_GRAB_BUTTON:I = 0x1000000

.field public static final POINTER_MOTION:I = 0x40

.field public static final POINTER_MOTION_HINT:I = 0x80

.field public static final PROPERTY_CHANGE:I = 0x400000

.field public static final RESIZE_REDIRECT:I = 0x40000

.field public static final STRUCTURE_NOTIFY:I = 0x20000

.field public static final SUBSTRUCTURE_NOTIFY:I = 0x80000

.field public static final SUBSTRUCTURE_REDIRECT:I = 0x100000

.field public static final VISIBILITY_CHANGE:I = 0x10000


# instance fields
.field protected final code:B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/winlator/cmod/xserver/events/Event;->code:B

    .line 37
    return-void
.end method


# virtual methods
.method public abstract send(SLcom/winlator/cmod/xconnector/XOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

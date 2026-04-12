.class public abstract Lcom/winlator/cmod/xserver/ClientOpcodes;
.super Ljava/lang/Object;
.source "ClientOpcodes.java"


# static fields
.field public static final BELL:B = 0x68t

.field public static final CHANGE_GC:B = 0x38t

.field public static final CHANGE_PROPERTY:B = 0x12t

.field public static final CHANGE_WINDOW_ATTRIBUTES:B = 0x2t

.field public static final CONFIGURE_WINDOW:B = 0xct

.field public static final COPY_AREA:B = 0x3et

.field public static final COPY_GC:B = 0x3at

.field public static final CREATE_COLORMAP:B = 0x4et

.field public static final CREATE_CURSOR:B = 0x5dt

.field public static final CREATE_GC:B = 0x37t

.field public static final CREATE_GLYPH_CURSOR:B = 0x5et

.field public static final CREATE_PIXMAP:B = 0x35t

.field public static final CREATE_WINDOW:B = 0x1t

.field public static final DELETE_PROPERTY:B = 0x13t

.field public static final DESTROY_SUB_WINDOWS:B = 0x5t

.field public static final DESTROY_WINDOW:B = 0x4t

.field public static final FORCE_SCREEN_SAVER:B = 0x73t

.field public static final FREE_COLORMAP:B = 0x4ft

.field public static final FREE_CURSOR:B = 0x5ft

.field public static final FREE_GC:B = 0x3ct

.field public static final FREE_PIXMAP:B = 0x36t

.field public static final GET_ATOM_NAME:B = 0x11t

.field public static final GET_GEOMETRY:B = 0xet

.field public static final GET_IMAGE:B = 0x49t

.field public static final GET_INPUT_FOCUS:B = 0x2bt

.field public static final GET_KEYBOARD_MAPPING:B = 0x65t

.field public static final GET_MODIFIER_MAPPING:B = 0x77t

.field public static final GET_POINTER_MAPPING:B = 0x75t

.field public static final GET_PROPERTY:B = 0x14t

.field public static final GET_SCREEN_SAVER:B = 0x6ct

.field public static final GET_SELECTION_OWNER:B = 0x17t

.field public static final GET_WINDOW_ATTRIBUTES:B = 0x3t

.field public static final GRAB_POINTER:B = 0x1at

.field public static final INTERN_ATOM:B = 0x10t

.field public static final LIST_FONTS:B = 0x31t

.field public static final MAP_SUB_WINDOWS:B = 0x9t

.field public static final MAP_WINDOW:B = 0x8t

.field public static final NO_OPERATION:B = 0x7ft

.field public static final OPEN_FONT:B = 0x2dt

.field public static final POLY_FILL_RECTANGLE:B = 0x46t

.field public static final POLY_LINE:B = 0x41t

.field public static final POLY_RECTANGLE:B = 0x43t

.field public static final POLY_SEGMENT:B = 0x42t

.field public static final PUT_IMAGE:B = 0x48t

.field public static final QUERY_EXTENSION:B = 0x62t

.field public static final QUERY_KEYMAP:B = 0x2ct

.field public static final QUERY_POINTER:B = 0x26t

.field public static final QUERY_TREE:B = 0xft

.field public static final REPARENT_WINDOW:B = 0x7t

.field public static final SEND_EVENT:B = 0x19t

.field public static final SET_CLIP_RECTANGLES:B = 0x3bt

.field public static final SET_INPUT_FOCUS:B = 0x2at

.field public static final SET_SCREEN_SAVER:B = 0x6bt

.field public static final SET_SELECTION_OWNER:B = 0x16t

.field public static final TRANSLATE_COORDINATES:B = 0x28t

.field public static final UNGRAB_POINTER:B = 0x1bt

.field public static final UNMAP_WINDOW:B = 0xat

.field public static final WARP_POINTER:B = 0x29t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

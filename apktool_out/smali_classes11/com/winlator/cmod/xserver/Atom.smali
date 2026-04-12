.class public abstract Lcom/winlator/cmod/xserver/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# static fields
.field private static final atoms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x45

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "PRIMARY"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "SECONDARY"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ARC"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ATOM"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "BITMAP"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "CARDINAL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "COLORMAP"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "CURSOR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "CUT_BUFFER0"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CUT_BUFFER1"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "CUT_BUFFER2"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "CUT_BUFFER3"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "CUT_BUFFER4"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CUT_BUFFER5"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CUT_BUFFER6"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CUT_BUFFER7"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "DRAWABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "FONT"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "INTEGER"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "PIXMAP"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "POINT"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "RECTANGLE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "RESOURCE_MANAGER"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "RGB_COLOR_MAP"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "RGB_BEST_MAP"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "RGB_BLUE_MAP"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "RGB_DEFAULT_MAP"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "RGB_GRAY_MAP"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "RGB_GREEN_MAP"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "RGB_RED_MAP"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "STRING"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "VISUALID"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "WM_COMMAND"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "WM_HINTS"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "WM_CLIENT_MACHINE"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "WM_ICON_NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "WM_ICON_SIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "WM_NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "WM_NORMAL_HINTS"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "WM_SIZE_HINTS"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "WM_ZOOM_HINTS"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "MIN_SPACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "NORM_SPACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "MAX_SPACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "END_SPACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "SUPERSC.LPT_X"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "SUPERSC.LPT_Y"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "SUBSC.LPT_X"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "SUBSC.LPT_Y"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "UNDERLINE_POSITION"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "UNDERLINE_THICKNESS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "STRIKEOUT_ASCENT"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "STRIKEOUT_DESCENT"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "ITALIC_ANGLE"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "X_HEIGHT"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "QUAD_WIDTH"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "WEIGHT"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "POINT_SIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "RESOLUTION"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "COPYRIGHT"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "NOTICE"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "FONT_NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "FAMILY_NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "FULL_NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "CAP_HEIGHT"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "WM_CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "WM_TRANSIENT_FOR"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/winlator/cmod/xserver/Atom;->atoms:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getId(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Lcom/winlator/cmod/xserver/Atom;

    monitor-enter v0

    .line 14
    if-nez p0, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/winlator/cmod/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/winlator/cmod/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 13
    .end local p0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getName(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    const-class v0, Lcom/winlator/cmod/xserver/Atom;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/winlator/cmod/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 10
    .end local p0    # "id":I
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized internAtom(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Lcom/winlator/cmod/xserver/Atom;

    monitor-enter v0

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v1

    .line 21
    .local v1, "id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 22
    sget-object v2, Lcom/winlator/cmod/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    .line 23
    sget-object v2, Lcom/winlator/cmod/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit v0

    return v1

    .line 19
    .end local v1    # "id":I
    .end local p0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized isValid(I)Z
    .locals 2
    .param p0, "id"    # I

    const-class v0, Lcom/winlator/cmod/xserver/Atom;

    monitor-enter v0

    .line 29
    if-lez p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/winlator/cmod/xserver/Atom;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 29
    .end local p0    # "id":I
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 29
    .restart local p0    # "id":I
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1
.end method

.class public final Lcom/winlator/cmod/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final NumberPicker:[I

.field public static final NumberPicker_maxValue:I = 0x0

.field public static final NumberPicker_minValue:I = 0x1

.field public static final NumberPicker_step:I = 0x2

.field public static final NumberPicker_textSize:I = 0x3

.field public static final NumberPicker_value:I = 0x4

.field public static final SeekBar:[I

.field public static final SeekBar_colorSecondary:I = 0x0

.field public static final SeekBar_sbMaxValue:I = 0x1

.field public static final SeekBar_sbMinValue:I = 0x2

.field public static final SeekBar_sbStep:I = 0x3

.field public static final SeekBar_sbTextSize:I = 0x4

.field public static final SeekBar_sbValue:I = 0x5

.field public static final SeekBar_suffix:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const v0, 0x7f040389

    const v1, 0x7f0403cc

    const v2, 0x7f040264

    const v3, 0x7f04026f

    const v4, 0x7f040333

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/R$styleable;->NumberPicker:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/winlator/cmod/R$styleable;->SeekBar:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400d2
        0x7f0402ea
        0x7f0402eb
        0x7f0402ec
        0x7f0402ed
        0x7f0402ee
        0x7f04033d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

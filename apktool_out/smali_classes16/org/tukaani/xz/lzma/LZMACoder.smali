.class abstract Lorg/tukaani/xz/lzma/LZMACoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;,
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
    }
.end annotation


# static fields
.field static final ALIGN_BITS:I = 0x4

.field static final ALIGN_MASK:I = 0xf

.field static final ALIGN_SIZE:I = 0x10

.field static final DIST_MODEL_END:I = 0xe

.field static final DIST_MODEL_START:I = 0x4

.field static final DIST_SLOTS:I = 0x40

.field static final DIST_STATES:I = 0x4

.field static final FULL_DISTANCES:I = 0x80

.field static final MATCH_LEN_MAX:I = 0x111

.field static final MATCH_LEN_MIN:I = 0x2

.field static final POS_STATES_MAX:I = 0x10

.field static final REPS:I = 0x4


# instance fields
.field final distAlign:[S

.field final distSlots:[[S

.field final distSpecial:[[S

.field final isMatch:[[S

.field final isRep:[S

.field final isRep0:[S

.field final isRep0Long:[[S

.field final isRep1:[S

.field final isRep2:[S

.field final posMask:I

.field final reps:[I

.field final state:Lorg/tukaani/xz/lzma/State;


# direct methods
.method constructor <init>(I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    new-instance v2, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v2}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/16 v5, 0x10

    aput v5, v3, v4

    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v3, v6

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    new-array v3, v2, [I

    aput v5, v3, v4

    aput v7, v3, v6

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    new-array v3, v2, [I

    const/16 v7, 0x40

    aput v7, v3, v4

    aput v1, v3, v6

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    new-array v6, v2, [S

    new-array v7, v2, [S

    new-array v8, v1, [S

    new-array v9, v1, [S

    const/16 v1, 0x8

    new-array v10, v1, [S

    new-array v11, v1, [S

    new-array v12, v5, [S

    new-array v13, v5, [S

    const/16 v1, 0x20

    new-array v14, v1, [S

    new-array v15, v1, [S

    filled-new-array/range {v6 .. v15}, [[S

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    new-array v1, v5, [S

    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    shl-int v1, v4, p1

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    return-void
.end method

.method static final getDistState(I)I
    .locals 1

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method


# virtual methods
.method reset()V
    .locals 3

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->reset()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    return-void
.end method

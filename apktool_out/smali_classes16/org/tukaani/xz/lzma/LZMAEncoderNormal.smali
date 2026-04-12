.class final Lorg/tukaani/xz/lzma/LZMAEncoderNormal;
.super Lorg/tukaani/xz/lzma/LZMAEncoder;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXTRA_SIZE_AFTER:I = 0x1000

.field private static final EXTRA_SIZE_BEFORE:I = 0x1000

.field private static final OPTS:I = 0x1000


# instance fields
.field private matches:Lorg/tukaani/xz/lz/Matches;

.field private final nextState:Lorg/tukaani/xz/lzma/State;

.field private optCur:I

.field private optEnd:I

.field private final opts:[Lorg/tukaani/xz/lzma/Optimum;

.field private final repLens:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 10

    move-object v8, p0

    const/16 v9, 0x1000

    move/from16 v0, p6

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x1000

    const/16 v4, 0x111

    move v0, p5

    move/from16 v3, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lorg/tukaani/xz/lz/LZEncoder;->getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/lzma/LZMAEncoder;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V

    new-array v0, v9, [Lorg/tukaani/xz/lzma/Optimum;

    iput-object v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v0, 0x0

    iput v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    new-instance v1, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v1}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v1, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v1, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    new-instance v2, Lorg/tukaani/xz/lzma/Optimum;

    invoke-direct {v2}, Lorg/tukaani/xz/lzma/Optimum;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calc1BytePrices(IIII)V
    .locals 11

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v3, v3, v1

    const/4 v8, 0x1

    add-int/2addr v3, v8

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v9

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v3

    iget v10, v2, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v3, v8}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v5

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v4

    iget-object v7, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move v3, v0

    move v4, v9

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v2

    add-int/2addr v10, v2

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v3, v8

    aget-object v2, v2, v3

    iget v2, v2, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v10, v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v3, v8

    aget-object v2, v2, v3

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v4, -0x1

    invoke-virtual {v2, v10, v3, v4}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ne v9, v0, :cond_2

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v4, v8

    aget-object v3, v3, v4

    iget v3, v3, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v4, v8

    aget-object v3, v3, v4

    iget v3, v3, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, p4, v3, p2}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result p2

    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v3, v8

    aget-object p4, p4, v3

    iget p4, p4, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-gt p2, p4, :cond_2

    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v2, v8

    aget-object p4, p4, v2

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {p4, p2, v2, v1}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    move v2, v8

    :cond_2
    if-nez v2, :cond_4

    if-eq v9, v0, :cond_4

    const/4 p2, 0x2

    if-le p3, p2, :cond_4

    iget p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    sub-int/2addr p3, v8

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v0, v0, v1

    invoke-virtual {p4, v8, v0, p3}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result p3

    if-lt p3, p2, :cond_4

    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object p4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object p4, p4, v0

    iget-object p4, p4, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p2, p4}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    add-int/2addr p1, v8

    iget p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr p1, p2

    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {p0, v1, p3, p2, p1}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result p1

    add-int/2addr v10, p1

    iget p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr p1, v8

    add-int/2addr p1, p3

    :goto_1
    iget p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge p2, p1, :cond_3

    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr p3, v8

    iput p3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object p2, p2, p1

    iget p2, p2, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v10, p2, :cond_4

    iget-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object p1, p2, p1

    iget p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {p1, v10, p2, v1}, Lorg/tukaani/xz/lzma/Optimum;->set2(III)V

    :cond_4
    return-void
.end method

.method private calcLongRepPrices(IIII)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v6, v4

    move v12, v5

    :goto_0
    const/4 v7, 0x4

    if-ge v12, v7, :cond_7

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v8, v8, v12

    invoke-virtual {v7, v8, v3}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v10

    if-ge v10, v4, :cond_0

    move/from16 v13, p4

    goto/16 :goto_4

    :cond_0
    :goto_1
    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v8, v10

    const/4 v9, 0x1

    if-ge v7, v8, :cond_1

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v8, v9

    iput v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v13, p4

    invoke-virtual {v0, v13, v12, v7, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v7

    move v8, v10

    :goto_2
    if-lt v8, v4, :cond_3

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v11, v8, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v15, v8

    aget-object v14, v14, v15

    iget v14, v14, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v11, v14, :cond_2

    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v15, v8

    aget-object v14, v14, v15

    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {v14, v11, v15, v12}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_3
    if-nez v12, :cond_4

    add-int/lit8 v6, v10, 0x1

    :cond_4
    move v14, v6

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    sub-int v8, v2, v10

    sub-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v11, v10, 0x1

    iget-object v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v9, v15, v9

    iget-object v9, v9, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v9, v9, v12

    invoke-virtual {v8, v11, v9, v6}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v6

    if-lt v6, v4, :cond_6

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v8, v10, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v9, v9, v11

    iget-object v9, v9, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v8, v9}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v8}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v8, v10, v5}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v17

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v8, v5}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v18

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v9, 0x1

    invoke-virtual {v8, v10, v9}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v19

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v9, p1, v10

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    move-object/from16 v16, v8

    move/from16 v20, v9

    move-object/from16 v21, v11

    invoke-virtual/range {v16 .. v21}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v8}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    const/4 v8, 0x1

    add-int/2addr v9, v8

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr v9, v11

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v5, v6, v11, v9}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v9

    add-int/2addr v7, v9

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v9, v6

    :goto_3
    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v6, v9, :cond_5

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v11, v8

    iput v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v6, v6, v11

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_3

    :cond_5
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v6, v6, v9

    iget v6, v6, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v7, v6, :cond_6

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v6, v6, v9

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v11, 0x0

    move v9, v12

    invoke-virtual/range {v6 .. v11}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    :cond_6
    move v6, v14

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_7
    return v6
.end method

.method private calcNormalMatchPrices(IIIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v4, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    :goto_0
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aget v3, v3, v6

    if-ge v3, v1, :cond_0

    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/2addr v6, v5

    iput v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v1, v3, v7

    :cond_1
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v6, v5

    aget v3, v3, v6

    if-ge v3, v2, :cond_2

    return-void

    :cond_2
    :goto_1
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v8, v5

    aget v7, v7, v8

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v6

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v6, p4

    invoke-virtual {v0, v6, v3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v3

    move v6, v4

    :goto_2
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v7, v7, v6

    if-le v2, v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v7, v7, v6

    move/from16 v13, p2

    invoke-virtual {v0, v3, v7, v2, v13}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatchAndLenPrice(IIII)I

    move-result v8

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v10, v2

    aget-object v9, v9, v10

    iget v9, v9, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v8, v9, :cond_5

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v10, v2

    aget-object v9, v9, v10

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v11, v7, 0x4

    invoke-virtual {v9, v8, v10, v11}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    :cond_5
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v9, v9, v6

    if-eq v2, v9, :cond_6

    goto/16 :goto_5

    :cond_6
    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    sub-int v10, v1, v2

    sub-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11, v7, v9}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_8

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v12, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v11, v11, v12

    iget-object v11, v11, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v10, v11}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v10}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v10, v2, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v15

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v10, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v16

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v10, v2, v5}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v17

    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v10, p1, v2

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    move/from16 v18, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v11

    add-int/2addr v8, v11

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v11}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    add-int/2addr v10, v5

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr v10, v11

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v4, v9, v11, v10}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v10

    add-int/2addr v8, v10

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v10, v2

    add-int/2addr v10, v5

    add-int/2addr v10, v9

    :goto_4
    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v9, v10, :cond_7

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v11, v5

    iput v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v9, v9, v11

    invoke-virtual {v9}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_4

    :cond_7
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v9, v9, v10

    iget v9, v9, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v8, v9, :cond_8

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v9, v9, v10

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v11, v7, 0x4

    const/4 v12, 0x0

    move-object v7, v9

    move v9, v10

    move v10, v11

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v6, v7, :cond_9

    return-void

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method private convertOpts()I
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-boolean v2, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    add-int/lit8 v2, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget-boolean v0, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v2

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v2

    iget v3, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    iput v3, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v0, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    goto :goto_1

    :cond_0
    move v0, v2

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static getMemoryUsage(III)I
    .locals 2

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x111

    invoke-static {p0, p1, v0, v1, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMemoryUsage(IIIII)I

    move-result p0

    add-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private updateOptStateAndReps()V
    .locals 7

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget v4, v4, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    :goto_1
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    :goto_3
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    :cond_6
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    :goto_4
    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-ge v1, v2, :cond_8

    aget-object v5, v5, v6

    goto :goto_4

    :cond_8
    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    :goto_5
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-ge v1, v2, :cond_a

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v6, v6, v1

    aput v6, v5, v4

    :goto_6
    if-gt v3, v1, :cond_9

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-ge v3, v2, :cond_b

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v4

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v4, v4, v3

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    sub-int/2addr v1, v2

    aput v1, v5, v4

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    const/4 v2, 0x3

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    return-void

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method getNextSymbol()I
    .locals 18

    move-object/from16 v6, p0

    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    sub-int/2addr v0, v1

    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    return v0

    :cond_0
    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    iput v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    const/4 v7, -0x1

    iput v7, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->readAhead:I

    if-ne v1, v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v1

    iput-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    :cond_1
    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v1

    const/16 v2, 0x111

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v1, v8, :cond_2

    return v9

    :cond_2
    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_5

    iget-object v4, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    aget v10, v10, v2

    invoke-virtual {v5, v10, v1}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v5

    aput v5, v4, v2

    iget-object v4, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v4, v4, v2

    if-ge v4, v8, :cond_3

    iget-object v4, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aput v0, v4, v2

    goto :goto_1

    :cond_3
    iget-object v4, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v4, v4, v2

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v5, v5, v3

    if-le v4, v5, :cond_4

    move v3, v2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v1, v1, v3

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v1, v2, :cond_6

    iput v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v0, v0, v3

    sub-int/2addr v0, v9

    invoke-virtual {v6, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->skip(I)V

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v0, v0, v3

    return v0

    :cond_6
    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v1, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v1, :cond_7

    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v1, v1, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v2, v9

    aget v1, v1, v2

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v5, v9

    aget v2, v2, v5

    iget v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v1, v5, :cond_8

    add-int/2addr v2, v4

    iput v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v6, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->skip(I)V

    return v1

    :cond_7
    move v1, v0

    :cond_8
    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v2, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v2

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    aget v10, v10, v0

    add-int/2addr v10, v9

    invoke-virtual {v5, v10}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v5

    if-ge v1, v8, :cond_9

    if-eq v2, v5, :cond_9

    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v10, v10, v3

    if-ge v10, v8, :cond_9

    return v9

    :cond_9
    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v10}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v16

    iget v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int v15, v16, v10

    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v10, v9}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v13

    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    move v11, v2

    move v12, v5

    move-object/from16 v17, v14

    move/from16 v14, v16

    move v4, v15

    move-object/from16 v15, v17

    invoke-virtual/range {v10 .. v15}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v10

    iget-object v11, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v9

    invoke-virtual {v11, v10, v0, v7}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v10, v4}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v10

    iget-object v11, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v10, v11}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v11

    if-ne v5, v2, :cond_a

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v11, v2, v4}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result v2

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v9

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v2, v5, :cond_a

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v9

    invoke-virtual {v5, v2, v0, v0}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    :cond_a
    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v2, v8, :cond_c

    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-nez v0, :cond_b

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v9

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    return v9

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->updatePrices()V

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    const/4 v5, 0x4

    invoke-static {v2, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    :goto_2
    if-lt v2, v8, :cond_d

    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_d
    move v2, v0

    :goto_3
    if-ge v2, v5, :cond_11

    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v3, v3, v2

    if-ge v3, v8, :cond_e

    goto :goto_4

    :cond_e
    iget-object v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v11, v2, v12, v4}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v12

    :cond_f
    iget-object v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v13, v3, v4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v13

    add-int/2addr v13, v12

    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v3

    iget v14, v14, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v13, v14, :cond_10

    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v3

    invoke-virtual {v14, v13, v0, v2}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    :cond_10
    add-int/lit8 v3, v3, -0x1

    if-ge v3, v8, :cond_f

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v2, v2, v0

    add-int/2addr v2, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v2, v1, :cond_15

    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v10, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v1

    move v3, v0

    :goto_5
    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v5, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v5, v5, v3

    if-le v2, v5, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    :goto_6
    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v5, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v5, v5, v3

    invoke-virtual {v6, v1, v5, v2, v4}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatchAndLenPrice(IIII)I

    move-result v10

    iget-object v11, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v2

    iget v11, v11, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v10, v11, :cond_13

    iget-object v11, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v2

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v11, v10, v0, v5}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    :cond_13
    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v5, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v5, v5, v3

    if-ne v2, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v5, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v3, v5, :cond_14

    goto :goto_7

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    :goto_7
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    const/16 v1, 0xfff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_8
    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v1, v9

    iput v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v1, v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v1

    iput-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v1, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v1, :cond_16

    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v1, v1, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v2, v9

    aget v1, v1, v2

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v1, v2, :cond_16

    goto :goto_9

    :cond_16
    add-int/lit8 v10, v0, -0x1

    add-int/lit8 v11, v16, 0x1

    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int v2, v11, v0

    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->updateOptStateAndReps()V

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v1, v2}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v4, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v0

    invoke-direct {v6, v11, v2, v10, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calc1BytePrices(IIII)V

    if-lt v10, v8, :cond_17

    invoke-direct {v6, v11, v2, v10, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcLongRepPrices(IIII)I

    move-result v5

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v0, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v0, :cond_17

    move-object/from16 v0, p0

    move v1, v11

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcNormalMatchPrices(IIIII)V

    :cond_17
    move v0, v10

    move/from16 v16, v11

    goto :goto_8

    :cond_18
    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->convertOpts()I

    move-result v0

    return v0

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    return-void
.end method

.class public Ljp/kshoji/javax/sound/midi/Patch;
.super Ljava/lang/Object;
.source "Patch.java"


# instance fields
.field private final bank:I

.field private final program:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "bank"    # I
    .param p2, "program"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Ljp/kshoji/javax/sound/midi/Patch;->bank:I

    .line 20
    iput p2, p0, Ljp/kshoji/javax/sound/midi/Patch;->program:I

    .line 21
    return-void
.end method


# virtual methods
.method public getBank()I
    .locals 1

    .line 29
    iget v0, p0, Ljp/kshoji/javax/sound/midi/Patch;->bank:I

    return v0
.end method

.method public getProgram()I
    .locals 1

    .line 38
    iget v0, p0, Ljp/kshoji/javax/sound/midi/Patch;->program:I

    return v0
.end method

.class Ljp/kshoji/javax/sound/midi/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljp/kshoji/javax/sound/midi/MidiEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Ljp/kshoji/javax/sound/midi/MidiEvent;

    check-cast p2, Ljp/kshoji/javax/sound/midi/MidiEvent;

    invoke-virtual {p0, p1, p2}, Ljp/kshoji/javax/sound/midi/Track$1;->compare(Ljp/kshoji/javax/sound/midi/MidiEvent;Ljp/kshoji/javax/sound/midi/MidiEvent;)I

    move-result p1

    return p1
.end method

.method public compare(Ljp/kshoji/javax/sound/midi/MidiEvent;Ljp/kshoji/javax/sound/midi/MidiEvent;)I
    .locals 7
    .param p1, "lhs"    # Ljp/kshoji/javax/sound/midi/MidiEvent;
    .param p2, "rhs"    # Ljp/kshoji/javax/sound/midi/MidiEvent;

    .line 32
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v0

    invoke-virtual {p2}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 33
    .local v0, "tickDifference":I
    if-eqz v0, :cond_0

    .line 34
    mul-int/lit16 v1, v0, 0x100

    return v1

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getMessage()[B

    move-result-object v1

    .line 38
    .local v1, "lhsMessage":[B
    invoke-virtual {p2}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v2

    invoke-virtual {v2}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getMessage()[B

    move-result-object v2

    .line 41
    .local v2, "rhsMessage":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    array-length v5, v1

    if-ge v5, v3, :cond_2

    .line 42
    :cond_1
    new-array v5, v3, [B

    aput-byte v4, v5, v4

    move-object v1, v5

    .line 44
    :cond_2
    if-eqz v2, :cond_3

    array-length v5, v2

    if-ge v5, v3, :cond_4

    .line 45
    :cond_3
    new-array v3, v3, [B

    aput-byte v4, v3, v4

    move-object v2, v3

    .line 52
    :cond_4
    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xf0

    .line 53
    .local v3, "lhsInt":I
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xf0

    .line 55
    .local v4, "rhsInt":I
    and-int/lit16 v5, v3, 0x90

    const/16 v6, 0x80

    if-ne v5, v6, :cond_5

    .line 56
    or-int/lit8 v3, v3, 0x10

    goto :goto_0

    .line 58
    :cond_5
    and-int/lit8 v3, v3, -0x11

    .line 60
    :goto_0
    and-int/lit16 v5, v4, 0x90

    if-ne v5, v6, :cond_6

    .line 61
    or-int/lit8 v4, v4, 0x10

    goto :goto_1

    .line 63
    :cond_6
    and-int/lit8 v4, v4, -0x11

    .line 66
    :goto_1
    sub-int v5, v3, v4

    neg-int v5, v5

    return v5
.end method

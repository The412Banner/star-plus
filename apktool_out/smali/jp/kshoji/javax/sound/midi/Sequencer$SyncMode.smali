.class public Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
.super Ljava/lang/Object;
.source "Sequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/Sequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncMode"
.end annotation


# static fields
.field public static final INTERNAL_CLOCK:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

.field public static final NO_SYNC:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    const-string v1, "Internal Clock"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->INTERNAL_CLOCK:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 31
    new-instance v0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    const-string v1, "No Sync"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->NO_SYNC:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->name:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 45
    return v1

    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 48
    return v1

    .line 50
    :cond_2
    move-object v2, p1

    check-cast v2, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 51
    .local v2, "other":Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->name:Ljava/lang/String;

    iget-object v4, v2, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    return v1

    .line 54
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 59
    const/16 v0, 0x1f

    .line 60
    .local v0, "PRIME":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 61
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->name:Ljava/lang/String;

    return-object v0
.end method

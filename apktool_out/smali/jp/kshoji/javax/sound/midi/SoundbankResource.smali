.class public abstract Ljp/kshoji/javax/sound/midi/SoundbankResource;
.super Ljava/lang/Object;
.source "SoundbankResource.java"


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final soundbank:Ljp/kshoji/javax/sound/midi/Soundbank;


# direct methods
.method protected constructor <init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "soundbank"    # Ljp/kshoji/javax/sound/midi/Soundbank;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/kshoji/javax/sound/midi/Soundbank;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/SoundbankResource;->soundbank:Ljp/kshoji/javax/sound/midi/Soundbank;

    .line 25
    iput-object p2, p0, Ljp/kshoji/javax/sound/midi/SoundbankResource;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Ljp/kshoji/javax/sound/midi/SoundbankResource;->dataClass:Ljava/lang/Class;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract getData()Ljava/lang/Object;
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/SoundbankResource;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/SoundbankResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 1

    .line 64
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/SoundbankResource;->soundbank:Ljp/kshoji/javax/sound/midi/Soundbank;

    return-object v0
.end method

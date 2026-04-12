.class public Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
.super Ljava/lang/Exception;
.source "MidiUnavailableException.java"


# static fields
.field private static final serialVersionUID:J = 0x54918f867f0d11c3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

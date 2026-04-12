.class public Lcn/sherlock/com/sun/media/sound/InvalidFormatException;
.super Lcn/sherlock/com/sun/media/sound/InvalidDataException;
.source "InvalidFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const-string v0, "Invalid format!"

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/InvalidDataException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/InvalidDataException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.class public Lcn/sherlock/com/sun/media/sound/RIFFInvalidDataException;
.super Lcn/sherlock/com/sun/media/sound/InvalidDataException;
.source "RIFFInvalidDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "Invalid Data!"

    invoke-direct {p0, v0}, Lcn/sherlock/com/sun/media/sound/InvalidDataException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/InvalidDataException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

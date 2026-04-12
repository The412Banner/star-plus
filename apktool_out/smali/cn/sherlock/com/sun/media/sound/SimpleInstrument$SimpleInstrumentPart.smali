.class Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;
.super Ljava/lang/Object;
.source "SimpleInstrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SimpleInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleInstrumentPart"
.end annotation


# instance fields
.field exclusiveClass:I

.field keyFrom:I

.field keyTo:I

.field performers:[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

.field velFrom:I

.field velTo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/SimpleInstrument-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument$SimpleInstrumentPart;-><init>()V

    return-void
.end method

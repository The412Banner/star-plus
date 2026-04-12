.class public Lcom/winlator/cmod/core/WineRegistryEditor$Location;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/core/WineRegistryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public final end:I

.field public final offset:I

.field public final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->offset:I

    .line 36
    iput p2, p0, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    .line 37
    iput p3, p0, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->end:I

    .line 38
    return-void
.end method


# virtual methods
.method public length()I
    .locals 2

    .line 41
    iget v0, p0, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->end:I

    iget v1, p0, Lcom/winlator/cmod/core/WineRegistryEditor$Location;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

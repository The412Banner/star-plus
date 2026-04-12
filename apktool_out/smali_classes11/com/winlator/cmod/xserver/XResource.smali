.class public abstract Lcom/winlator/cmod/xserver/XResource;
.super Ljava/lang/Object;
.source "XResource.java"


# instance fields
.field public final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/winlator/cmod/xserver/XResource;->id:I

    .line 8
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/winlator/cmod/xserver/XResource;->id:I

    return v0
.end method

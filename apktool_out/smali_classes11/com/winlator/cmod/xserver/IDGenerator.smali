.class public abstract Lcom/winlator/cmod/xserver/IDGenerator;
.super Ljava/lang/Object;
.source "IDGenerator.java"


# static fields
.field private static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const/4 v0, 0x0

    sput v0, Lcom/winlator/cmod/xserver/IDGenerator;->id:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate()I
    .locals 1

    .line 7
    sget v0, Lcom/winlator/cmod/xserver/IDGenerator;->id:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/winlator/cmod/xserver/IDGenerator;->id:I

    return v0
.end method

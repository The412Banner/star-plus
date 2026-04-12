.class public Lorg/conscrypt/Conscrypt$Version;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/conscrypt/Conscrypt$Version;->major:I

    .line 68
    iput p2, p0, Lorg/conscrypt/Conscrypt$Version;->minor:I

    .line 69
    iput p3, p0, Lorg/conscrypt/Conscrypt$Version;->patch:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(IIILorg/conscrypt/Conscrypt$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/conscrypt/Conscrypt$1;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/Conscrypt$Version;-><init>(III)V

    return-void
.end method


# virtual methods
.method public major()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/conscrypt/Conscrypt$Version;->major:I

    return v0
.end method

.method public minor()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/conscrypt/Conscrypt$Version;->minor:I

    return v0
.end method

.method public patch()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/conscrypt/Conscrypt$Version;->patch:I

    return v0
.end method

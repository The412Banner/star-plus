.class public final Lcom/bumptech/glide/load/resource/UnitTransformation;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/bumptech/glide/load/resource/UnitTransformation;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/UnitTransformation;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    .local p0, "this":Lcom/bumptech/glide/load/resource/UnitTransformation;, "Lcom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/UnitTransformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/UnitTransformation<",
            "TT;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;

    check-cast v0, Lcom/bumptech/glide/load/resource/UnitTransformation;

    return-object v0
.end method


# virtual methods
.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/bumptech/glide/load/resource/UnitTransformation;, "Lcom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    .local p2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .line 42
    .local p0, "this":Lcom/bumptech/glide/load/resource/UnitTransformation;, "Lcom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    return-void
.end method

.class final Lorg/newsclub/net/unix/Closeables$HardReference;
.super Ljava/lang/ref/WeakReference;
.source "Closeables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/Closeables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HardReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final strongRef:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/newsclub/net/unix/Closeables$HardReference;, "Lorg/newsclub/net/unix/Closeables$HardReference<TV;>;"
    .local p1, "referent":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lorg/newsclub/net/unix/Closeables$HardReference;->strongRef:Ljava/lang/Object;

    .line 99
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/newsclub/net/unix/Closeables$HardReference;, "Lorg/newsclub/net/unix/Closeables$HardReference<TV;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/Closeables$HardReference;->strongRef:Ljava/lang/Object;

    return-object v0
.end method

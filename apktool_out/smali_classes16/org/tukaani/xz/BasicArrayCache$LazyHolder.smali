.class final Lorg/tukaani/xz/BasicArrayCache$LazyHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lorg/tukaani/xz/BasicArrayCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/tukaani/xz/BasicArrayCache;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache;-><init>()V

    sput-object v0, Lorg/tukaani/xz/BasicArrayCache$LazyHolder;->INSTANCE:Lorg/tukaani/xz/BasicArrayCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

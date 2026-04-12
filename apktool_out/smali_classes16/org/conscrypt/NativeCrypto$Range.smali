.class Lorg/conscrypt/NativeCrypto$Range;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/NativeCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field public final max:Ljava/lang/String;

.field public final min:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "min"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    iput-object p1, p0, Lorg/conscrypt/NativeCrypto$Range;->min:Ljava/lang/String;

    .line 991
    iput-object p2, p0, Lorg/conscrypt/NativeCrypto$Range;->max:Ljava/lang/String;

    .line 992
    return-void
.end method

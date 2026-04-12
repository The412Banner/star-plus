.class Lcom/winlator/cmod/container/Container$1;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/container/Container;->drivesIterator(Ljava/lang/String;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$drives:Ljava/lang/String;

.field final synthetic val$index:[I

.field final synthetic val$item:[Ljava/lang/String;


# direct methods
.method constructor <init>([I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lcom/winlator/cmod/container/Container$1;->val$index:[I

    iput-object p2, p0, Lcom/winlator/cmod/container/Container$1;->val$item:[Ljava/lang/String;

    iput-object p3, p0, Lcom/winlator/cmod/container/Container$1;->val$drives:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/winlator/cmod/container/Container$1;->val$index:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/winlator/cmod/container/Container$1;->next()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()[Ljava/lang/String;
    .locals 7

    .line 395
    iget-object v0, p0, Lcom/winlator/cmod/container/Container$1;->val$item:[Ljava/lang/String;

    iget-object v1, p0, Lcom/winlator/cmod/container/Container$1;->val$drives:Ljava/lang/String;

    iget-object v2, p0, Lcom/winlator/cmod/container/Container$1;->val$index:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 396
    iget-object v0, p0, Lcom/winlator/cmod/container/Container$1;->val$drives:Ljava/lang/String;

    iget-object v1, p0, Lcom/winlator/cmod/container/Container$1;->val$index:[I

    aget v1, v1, v3

    add-int/2addr v1, v4

    const-string v2, ":"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 397
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/winlator/cmod/container/Container$1;->val$item:[Ljava/lang/String;

    iget-object v2, p0, Lcom/winlator/cmod/container/Container$1;->val$drives:Ljava/lang/String;

    iget-object v5, p0, Lcom/winlator/cmod/container/Container$1;->val$index:[I

    aget v5, v5, v3

    add-int/2addr v5, v4

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    add-int/lit8 v6, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/winlator/cmod/container/Container$1;->val$drives:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 398
    iget-object v1, p0, Lcom/winlator/cmod/container/Container$1;->val$index:[I

    aput v0, v1, v3

    .line 399
    iget-object v1, p0, Lcom/winlator/cmod/container/Container$1;->val$item:[Ljava/lang/String;

    return-object v1
.end method

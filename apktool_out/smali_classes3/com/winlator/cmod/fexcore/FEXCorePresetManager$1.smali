.class Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;
.super Ljava/lang/Object;
.source "FEXCorePresetManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->customPresetsIterator(Landroid/content/Context;)Ljava/lang/Iterable;
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
.field final synthetic val$customPresets:[Ljava/lang/String;

.field final synthetic val$customPresetsStr:Ljava/lang/String;

.field final synthetic val$index:[I


# direct methods
.method constructor <init>([I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$index:[I

    iput-object p2, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$customPresets:[Ljava/lang/String;

    iput-object p3, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$customPresetsStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$index:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$customPresets:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$customPresetsStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->next()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()[Ljava/lang/String;
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$customPresets:[Ljava/lang/String;

    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCorePresetManager$1;->val$index:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, v1, v2

    aget-object v0, v0, v3

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/winlator/cmod/winhandler/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"


# instance fields
.field public final affinityMask:I

.field public final memoryUsage:J

.field public final name:Ljava/lang/String;

.field public final pid:I

.field public final wow64Process:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;JIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "memoryUsage"    # J
    .param p5, "affinityMask"    # I
    .param p6, "wow64Process"    # Z

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/winlator/cmod/winhandler/ProcessInfo;->pid:I

    .line 16
    iput-object p2, p0, Lcom/winlator/cmod/winhandler/ProcessInfo;->name:Ljava/lang/String;

    .line 17
    iput-wide p3, p0, Lcom/winlator/cmod/winhandler/ProcessInfo;->memoryUsage:J

    .line 18
    iput p5, p0, Lcom/winlator/cmod/winhandler/ProcessInfo;->affinityMask:I

    .line 19
    iput-boolean p6, p0, Lcom/winlator/cmod/winhandler/ProcessInfo;->wow64Process:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getCPUList()Ljava/lang/String;
    .locals 5

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 28
    .local v0, "numProcessors":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v1, "cpuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":B
    :goto_0
    if-ge v2, v0, :cond_1

    .line 30
    iget v3, p0, Lcom/winlator/cmod/winhandler/ProcessInfo;->affinityMask:I

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    goto :goto_0

    .line 32
    .end local v2    # "i":B
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const-string v3, ","

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFormattedMemoryUsage()Ljava/lang/String;
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/winlator/cmod/winhandler/ProcessInfo;->memoryUsage:J

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/StringUtils;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
.super Ljava/lang/Object;
.source "ModelConnectionBlock.java"


# static fields
.field private static final no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;


# instance fields
.field private destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

.field private scale:D

.field private sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    sput-object v0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 46
    return-void
.end method

.method public constructor <init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V
    .locals 2
    .param p1, "scale"    # D
    .param p3, "destination"    # Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 49
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 50
    iput-object p3, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V
    .locals 2
    .param p1, "source"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "scale"    # D
    .param p4, "destination"    # Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 66
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 68
    :cond_0
    iput-wide p2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 69
    iput-object p4, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelDestination;)V
    .locals 2
    .param p1, "source"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "destination"    # Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 57
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 59
    :cond_0
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V
    .locals 3
    .param p1, "source"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "control"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p3, "scale"    # D
    .param p5, "destination"    # Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 89
    if-eqz p1, :cond_1

    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 91
    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 92
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    aput-object p1, v0, v1

    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 95
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    aput-object p1, v2, v1

    .line 96
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    aput-object p2, v1, v0

    .line 99
    :cond_1
    :goto_0
    iput-wide p3, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 100
    iput-object p5, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 101
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelDestination;)V
    .locals 3
    .param p1, "source"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "control"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p3, "destination"    # Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->no_sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 74
    if-eqz p1, :cond_1

    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 76
    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 77
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    aput-object p1, v0, v1

    goto :goto_0

    .line 79
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 80
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    aput-object p1, v2, v1

    .line 81
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    aput-object p2, v1, v0

    .line 84
    :cond_1
    :goto_0
    iput-object p3, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 85
    return-void
.end method


# virtual methods
.method public addSource(Lcn/sherlock/com/sun/media/sound/ModelSource;)V
    .locals 4
    .param p1, "source"    # Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 128
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 129
    .local v0, "oldsources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    aget-object v3, v0, v1

    aput-object v3, v2, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 134
    return-void
.end method

.method public getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

    return-object v0
.end method

.method public getScale()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    return-wide v0
.end method

.method public getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    return-object v0
.end method

.method public setDestination(Lcn/sherlock/com/sun/media/sound/ModelDestination;)V
    .locals 0
    .param p1, "destination"    # Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 108
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->destination:Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 109
    return-void
.end method

.method public setScale(D)V
    .locals 0
    .param p1, "scale"    # D

    .line 116
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->scale:D

    .line 117
    return-void
.end method

.method public setSources([Lcn/sherlock/com/sun/media/sound/ModelSource;)V
    .locals 0
    .param p1, "source"    # [Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 124
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->sources:[Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 125
    return-void
.end method

.class Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;
.super Ljava/lang/Object;
.source "SysVSharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/sysvshm/SysVSharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SHMemory"
.end annotation


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private fd:I

.field private size:J


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->data:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)I
    .locals 0

    iget p0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->fd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;)J
    .locals 2

    iget-wide v0, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->size:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputdata(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfd(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;I)V
    .locals 0

    iput p1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->fd:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsize(Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;J)V
    .locals 0

    iput-wide p1, p0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;->size:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winlator/cmod/sysvshm/SysVSharedMemory-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory$SHMemory;-><init>()V

    return-void
.end method

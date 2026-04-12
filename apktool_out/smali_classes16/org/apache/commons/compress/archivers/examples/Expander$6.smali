.class Lorg/apache/commons/compress/archivers/examples/Expander$6;
.super Ljava/lang/Object;
.source "Expander.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

.field final synthetic val$archive:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/examples/Expander;

    .line 323
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$6;->this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Expander$6;->val$archive:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeEntryDataTo(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    const/16 v0, 0x1f58

    new-array v0, v0, [B

    .line 328
    .local v0, "buffer":[B
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$6;->val$archive:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "n":I
    const/4 v3, -0x1

    if-eq v3, v1, :cond_0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

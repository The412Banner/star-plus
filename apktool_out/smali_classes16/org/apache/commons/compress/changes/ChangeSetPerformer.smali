.class public Lorg/apache/commons/compress/changes/ChangeSetPerformer;
.super Ljava/lang/Object;
.source "ChangeSetPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;,
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;,
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;
    }
.end annotation


# instance fields
.field private final changes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/changes/Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/changes/ChangeSet;)V
    .locals 1
    .param p1, "changeSet"    # Lorg/apache/commons/compress/changes/ChangeSet;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/ChangeSet;->getChanges()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->changes:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p3, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 221
    invoke-static {p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 222
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    .line 223
    return-void
.end method

.method private isDeletedLater(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 8
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/changes/Change;",
            ">;",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ")Z"
        }
    .end annotation

    .line 188
    .local p1, "workingSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/changes/Change;>;"
    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "source":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/changes/Change;

    .line 192
    .local v2, "change":Lorg/apache/commons/compress/changes/Change;
    invoke-virtual {v2}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v3

    .line 193
    .local v3, "type":I
    invoke-virtual {v2}, Lorg/apache/commons/compress/changes/Change;->targetFile()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "target":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    return v5

    .line 198
    :cond_0
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    return v5

    .line 201
    .end local v2    # "change":Lorg/apache/commons/compress/changes/Change;
    .end local v3    # "type":I
    .end local v4    # "target":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 203
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private perform(Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 11
    .param p1, "entryIterator"    # Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;
    .param p2, "out"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetResults;

    invoke-direct {v0}, Lorg/apache/commons/compress/changes/ChangeSetResults;-><init>()V

    .line 116
    .local v0, "results":Lorg/apache/commons/compress/changes/ChangeSetResults;
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->changes:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v1, "workingSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/changes/Change;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/changes/Change;

    .line 121
    .local v3, "change":Lorg/apache/commons/compress/changes/Change;
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->isReplaceMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getInput()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 124
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet(Ljava/lang/String;)V

    .line 126
    .end local v3    # "change":Lorg/apache/commons/compress/changes/Change;
    :cond_0
    goto :goto_0

    .line 128
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change;>;"
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;->next()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    .line 130
    .local v2, "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    const/4 v3, 0x1

    .line 132
    .local v3, "copy":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 133
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/changes/Change;

    .line 135
    .local v6, "change":Lorg/apache/commons/compress/changes/Change;
    invoke-virtual {v6}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v7

    .line 136
    .local v7, "type":I
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    if-eqz v8, :cond_2

    .line 138
    invoke-virtual {v6}, Lorg/apache/commons/compress/changes/Change;->targetFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 141
    invoke-virtual {v0, v8}, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted(Ljava/lang/String;)V

    .line 142
    goto :goto_3

    .line 144
    :cond_2
    const/4 v9, 0x4

    if-ne v7, v9, :cond_3

    if-eqz v8, :cond_3

    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/commons/compress/changes/Change;->targetFile()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 147
    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0, v8}, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted(Ljava/lang/String;)V

    .line 149
    goto :goto_3

    .line 152
    .end local v6    # "change":Lorg/apache/commons/compress/changes/Change;
    .end local v7    # "type":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 154
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change;>;"
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 155
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->isDeletedLater(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 156
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/changes/ChangeSetResults;->hasBeenAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 157
    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, p2, v2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 158
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream(Ljava/lang/String;)V

    .line 160
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .end local v3    # "copy":Z
    :cond_5
    goto/16 :goto_1

    .line 163
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/changes/Change;

    .line 166
    .local v3, "change":Lorg/apache/commons/compress/changes/Change;
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 167
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->isReplaceMode()Z

    move-result v5

    if-nez v5, :cond_7

    .line 168
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/changes/ChangeSetResults;->hasBeenAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 169
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getInput()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v6

    invoke-direct {p0, v5, p2, v6}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 171
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet(Ljava/lang/String;)V

    .line 173
    .end local v3    # "change":Lorg/apache/commons/compress/changes/Change;
    :cond_7
    goto :goto_4

    .line 174
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change;>;"
    :cond_8
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->finish()V

    .line 175
    return-object v0
.end method


# virtual methods
.method public perform(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 1
    .param p1, "in"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .param p2, "out"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->perform(Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;

    move-result-object v0

    return-object v0
.end method

.method public perform(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 1
    .param p1, "in"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p2, "out"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->perform(Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;

    move-result-object v0

    return-object v0
.end method

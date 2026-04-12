.class final Lorg/newsclub/net/unix/AFSelectionKey;
.super Ljava/nio/channels/SelectionKey;
.source "AFSelectionKey.java"


# static fields
.field private static final OP_INVALID:I = 0x80


# instance fields
.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final chann:Ljava/nio/channels/SelectableChannel;

.field private final core:Lorg/newsclub/net/unix/AFSocketCore;

.field private ops:I

.field private opsReady:I

.field private final sel:Lorg/newsclub/net/unix/AFSelector;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFSelector;Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)V
    .locals 1
    .param p1, "selector"    # Lorg/newsclub/net/unix/AFSelector;
    .param p2, "ch"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p3, "ops"    # I
    .param p4, "att"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/nio/channels/SelectionKey;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-object p2, p0, Lorg/newsclub/net/unix/AFSelectionKey;->chann:Ljava/nio/channels/SelectableChannel;

    .line 38
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSelectionKey;->sel:Lorg/newsclub/net/unix/AFSelector;

    .line 39
    iput p3, p0, Lorg/newsclub/net/unix/AFSelectionKey;->ops:I

    .line 41
    instance-of v0, p2, Lorg/newsclub/net/unix/AFDatagramChannel;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p2

    check-cast v0, Lorg/newsclub/net/unix/AFDatagramChannel;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->core:Lorg/newsclub/net/unix/AFSocketCore;

    goto :goto_0

    .line 43
    :cond_0
    instance-of v0, p2, Lorg/newsclub/net/unix/AFSocketChannel;

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p2

    check-cast v0, Lorg/newsclub/net/unix/AFSocketChannel;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->core:Lorg/newsclub/net/unix/AFSocketCore;

    goto :goto_0

    .line 45
    :cond_1
    instance-of v0, p2, Lorg/newsclub/net/unix/AFServerSocketChannel;

    if-eqz v0, :cond_2

    .line 46
    move-object v0, p2

    check-cast v0, Lorg/newsclub/net/unix/AFServerSocketChannel;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->core:Lorg/newsclub/net/unix/AFSocketCore;

    .line 51
    :goto_0
    invoke-virtual {p0, p4}, Lorg/newsclub/net/unix/AFSelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private cancel1()V
    .locals 0

    .line 89
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->sel:Lorg/newsclub/net/unix/AFSelector;

    invoke-virtual {v0, p0}, Lorg/newsclub/net/unix/AFSelector;->remove(Lorg/newsclub/net/unix/AFSelectionKey;)V

    .line 76
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectionKey;->cancelNoRemove()V

    .line 77
    return-void
.end method

.method cancelNoRemove()V
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->chann:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSelectionKey;->cancel1()V

    .line 85
    return-void

    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->chann:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method getAFCore()Lorg/newsclub/net/unix/AFSocketCore;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->core:Lorg/newsclub/net/unix/AFSocketCore;

    return-object v0
.end method

.method hasOpInvalid()Z
    .locals 1

    .line 70
    iget v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->opsReady:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interestOps()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->ops:I

    return v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 0
    .param p1, "interestOps"    # I

    .line 98
    iput p1, p0, Lorg/newsclub/net/unix/AFSelectionKey;->ops:I

    .line 99
    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectionKey;->hasOpInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->chann:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->sel:Lorg/newsclub/net/unix/AFSelector;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSelector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readyOps()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->opsReady:I

    and-int/lit16 v0, v0, -0x81

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelectionKey;->sel:Lorg/newsclub/net/unix/AFSelector;

    return-object v0
.end method

.method setOpsReady(I)V
    .locals 0
    .param p1, "opsReady"    # I

    .line 112
    iput p1, p0, Lorg/newsclub/net/unix/AFSelectionKey;->opsReady:I

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectionKey;->readyOps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectionKey;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/winlator/cmod/core/Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/StorageInfoDialog$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/winlator/cmod/contentdialog/StorageInfoDialog;->lambda$new$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method

.class Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;
.super Ljava/lang/Object;
.source "X509KeyManagerImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final alias:Ljava/lang/String;

.field final builderIndex:I

.field final checkResult:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

.field final keyIndex:I


# direct methods
.method constructor <init>(IILjava/lang/String;[Ljava/security/cert/Certificate;Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;)V
    .locals 0
    .param p1, "builderIndex"    # I
    .param p2, "keyIndex"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .param p5, "checkResult"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput p1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    .line 529
    iput p2, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    .line 530
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    .line 531
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    .line 532
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 519
    check-cast p1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;

    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->compareTo(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;)I
    .locals 3
    .param p1, "other"    # Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .line 536
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 537
    .local v0, "result":I
    if-nez v0, :cond_0

    iget v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    iget v2, p1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (verified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$CheckResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    if-nez v1, :cond_0

    .line 544
    return-object v0

    .line 546
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Builder #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

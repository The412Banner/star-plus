.class public Lorg/conscrypt/ct/CTVerificationResult;
.super Ljava/lang/Object;
.source "CTVerificationResult.java"


# instance fields
.field private final invalidSCTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field

.field private final validSCTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lorg/conscrypt/ct/VerifiedSCT;)V
    .locals 2
    .param p1, "result"    # Lorg/conscrypt/ct/VerifiedSCT;

    .line 30
    iget-object v0, p1, Lorg/conscrypt/ct/VerifiedSCT;->status:Lorg/conscrypt/ct/VerifiedSCT$Status;

    sget-object v1, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;

    if-ne v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lorg/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_0
    return-void
.end method

.method public getInvalidSCTs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/conscrypt/ct/CTVerificationResult;->invalidSCTs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidSCTs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/conscrypt/ct/CTVerificationResult;->validSCTs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

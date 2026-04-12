.class final Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;
.super Ljava/lang/Object;
.source "DTLSInputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoleDescriptor"
.end annotation


# instance fields
.field limit:I

.field offset:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput p1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->offset:I

    .line 530
    iput p2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;->limit:I

    .line 531
    return-void
.end method

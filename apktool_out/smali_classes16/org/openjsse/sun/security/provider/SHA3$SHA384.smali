.class public final Lorg/openjsse/sun/security/provider/SHA3$SHA384;
.super Lorg/openjsse/sun/security/provider/SHA3;
.source "SHA3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/provider/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 289
    const-string v0, "SHA3-384"

    const/16 v1, 0x30

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/provider/SHA3;-><init>(Ljava/lang/String;I)V

    .line 290
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 287
    invoke-super {p0}, Lorg/openjsse/sun/security/provider/SHA3;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

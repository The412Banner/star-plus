.class public final Lcom/winlator/cmod/core/MSLink$Options;
.super Ljava/lang/Object;
.source "MSLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/core/MSLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field public cmdArgs:Ljava/lang/String;

.field public fileSize:I

.field public iconIndex:I

.field public iconLocation:Ljava/lang/String;

.field public showCommand:I

.field public targetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/winlator/cmod/core/MSLink$Options;->showCommand:I

    return-void
.end method

.class public interface abstract Lcom/winlator/cmod/contents/ContentsManager$OnInstallFinishedCallback;
.super Ljava/lang/Object;
.source "ContentsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/contents/ContentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInstallFinishedCallback"
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/winlator/cmod/contents/ContentsManager$InstallFailedReason;Ljava/lang/Exception;)V
.end method

.method public abstract onSucceed(Lcom/winlator/cmod/contents/ContentProfile;)V
.end method

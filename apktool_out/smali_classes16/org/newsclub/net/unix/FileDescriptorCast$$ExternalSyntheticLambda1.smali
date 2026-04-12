.class public final synthetic Lorg/newsclub/net/unix/FileDescriptorCast$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/io/FileDescriptor;

    invoke-static {p1}, Lorg/newsclub/net/unix/FileDescriptorCast;->$r8$lambda$fKTGT0Quvuo3AKM9sDNi_H9dnHI(Ljava/io/FileDescriptor;)Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1
.end method

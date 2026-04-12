.class interface abstract Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;
.super Ljava/lang/Object;
.source "Finished.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VerifyDataGenerator"
.end annotation


# virtual methods
.method public abstract createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

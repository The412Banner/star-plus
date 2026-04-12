.class public interface abstract Lcom/winlator/cmod/xserver/extensions/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# virtual methods
.method public abstract getFirstErrorId()B
.end method

.method public abstract getFirstEventId()B
.end method

.method public abstract getMajorOpcode()B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract handleRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation
.end method

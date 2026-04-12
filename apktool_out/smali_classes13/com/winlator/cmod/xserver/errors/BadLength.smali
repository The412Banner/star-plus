.class public Lcom/winlator/cmod/xserver/errors/BadLength;
.super Lcom/winlator/cmod/xserver/errors/XRequestError;
.source "BadLength.java"


# static fields
.field public static final ERROR_CODE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xserver/errors/XRequestError;-><init>(II)V

    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "data"    # I

    .line 12
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/winlator/cmod/xserver/errors/XRequestError;-><init>(II)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 17
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xserver/errors/XRequestError;-><init>(II)V

    .line 18
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BadLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    return-void
.end method

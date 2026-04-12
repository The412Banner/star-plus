.class public Lcom/winlator/cmod/core/WineRequestHandler;
.super Ljava/lang/Object;
.source "WineRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/core/WineRequestHandler$RequestCodes;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public static synthetic $r8$lambda$ufBnWnUm6yIwzgX0jNSDamgAGV0(Lcom/winlator/cmod/core/WineRequestHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/core/WineRequestHandler;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/winlator/cmod/core/WineRequestHandler;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private getWineClipboard(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .param p2, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const-string v0, ""

    .line 88
    .local v0, "clipboardData":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 89
    .local v1, "format":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 90
    .local v2, "size":I
    new-array v3, v2, [B

    .line 91
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 92
    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    .line 93
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v4

    .line 94
    const-string v4, "\u0000"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v4, p0, Lcom/winlator/cmod/core/WineRequestHandler;->context:Landroid/content/Context;

    const-string v6, "clipboard"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 96
    .local v4, "clpm":Landroid/content/ClipboardManager;
    invoke-static {v5, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    .line 97
    .local v5, "clipData":Landroid/content/ClipData;
    invoke-virtual {v4, v5}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 99
    .end local v4    # "clpm":Landroid/content/ClipboardManager;
    .end local v5    # "clipData":Landroid/content/ClipData;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received request code GET_WINE_CLIPBOARD with format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WineRequestHandler"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 4

    .line 39
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/winlator/cmod/core/WineRequestHandler;->serverSocket:Ljava/net/ServerSocket;

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRequestHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 42
    .local v0, "socket":Ljava/net/Socket;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    .local v1, "inputStream":Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 45
    .local v3, "requestCode":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/winlator/cmod/core/WineRequestHandler;->handleRequest(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "socket":Ljava/net/Socket;
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    .end local v3    # "requestCode":I
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    return-void
.end method

.method private openURL(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .param p2, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 78
    .local v0, "messageLength":I
    new-array v1, v0, [B

    .line 79
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 80
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 81
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received request code OPEN_URL with url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WineRequestHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/winlator/cmod/core/WineRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private setWineClipboard(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .param p2, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/16 v0, 0xd

    .line 104
    .local v0, "format":I
    iget-object v1, p0, Lcom/winlator/cmod/core/WineRequestHandler;->context:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 105
    .local v1, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 107
    .local v2, "clipData":Landroid/content/ClipData;
    if-eqz v2, :cond_0

    .line 108
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 109
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "clipText":Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v3    # "clipText":Ljava/lang/String;
    :cond_0
    const-string v3, ""

    .line 114
    .restart local v3    # "clipText":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received request code SET_WINE_CLIPBOARD for clipboard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WineRequestHandler"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 117
    .local v4, "dataByte":[B
    array-length v5, v4

    .line 118
    .local v5, "size":I
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 119
    invoke-virtual {p2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 120
    invoke-virtual {p2, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 121
    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;I)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .param p2, "outputStream"    # Ljava/io/DataOutputStream;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/core/WineRequestHandler;->setWineClipboard(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/core/WineRequestHandler;->getWineClipboard(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V

    .line 69
    goto :goto_0

    .line 65
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/core/WineRequestHandler;->openURL(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V

    .line 66
    nop

    .line 74
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 2

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 37
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/winlator/cmod/core/WineRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/core/WineRequestHandler$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/core/WineRequestHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public stop()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRequestHandler;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/core/WineRequestHandler;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 59
    :cond_0
    :goto_0
    return-void
.end method

.class public abstract Lcom/winlator/cmod/core/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/Callback;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p3, "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/winlator/cmod/core/DownloadProgressDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/core/DownloadProgressDialog;-><init>(Landroid/app/Activity;)V

    .line 76
    .local v0, "dialog":Lcom/winlator/cmod/core/DownloadProgressDialog;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    move-object v8, v1

    .line 77
    .local v8, "interruptRef":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v1, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/DownloadProgressDialog;->show(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v10, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object v5, p0

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public static download(Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method private static downloadAsync(Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 20
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 21
    invoke-interface {p1, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 22
    return-void

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/winlator/cmod/core/StreamUtils;->copyToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .local v3, "bytes":[B
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 29
    .end local v2    # "inStream":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {p1, v2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "bytes":[B
    goto :goto_1

    .line 26
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 31
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "url":Ljava/lang/String;
    .restart local p1    # "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static downloadAsync(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/core/Callback;)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "interruptRef"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/winlator/cmod/core/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p3, "onPublishProgress":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    .local p4, "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 44
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 46
    return-void

    .line 49
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 50
    .local v2, "contentLength":I
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v3, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    .local v4, "outStream":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_2
    new-array v5, v5, [B

    .line 54
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 56
    .local v6, "totalSize":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "bytesRead":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_2

    .line 57
    add-int/2addr v6, v8

    .line 58
    if-eqz p3, :cond_1

    .line 59
    int-to-float v7, v6

    int-to-float v9, v2

    div-float/2addr v7, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    .line 60
    .local v7, "progress":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v9}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 62
    .end local v7    # "progress":I
    :cond_1
    invoke-virtual {v4, v5, v0, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    .end local v5    # "buffer":[B
    .end local v6    # "totalSize":I
    .end local v8    # "bytesRead":I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "outStream":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 67
    .end local v3    # "inStream":Ljava/io/InputStream;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p4, v3}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 71
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "contentLength":I
    goto :goto_4

    .line 50
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "contentLength":I
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "contentLength":I
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "interruptRef":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p3    # "onPublishProgress":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    .end local p4    # "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Boolean;>;"
    :goto_2
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "contentLength":I
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "url":Ljava/lang/String;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "interruptRef":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p3    # "onPublishProgress":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    .restart local p4    # "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Boolean;>;"
    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "interruptRef":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p3    # "onPublishProgress":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    .end local p4    # "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Boolean;>;"
    :goto_3
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 69
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "contentLength":I
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "url":Ljava/lang/String;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "interruptRef":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p3    # "onPublishProgress":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Integer;>;"
    .restart local p4    # "onDownloadComplete":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method static synthetic lambda$download$0(Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "onDownloadComplete"    # Lcom/winlator/cmod/core/Callback;

    .line 37
    invoke-static {p0, p1}, Lcom/winlator/cmod/core/HttpUtils;->downloadAsync(Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    return-void
.end method

.method static synthetic lambda$download$1(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p0, "interruptRef"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$download$2(Lcom/winlator/cmod/core/DownloadProgressDialog;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p1, "progress"    # Ljava/lang/Integer;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/core/DownloadProgressDialog;->setProgress(I)V

    .line 82
    return-void
.end method

.method static synthetic lambda$download$3(Landroid/app/Activity;Lcom/winlator/cmod/core/DownloadProgressDialog;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p2, "progress"    # Ljava/lang/Integer;

    .line 80
    new-instance v0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/core/DownloadProgressDialog;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method static synthetic lambda$download$4(Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p1, "onDownloadComplete"    # Lcom/winlator/cmod/core/Callback;
    .param p2, "success"    # Ljava/lang/Boolean;

    .line 86
    invoke-virtual {p0}, Lcom/winlator/cmod/core/DownloadProgressDialog;->close()V

    .line 87
    invoke-interface {p1, p2}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method static synthetic lambda$download$5(Ljava/io/File;Landroid/app/Activity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "destination"    # Ljava/io/File;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p3, "onDownloadComplete"    # Lcom/winlator/cmod/core/Callback;
    .param p4, "success"    # Ljava/lang/Boolean;

    .line 84
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 85
    :cond_0
    new-instance v0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p3, p4}, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method static synthetic lambda$download$6(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "interruptRef"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "dialog"    # Lcom/winlator/cmod/core/DownloadProgressDialog;
    .param p5, "onDownloadComplete"    # Lcom/winlator/cmod/core/Callback;

    .line 79
    new-instance v0, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p4}, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Lcom/winlator/cmod/core/DownloadProgressDialog;)V

    new-instance v1, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/winlator/cmod/core/HttpUtils$$ExternalSyntheticLambda4;-><init>(Ljava/io/File;Landroid/app/Activity;Lcom/winlator/cmod/core/DownloadProgressDialog;Lcom/winlator/cmod/core/Callback;)V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/winlator/cmod/core/HttpUtils;->downloadAsync(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/winlator/cmod/core/Callback;Lcom/winlator/cmod/core/Callback;)V

    .line 90
    return-void
.end method

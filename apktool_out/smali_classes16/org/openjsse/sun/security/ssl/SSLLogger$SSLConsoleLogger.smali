.class Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;
.super Ljava/lang/Object;
.source "SSLLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSLConsoleLogger"
.end annotation


# instance fields
.field private final loggerName:Ljava/lang/String;

.field private final useCompactFormat:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "options"    # Ljava/lang/String;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->loggerName:Ljava/lang/String;

    .line 309
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 310
    const-string v0, "expand"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->useCompactFormat:Z

    .line 311
    return-void
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    .line 303
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    .line 303
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->useCompactFormat:Z

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public isLoggable(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;)Z
    .locals 1
    .param p1, "level"    # Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    .line 318
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->OFF:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 323
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->isLoggable(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    nop

    .line 326
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->access$100(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "formatted":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "formatted":Ljava/lang/String;
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 332
    :cond_0
    :goto_0
    return-void
.end method

.method public log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .param p2, "rb"    # Ljava/util/ResourceBundle;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "thrwbl"    # Ljava/lang/Throwable;

    .line 336
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->isLoggable(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    .line 339
    invoke-static {p0, p1, p3, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->access$100(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "formatted":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "formatted":Ljava/lang/String;
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 345
    :cond_0
    :goto_0
    return-void
.end method

.method public varargs log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .param p2, "rb"    # Ljava/util/ResourceBundle;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    .line 349
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->isLoggable(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    nop

    .line 352
    :try_start_0
    invoke-static {p0, p1, p3, p4}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->access$100(Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "formatted":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "formatted":Ljava/lang/String;
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 358
    :cond_0
    :goto_0
    return-void
.end method

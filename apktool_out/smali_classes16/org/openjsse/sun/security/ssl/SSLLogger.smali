.class public final Lorg/openjsse/sun/security/ssl/SSLLogger;
.super Ljava/lang/Object;
.source "SSLLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;,
        Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;,
        Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    }
.end annotation


# static fields
.field public static final isOn:Z

.field private static final logger:Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

.field private static final property:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 162
    const-string v0, "javax.net.debug"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "javax.net.ssl"

    if-eqz v1, :cond_0

    .line 165
    const-string v1, ""

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    .line 166
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    invoke-direct {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->logger:Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    goto :goto_0

    .line 168
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    .line 169
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    const-string v3, "help"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLLogger;->help()V

    .line 173
    :cond_1
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    invoke-direct {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->logger:Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    .line 175
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    goto :goto_1

    .line 177
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    .line 178
    sput-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->logger:Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    .line 179
    const/4 v1, 0x0

    sput-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    .line 181
    .end local v0    # "p":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->DEBUG:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-static {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public static varargs finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->TRACE:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-static {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public static varargs finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->ALL:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-static {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method private static hasOption(Ljava/lang/String;)Z
    .locals 5
    .param p0, "option"    # Ljava/lang/String;

    .line 237
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 238
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 239
    return v1

    .line 241
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    const-string v2, "ssl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "offset":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    const-string v4, "sslctx"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 244
    const-string v2, "data"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    const-string v2, "packet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    const-string v2, "plaintext"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    return v1

    .line 252
    .end local v0    # "offset":I
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static help()V
    .locals 2

    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 185
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "help           print the help messages"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "expand         expand debugging information"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 188
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "all            turn on all debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ssl            turn on ssl debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 191
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The following can be used with ssl:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\trecord       enable per-record tracing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\thandshake    print each handshake message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tkeygen       print key generation data"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tsession      print session activity"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tdefaultctx   print default SSL initialization"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tsslctx       print SSLContext tracing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tsessioncache print session cache tracing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tkeymanager   print key manager tracing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\ttrustmanager print trust manager tracing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tpluggability print pluggability tracing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 203
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\thandshake debugging can be widened with:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tdata         hex dump of each handshake message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tverbose      verbose handshake message printing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 207
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\trecord debugging can be widened with:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tplaintext    hex dump of record plaintext"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tpacket       print raw SSL/TLS packets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 212
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->INFO:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-static {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 7
    .param p0, "checkPoints"    # Ljava/lang/String;

    .line 219
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    return v1

    .line 221
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->property:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 222
    return v2

    .line 225
    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "options":[Ljava/lang/String;
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 227
    .local v5, "option":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 229
    return v1

    .line 226
    .end local v5    # "option":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_3
    return v2
.end method

.method private static varargs log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "level"    # Lorg/openjsse/sun/security/ssl/SSLLogger$Level;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->logger:Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    invoke-virtual {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->isLoggable(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    nop

    .line 286
    :try_start_0
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->access$000([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "formatted":Ljava/lang/String;
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->logger:Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0    # "formatted":Ljava/lang/String;
    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->logger:Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLConsoleLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_2
    :goto_1
    return-void
.end method

.method public static varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->ERROR:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-static {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method static varargs toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # [Ljava/lang/Object;

    .line 297
    :try_start_0
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLLogger$SSLSimpleFormatter;->access$000([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "exp":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exception thrown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLLogger$Level;->WARNING:Lorg/openjsse/sun/security/ssl/SSLLogger$Level;

    invoke-static {v0, p0, p1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->log(Lorg/openjsse/sun/security/ssl/SSLLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    return-void
.end method

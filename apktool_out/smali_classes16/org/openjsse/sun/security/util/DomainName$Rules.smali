.class Lorg/openjsse/sun/security/util/DomainName$Rules;
.super Ljava/lang/Object;
.source "DomainName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/DomainName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rules"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
    }
.end annotation


# instance fields
.field private final hasExceptions:Z

.field private final ruleSets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->ruleSets:Ljava/util/LinkedList;

    .line 154
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 155
    .local v0, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 159
    .local v2, "hasExceptions":Z
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 160
    .local v3, "type":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 161
    invoke-static {v5}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->access$000(Ljava/lang/String;)I

    move-result v4

    .line 162
    .local v4, "numLabels":I
    if-eqz v4, :cond_0

    .line 163
    add-int/lit8 v6, v4, -0x1

    invoke-direct {p0, v6}, Lorg/openjsse/sun/security/util/DomainName$Rules;->getRuleSet(I)Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;

    move-result-object v6

    .line 164
    .local v6, "ruleset":Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
    invoke-virtual {v6, v3, v5}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->addRule(ILjava/lang/String;)V

    .line 165
    iget-boolean v7, v6, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->hasExceptions:Z

    or-int/2addr v2, v7

    .line 167
    .end local v6    # "ruleset":Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 168
    .end local v4    # "numLabels":I
    goto :goto_0

    .line 169
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    iput-boolean v2, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->hasExceptions:Z

    .line 170
    return-void
.end method

.method private static createRules(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Rules;
    .locals 5
    .param p0, "tld"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/openjsse/sun/security/util/DomainName$Rules;->getPubSuffixStream()Ljava/io/InputStream;

    move-result-object v1

    .line 190
    .local v1, "pubSuffixStream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 191
    nop

    .line 194
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    return-object v0

    .line 193
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v2}, Lorg/openjsse/sun/security/util/DomainName$Rules;->getRules(Ljava/lang/String;Ljava/util/zip/ZipInputStream;)Lorg/openjsse/sun/security/util/DomainName$Rules;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :cond_2
    return-object v2

    .line 189
    :catchall_0
    move-exception v2

    .end local v1    # "pubSuffixStream":Ljava/io/InputStream;
    .end local p0    # "tld":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    .restart local v1    # "pubSuffixStream":Ljava/io/InputStream;
    .restart local p0    # "tld":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "tld":Ljava/lang/String;
    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "pubSuffixStream":Ljava/io/InputStream;
    .restart local p0    # "tld":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_4

    const-string v2, "ssl"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot parse public suffix data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 196
    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_4
    return-object v0
.end method

.method private static getPubSuffixStream()Ljava/io/InputStream;
    .locals 3

    .line 206
    new-instance v0, Lorg/openjsse/sun/security/util/DomainName$Rules$1;

    invoke-direct {v0}, Lorg/openjsse/sun/security/util/DomainName$Rules$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 220
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 221
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "trustmanager"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "lib/security/public_suffix_list.dat not found"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_0
    return-object v0
.end method

.method private getRuleSet(I)Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
    .locals 4
    .param p1, "index"    # I

    .line 255
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->ruleSets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->ruleSets:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;

    return-object v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, "r":Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
    iget-object v1, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->ruleSets:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 260
    new-instance v2, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;-><init>(I)V

    move-object v0, v2

    .line 261
    iget-object v2, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->ruleSets:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static getRules(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Rules;
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;

    .line 173
    invoke-static {p0}, Lorg/openjsse/sun/security/util/DomainName$Rules;->getTopLevelDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "tld":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const/4 v1, 0x0

    return-object v1

    .line 177
    :cond_0
    invoke-static {}, Lorg/openjsse/sun/security/util/DomainName;->access$100()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/openjsse/sun/security/util/DomainName$Rules$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/openjsse/sun/security/util/DomainName$Rules$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/util/DomainName$Rules;

    return-object v1
.end method

.method private static getRules(Ljava/lang/String;Ljava/util/zip/ZipInputStream;)Lorg/openjsse/sun/security/util/DomainName$Rules;
    .locals 4
    .param p0, "tld"    # Ljava/lang/String;
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "found":Z
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 234
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    goto :goto_0

    .line 241
    :cond_1
    if-nez v0, :cond_3

    .line 242
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    const-string v2, "ssl"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 247
    :cond_3
    new-instance v2, Lorg/openjsse/sun/security/util/DomainName$Rules;

    invoke-direct {v2, p1}, Lorg/openjsse/sun/security/util/DomainName$Rules;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method private static getTopLevelDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;

    .line 181
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 182
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 183
    return-object p0

    .line 185
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getRules$0(Ljava/lang/String;Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Rules;
    .locals 1
    .param p0, "tld"    # Ljava/lang/String;
    .param p1, "k"    # Ljava/lang/String;

    .line 177
    invoke-static {p0}, Lorg/openjsse/sun/security/util/DomainName$Rules;->createRules(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Rules;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method match(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Match;
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "possibleMatch":Lorg/openjsse/sun/security/util/DomainName$Match;
    iget-object v1, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->ruleSets:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;

    .line 277
    .local v2, "ruleSet":Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
    invoke-virtual {v2, p1}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->match(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Match;

    move-result-object v3

    .line 278
    .local v3, "match":Lorg/openjsse/sun/security/util/DomainName$Match;
    if-eqz v3, :cond_2

    .line 279
    invoke-interface {v3}, Lorg/openjsse/sun/security/util/DomainName$Match;->type()Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->EXCEPTION:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    if-eq v4, v5, :cond_1

    iget-boolean v4, p0, Lorg/openjsse/sun/security/util/DomainName$Rules;->hasExceptions:Z

    if-nez v4, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    if-nez v0, :cond_2

    .line 283
    move-object v0, v3

    goto :goto_2

    .line 280
    :cond_1
    :goto_1
    return-object v3

    .line 286
    .end local v2    # "ruleSet":Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
    .end local v3    # "match":Lorg/openjsse/sun/security/util/DomainName$Match;
    :cond_2
    :goto_2
    goto :goto_0

    .line 287
    :cond_3
    return-object v0
.end method

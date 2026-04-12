.class Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;
.super Ljava/lang/Object;
.source "DomainName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/DomainName$Rules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleSet"
.end annotation


# static fields
.field private static final AUTHS:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;


# instance fields
.field hasExceptions:Z

.field private final numLabels:I

.field private final rules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjsse/sun/security/util/DomainName$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 306
    invoke-static {}, Lorg/openjsse/sun/security/util/RegisteredDomain$Type;->values()[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->AUTHS:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    .line 305
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "n"    # I

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->rules:Ljava/util/Set;

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->hasExceptions:Z

    .line 309
    iput p1, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    .line 310
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 300
    invoke-static {p0}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static labels(Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "n"    # I

    .line 477
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ge p1, v0, :cond_0

    .line 478
    return v1

    .line 480
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 481
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 482
    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 483
    .local v3, "next":I
    if-ne v3, v1, :cond_2

    .line 484
    add-int/lit8 v4, p1, -0x1

    if-ne v2, v4, :cond_1

    .line 485
    const/4 v1, 0x0

    return v1

    .line 487
    :cond_1
    return v1

    .line 490
    :cond_2
    add-int/lit8 v0, v3, -0x1

    .line 481
    .end local v3    # "next":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v1, v0, 0x2

    return v1
.end method

.method private matchException(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "rule"    # Lorg/openjsse/sun/security/util/DomainName$Rule;

    .line 423
    iget v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->labels(Ljava/lang/String;I)I

    move-result v0

    .line 424
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 425
    return-object v2

    .line 427
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "substring":Ljava/lang/String;
    iget-object v3, p2, Lorg/openjsse/sun/security/util/DomainName$Rule;->domain:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    new-instance v2, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;

    iget v3, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    add-int/lit8 v3, v3, -0x1

    .line 431
    invoke-static {p1, v3}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->labels(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;I)V

    .line 430
    return-object v2

    .line 434
    :cond_1
    return-object v2
.end method

.method private matchNormal(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "rule"    # Lorg/openjsse/sun/security/util/DomainName$Rule;

    .line 389
    iget v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->labels(Ljava/lang/String;I)I

    move-result v0

    .line 390
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 391
    return-object v2

    .line 395
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "substring":Ljava/lang/String;
    iget-object v3, p2, Lorg/openjsse/sun/security/util/DomainName$Rule;->domain:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    new-instance v2, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;

    invoke-direct {v2, p1, p2, v0}, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;I)V

    return-object v2

    .line 400
    :cond_1
    return-object v2
.end method

.method private matchOther(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;
    .locals 10
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "rule"    # Lorg/openjsse/sun/security/util/DomainName$Rule;

    .line 446
    move-object v0, p2

    check-cast v0, Lorg/openjsse/sun/security/util/DomainName$OtherRule;

    .line 447
    .local v0, "otherRule":Lorg/openjsse/sun/security/util/DomainName$OtherRule;
    invoke-static {p1}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->split(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    .line 449
    .local v1, "target":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    sub-int/2addr v2, v3

    .line 450
    .local v2, "diff":I
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 451
    return-object v3

    .line 454
    :cond_0
    const/4 v4, 0x1

    .line 455
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    if-ge v5, v6, :cond_2

    .line 456
    iget-object v6, v0, Lorg/openjsse/sun/security/util/DomainName$OtherRule;->labels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 457
    .local v6, "ruleLabel":Ljava/lang/String;
    add-int v7, v5, v2

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 459
    .local v7, "targetLabel":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-eq v8, v9, :cond_1

    .line 460
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 461
    const/4 v4, 0x0

    .line 462
    goto :goto_1

    .line 455
    .end local v6    # "ruleLabel":Ljava/lang/String;
    .end local v7    # "targetLabel":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 465
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 466
    new-instance v3, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;

    iget v5, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    invoke-direct {v3, p2, v5, v1}, Lorg/openjsse/sun/security/util/DomainName$OtherMatch;-><init>(Lorg/openjsse/sun/security/util/DomainName$Rule;ILjava/util/LinkedList;)V

    return-object v3

    .line 468
    :cond_3
    return-object v3
.end method

.method private matchWildcard(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "rule"    # Lorg/openjsse/sun/security/util/DomainName$Rule;

    .line 406
    iget v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->labels(Ljava/lang/String;I)I

    move-result v0

    .line 407
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 408
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "substring":Ljava/lang/String;
    iget-object v2, p2, Lorg/openjsse/sun/security/util/DomainName$Rule;->domain:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    new-instance v2, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;

    iget v3, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->numLabels:I

    .line 412
    invoke-static {p1, v3}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->labels(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lorg/openjsse/sun/security/util/DomainName$CommonMatch;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;I)V

    .line 411
    return-object v2

    .line 416
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static numLabels(Ljava/lang/String;)I
    .locals 6
    .param p0, "rule"    # Ljava/lang/String;

    .line 367
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 371
    .local v0, "len":I
    const/4 v1, 0x0

    .line 372
    .local v1, "count":I
    const/4 v2, 0x0

    .line 373
    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 375
    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v4, v3

    .local v4, "pos":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 376
    add-int/lit8 v3, v1, 0x1

    return v3

    .line 378
    :cond_1
    add-int/lit8 v2, v4, 0x1

    .line 379
    nop

    .end local v4    # "pos":I
    add-int/lit8 v1, v1, 0x1

    .line 380
    goto :goto_0

    .line 381
    :cond_2
    return v1
.end method

.method private static split(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 3
    .param p0, "rule"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 362
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "labels":[Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method addRule(ILjava/lang/String;)V
    .locals 6
    .param p1, "auth"    # I
    .param p2, "rule"    # Ljava/lang/String;

    .line 313
    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->rules:Ljava/util/Set;

    new-instance v1, Lorg/openjsse/sun/security/util/DomainName$Rule;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->EXCEPTION:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    sget-object v5, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->AUTHS:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    aget-object v5, v5, p1

    invoke-direct {v1, v3, v4, v5}, Lorg/openjsse/sun/security/util/DomainName$Rule;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule$Type;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    iput-boolean v2, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->hasExceptions:Z

    goto :goto_0

    .line 317
    :cond_0
    const-string v0, "*."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2a

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->rules:Ljava/util/Set;

    new-instance v1, Lorg/openjsse/sun/security/util/DomainName$Rule;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->WILDCARD:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    sget-object v4, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->AUTHS:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    aget-object v4, v4, p1

    invoke-direct {v1, v2, v3, v4}, Lorg/openjsse/sun/security/util/DomainName$Rule;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule$Type;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 323
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->rules:Ljava/util/Set;

    new-instance v1, Lorg/openjsse/sun/security/util/DomainName$Rule;

    sget-object v2, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->NORMAL:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    sget-object v3, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->AUTHS:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    aget-object v3, v3, p1

    invoke-direct {v1, p2, v2, v3}, Lorg/openjsse/sun/security/util/DomainName$Rule;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule$Type;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->rules:Ljava/util/Set;

    new-instance v1, Lorg/openjsse/sun/security/util/DomainName$OtherRule;

    sget-object v2, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->AUTHS:[Lorg/openjsse/sun/security/util/RegisteredDomain$Type;

    aget-object v2, v2, p1

    invoke-static {p2}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->split(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lorg/openjsse/sun/security/util/DomainName$OtherRule;-><init>(Ljava/lang/String;Lorg/openjsse/sun/security/util/RegisteredDomain$Type;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_0
    return-void
.end method

.method match(Ljava/lang/String;)Lorg/openjsse/sun/security/util/DomainName$Match;
    .locals 5
    .param p1, "domain"    # Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "match":Lorg/openjsse/sun/security/util/DomainName$Match;
    iget-object v1, p0, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->rules:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/util/DomainName$Rule;

    .line 334
    .local v2, "rule":Lorg/openjsse/sun/security/util/DomainName$Rule;
    sget-object v3, Lorg/openjsse/sun/security/util/DomainName$1;->$SwitchMap$org$openjsse$sun$security$util$DomainName$Rule$Type:[I

    iget-object v4, v2, Lorg/openjsse/sun/security/util/DomainName$Rule;->type:Lorg/openjsse/sun/security/util/DomainName$Rule$Type;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/util/DomainName$Rule$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 351
    :pswitch_0
    invoke-direct {p0, p1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->matchException(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;

    move-result-object v3

    .line 352
    .local v3, "excMatch":Lorg/openjsse/sun/security/util/DomainName$Match;
    if-eqz v3, :cond_0

    .line 353
    return-object v3

    .line 346
    .end local v3    # "excMatch":Lorg/openjsse/sun/security/util/DomainName$Match;
    :pswitch_1
    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0, p1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->matchOther(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;

    move-result-object v0

    goto :goto_1

    .line 341
    :pswitch_2
    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0, p1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->matchWildcard(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;

    move-result-object v0

    goto :goto_1

    .line 336
    :pswitch_3
    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0, p1, v2}, Lorg/openjsse/sun/security/util/DomainName$Rules$RuleSet;->matchNormal(Ljava/lang/String;Lorg/openjsse/sun/security/util/DomainName$Rule;)Lorg/openjsse/sun/security/util/DomainName$Match;

    move-result-object v0

    .line 357
    .end local v2    # "rule":Lorg/openjsse/sun/security/util/DomainName$Rule;
    :cond_0
    :goto_1
    goto :goto_0

    .line 358
    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

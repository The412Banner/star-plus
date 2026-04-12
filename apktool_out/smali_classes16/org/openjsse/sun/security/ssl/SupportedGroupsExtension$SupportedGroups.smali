.class Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;
.super Ljava/lang/Object;
.source "SupportedGroupsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SupportedGroups"
.end annotation


# static fields
.field static final enableFFDHE:Z

.field static final namedGroupParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            "Ljava/security/AlgorithmParameters;",
            ">;"
        }
    .end annotation
.end field

.field static final supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 518
    nop

    .line 519
    const-string v0, "jsse.enableFFDHE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->enableFFDHE:Z

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    .line 529
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    .line 538
    .local v0, "requireFips":Z
    nop

    .line 539
    const-string v2, "jdk.tls.namedGroups"

    invoke-static {v2}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "property":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 543
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 544
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 549
    :cond_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 550
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "groups":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    .local v4, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v1, v3

    .line 553
    .local v6, "group":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 554
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 555
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->nameOf(Ljava/lang/String;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v7

    .line 556
    .local v7, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v7, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v8, v7, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isFips:Z

    if-eqz v8, :cond_2

    .line 558
    :cond_1
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isAvailableGroup(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 559
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 570
    .end local v1    # "groups":[Ljava/lang/String;
    goto/16 :goto_3

    .line 566
    .restart local v1    # "groups":[Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System property jdk.tls.namedGroups("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") contains no supported named groups"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 572
    .end local v1    # "groups":[Ljava/lang/String;
    .end local v4    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    :cond_5
    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x8

    if-eqz v0, :cond_6

    .line 573
    new-array v10, v10, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP256_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v11, v10, v3

    sget-object v11, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP384_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v11, v10, v1

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP521_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v9

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_2048:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v8

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_3072:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v7

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_4096:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v6

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_6144:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v5

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_8192:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v4

    move-object v1, v10

    .local v1, "groups":[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    goto :goto_1

    .line 587
    .end local v1    # "groups":[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_6
    new-array v10, v10, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP256_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v11, v10, v3

    sget-object v11, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP384_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v11, v10, v1

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->SECP521_R1:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v9

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_2048:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v8

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_3072:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v7

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_4096:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v6

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_6144:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v5

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->FFDHE_8192:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    aput-object v1, v10, v4

    move-object v1, v10

    .line 602
    .restart local v1    # "groups":[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 603
    .restart local v4    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    array-length v5, v1

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_8

    aget-object v7, v1, v6

    .line 604
    .local v7, "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isAvailableGroup(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 605
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v7    # "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 609
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_9

    .line 610
    const-string v5, "ssl"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 611
    const-string v5, "No default named groups"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    .end local v1    # "groups":[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_9
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    sput-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 618
    .local v5, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    sget-object v6, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    aput-object v5, v6, v1

    .line 619
    .end local v5    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    move v1, v7

    goto :goto_4

    .line 620
    .end local v0    # "requireFips":Z
    .end local v2    # "property":Ljava/lang/String;
    .end local v4    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    .end local v7    # "i":I
    :cond_a
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDHParameterSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljavax/crypto/spec/DHParameterSpec;
    .locals 4
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 727
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_1

    .line 732
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AlgorithmParameters;

    .line 733
    .local v0, "params":Ljava/security/AlgorithmParameters;
    if-eqz v0, :cond_0

    .line 739
    :try_start_0
    const-class v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/DHParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 740
    :catch_0
    move-exception v1

    .line 742
    .local v1, "ipse":Ljava/security/spec/InvalidParameterSpecException;
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->getPredefinedDHParameterSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    return-object v2

    .line 734
    .end local v1    # "ipse":Ljava/security/spec/InvalidParameterSpecException;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a supported DH named group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    .end local v0    # "params":Ljava/security/AlgorithmParameters;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a named DH group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getECGenParamSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljava/security/spec/ECGenParameterSpec;
    .locals 4
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 707
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v0, v1, :cond_1

    .line 712
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AlgorithmParameters;

    .line 713
    .local v0, "params":Ljava/security/AlgorithmParameters;
    if-eqz v0, :cond_0

    .line 719
    :try_start_0
    const-class v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 720
    :catch_0
    move-exception v1

    .line 722
    .local v1, "ipse":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 714
    .end local v1    # "ipse":Ljava/security/spec/InvalidParameterSpecException;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a supported EC named group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    .end local v0    # "params":Ljava/security/AlgorithmParameters;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a named EC group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFFDHEDHParameterSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljavax/crypto/spec/DHParameterSpec;
    .locals 3
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "spec":Ljavax/crypto/spec/DHParameterSpec;
    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;->$SwitchMap$org$openjsse$sun$security$ssl$SupportedGroupsExtension$NamedGroup:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 677
    :pswitch_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_0

    .line 674
    :pswitch_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    const/16 v2, 0x1800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 675
    goto :goto_0

    .line 671
    :pswitch_2
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 672
    goto :goto_0

    .line 668
    :pswitch_3
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    const/16 v2, 0xc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 669
    goto :goto_0

    .line 665
    :pswitch_4
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 666
    nop

    .line 680
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPredefinedDHParameterSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljavax/crypto/spec/DHParameterSpec;
    .locals 3
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "spec":Ljavax/crypto/spec/DHParameterSpec;
    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$1;->$SwitchMap$org$openjsse$sun$security$ssl$SupportedGroupsExtension$NamedGroup:[I

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 700
    :pswitch_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->definedParams:Ljava/util/Map;

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_0

    .line 697
    :pswitch_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->definedParams:Ljava/util/Map;

    const/16 v2, 0x1800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 698
    goto :goto_0

    .line 694
    :pswitch_2
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->definedParams:Ljava/util/Map;

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 695
    goto :goto_0

    .line 691
    :pswitch_3
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->definedParams:Ljava/util/Map;

    const/16 v2, 0xc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 692
    goto :goto_0

    .line 688
    :pswitch_4
    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->definedParams:Ljava/util/Map;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 689
    nop

    .line 703
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getPreferredGroup(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 7
    .param p0, "negotiatedProtocol"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p2, "type"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 823
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 824
    .local v3, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v4, p2, :cond_0

    .line 825
    invoke-virtual {v3, p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 827
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->algorithm:Ljava/lang/String;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    .line 829
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/AlgorithmParameters;

    .line 826
    invoke-interface {p1, v4, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    return-object v3

    .line 823
    .end local v3    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getPreferredGroup(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/util/List;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .locals 5
    .param p0, "negotiatedProtocol"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p2, "type"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "Ljava/security/AlgorithmConstraints;",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            ">;)",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;"
        }
    .end annotation

    .line 805
    .local p3, "requestedNamedGroups":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 806
    .local v1, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v2, p2, :cond_0

    .line 807
    invoke-virtual {v1, p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->isAvailable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isSupported(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 810
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->algorithm:Ljava/lang/String;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    .line 812
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/AlgorithmParameters;

    .line 809
    invoke-interface {p1, v2, v3, v4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    return-object v1

    .line 815
    .end local v1    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_0
    goto :goto_0

    .line 817
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static isActivatable(Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z
    .locals 3
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p1, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 780
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isSupported(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    const/4 v0, 0x0

    return v0

    .line 784
    :cond_0
    sget-object v0, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 785
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->algorithm:Ljava/lang/String;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    .line 787
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AlgorithmParameters;

    .line 784
    invoke-interface {p0, v0, v1, v2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method

.method static isActivatable(Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)Z
    .locals 10
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p1, "type"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "hasFFDHEGroups":Z
    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 752
    .local v6, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v7, v6, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v7, p1, :cond_1

    .line 753
    sget-object v7, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 754
    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    iget-object v8, v6, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->algorithm:Ljava/lang/String;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    .line 756
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/AlgorithmParameters;

    .line 753
    invoke-interface {p0, v7, v8, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 758
    return v5

    .line 761
    :cond_0
    if-nez v0, :cond_1

    sget-object v5, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne p1, v5, :cond_1

    .line 763
    const/4 v0, 0x1

    .line 751
    .end local v6    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 774
    :cond_2
    if-nez v0, :cond_3

    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne p1, v1, :cond_3

    move v3, v5

    :cond_3
    return v3
.end method

.method private static isAvailableGroup(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z
    .locals 5
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "params":Ljava/security/AlgorithmParameters;
    const/4 v1, 0x0

    .line 626
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 627
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 629
    :try_start_0
    const-string v2, "EC"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    move-object v0, v2

    .line 630
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->oid:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 633
    goto :goto_0

    .line 631
    :catch_0
    move-exception v2

    .line 632
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    return v4

    .line 635
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->type:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_FFDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-ne v2, v3, :cond_1

    .line 637
    :try_start_1
    const-string v2, "DiffieHellman"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    move-object v0, v2

    .line 638
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->getFFDHEDHParameterSpec(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 641
    goto :goto_0

    .line 639
    :catch_1
    move-exception v2

    .line 640
    .restart local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    return v4

    .line 644
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 646
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_2} :catch_2

    .line 649
    nop

    .line 652
    sget-object v2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->namedGroupParams:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const/4 v2, 0x1

    return v2

    .line 647
    :catch_2
    move-exception v2

    .line 648
    .local v2, "e":Ljava/security/spec/InvalidParameterSpecException;
    return v4

    .line 657
    .end local v2    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_2
    return v4
.end method

.method static isSupported(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)Z
    .locals 7
    .param p0, "namedGroup"    # Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    .line 792
    sget-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->supportedNamedGroups:[Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 793
    .local v4, "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget v5, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    iget v6, v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->id:I

    if-ne v5, v6, :cond_0

    .line 794
    const/4 v0, 0x1

    return v0

    .line 792
    .end local v4    # "group":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 798
    :cond_1
    return v2
.end method

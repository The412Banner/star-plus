.class public final Lorg/openjsse/sun/security/util/SecurityProviderConstants;
.super Ljava/lang/Object;
.source "SecurityProviderConstants.java"


# static fields
.field public static final DEF_DH_KEY_SIZE:I

.field public static final DEF_DSA_KEY_SIZE:I

.field public static final DEF_EC_KEY_SIZE:I

.field public static final DEF_RSASSA_PSS_KEY_SIZE:I

.field public static final DEF_RSA_KEY_SIZE:I

.field private static final KEY_LENGTH_PROP:Ljava/lang/String; = "jdk.security.defaultKeySize"

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 38
    nop

    .line 39
    const-string v0, "jca"

    const-string v1, "ProviderConfig"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    .line 67
    nop

    .line 68
    const-string v1, "jdk.security.defaultKeySize"

    invoke-static {v1}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "keyLengthStr":Ljava/lang/String;
    const/16 v3, 0x800

    .line 70
    .local v3, "dsaKeySize":I
    const/16 v4, 0x800

    .line 71
    .local v4, "rsaKeySize":I
    move v5, v4

    .line 72
    .local v5, "rsaSsaPssKeySize":I
    const/16 v6, 0x800

    .line 73
    .local v6, "dhKeySize":I
    const/16 v7, 0x100

    .line 75
    .local v7, "ecKeySize":I
    if-eqz v2, :cond_b

    .line 77
    :try_start_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 78
    .local v8, "pairs":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_a

    aget-object v0, v8, v11

    move-object v12, v0

    .line 79
    .local v12, "p":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 80
    .local v13, "algoAndValue":[Ljava/lang/String;
    array-length v0, v13
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v14, 0x2

    if-eq v0, v14, :cond_1

    .line 82
    :try_start_1
    sget-object v0, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring invalid pair in jdk.security.defaultKeySize property: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v2

    goto/16 :goto_3

    .line 82
    :cond_0
    move-object/from16 v16, v2

    goto/16 :goto_3

    .line 123
    .end local v8    # "pairs":[Ljava/lang/String;
    .end local v12    # "p":Ljava/lang/String;
    .end local v13    # "algoAndValue":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_4

    .line 88
    .restart local v8    # "pairs":[Ljava/lang/String;
    .restart local v12    # "p":Ljava/lang/String;
    .restart local v13    # "algoAndValue":[Ljava/lang/String;
    :cond_1
    :try_start_2
    aget-object v0, v13, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v14, v0

    .line 89
    .local v14, "algoName":Ljava/lang/String;
    const/4 v15, -0x1

    .line 91
    .local v15, "value":I
    const/4 v0, 0x1

    :try_start_3
    aget-object v0, v13, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    .line 99
    .end local v15    # "value":I
    .local v0, "value":I
    nop

    .line 100
    :try_start_4
    const-string v15, "DSA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 101
    move v3, v0

    goto :goto_1

    .line 102
    :cond_2
    const-string v15, "RSA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 103
    move v4, v0

    goto :goto_1

    .line 104
    :cond_3
    const-string v15, "RSASSA-PSS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 105
    move v5, v0

    goto :goto_1

    .line 106
    :cond_4
    const-string v15, "DH"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 107
    move v6, v0

    goto :goto_1

    .line 108
    :cond_5
    const-string v15, "EC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 109
    move v7, v0

    .line 117
    :goto_1
    sget-object v15, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_6

    .line 118
    sget-object v15, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v16, v2

    .end local v2    # "keyLengthStr":Ljava/lang/String;
    .local v16, "keyLengthStr":Ljava/lang/String;
    :try_start_5
    const-string v2, "Overriding default "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " keysize with value from "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " property: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 117
    .end local v16    # "keyLengthStr":Ljava/lang/String;
    .restart local v2    # "keyLengthStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "keyLengthStr":Ljava/lang/String;
    .restart local v16    # "keyLengthStr":Ljava/lang/String;
    goto :goto_3

    .line 111
    .end local v16    # "keyLengthStr":Ljava/lang/String;
    .restart local v2    # "keyLengthStr":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v2

    .end local v2    # "keyLengthStr":Ljava/lang/String;
    .restart local v16    # "keyLengthStr":Ljava/lang/String;
    sget-object v2, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_9

    .line 112
    sget-object v2, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring unsupported algo in jdk.security.defaultKeySize property: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 92
    .end local v0    # "value":I
    .end local v16    # "keyLengthStr":Ljava/lang/String;
    .restart local v2    # "keyLengthStr":Ljava/lang/String;
    .restart local v15    # "value":I
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    .line 94
    .end local v2    # "keyLengthStr":Ljava/lang/String;
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    .restart local v16    # "keyLengthStr":Ljava/lang/String;
    sget-object v2, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_8

    .line 95
    sget-object v2, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .local v17, "nfe":Ljava/lang/NumberFormatException;
    const-string v0, "Ignoring invalid value in jdk.security.defaultKeySize property: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 94
    .end local v17    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    move-object/from16 v17, v0

    .line 98
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v17    # "nfe":Ljava/lang/NumberFormatException;
    :goto_2
    nop

    .line 78
    .end local v12    # "p":Ljava/lang/String;
    .end local v13    # "algoAndValue":[Ljava/lang/String;
    .end local v14    # "algoName":Ljava/lang/String;
    .end local v15    # "value":I
    .end local v17    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 123
    .end local v8    # "pairs":[Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_4

    .line 78
    .end local v16    # "keyLengthStr":Ljava/lang/String;
    .restart local v2    # "keyLengthStr":Ljava/lang/String;
    .restart local v8    # "pairs":[Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v2

    .line 129
    .end local v2    # "keyLengthStr":Ljava/lang/String;
    .end local v8    # "pairs":[Ljava/lang/String;
    .restart local v16    # "keyLengthStr":Ljava/lang/String;
    goto :goto_5

    .line 123
    .end local v16    # "keyLengthStr":Ljava/lang/String;
    .restart local v2    # "keyLengthStr":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    .line 125
    .end local v2    # "keyLengthStr":Ljava/lang/String;
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    .restart local v16    # "keyLengthStr":Ljava/lang/String;
    :goto_4
    sget-object v1, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_c

    .line 126
    sget-object v1, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected exception while parsing jdk.security.defaultKeySize property: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 75
    .end local v0    # "pse":Ljava/util/regex/PatternSyntaxException;
    .end local v16    # "keyLengthStr":Ljava/lang/String;
    .restart local v2    # "keyLengthStr":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v2

    .line 131
    .end local v2    # "keyLengthStr":Ljava/lang/String;
    .restart local v16    # "keyLengthStr":Ljava/lang/String;
    :cond_c
    :goto_5
    sput v3, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->DEF_DSA_KEY_SIZE:I

    .line 132
    sput v4, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->DEF_RSA_KEY_SIZE:I

    .line 133
    sput v5, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->DEF_RSASSA_PSS_KEY_SIZE:I

    .line 134
    sput v6, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->DEF_DH_KEY_SIZE:I

    .line 135
    sput v7, Lorg/openjsse/sun/security/util/SecurityProviderConstants;->DEF_EC_KEY_SIZE:I

    .line 136
    .end local v3    # "dsaKeySize":I
    .end local v4    # "rsaKeySize":I
    .end local v5    # "rsaSsaPssKeySize":I
    .end local v6    # "dhKeySize":I
    .end local v7    # "ecKeySize":I
    .end local v16    # "keyLengthStr":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static final getDefDSASubprimeSize(I)I
    .locals 3
    .param p0, "primeSize"    # I

    .line 46
    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    .line 47
    const/16 v0, 0xa0

    return v0

    .line 48
    :cond_0
    const/16 v0, 0x800

    if-ne p0, v0, :cond_1

    .line 49
    const/16 v0, 0xe0

    return v0

    .line 50
    :cond_1
    const/16 v0, 0xc00

    if-ne p0, v0, :cond_2

    .line 51
    const/16 v0, 0x100

    return v0

    .line 53
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DSA Prime Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

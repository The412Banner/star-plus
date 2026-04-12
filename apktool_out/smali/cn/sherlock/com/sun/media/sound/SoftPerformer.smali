.class public Lcn/sherlock/com/sun/media/sound/SoftPerformer;
.super Ljava/lang/Object;
.source "SoftPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;
    }
.end annotation


# static fields
.field static defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field private static keySortComparator:Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;


# instance fields
.field public connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field public ctrl_connections:[I

.field private ctrl_connections_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public exclusiveClass:I

.field public forcedKeynumber:Z

.field public forcedVelocity:Z

.field public keyFrom:I

.field public keyTo:I

.field public midi_connections:[[I

.field public midi_ctrl_connections:[[I

.field public midi_nrpn_connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public midi_rpn_connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public oscillators:[Lcn/sherlock/com/sun/media/sound/ModelOscillator;

.field public performer:Lcn/sherlock/com/sun/media/sound/ModelPerformer;

.field public selfNonExclusive:Z

.field public velFrom:I

.field public velTo:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 42
    const/16 v0, 0x2a

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "o":I
    sget-object v1, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "o":I
    .local v2, "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "noteon"

    const-string v7, "on"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5, v8, v8, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v10, "eg"

    invoke-direct {v9, v10, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v11, v12, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v1, v0

    .line 55
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .local v1, "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v5, v6, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5, v8, v8, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v13, 0x1

    invoke-direct {v9, v10, v7, v13}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v4, v11, v12, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 63
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "active"

    invoke-direct {v5, v10, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5, v8, v8, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v14, "mixer"

    invoke-direct {v9, v14, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v4, v11, v12, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 71
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v5, v10, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v13, v8, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v9, "gain"

    invoke-direct {v7, v14, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v11, -0x3f72000000000000L    # -960.0

    invoke-direct {v3, v4, v11, v12, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 79
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v7, "velocity"

    invoke-direct {v5, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v13, v8, v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v7, v14, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v4, v11, v12, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 87
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "midi"

    const-string/jumbo v15, "pitch"

    invoke-direct {v5, v7, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v8, v13, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "0"

    const-string v12, "midi_rpn"

    invoke-direct {v7, v12, v11}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcn/sherlock/com/sun/media/sound/SoftPerformer$1;

    invoke-direct {v11}, Lcn/sherlock/com/sun/media/sound/SoftPerformer$1;-><init>()V

    invoke-direct {v5, v7, v11}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;Lcn/sherlock/com/sun/media/sound/ModelTransform;)V

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v11, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v13, "osc"

    invoke-direct {v11, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v11}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v4, v5, v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 104
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "keynumber"

    invoke-direct {v5, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v8, v8, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v6, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v6, 0x40c9000000000000L    # 12800.0

    invoke-direct {v3, v4, v6, v7, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 112
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "7"

    const-string v6, "midi_cc"

    invoke-direct {v5, v6, v11}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7, v8, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v7, v14, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object v11, v9

    const-wide/high16 v8, -0x3f72000000000000L    # -960.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 120
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v8, "8"

    invoke-direct {v5, v6, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v9, "balance"

    invoke-direct {v8, v14, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 128
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "10"

    invoke-direct {v5, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v8, "pan"

    invoke-direct {v7, v14, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-direct {v3, v4, v7, v8, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 136
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "11"

    invoke-direct {v5, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v7, v8, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v8, v14, v11}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v8, -0x3f72000000000000L    # -960.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 144
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v8, "91"

    invoke-direct {v5, v6, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v9, "reverb"

    invoke-direct {v8, v14, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 152
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v8, "93"

    invoke-direct {v5, v6, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v9, "chorus"

    invoke-direct {v8, v14, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 160
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v8, "71"

    invoke-direct {v5, v6, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v9, "q"

    const-string v11, "filter"

    invoke-direct {v8, v11, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 167
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v8, "74"

    invoke-direct {v5, v6, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v9, "freq"

    invoke-direct {v8, v11, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v7, 0x40c2c00000000000L    # 9600.0

    invoke-direct {v3, v4, v7, v8, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 175
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "72"

    invoke-direct {v5, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v14, "release2"

    invoke-direct {v8, v10, v14}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v7, 0x40b7700000000000L    # 6000.0

    invoke-direct {v3, v4, v7, v8, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 183
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v14, "73"

    invoke-direct {v5, v6, v14}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v14, 0x1

    invoke-direct {v4, v5, v7, v14, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v14, "attack2"

    invoke-direct {v8, v10, v14}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object v8, v6

    const-wide v5, 0x409f400000000000L    # 2000.0

    invoke-direct {v3, v4, v5, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 191
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "75"

    invoke-direct {v5, v8, v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v14, "decay2"

    invoke-direct {v7, v10, v14}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object/from16 v16, v9

    move-object v14, v10

    const-wide v9, 0x40b7700000000000L    # 6000.0

    invoke-direct {v3, v4, v9, v10, v6}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 199
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v7, "67"

    invoke-direct {v6, v8, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    const/4 v5, 0x0

    invoke-direct {v4, v6, v5, v5, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v5, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v9, -0x3fb7000000000000L    # -50.0

    invoke-direct {v3, v4, v9, v10, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 207
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "67"

    invoke-direct {v5, v8, v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v6}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v5, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v8, -0x3f5d400000000000L    # -2400.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 215
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "1"

    invoke-direct {v5, v12, v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v6, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 223
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "2"

    invoke-direct {v5, v12, v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v6, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v8, 0x40c9000000000000L    # 12800.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 231
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "master"

    const-string v8, "fine_tuning"

    invoke-direct {v5, v6, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v6, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 239
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "master"

    const-string v8, "coarse_tuning"

    invoke-direct {v5, v6, v8}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v6, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v8, 0x40c9000000000000L    # 12800.0

    invoke-direct {v3, v4, v8, v9, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 247
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-object/from16 v8, v16

    const/4 v6, 0x0

    invoke-direct {v5, v11, v8, v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v5, 0x40ca5e0000000000L    # 13500.0

    invoke-direct {v3, v5, v6, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 250
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v6, "delay"

    const/4 v7, 0x0

    invoke-direct {v5, v14, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v9, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 253
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "attack"

    const/4 v7, 0x0

    invoke-direct {v5, v14, v11, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 256
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "hold"

    const/4 v7, 0x0

    invoke-direct {v5, v14, v11, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 259
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "decay"

    const/4 v7, 0x0

    invoke-direct {v5, v14, v11, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 262
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v11, "sustain"

    const/4 v7, 0x0

    invoke-direct {v5, v14, v11, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v11, 0x408f400000000000L    # 1000.0

    invoke-direct {v3, v11, v12, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 264
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v11, "release"

    const/4 v7, 0x0

    invoke-direct {v5, v14, v11, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 267
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 268
    const-wide v4, 0x3f8eb851eb851eb8L    # 0.015

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v11, 0x4092c00000000000L    # 1200.0

    mul-double/2addr v4, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v4, v11

    new-instance v11, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v13, "shutdown"

    const/4 v7, 0x0

    invoke-direct {v12, v14, v13, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v4, v5, v11}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 271
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v11, 0x1

    invoke-direct {v5, v14, v6, v11}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 274
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "attack"

    const/4 v12, 0x1

    invoke-direct {v5, v14, v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 277
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "hold"

    const/4 v12, 0x1

    invoke-direct {v5, v14, v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 280
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "decay"

    const/4 v12, 0x1

    invoke-direct {v5, v14, v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 283
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v11, "sustain"

    const/4 v12, 0x1

    invoke-direct {v5, v14, v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v11, 0x408f400000000000L    # 1000.0

    invoke-direct {v3, v11, v12, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 285
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string/jumbo v11, "release"

    const/4 v12, 0x1

    invoke-direct {v5, v14, v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 289
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v11, "lfo"

    const/4 v7, 0x0

    invoke-direct {v5, v11, v8, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v12, -0x3fdef940789613d3L    # -8.51318

    invoke-direct {v3, v12, v13, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 291
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v7, 0x0

    invoke-direct {v5, v11, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 294
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "o":I
    .restart local v2    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v7, 0x1

    invoke-direct {v5, v11, v8, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v7, -0x3fdef940789613d3L    # -8.51318

    invoke-direct {v3, v7, v8, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v1

    .line 296
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "o":I
    .restart local v1    # "o":I
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v5, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v7, 0x1

    invoke-direct {v5, v11, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v3, v9, v10, v4}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    aput-object v3, v0, v2

    .line 326
    .end local v1    # "o":I
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;-><init>(Lcn/sherlock/com/sun/media/sound/SoftPerformer-IA;)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->keySortComparator:Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;

    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V
    .locals 25
    .param p1, "performer"    # Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 467
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v1, 0x0

    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->keyFrom:I

    .line 302
    const/16 v2, 0x7f

    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->keyTo:I

    .line 303
    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->velFrom:I

    .line 304
    iput v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->velTo:I

    .line 305
    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->exclusiveClass:I

    .line 306
    iput-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->selfNonExclusive:Z

    .line 307
    iput-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->forcedVelocity:Z

    .line 308
    iput-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->forcedKeynumber:Z

    .line 312
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    .line 313
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    .line 468
    move-object/from16 v2, p1

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->performer:Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->keyFrom:I

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->keyTo:I

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->velFrom:I

    .line 473
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->velTo:I

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getExclusiveClass()I

    move-result v3

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->exclusiveClass:I

    .line 475
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isSelfNonExclusive()Z

    move-result v3

    iput-boolean v3, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->selfNonExclusive:Z

    .line 477
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v3, "connmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v4, "performer_connections":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isDefaultConnectionsEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_15

    .line 486
    const/4 v5, 0x0

    .line 487
    .local v5, "isModulationWheelConectionFound":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    const-string v11, "5"

    const-string v12, "midi_rpn"

    const-string v13, "1"

    const-string v14, "midi_cc"

    if-ge v7, v8, :cond_3

    .line 488
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 489
    .local v8, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v15

    .line 490
    .local v15, "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v16

    .line 491
    .local v16, "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    const/16 v17, 0x0

    .line 492
    .local v17, "isModulationWheelConection":Z
    if-eqz v16, :cond_1

    if-eqz v15, :cond_1

    array-length v1, v15

    if-le v1, v6, :cond_1

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v15

    if-ge v1, v6, :cond_1

    .line 496
    aget-object v6, v15, v1

    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 498
    aget-object v6, v15, v1

    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    const/16 v17, 0x1

    .line 501
    const/4 v5, 0x1

    .line 502
    goto :goto_2

    .line 493
    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x1

    goto :goto_1

    .line 507
    .end local v1    # "i":I
    :cond_1
    :goto_2
    if-eqz v17, :cond_2

    .line 509
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>()V

    .line 510
    .local v1, "newconnection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setSources([Lcn/sherlock/com/sun/media/sound/ModelSource;)V

    .line 511
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setDestination(Lcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 512
    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v13, v12, v11}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-virtual {v1, v6}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->addSource(Lcn/sherlock/com/sun/media/sound/ModelSource;)V

    .line 514
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getScale()D

    move-result-wide v11

    mul-double/2addr v11, v9

    invoke-virtual {v1, v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setScale(D)V

    .line 515
    invoke-interface {v4, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 487
    .end local v1    # "newconnection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v8    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v15    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v16    # "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    .end local v17    # "isModulationWheelConection":Z
    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 519
    .end local v7    # "j":I
    :cond_3
    if-nez v5, :cond_4

    .line 520
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v7, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v8, 0x1

    const/4 v15, 0x0

    invoke-direct {v6, v7, v15, v8, v15}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v8, v14, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v7, v8, v15, v15, v15}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v15, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v8, v15}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v21, 0x4049000000000000L    # 50.0

    move-object/from16 v18, v1

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    invoke-direct/range {v18 .. v23}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 531
    .local v1, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v7, v12, v11}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-virtual {v1, v6}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->addSource(Lcn/sherlock/com/sun/media/sound/ModelSource;)V

    .line 533
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getScale()D

    move-result-wide v6

    mul-double/2addr v6, v9

    invoke-virtual {v1, v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setScale(D)V

    .line 534
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v1    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_4
    const/4 v1, 0x0

    .line 540
    .local v1, "channel_pressure_set":Z
    const/4 v6, 0x0

    .line 541
    .local v6, "poly_pressure":Z
    const/4 v7, 0x0

    .line 542
    .local v7, "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    const/4 v8, 0x0

    .line 544
    .local v8, "mod_cc_1_connection_src_ix":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string/jumbo v11, "poly_pressure"

    const-string v12, "channel_pressure"

    const-string v15, "midi"

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 545
    .local v10, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v2

    .line 546
    .local v2, "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v16

    .line 548
    .restart local v16    # "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    if-eqz v16, :cond_9

    if-eqz v2, :cond_9

    .line 549
    const/16 v17, 0x0

    move/from16 v24, v17

    move/from16 v17, v1

    move/from16 v1, v24

    .local v1, "i":I
    .local v17, "channel_pressure_set":Z
    :goto_4
    move/from16 v18, v5

    .end local v5    # "isModulationWheelConectionFound":Z
    .local v18, "isModulationWheelConectionFound":Z
    array-length v5, v2

    if-ge v1, v5, :cond_8

    .line 550
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v5

    .line 553
    .local v5, "srcid":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    move-object/from16 v19, v2

    .end local v2    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .local v19, "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 554
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 555
    move-object v2, v10

    .line 556
    .end local v7    # "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .local v2, "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    move v7, v1

    move v8, v7

    move-object v7, v2

    .line 561
    .end local v2    # "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .restart local v7    # "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_5
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 562
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 563
    const/4 v2, 0x1

    move/from16 v17, v2

    .line 564
    :cond_6
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 565
    const/4 v2, 0x1

    move v6, v2

    .line 549
    .end local v5    # "srcid":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v18

    move-object/from16 v2, v19

    goto :goto_4

    .end local v19    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .local v2, "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_8
    move-object/from16 v19, v2

    .end local v2    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .restart local v19    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    move/from16 v1, v17

    goto :goto_5

    .line 548
    .end local v17    # "channel_pressure_set":Z
    .end local v18    # "isModulationWheelConectionFound":Z
    .end local v19    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .local v1, "channel_pressure_set":Z
    .restart local v2    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .local v5, "isModulationWheelConectionFound":Z
    :cond_9
    move-object/from16 v19, v2

    move/from16 v18, v5

    .line 570
    .end local v2    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v5    # "isModulationWheelConectionFound":Z
    .end local v10    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v16    # "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    .restart local v18    # "isModulationWheelConectionFound":Z
    :goto_5
    move-object/from16 v2, p1

    move/from16 v5, v18

    goto/16 :goto_3

    .line 572
    .end local v18    # "isModulationWheelConectionFound":Z
    .restart local v5    # "isModulationWheelConectionFound":Z
    :cond_a
    move/from16 v18, v5

    .end local v5    # "isModulationWheelConectionFound":Z
    .restart local v18    # "isModulationWheelConectionFound":Z
    if-eqz v7, :cond_e

    .line 573
    if-nez v1, :cond_c

    .line 574
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>()V

    .line 575
    .local v2, "mc":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setDestination(Lcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 576
    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getScale()D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setScale(D)V

    .line 577
    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v5

    .line 578
    .local v5, "src_list":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    array-length v9, v5

    new-array v9, v9, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 579
    .local v9, "src_list_new":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    array-length v13, v9

    if-ge v10, v13, :cond_b

    .line 580
    aget-object v13, v5, v10

    aput-object v13, v9, v10

    .line 579
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 581
    .end local v10    # "i":I
    :cond_b
    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v13, v15, v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    aput-object v10, v9, v8

    .line 583
    invoke-virtual {v2, v9}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setSources([Lcn/sherlock/com/sun/media/sound/ModelSource;)V

    .line 584
    invoke-direct {v0, v2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .end local v2    # "mc":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v5    # "src_list":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v9    # "src_list_new":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_c
    if-nez v6, :cond_e

    .line 587
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>()V

    .line 588
    .restart local v2    # "mc":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setDestination(Lcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 589
    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getScale()D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setScale(D)V

    .line 590
    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v5

    .line 591
    .restart local v5    # "src_list":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    array-length v9, v5

    new-array v9, v9, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 592
    .restart local v9    # "src_list_new":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    array-length v12, v9

    if-ge v10, v12, :cond_d

    .line 593
    aget-object v12, v5, v10

    aput-object v12, v9, v10

    .line 592
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 594
    .end local v10    # "i":I
    :cond_d
    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v12, v15, v11}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    aput-object v10, v9, v8

    .line 596
    invoke-virtual {v2, v9}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->setSources([Lcn/sherlock/com/sun/media/sound/ModelSource;)V

    .line 597
    invoke-direct {v0, v2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .end local v2    # "mc":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v5    # "src_list":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v9    # "src_list_new":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_e
    const/4 v2, 0x0

    .line 603
    .local v2, "found_vib_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "lfo"

    if-eqz v9, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 604
    .local v9, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v11

    .line 605
    .local v11, "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    array-length v12, v11

    if-eqz v12, :cond_11

    const/4 v12, 0x0

    aget-object v13, v11, v12

    .line 606
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 607
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v10

    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v10

    sget-object v12, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-virtual {v10, v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 609
    if-nez v2, :cond_f

    .line 610
    move-object v2, v9

    goto :goto_9

    .line 612
    :cond_f
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v10

    array-length v10, v10

    array-length v12, v11

    if-le v10, v12, :cond_10

    .line 613
    move-object v2, v9

    goto :goto_9

    .line 614
    :cond_10
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v10

    const/4 v12, 0x0

    aget-object v10, v10, v12

    .line 615
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getInstance()I

    move-result v10

    const/4 v13, 0x1

    if-ge v10, v13, :cond_11

    .line 616
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v10

    aget-object v10, v10, v12

    .line 617
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getInstance()I

    move-result v10

    aget-object v13, v11, v12

    .line 618
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getInstance()I

    move-result v12

    if-le v10, v12, :cond_11

    .line 619
    move-object v2, v9

    .line 626
    .end local v9    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v11    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_11
    :goto_9
    goto :goto_8

    .line 628
    :cond_12
    const/4 v5, 0x1

    .line 630
    .local v5, "instance":I
    if-eqz v2, :cond_13

    .line 631
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v9

    const/4 v11, 0x0

    aget-object v9, v9, v11

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v9

    .line 632
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getInstance()I

    move-result v5

    .line 636
    :cond_13
    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v11, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v13, "78"

    invoke-direct {v12, v14, v13}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-direct {v11, v12, v15, v13, v15}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v15, "delay2"

    invoke-direct {v13, v10, v15, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v12, v13}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move v13, v6

    move-object v15, v7

    .end local v6    # "poly_pressure":Z
    .end local v7    # "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .local v13, "poly_pressure":Z
    .local v15, "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    const-wide v6, 0x409f400000000000L    # 2000.0

    invoke-direct {v9, v11, v6, v7, v12}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    move-object v6, v9

    .line 643
    .local v6, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-direct {v0, v6}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    if-nez v2, :cond_14

    const-wide/16 v11, 0x0

    goto :goto_a

    .line 646
    :cond_14
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getScale()D

    move-result-wide v11

    :goto_a
    nop

    .line 647
    .local v11, "scale":D
    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelSource;

    move/from16 v16, v1

    .end local v1    # "channel_pressure_set":Z
    .local v16, "channel_pressure_set":Z
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v1, v10, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;I)V

    invoke-direct {v9, v1}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-object/from16 v17, v2

    .end local v2    # "found_vib_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .local v17, "found_vib_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-object/from16 v19, v6

    .end local v6    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .local v19, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    const-string v6, "77"

    invoke-direct {v2, v14, v6}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;

    invoke-direct {v6, v0, v11, v12}, Lcn/sherlock/com/sun/media/sound/SoftPerformer$2;-><init>(Lcn/sherlock/com/sun/media/sound/SoftPerformer;D)V

    invoke-direct {v1, v2, v6}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;Lcn/sherlock/com/sun/media/sound/ModelTransform;)V

    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v6, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v2, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v7, v9, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelDestination;)V

    move-object v1, v7

    .line 668
    .end local v19    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .local v1, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelSource;

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v9, "76"

    invoke-direct {v7, v14, v9}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-direct {v6, v7, v14, v9, v14}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v14, "freq"

    invoke-direct {v9, v10, v14, v5}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v7, v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide v9, 0x40a2c00000000000L    # 2400.0

    invoke-direct {v2, v6, v9, v10, v7}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    move-object v1, v2

    .line 677
    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .end local v1    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v5    # "instance":I
    .end local v8    # "mod_cc_1_connection_src_ix":I
    .end local v11    # "scale":D
    .end local v13    # "poly_pressure":Z
    .end local v15    # "mod_cc_1_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v16    # "channel_pressure_set":Z
    .end local v17    # "found_vib_connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v18    # "isModulationWheelConectionFound":Z
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->isDefaultConnectionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 683
    sget-object v1, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->defaultconnections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v2, v1

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v2, :cond_16

    aget-object v5, v1, v15

    .line 684
    .local v5, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-direct {v0, v5}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .end local v5    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 686
    :cond_16
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 687
    .local v2, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-direct {v0, v2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 690
    .end local v2    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    const/16 v2, 0x80

    new-array v2, v2, [[I

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    .line 693
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v2, v5, :cond_18

    .line 694
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    aput-object v6, v5, v2

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 696
    .end local v2    # "i":I
    :cond_18
    const/4 v2, 0x5

    new-array v2, v2, [[I

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    .line 697
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_19

    .line 698
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    aput-object v6, v5, v2

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 701
    .end local v2    # "i":I
    :cond_19
    const/4 v2, 0x0

    .line 702
    .local v2, "ix":I
    const/4 v5, 0x0

    .line 704
    .local v5, "mustBeOnTop":Z
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 705
    .local v8, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 706
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v9

    .line 707
    .local v9, "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v10

    .line 708
    .local v10, "id":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v11

    const-string v12, "noteon"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 709
    const/4 v5, 0x1

    .line 710
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v11

    const-string v12, "keynumber"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 711
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->forcedKeynumber:Z

    goto :goto_10

    .line 710
    :cond_1a
    const/4 v11, 0x1

    .line 712
    :goto_10
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "velocity"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 713
    iput-boolean v11, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->forcedVelocity:Z

    goto :goto_11

    .line 708
    :cond_1b
    const/4 v11, 0x1

    goto :goto_11

    .line 705
    .end local v9    # "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    .end local v10    # "id":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :cond_1c
    const/4 v11, 0x1

    .line 716
    :cond_1d
    :goto_11
    if-eqz v5, :cond_1e

    .line 717
    const/4 v15, 0x0

    invoke-interface {v1, v15, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 718
    const/4 v5, 0x0

    goto :goto_12

    .line 720
    :cond_1e
    const/4 v15, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    .end local v8    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :goto_12
    goto :goto_f

    .line 723
    :cond_1f
    const/4 v15, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 724
    .restart local v8    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v9

    if-eqz v9, :cond_20

    .line 725
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v9

    .line 726
    .local v9, "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_14
    array-length v11, v9

    if-ge v10, v11, :cond_20

    .line 727
    aget-object v11, v9, v10

    invoke-direct {v0, v11, v2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->processSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V

    .line 726
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 730
    .end local v9    # "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v10    # "i":I
    :cond_20
    nop

    .end local v8    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    add-int/lit8 v2, v2, 0x1

    .line 731
    goto :goto_13

    .line 733
    :cond_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    iput-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 734
    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 736
    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections:[I

    .line 738
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_15
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_22

    .line 739
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections:[I

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v8, v7

    .line 738
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 741
    .end local v7    # "i":I
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcn/sherlock/com/sun/media/sound/ModelOscillator;

    iput-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->oscillators:[Lcn/sherlock/com/sun/media/sound/ModelOscillator;

    .line 742
    invoke-virtual/range {p1 .. p1}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->oscillators:[Lcn/sherlock/com/sun/media/sound/ModelOscillator;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 744
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 745
    .local v8, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 746
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v9

    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v9

    invoke-static {v9}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->isUnnecessaryTransform(Lcn/sherlock/com/sun/media/sound/ModelTransform;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 747
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->setTransform(Lcn/sherlock/com/sun/media/sound/ModelTransform;)V

    .line 750
    :cond_23
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 751
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v9

    array-length v10, v9

    move v11, v15

    :goto_17
    if-ge v11, v10, :cond_25

    aget-object v12, v9, v11

    .line 752
    .local v12, "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v13

    invoke-static {v13}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->isUnnecessaryTransform(Lcn/sherlock/com/sun/media/sound/ModelTransform;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 753
    invoke-virtual {v12, v6}, Lcn/sherlock/com/sun/media/sound/ModelSource;->setTransform(Lcn/sherlock/com/sun/media/sound/ModelTransform;)V

    .line 751
    .end local v12    # "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_24
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 757
    .end local v8    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_25
    goto :goto_16

    .line 759
    :cond_26
    return-void
.end method

.method private extractKeys(Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)Ljava/lang/String;
    .locals 6
    .param p1, "conn"    # Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v1

    const-string v2, ";"

    if-eqz v1, :cond_2

    .line 331
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v1

    .line 333
    .local v1, "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    array-length v3, v1

    new-array v3, v3, [Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 334
    .local v3, "srcs2":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 335
    aget-object v5, v1, v4

    aput-object v5, v3, v4

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    .end local v4    # "i":I
    :cond_0
    sget-object v4, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->keySortComparator:Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 337
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 338
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 341
    .end local v4    # "i":I
    :cond_1
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    .end local v1    # "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v3    # "srcs2":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 345
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 347
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isUnnecessaryTransform(Lcn/sherlock/com/sun/media/sound/ModelTransform;)Z
    .locals 3
    .param p0, "transform"    # Lcn/sherlock/com/sun/media/sound/ModelTransform;

    .line 762
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 763
    return v0

    .line 764
    :cond_0
    instance-of v1, p0, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    if-nez v1, :cond_1

    .line 765
    return v0

    .line 766
    :cond_1
    move-object v1, p0

    check-cast v1, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;

    .line 767
    .local v1, "stransform":Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->getDirection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    return v0

    .line 769
    :cond_2
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->getPolarity()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    return v0

    .line 771
    :cond_3
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelStandardTransform;->getTransform()I

    move-result v2

    if-eqz v2, :cond_4

    .line 772
    return v0

    .line 773
    :cond_4
    return v0
.end method

.method private processMidiControlSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V
    .locals 6
    .param p1, "src"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "ix"    # I

    .line 373
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 375
    return-void

    .line 376
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "c":I
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 378
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    filled-new-array {p2}, [I

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 380
    :cond_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    aget-object v2, v2, v1

    .line 381
    .local v2, "olda":[I
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 382
    .local v3, "newa":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 383
    aget v5, v2, v4

    aput v5, v3, v4

    .line 382
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    .end local v4    # "i":I
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput p2, v3, v4

    .line 385
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    aput-object v3, v4, v1

    .line 387
    .end local v2    # "olda":[I
    .end local v3    # "newa":[I
    :goto_1
    return-void
.end method

.method private processMidiNrpnSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V
    .locals 6
    .param p1, "src"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "ix"    # I

    .line 451
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 453
    return-void

    .line 454
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "c":I
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 456
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2}, [I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 458
    :cond_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 459
    .local v2, "olda":[I
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 460
    .local v3, "newa":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 461
    aget v5, v2, v4

    aput v5, v3, v4

    .line 460
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 462
    .end local v4    # "i":I
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput p2, v3, v4

    .line 463
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .end local v2    # "olda":[I
    .end local v3    # "newa":[I
    :goto_1
    return-void
.end method

.method private processMidiRpnSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V
    .locals 6
    .param p1, "src"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "ix"    # I

    .line 434
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 436
    return-void

    .line 437
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "c":I
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 439
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2}, [I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 441
    :cond_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 442
    .local v2, "olda":[I
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 443
    .local v3, "newa":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 444
    aget v5, v2, v4

    aput v5, v3, v4

    .line 443
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 445
    .end local v4    # "i":I
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput p2, v3, v4

    .line 446
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v2    # "olda":[I
    .end local v3    # "newa":[I
    :goto_1
    return-void
.end method

.method private processMidiSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V
    .locals 6
    .param p1, "src"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "ix"    # I

    .line 411
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "v":Ljava/lang/String;
    const/4 v1, -0x1

    .line 413
    .local v1, "c":I
    const-string/jumbo v2, "pitch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const/4 v1, 0x0

    .line 415
    :cond_0
    const-string v2, "channel_pressure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    const/4 v1, 0x1

    .line 417
    :cond_1
    const-string/jumbo v2, "poly_pressure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    const/4 v1, 0x2

    .line 419
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 420
    return-void

    .line 421
    :cond_3
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 422
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    filled-new-array {p2}, [I

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 424
    :cond_4
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    aget-object v2, v2, v1

    .line 425
    .local v2, "olda":[I
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 426
    .local v3, "newa":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 427
    aget v5, v2, v4

    aput v5, v3, v4

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    .end local v4    # "i":I
    :cond_5
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput p2, v3, v4

    .line 429
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    aput-object v3, v4, v1

    .line 431
    .end local v2    # "olda":[I
    .end local v3    # "newa":[I
    :goto_1
    return-void
.end method

.method private processNoteOnSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V
    .locals 6
    .param p1, "src"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "ix"    # I

    .line 390
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "v":Ljava/lang/String;
    const/4 v1, -0x1

    .line 392
    .local v1, "c":I
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const/4 v1, 0x3

    .line 394
    :cond_0
    const-string v2, "keynumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const/4 v1, 0x4

    .line 396
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 397
    return-void

    .line 398
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 399
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    filled-new-array {p2}, [I

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 401
    :cond_3
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    aget-object v2, v2, v1

    .line 402
    .local v2, "olda":[I
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 403
    .local v3, "newa":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 404
    aget v5, v2, v4

    aput v5, v3, v4

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 405
    .end local v4    # "i":I
    :cond_4
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput p2, v3, v4

    .line 406
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    aput-object v3, v4, v1

    .line 408
    .end local v2    # "olda":[I
    .end local v3    # "newa":[I
    :goto_1
    return-void
.end method

.method private processSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V
    .locals 4
    .param p1, "src"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "ix"    # I

    .line 352
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v0

    .line 353
    .local v0, "id":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "o":Ljava/lang/String;
    const-string v2, "midi_cc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->processMidiControlSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V

    goto :goto_0

    .line 356
    :cond_0
    const-string v2, "midi_rpn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->processMidiRpnSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V

    goto :goto_0

    .line 358
    :cond_1
    const-string v2, "midi_nrpn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->processMidiNrpnSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V

    goto :goto_0

    .line 360
    :cond_2
    const-string v2, "midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 361
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->processMidiSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V

    goto :goto_0

    .line 362
    :cond_3
    const-string v2, "noteon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 363
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->processNoteOnSource(Lcn/sherlock/com/sun/media/sound/ModelSource;I)V

    goto :goto_0

    .line 364
    :cond_4
    const-string v2, "osc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 365
    return-void

    .line 366
    :cond_5
    const-string v2, "mixer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 367
    return-void

    .line 369
    :cond_6
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :goto_0
    return-void
.end method

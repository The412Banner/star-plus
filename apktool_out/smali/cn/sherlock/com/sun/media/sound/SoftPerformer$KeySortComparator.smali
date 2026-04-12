.class Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;
.super Ljava/lang/Object;
.source "SoftPerformer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySortComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/sherlock/com/sun/media/sound/ModelSource;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftPerformer-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;)I
    .locals 2
    .param p1, "o1"    # Lcn/sherlock/com/sun/media/sound/ModelSource;
    .param p2, "o2"    # Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 322
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 319
    check-cast p1, Lcn/sherlock/com/sun/media/sound/ModelSource;

    check-cast p2, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-virtual {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftPerformer$KeySortComparator;->compare(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;)I

    move-result p1

    return p1
.end method

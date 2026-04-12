.class final Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;
.super Ljava/lang/Object;
.source "OutputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/OutputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13PaddingHolder"
.end annotation


# static fields
.field private static final zeros:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;->zeros:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 248
    sget-object v0, Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;->zeros:[B

    return-object v0
.end method
